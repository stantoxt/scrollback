/* jshint mocha: true */
var assert = require('assert'),
	crypto = require('crypto'),
	core =new (require('ebus'))(),
	generate = require("../lib/generate.js"),
	storageUtils = require('./storage-utils.js'),
	log = require("../lib/logger.js"),
	storage = require('./storage.js'),
	config = require('./../server-config-defaults.js'),
	pg = require('pg'),
	connString = "pg://" + config.storage.pg.username + ":" +
	config.storage.pg.password + "@" + config.storage.pg.server + "/" + config.storage.pg.db;
	

describe("Storage Test.", function() {
	before(function(done) {
		storage(config.storage, core);
		if (config.env === 'production') {
			log.w("Can not run test cases in production.");
			return;
		}
		setTimeout(done, 1500);
	});
	
	it("Insert new text message.", function(done) {
		var msg = getNewTextMessage();
		core.emit("text", msg, function() {
			log("inserted message");
			pg.connect(connString, function(err, client, cb) {
				storageUtils.runQueries(client, 
										 [{query: "SELECT * from texts where id=$1", values: [msg.id]},
										  {query: "SELECT * from threads where id=$1", values: [msg.id]}], 
										 function(err, results) {
					log.d("Arguments:", arguments);
					results.forEach(function(result) {
						assert.equal(result.rowCount, 1, "Database doesn't have message Object");
					});
					cb();
					done();
				});
			});
		});
	});
	
	it("Insert new text message. (Labels and tags)", function(done) {
		var msg = getNewTextMessage();
		msg.labels.abusive = 1;
		msg.labels.hidden = 1;
		msg.tags = ['abc'];
		core.emit("text", msg, function() {
			log("inserted message");
			pg.connect(connString, function(err, client, cb) {
				storageUtils.runQueries(client, 
										[{query: "SELECT * from texts where id=$1", values: [msg.id]}], 
										function(err, results) {
					log.d("Arguments:", arguments);
					results.forEach(function(result) {
						result.rows[0].tags.sort();
						assert.deepEqual(result.rows[0].tags, ['abc', 'color3', 'abusive', 'hidden'].sort(), "tags / labels not saved");
					});
					cb();
					done();
				});
			});
		});
	});
	
	it("Update Thread", function(done) {
		var m1 = getNewTextMessage();
		core.emit("text", m1, function() {
			var m2 = getNewTextMessage();
			m2.threads = m1.threads;
			delete m2.threads[0].title; // don't update title.
			core.emit("text", m2, function() {
				pg.connect(connString, function(err, client, cb) {
					storageUtils.runQueries(client, 
											[{query: "SELECT * from threads where id=$1", values: [m1.id]}], 
											function(err, results) {
						log.d("Arguments:", arguments);
						results.forEach(function(result) {
							assert.equal(result.rows[0].length, 2, "Database doesn't have message Object");
						});
						cb();
						done();
					});
				});
			});
		});
	});	
	
	it("Edit (Edit text)", function(done) {
		var m1 = getNewTextMessage();
		core.emit("text", m1, function() {
			var text = generate.sentence(11);
			var edit = {
				ref: m1.id,
				text: text
			};
			core.emit("edit", edit, function() {
				pg.connect(connString, function(err, client, cb) {
					storageUtils.runQueries(client, 
											[{query: "SELECT * from texts where id=$1", values: [m1.id]}], 
											function(err, results) {
						log.d("Arguments:", arguments);
						results.forEach(function(result) {
							assert.equal(result.rows[0].text, text, "Updating text failed");
						});
						cb();
						done();
					});
				});
			});
		});
	});
	
	it("Edit (Edit title)", function(done) {
		var m1 = getNewTextMessage();
		core.emit("text", m1, function() {
			var text = generate.sentence(11);
			var edit = {
				ref: m1.id,
				title: text
			};
			core.emit("edit", edit, function() {
				pg.connect(connString, function(err, client, cb) {
					storageUtils.runQueries(client, 
											[{query: "SELECT * from threads where id=$1", values: [m1.id]}], 
											function(err, results) {
						log.d("Arguments:", arguments);
						results.forEach(function(result) {
							assert.equal(result.rows[0].title, text, "Updating title failed");
						});
						cb();
						done();
					});
				});
			});
		});
	});	
	
	it("Edit (labels text)", function(done) {
		var m1 = getNewTextMessage();
		m1.labels.abusive = 1;
		m1.labels.hidden = 1;
		core.emit("text", m1, function() {
			var edit = {
				ref: m1.id,
				labels: {abusive: 1, color3: 1}
			};
			core.emit("edit", edit, function() {
				pg.connect(connString, function(err, client, cb) {
					storageUtils.runQueries(client, 
											[{query: "SELECT * from texts where id=$1", values: [m1.id]}], 
											function(err, results) {
						log.d("Arguments:", arguments);
						results.forEach(function(result) {
							assert.deepEqual(result.rows[0].tags, ['abusive', 'color3'], "Updating text failed");
						});
						cb();
						done();
					});
				});
			});
		});
	});	
	
	it("storing new user.", function(done) {
		var user = getNewUser();
		core.emit("user", user, function(){
			pg.connect(connString, function(err, client, cb) {
				storageUtils.runQueries(client, 
										[{query: "SELECT * from entities where id=$1", values: [user.user.id]}], 
										function(err, results) {
					log.d("Arguments:", arguments);
					results.forEach(function(result) {
						assert.deepEqual(result.rows[0].id, user.user.id, "Adding new user failed");
					});
					cb();
					done();
				});
			});
		});
	});
	
	it("Update user.", function(done) {
		var user = getNewUser();
		core.emit("user", user, function() {
			var old = copy(user.user);
			user.old = old;
			user.user.description = generate.sentence(12);
			core.emit("user", user, function() {
				pg.connect(connString, function(err, client, cb) {
					storageUtils.runQueries(client, 
											[{query: "SELECT * from entities where id=$1", values: [user.user.id]}], 
											function(err, results) {
						log.d("Arguments:", arguments);
						results.forEach(function(result) {
							log("User: ", user.user.description, result.rows[0].description);
							assert.equal(result.rows[0].description, user.user.description, "updating description failed");
						});
						cb();
						done();
					});
				});	
			});
			
		});
	});
	
	it("storing new Room.", function(done) {
		var room = getNewRoom();
		core.emit("room", room, function(){
			pg.connect(connString, function(err, client, cb) {
				storageUtils.runQueries(client, 
										[{query: "SELECT * from entities where id=$1", values: [room.room.id]}], 
										function(err, results) {
					log.d("Arguments:", arguments);
					results.forEach(function(result) {
						assert.deepEqual(result.rows[0].id, room.room.id, "Adding new user failed");
					});
					cb();
					done();
				});
			});
		});
	});

	it("Update room.", function(done) {
		var room = getNewRoom();
		core.emit("room", room, function() {
			var old = copy(room.room);
			room.old = old;
			room.room.identities = room.room.identities.splice(0, 1);
			core.emit("room", room, function() {
				pg.connect(connString, function(err, client, cb) {
					storageUtils.runQueries(client, 
											[{query: "SELECT * from entities where id=$1", values: [room.room.id]}], 
											function(err, results) {
						log.d("Arguments:", arguments);
						results.forEach(function(result) {
							room.room.identities.sort();
							result.rows[0].identities.sort();
							assert.deepEqual(result.rows[0].identities, room.room.identities, "updating description failed");
						});
						cb();
						done();
					});
				});	
			});

		});
	});
	
	it("Join room.", function(done) {
		var relation = getRelationAction('join', 'follower');
		var user = getNewUser();
		var room = getNewRoom();
		user.user = relation.user;
		room.room = relation.room;
		core.emit("room", room, function() {
			core.emit("user", user, function() {
				core.emit("join", relation, function() {
					log("Join :", arguments);
					pg.connect(connString, function(err, client, cb) {
						
						storageUtils.runQueries(client, 
												[{query: "SELECT * from relations where \"room\"=$1 and \"user\"=$2", 
												  values: [room.room.id, user.user.id]}], 
												function(err, results) {
							log.d("Arguments:", arguments);
							results.forEach(function(result) {
								log("Result:", result);
								assert.equal(result.rows[0].room, room.room.id, "join message insert failed");
							});
							cb();
							done();
						});
					});	
				});
			});
		});
	});
	
	it("part room.", function(done) {
		var relation = getRelationAction('join', 'follower');
		var user = getNewUser();
		var room = getNewRoom();
		user.user = relation.user;
		room.room = relation.room;
		core.emit("room", room, function() {
			core.emit("user", user, function() {
				core.emit("join", relation, function() {
					relation.role = 'none';
					relation.time = new Date().getTime();
					core.emit("part", relation, function() {
						pg.connect(connString, function(err, client, cb) {

							storageUtils.runQueries(client, 
													[{query: "SELECT * from relations where \"room\"=$1 and \"user\"=$2", 
													  values: [room.room.id, user.user.id]}], 
													function(err, results) {
								log.d("Arguments:", arguments);
								results.forEach(function(result) {
									log("Result:", result);
									assert.equal(result.rows[0].role, 'none', "part message failed");
									assert.equal(result.rows.length, 1, "Multiple rows");
								});
								cb();
								done();
							});
						});
					});	
				});
			});
		});
	});
});


function getNewTextMessage() {
	var id = generate.uid();
	return {
		id: (id),
		from: generate.names(6),
		to: generate.names(10),
		text: generate.sentence(10),
		labels: {},
		threads: [{id: id + (3), title: generate.sentence(15)}],
		time: new Date().getTime()
	};
}

function getNewUser() {
	var email = generate.names(15) + "@" + generate.names(6) +"." + generate.names(2);
	return {
		id: generate.uid(),
		type: "user",
		user: {
			id: generate.names(8),
			description: "this is me?",
			type: "user",
			timezone: 0,
			picture: generatePick(email),
			identities: ["mailto:" + email], 
			params: {},
			guides: {}
		}
	};
}

function getNewRoom() {
	
	return {
		id: generate.uid(),
		type:"room",
		room: {
			id: generate.names(9),
			description: generate.sentence(10),
			type:"room",
			identities:["twitter://" + generate.names(10), generate.names(5) + "://" + generate.names(10)], 
			params: {},
			guides: {}
		},
		old: {}
	};
}


function generatePick(id) {
	return 'https://gravatar.com/avatar/' + crypto.createHash('md5').update(id).digest('hex') + '/?d=identicon&s=48';
}


function copy(action) {
	return JSON.parse(JSON.stringify(action));
}

function getRelationAction(type, userRole) {
	var user = getNewUser().user;
	var room = getNewRoom().room;
	var victim;
	var from = user.id;
	if (type === 'admit' || type === 'expel') {
		victim = getNewUser();
	} 
	var r = {
		type: type,
		id: generate.uid(),
		role: userRole,
		to: room.id,
		victim: victim,
		from: from,
		session: generate.uid(),
		resource: generate.uid(),
		user: user,
		room: room,
		time: new Date().getTime()
	};
	return r;
}