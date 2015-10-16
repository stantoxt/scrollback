--
-- install postgis and create extension
--


ALTER TABLE entities ADD COLUMN location geography;

UPDATE entities SET location = st_geogfromtext('POINT(77.5255683 13.0762712)') WHERE id='abbigere';
UPDATE entities SET location = st_geogfromtext('POINT(77.607615 12.9441334)') WHERE id='adugodi';
UPDATE entities SET location = st_geogfromtext('POINT(77.7184358 12.9650431)') WHERE id='aecs-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.6162491 12.8689407)') WHERE id='akshayanagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6007973 13.0657764)') WHERE id='amrutha-halli';
UPDATE entities SET location = st_geogfromtext('POINT(77.4783959 13.0097181)') WHERE id='andrahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.7694906 12.7767878)') WHERE id='anekal';
UPDATE entities SET location = st_geogfromtext('POINT(77.5606545 12.8617961)') WHERE id='anjanapura';
UPDATE entities SET location = st_geogfromtext('POINT(77.6451625 12.9597545)') WHERE id='anjaneya-complex';
UPDATE entities SET location = st_geogfromtext('POINT(77.4942715 12.9703346)') WHERE id='annapurneshwari-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6047905 12.970872)') WHERE id='ashok-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.793923 13.169665)') WHERE id='attibele';
UPDATE entities SET location = st_geogfromtext('POINT(77.5289797 12.9597914)') WHERE id='attiguppe';
UPDATE entities SET location = st_geogfromtext('POINT(77.554777 12.9553875)') WHERE id='azad-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6349478 13.0260802)') WHERE id='ba-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.4954718 13.0526818)') WHERE id='bagalakunte';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='bagaluru';
UPDATE entities SET location = st_geogfromtext('POINT(77.66112 12.979495)') WHERE id='bagmane-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.6435896 12.9935666)') WHERE id='baiyyappanahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.5578535 12.9416066)') WHERE id='banashankari';
UPDATE entities SET location = st_geogfromtext('POINT(77.6471307 13.0119571)') WHERE id='banaswadi';
UPDATE entities SET location = st_geogfromtext('POINT(77.6902539 13.1987992)') WHERE id='bial';
UPDATE entities SET location = st_geogfromtext('POINT(77.5834352 12.8444493)') WHERE id='bannerghatta-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.5397293 12.95678)') WHERE id='bapuji-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6509528 12.8647805)') WHERE id='basapura';
UPDATE entities SET location = st_geogfromtext('POINT(77.5753609 12.9421166)') WHERE id='basavanagudi';
UPDATE entities SET location = st_geogfromtext('POINT(77.7201699 12.9866294)') WHERE id='basavanna-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.5382864 12.9886182)') WHERE id='basaveshwara-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.7077906 13.0243273)') WHERE id='battarahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6376676 12.8787673)') WHERE id='begur';
UPDATE entities SET location = st_geogfromtext('POINT(77.7523608 13.0072468)') WHERE id='belathur';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='bellandur';
UPDATE entities SET location = st_geogfromtext('POINT(77.5934258 13.0571605)') WHERE id='bellary road';
UPDATE entities SET location = st_geogfromtext('POINT(77.6539609 12.9966659)') WHERE id='bennigana-halli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6045925 13.004155)') WHERE id='benson-town';
UPDATE entities SET location = st_geogfromtext('POINT(77.4871358 12.942467)') WHERE id='bhuvaneshwari-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.3903984 12.8005252)') WHERE id='bidadi';
UPDATE entities SET location = st_geogfromtext('POINT(77.7158771 13.0613596)') WHERE id='bidrahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6071578 12.8970168)') WHERE id='bilekahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6179465 12.8983601)') WHERE id='bommanahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6989492 12.8168473)') WHERE id='bommasandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.606701 12.9715384)') WHERE id='brigade road';
UPDATE entities SET location = st_geogfromtext('POINT(77.705736 12.9931216)') WHERE id='brigade-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.7148376 12.9712301)') WHERE id='brookefield';
UPDATE entities SET location = st_geogfromtext('POINT(77.6101163 12.9165757)') WHERE id='btm-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.7466387 13.1342839)') WHERE id='budigere';
UPDATE entities SET location = st_geogfromtext('POINT(77.6253315 12.9725546)') WHERE id='cambridge-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='cessna-sez';
UPDATE entities SET location = st_geogfromtext('POINT(77.713612 12.8004945)') WHERE id='chandapura';
UPDATE entities SET location = st_geogfromtext('POINT(77.6630975 13.0112861)') WHERE id='channasandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.5763139 12.9709232)') WHERE id='chickpet';
UPDATE entities SET location = st_geogfromtext('POINT(77.5132117 13.0791284)') WHERE id='chikbanavara';
UPDATE entities SET location = st_geogfromtext('POINT(77.8669766 12.8954158)') WHERE id='chikka-tirupathi';
UPDATE entities SET location = st_geogfromtext('POINT(78.0539346 13.4001557)') WHERE id='chikkaballapur';
UPDATE entities SET location = st_geogfromtext('POINT(77.4859711 13.0452907)') WHERE id='chikkabidarakallu';
UPDATE entities SET location = st_geogfromtext('POINT(77.6356486 13.1715223)') WHERE id='chikkajala';
UPDATE entities SET location = st_geogfromtext('POINT(77.383393 13.014763)') WHERE id='chikkanahalli';
UPDATE entities SET location = st_geogfromtext('POINT(78.0435222 13.3818177)') WHERE id='chintamani';
UPDATE entities SET location = st_geogfromtext('POINT(77.6793813 12.8836788)') WHERE id='choodasandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.6102972 12.9815168)') WHERE id='commercial-street';
UPDATE entities SET location = st_geogfromtext('POINT(77.6228252 13.0031678)') WHERE id='cooke-town';
UPDATE entities SET location = st_geogfromtext('POINT(77.6234053 12.9954659)') WHERE id='cox-town';
UPDATE entities SET location = st_geogfromtext('POINT(77.6639248 12.9854542)') WHERE id='cv-raman-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.5797958 12.9882453)') WHERE id='cyber-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='dabaspete';
UPDATE entities SET location = st_geogfromtext('POINT(77.5110614 13.0458075)') WHERE id='dasarahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.7137306 13.2417155)') WHERE id='devanahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6189388 12.8834305)') WHERE id='devarachikkana-halli';
UPDATE entities SET location = st_geogfromtext('POINT(77.7261617 12.9686297)') WHERE id='divyasree-technopark';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='dodda-aalada-mara-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.6528966 13.0159203)') WHERE id='dodda-banasvadi';
UPDATE entities SET location = st_geogfromtext('POINT(77.5775428 13.1182138)') WHERE id='doddaballapur-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.5389069 13.2927263)') WHERE id='doddaballapur';
UPDATE entities SET location = st_geogfromtext('POINT(77.5633748 13.0631929)') WHERE id='doddabommasandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='doddenakundi';
UPDATE entities SET location = st_geogfromtext('POINT(77.5683899 13.041526)') WHERE id='dollars-colony';
UPDATE entities SET location = st_geogfromtext('POINT(77.6306967 13.0129981)') WHERE id='domlur';
UPDATE entities SET location = st_geogfromtext('POINT(77.75428 12.87807)') WHERE id='dommasandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.6308174 12.9385333)') WHERE id='ejipura';
UPDATE entities SET location = st_geogfromtext('POINT(77.6793813 12.8441489)') WHERE id='electronic-city-phase-ii';
UPDATE entities SET location = st_geogfromtext('POINT(77.6705933 12.8473582)') WHERE id='electronic-city-phase-1';
UPDATE entities SET location = st_geogfromtext('POINT(77.6464534 12.9513154)') WHERE id='embassy-golf-links-business-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.6904202 12.9320824)') WHERE id='embassy-techvillage';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='frazer-town';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='gandhi-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.590791 13.0266605)') WHERE id='ganga-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.7195193 12.972756)') WHERE id='gayatri-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='global-village';
UPDATE entities SET location = st_geogfromtext('POINT(77.6411733 12.8914807)') WHERE id='gnr-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.7344781 12.9208949)') WHERE id='gunjur';
UPDATE entities SET location = st_geogfromtext('POINT(77.6306967 13.0129981)') WHERE id='hsr-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='hal';
UPDATE entities SET location = st_geogfromtext('POINT(77.6770031 12.8399389)') WHERE id='harita-it-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.6628428 12.8998046)') WHERE id='harlur';
UPDATE entities SET location = st_geogfromtext('POINT(77.618777 12.9762986)') WHERE id='haudin-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='hbr-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='hcl-technologies-ltd';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='hebbal';
UPDATE entities SET location = st_geogfromtext('POINT(77.6323623 13.0724417)') WHERE id='hegde-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6450215 13.0402801)') WHERE id='hennur';
UPDATE entities SET location = st_geogfromtext('POINT(77.4791265 13.1377799)') WHERE id='hesaraghatta';
UPDATE entities SET location = st_geogfromtext('POINT(77.5948946 12.9375448)') WHERE id='hombegowda-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6289517 12.8942722)') WHERE id='hongasandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.7159001 12.9922145)') WHERE id='hoodi';
UPDATE entities SET location = st_geogfromtext('POINT(77.5361462 12.9163636)') WHERE id='hosakerehalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.8 13.07)') WHERE id='hoskote';
UPDATE entities SET location = st_geogfromtext('POINT(77.6315264 12.9029367)') WHERE id='hosur-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.6464534 13.0191445)') WHERE id='hrbr-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.6089869 12.8789001)') WHERE id='hulimavu';
UPDATE entities SET location = st_geogfromtext('POINT(77.7052823 12.8615733)') WHERE id='huskur';
UPDATE entities SET location = st_geogfromtext('POINT(77.603742 12.932639)') WHERE id='ibc-knowledge-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.6411545 12.9718915)') WHERE id='indiranagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6021903 12.9810027)') WHERE id='infantry-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='infosys-electronics-city';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='integrated-hitech-software-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.7076907 13.2044921)') WHERE id='bia-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='international-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.5590645 12.8984834)') WHERE id='isro-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.743531 12.986598)') WHERE id='itpl';
UPDATE entities SET location = st_geogfromtext('POINT(77.5857168 12.910491)') WHERE id='jp-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6206769 13.0631411)') WHERE id='jakkur';
UPDATE entities SET location = st_geogfromtext('POINT(77.5183484 13.0399748)') WHERE id='jalahalli-cross';
UPDATE entities SET location = st_geogfromtext('POINT(77.5192657 13.0612203)') WHERE id='jalahalli-west';
UPDATE entities SET location = st_geogfromtext('POINT(77.5948946 13.0081816)') WHERE id='jaya-chamarajendra-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.5950525 12.9998698)') WHERE id='jayamahal';
UPDATE entities SET location = st_geogfromtext('POINT(77.5938028 12.9250074)') WHERE id='jayanagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6595082 12.9628593)') WHERE id='jeevanbheema-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.644157 12.779326)') WHERE id='jigani';
UPDATE entities SET location = st_geogfromtext('POINT(77.4968175 12.9545241)') WHERE id='jnana-ganga-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6877765 13.0040167)') WHERE id='kr-puram';
UPDATE entities SET location = st_geogfromtext('POINT(77.4331027 12.9968854)') WHERE id='kadabagere';
UPDATE entities SET location = st_geogfromtext('POINT(77.7607805 12.9908404)') WHERE id='kadugodi';
UPDATE entities SET location = st_geogfromtext('POINT(77.6186204 13.0186924)') WHERE id='kadugondanahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='kaggadasapura';
UPDATE entities SET location = st_geogfromtext('POINT(77.6873868 12.9127307)') WHERE id='kaikondrahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.5934927 12.8710738)') WHERE id='kalena-agrahara';
UPDATE entities SET location = st_geogfromtext('POINT(77.673888 13.0334934)') WHERE id='kalkere';
UPDATE entities SET location = st_geogfromtext('POINT(77.6399711 13.0280047)') WHERE id='kalyan-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='kalyani-magnum-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.6378619 13.0159044)') WHERE id='kammanahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.688267 12.834002)') WHERE id='kammasandra-agrahara';
UPDATE entities SET location = st_geogfromtext('POINT(77.688267 12.834002)') WHERE id='kammasandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.4876724 12.7456283)') WHERE id='kanakapura-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='kanakapura';
UPDATE entities SET location = st_geogfromtext('POINT(77.410384 13.196403)') WHERE id='kannamangala';
UPDATE entities SET location = st_geogfromtext('POINT(77.6757011 12.9066841)') WHERE id='kasavanahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6594498 13.0060924)') WHERE id='kasturi-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6211888 13.1215607)') WHERE id='kattigenahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6000404 13.043505)') WHERE id='kempapura';
UPDATE entities SET location = st_geogfromtext('POINT(77.5633748 12.9473279)') WHERE id='kempegowda-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.4846519 12.9230523)') WHERE id='kengeri-satellite-town';
UPDATE entities SET location = st_geogfromtext('POINT(77.4826976 12.899623)') WHERE id='kengeri';
UPDATE entities SET location = st_geogfromtext('POINT(77.6150369 12.8953449)') WHERE id='kodichikkanahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.5822844 13.0695205)') WHERE id='kodigehalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6472466 12.9611228)') WHERE id='kodihalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.5318463 12.9090978)') WHERE id='kodipur';
UPDATE entities SET location = st_geogfromtext('POINT(77.6125498 13.1012065)') WHERE id='kogilu';
UPDATE entities SET location = st_geogfromtext('POINT(77.566548 12.8857037)') WHERE id='konanakunte';
UPDATE entities SET location = st_geogfromtext('POINT(77.6271078 12.9279232)') WHERE id='koramangala';
UPDATE entities SET location = st_geogfromtext('POINT(77.6422206 13.0551956)') WHERE id='kothanur';
UPDATE entities SET location = st_geogfromtext('POINT(77.6528966 12.8901858)') WHERE id='kudlu';
UPDATE entities SET location = st_geogfromtext('POINT(77.5618439 12.9037594)') WHERE id='kumaraswamy-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.5253962 13.0097647)') WHERE id='laggere';
UPDATE entities SET location = st_geogfromtext('POINT(77.5857312 12.9541003)') WHERE id='lal-bagh';
UPDATE entities SET location = st_geogfromtext('POINT(77.6006194 12.9608171)') WHERE id='langford-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.6027732 12.9569911)') WHERE id='langford-town';
UPDATE entities SET location = st_geogfromtext('POINT(77.5978581 12.9712262)') WHERE id='lavelle-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.6704859 12.9670714)') WHERE id='lb-shastr-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6306383 13.0083649)') WHERE id='lingarajapuram';
UPDATE entities SET location = st_geogfromtext('POINT(77.6174442 12.9226373)') WHERE id='madiwala';
UPDATE entities SET location = st_geogfromtext('POINT(77.4765501 12.9867551)') WHERE id='magadi-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.687367 12.9912802)') WHERE id='mahadevapura';
UPDATE entities SET location = st_geogfromtext('POINT(77.5514047 13.0145937)') WHERE id='mahalakshmi-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.5712556 12.9766637)') WHERE id='majestic';
UPDATE entities SET location = st_geogfromtext('POINT(77.4974416 12.9610894)') WHERE id='mallathahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.5642928 13.0030624)') WHERE id='malleshwaram';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='manipal-eta-infotech-limited';
UPDATE entities SET location = st_geogfromtext('POINT(77.6221091 13.0448306)') WHERE id='manyata-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.697419 12.9591722)') WHERE id='marathahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.5217178 12.9619295)') WHERE id='maruthi-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6322142 13.0019125)') WHERE id='maruthi-sevanagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6066227 12.9756295)') WHERE id='mg-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.60285 12.99515)') WHERE id='millers-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.7068437 12.9518129)') WHERE id='munnekolala';
UPDATE entities SET location = st_geogfromtext('POINT(77.6550442 12.9545517)') WHERE id='murugeshpalya';
UPDATE entities SET location = st_geogfromtext('POINT(77.6078805 13.121167)') WHERE id='mysore-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.5082833 12.9599448)') WHERE id='nagarabhavi';
UPDATE entities SET location = st_geogfromtext('POINT(77.5003091 13.0431638)') WHERE id='nagasandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.6135523 13.0422567)') WHERE id='nagavara';
UPDATE entities SET location = st_geogfromtext('POINT(77.6833333 13.3666667)') WHERE id='nandi-hill';
UPDATE entities SET location = st_geogfromtext('POINT(77.5338233 13.0159906)') WHERE id='nandini-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.6142102 12.9550291)') WHERE id='neelasandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.4110064 13.0874193)') WHERE id='nelamangala';
UPDATE entities SET location = st_geogfromtext('POINT(77.7207065 12.9734048)') WHERE id='netra-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.6851102 12.9549134)') WHERE id='old-airport-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.6451119 12.9857608)') WHERE id='old-madras-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.6504664 13.0075666)') WHERE id='ombr-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='ozone-manay-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.5567733 12.9155691)') WHERE id='padmanabha-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.5977596 12.8812029)') WHERE id='pai-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.7057495 12.9355734)') WHERE id='panathur';
UPDATE entities SET location = st_geogfromtext('POINT(77.5962816 12.8961381)') WHERE id='panduranga-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.5993711 12.9933834)') WHERE id='peenya';
UPDATE entities SET location = st_geogfromtext('POINT(77.5175123 13.0440017)') WHERE id='prashanth-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='prestige-shantiniketan-techpark';
UPDATE entities SET location = st_geogfromtext('POINT(77.6939632 12.942016)') WHERE id='prestige-tech-park-i';
UPDATE entities SET location = st_geogfromtext('POINT(77.6939632 12.942016)') WHERE id='prestige-tech-park-ii';
UPDATE entities SET location = st_geogfromtext('POINT(77.6323623 13.0724417)') WHERE id='rk-hegde-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.4888388 13.01152)') WHERE id='ragavendra-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.5191195 12.9242199)') WHERE id='raja-rajeshwari-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.5524925 12.9900578)') WHERE id='rajaji-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6711243 13.0148905)') WHERE id='ramamurthy-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.417983 12.907323)') WHERE id='ramohalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6024402 12.9694839)') WHERE id='residency-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.614948 13.0063217)') WHERE id='richards-town';
UPDATE entities SET location = st_geogfromtext('POINT(77.6074688 12.9664423)') WHERE id='richmond-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.6034894 12.9633823)') WHERE id='richmond-town';
UPDATE entities SET location = st_geogfromtext('POINT(77.5705973 13.0438651)') WHERE id='rmv-2nd-stage';
UPDATE entities SET location = st_geogfromtext('POINT(77.6812929 12.9245092)') WHERE id='rmz-ecospace';
UPDATE entities SET location = st_geogfromtext('POINT(77.5945627 12.9715987)') WHERE id='rmz-infinity';
UPDATE entities SET location = st_geogfromtext('POINT(77.5948946 13.0223141)') WHERE id='rt-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.5812849 13.0068182)') WHERE id='sadasivanagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6049218 12.9309643)') WHERE id='sadduguntepalya';
UPDATE entities SET location = st_geogfromtext('POINT(77.5871032 13.0623425)') WHERE id='sahakara-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6017436 12.9319152)') WHERE id='salarpuria-infinity';
UPDATE entities SET location = st_geogfromtext('POINT(77.5767631 13.0364641)') WHERE id='sanjay-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.703405 12.9037557)') WHERE id='sarjapur-attibele-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.649853 12.9243632)') WHERE id='sarjapur-orr';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='sarjapur-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.7863255 12.8613781)') WHERE id='sarjapur';
UPDATE entities SET location = st_geogfromtext('POINT(77.5787401 12.9935334)') WHERE id='seshadripuram';
UPDATE entities SET location = st_geogfromtext('POINT(77.473142 13.026172)') WHERE id='shanthi-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='shivaji-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.4948136 13.0654332)') WHERE id='sidedahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.7445822 12.9581993)') WHERE id='sigma-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.6237883 12.9177456)') WHERE id='silk-board';
UPDATE entities SET location = st_geogfromtext('POINT(77.6460458 12.8801665)') WHERE id='singasandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.4749013 12.9307172)') WHERE id='smv-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.7089998 12.9564845)') WHERE id='spice-garden';
UPDATE entities SET location = st_geogfromtext('POINT(77.6182601 13.00127)') WHERE id='srinivasa-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.615993 12.92928)') WHERE id='st-johns-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.5406717 12.8964518)') WHERE id='subramanyapura';
UPDATE entities SET location = st_geogfromtext('POINT(77.5867915 12.9591024)') WHERE id='sudhama-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.5071806 12.9919691)') WHERE id='sunkadakatte';
UPDATE entities SET location = st_geogfromtext('POINT(77.51316 13.042967)') WHERE id='t-dasarahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.6235264 13.0568653)') WHERE id='thanisandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.4011079 12.9662711)') WHERE id='thavarekere-magadi-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.7529293 12.9123424)') WHERE id='thippasandra';
UPDATE entities SET location = st_geogfromtext('POINT(77.7208853 12.9520393)') WHERE id='thubarahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.5189458 12.8816584)') WHERE id='thurahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.483492 13.0536105)') WHERE id='tumkur-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.5011155 12.9500587)') WHERE id='ullal';
UPDATE entities SET location = st_geogfromtext('POINT(77.6285585 12.9817147)') WHERE id='ulsoor';
UPDATE entities SET location = st_geogfromtext('POINT(77.552059 12.9069823)') WHERE id='uttarahalli';
UPDATE entities SET location = st_geogfromtext('POINT(77.7412047 12.9388787)') WHERE id='varthur';
UPDATE entities SET location = st_geogfromtext('POINT(77.5920295 12.9910869)') WHERE id='vasanth-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.6575381 12.8488517)') WHERE id='velankani-tech-park';
UPDATE entities SET location = st_geogfromtext('POINT(77.614948 12.9667581)') WHERE id='victoria-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.556098 13.0857908)') WHERE id='vidyaranyapura';
UPDATE entities SET location = st_geogfromtext('POINT(77.6814627 12.9780267)') WHERE id='vignana-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.7892181 13.2934333)') WHERE id='vijaypura';
UPDATE entities SET location = st_geogfromtext('POINT(77.6653692 12.9517694)') WHERE id='vimanapura';
UPDATE entities SET location = st_geogfromtext('POINT(77.4972874 12.9639778)') WHERE id='vishweshwaraiah-layout';
UPDATE entities SET location = st_geogfromtext('POINT(77.5972528 12.9711797)') WHERE id='vittal-mallya-road';
UPDATE entities SET location = st_geogfromtext('POINT(77.6190723 12.9544874)') WHERE id='viveka-nagar';
UPDATE entities SET location = st_geogfromtext('POINT(77.7499467 12.9697999)') WHERE id='whitefield';
UPDATE entities SET location = st_geogfromtext('POINT(77.6074284 12.9999537)') WHERE id='williams-town';
UPDATE entities SET location = st_geogfromtext('POINT(77.5971865 12.9481933)') WHERE id='wilson-garden';
UPDATE entities SET location = st_geogfromtext('POINT(77.6646801 12.8422557)') WHERE id='wipro-sarjapura';
UPDATE entities SET location = st_geogfromtext('POINT(77.5576384 12.885651)') WHERE id='yelachena-halli';
UPDATE entities SET location = st_geogfromtext('POINT(77.5713193 13.1042445)') WHERE id='yelahanka-new-town';
UPDATE entities SET location = st_geogfromtext('POINT(77.5860122 13.0944536)') WHERE id='yelahanka';
UPDATE entities SET location = st_geogfromtext('POINT(77.6836756 12.9446164)') WHERE id='yemalur';
UPDATE entities SET location = st_geogfromtext('POINT(77.5409156 13.0279661)') WHERE id='yeshwanthpur';

CREATE INDEX ON entities USING GIST (location);
VACUUM ANALYZE entities(location);