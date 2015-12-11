const __DEV__ = typeof global.__DEV__ === "boolean" ? global.__DEV__ : process.env.NODE_ENV !== "production";

const webpack = require("webpack");
const path = require("path");

module.exports = {
	devtool: "source-map",
	entry: [
		"./ui/app"
	],
	output: {
		path: path.resolve(__dirname, "public/s/dist/scripts/"),
		publicPath: "/public/",
		filename: "app.bundle.min.js",
		sourceMapFilename: "app.bundle.min.js.map"
	},
	plugins: __DEV__ ? [ new webpack.HotModuleReplacementPlugin() ] : [ new webpack.optimize.UglifyJsPlugin() ],
	module: {
		preLoaders: [
			{
				test: /\.js$/,
				loaders: [ "eslint-loader" ],
				exclude: /(node_modules|bower_components)/
			}
		],
		loaders: [
			{
				test: /\.js$/,
				loaders: __DEV__ ? [ "react-hot", "babel" ] : [ "babel" ],
				exclude: /(node_modules|bower_components)/
			},
			{
				test: /\.json$/,
				loader: "json"
			}
		]
	},
	eslint: {
		quiet: true
	}
};