//Maya ASCII 2012 scene
//Name: forge_spirit_model.ma
//Last modified: Tue, Dec 31, 2013 02:15:41 PM
//Codeset: 1252
requires maya "2012";
requires "vsMaster" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012";
fileInfo "cutIdentifier" "201201172124-821142";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.2519107783401147 135.49023076882739 412.41661271824267 ;
	setAttr ".r" -type "double3" -3.3383527284738599 -4.1999999999996795 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 437.84022911957794;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.8151406410610775 79.950001255792458 4.2031296057972014 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 168.54723510742187 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 168.54723510742187;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.165170692121034 124.34265506318451 196.46185604799356 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 168.54723510742187;
	setAttr ".ow" 317.97465843911567;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 220.85480996983244 87.647009279491215 -23.808388426682619 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 168.54723510742187;
	setAttr ".ow" 245.45033602499106;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "root";
	addAttr -ci true -sn "skeletonBuilder" -ln "skeletonBuilder" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -1.0028634668238146e-014 85.389330673256239 -19.166137420564944 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" -89.999999999999986 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 0 1 0 1 2.2204460492503131e-016 -2.2204460492503131e-016 0
		 -2.2204460492503131e-016 1 0 0 -1.0028634668238146e-014 85.389330673256239 -19.166137420564944 1;
	setAttr ".radi" 3;
	setAttr "._skeletonFinalizeHash" -type "string" "(None, -2552613257L, [-1.0028634668238146e-14, 85.389330673256239, -19.166137420564944], [-89.999999999999986, -89.999999999999986, 0.0])";
createNode joint -n "spine1" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.6888974477789986 5.3440838412891572e-015 25.69950229100391 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 0 -88.31726742454002 0 ;
	setAttr ".bps" -type "matrix" -2.1542850911296386e-016 0.99956875534345868 0.029365001977333161 0
		 1 2.2204460492503131e-016 -2.2204460492503131e-016 0 -2.2846918963832324e-016 0.029365001977333161 -0.99956875534345868 0
		 -9.5718868835238448e-015 111.08883296426015 -15.477239972785945 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'root', -2233454573L, [3.6888974477789986, 5.3440838412891572e-15, 25.69950229100391], [0.0, -88.31726742454002, 0.0])";
createNode joint -n "spine2" -p "spine1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 23.916975663876272 2.9510212436541096e-015 -1.0658141036401503e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 0 51.949088163370092 0 ;
	setAttr ".bps" -type "matrix" 4.7129293430212323e-017 0.59297177587741579 0.80522324420795499 0
		 1 2.2204460492503131e-016 -2.2204460492503131e-016 0 -3.1046166084300232e-016 0.80522324420795499 -0.59297177587741579 0
		 -1.1773264049629637e-014 134.99549456018076 -14.774917935124378 1;
	setAttr ".radi" 2;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'spine1', 3042888712L, [23.916975663876272, 2.9510212436541096e-15, -1.0658141036401503e-14], [0.0, 51.949088163370092, 0.0])";
createNode joint -n "clavicle_R" -p "spine2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.9109299435094016 -8.3992003410982168 11.142110991353192 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" -90 -55.840189924791304 112.51754390031061 ;
	setAttr ".bps" -type "matrix" 0.51869538968103168 0.53879108491995165 -0.66382170764025539 0
		 0.76438988858359913 -0.64004507263220378 0.077784337950452531 0 -0.38296630524733616 -0.5477649786268004 -0.74383488573418333 0
		 -8.3992003410982328 144.50753706626597 -20.648373312331543 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'spine2', -1215038749, [0.9109299435094016, -8.3992003410982168, 11.142110991353192], [-90.0, -55.840189924791304, 112.51754390031061])";
createNode joint -n "bicep_R" -p "clavicle_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -21.781592148142224 0 2.1316282072803006e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" -173.26289787090064 53.923651429792727 4.3979008704755653 ;
	setAttr ".bps" -type "matrix" 0.64858345742316348 0.73016003286926745 0.21495540271732261 0
		 -0.74551435770837815 0.66634260124295908 -0.013995721468788622 0 -0.15345305864556832 -0.15117494557339195 0.97652357607136286 0
		 -19.697211768252174 132.77180940148452 -6.189279617428209 1;
	setAttr ".radi" 2;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'clavicle_R', -1363055319, [-21.781592148142224, 0.0, 2.1316282072803006e-14], [-173.26289787090064, 53.923651429792727, 4.3979008704755653])";
createNode joint -n "elbow_R" -p "bicep_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -45.685822762609384 2.8421709430404007e-014 1.0658141036401503e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 0 50.708805954777375 0 ;
	setAttr ".bps" -type "matrix" 0.52948629666717795 0.57938251914873218 -0.61964518730201334 0
		 -0.74551435770837815 0.66634260124295908 -0.013995721468788622 0 0.40478710959261299 0.46936492654824219 0.78475726287433756 0
		 -49.328280650847248 99.413847551478142 -16.009694047837122 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'bicep_R', 406323475, [-45.685822762609384, 2.8421709430404007e-14, 1.0658141036401503e-14], [0.0, 50.708805954777375, 0.0])";
createNode joint -n "wrist_R" -p "elbow_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -47.512144857071874 2.8421709430404007e-014 -7.1054273576010019e-015 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" -15.004750511681667 0.73313842293858655 2.733053274106227 ;
	setAttr ".bps" -type "matrix" 0.48811612214983191 0.60444084261974995 -0.62959822035210533 0
		 -0.85008771988293041 0.49267593719290498 -0.18606796988018617 0 0.19772081276803233 0.62603649149567997 0.75431080564587516 0
		 -74.485310277932768 71.886141374028369 13.430977851243561 1;
	setAttr ".radi" 2;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'elbow_R', 3802330221L, [-47.512144857071874, 2.8421709430404007e-14, -7.1054273576010019e-15], [-15.004750511681667, 0.73313842293858655, 2.7330532741062257])";
createNode joint -n "Thumb_0_R" -p "wrist_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -5.4154598001018144 -0.89946757492798213 5.1990763064587853 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" -13.456557307151355 -41.802421490623928 -117.91331794378877 ;
	setAttr ".bps" -type "matrix" 0.52142534346348079 -0.11817411197967492 0.84507425144291759 0
		 0.85329321271425751 0.075126672527724744 -0.51599096524134413 0 -0.0025108424428332554 0.9901468892708436 0.14001011869682845 0
		 -75.336091582381556 71.424481748742949 20.929623246755241 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'wrist_R', -3188548908L, [-5.4154598001018295, -0.89946757492795371, 5.1990763064587995], [147.8259503465934, 37.730796151708873, 26.688886428440515])";
createNode joint -n "Thumb_1_R" -p "Thumb_0_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 12.546725463562442 2.8421709430404007e-014 1.4210854715202004e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".bps" -type "matrix" 0.52142534346348079 -0.11817411197967492 0.84507425144291759 0
		 0.85329321271425751 0.075126672527724744 -0.51599096524134413 0 -0.0025108424428332554 0.9901468892708436 0.14001011869682845 0
		 -68.793910948201486 69.941783608833703 31.532537875935052 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'Thumb_0_R', -714885931, [-11.147689821797837, 4.2632564145606011e-14, 4.2632564145606011e-14], [-5.324944283106497e-14, 3.1805546814635183e-15, -1.3914926731402892e-14])";
createNode joint -n "Mid_0_R" -p "wrist_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -15.787899343977681 -7.2117308307001906 -5.4168635338995159 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 0.89608949184812769 16.107107520701824 -116.72160059378128 ;
	setAttr ".bps" -type "matrix" 0.46377071425228295 -0.85758928588677041 0.22239006572719755 0
		 0.8234459858597194 0.32463193582285343 -0.46535020642030672 0 0.32688443366645992 0.39894200452713274 0.85673323972543047 0
		 -77.132061324903802 55.399089703887171 20.626884599971309 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'wrist_R', -1666787804, [-18.524121628783508, -0.56344282988075634, -7.2838724462411477], [58.108356793044322, -27.924333987871627, 43.722186915623993])";
createNode joint -n "Mid_1_R" -p "Mid_0_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 11.716882396772121 -2.8421709430404007e-014 3.5527136788005009e-015 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".bps" -type "matrix" 0.46377071425228295 -0.85758928588677041 0.22239006572719755 0
		 0.8234459858597194 0.32463193582285343 -0.46535020642030672 0 0.32688443366645992 0.39894200452713274 0.85673323972543047 0
		 -71.698114406942821 45.350816896420092 23.232602846307323 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'Mid_0_R', 2997453153L, [-10.97882803766646, 0.0, 1.4210854715202004e-14], [-2.0673605429512864e-14, 3.9836447385330557e-13, 6.9972202992197375e-14])";
createNode joint -n "Index_0_R" -p "wrist_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -23.805570399579434 -10.056580216730367 4.7057081179165792 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 0.95672483334858749 -24.810866418865889 -124.61888915016041 ;
	setAttr ".bps" -type "matrix" 0.46626459119905495 -0.41701968041507986 0.78018710393115576 0
		 0.88455704613123942 0.23223211834395613 -0.4045084366846452 0 -0.012496524859134328 0.87872796095036398 0.47715931040949155 0
		 -76.625801206956609 55.48839225957277 33.839696555709779 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'wrist_R', -3187229513L, [-23.354854367532951, 1.9981782199166105, 2.2868243267065438], [92.675087842959357, 11.04958294930023, 29.392349250724912])";
createNode joint -n "Index_1_R" -p "Index_0_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 13.814758969340581 2.8421709430404007e-014 -2.8421709430404007e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".bps" -type "matrix" 0.46626459119905495 -0.41701968041507986 0.78018710393115576 0
		 0.88455704613123942 0.23223211834395613 -0.4045084366846452 0 -0.012496524859134328 0.87872796095036398 0.47715931040949155 0
		 -70.18446826360352 49.727365889166983 44.617793347506542 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'Index_0_R', 1986848938, [-16.458803872379924, 7.1054273576010019e-15, -2.8421709430404007e-14], [5.4069429584879807e-14, 6.99722029921974e-14, 4.1347210859025734e-14])";
createNode joint -n "clavicle_L" -p "spine2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.91092994350941581 8.3992003410982488 11.142110991353192 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 89.999999999999972 55.840189924791332 67.482456099689202 ;
	setAttr ".bps" -type "matrix" 0.51869538968103091 -0.53879108491995042 0.66382170764025661 0
		 0.76438988858359813 0.64004507263220489 -0.077784337950451032 0 -0.38296630524733871 0.54776497862679974 0.74383488573418222 0
		 8.3992003410982328 144.507537066266 -20.648373312331536 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'spine2', 237112336, [0.91092994350941581, 8.3992003410982488, 11.142110991353192], [89.999999999999972, 55.840189924791332, 67.482456099689202])";
createNode joint -n "bicep_L" -p "clavicle_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 21.781592148142238 1.4210854715202004e-014 -2.8421709430404007e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" -173.26289787090076 53.923651429792862 4.397900870475409 ;
	setAttr ".bps" -type "matrix" 0.64858345742316337 -0.73016003286926701 -0.21495540271732327 0
		 -0.74551435770837826 -0.66634260124295885 0.013995721468787616 0 -0.1534530586455676 0.15117494557339289 -0.97652357607136286 0
		 19.697211768252174 132.77180940148455 -6.1892796174281735 1;
	setAttr ".radi" 2;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'clavicle_L', 568419397, [21.781592148142238, 1.4210854715202004e-14, -2.8421709430404007e-14], [-173.26289787090076, 53.923651429792855, 4.397900870475409])";
createNode joint -n "elbow_L" -p "bicep_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 45.685822762609412 1.4210854715202004e-014 -1.7763568394002505e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 0 50.708805954777411 0 ;
	setAttr ".bps" -type "matrix" 0.52948629666717706 -0.57938251914873229 0.61964518730201323 0
		 -0.74551435770837826 -0.66634260124295885 0.013995721468787616 0 0.40478710959261349 -0.46936492654824141 -0.78475726287433778 0
		 49.328280650847233 99.413847551478142 -16.009694047837115 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'bicep_L', -48830613, [45.685822762609412, 1.4210854715202004e-14, -1.7763568394002505e-14], [0.0, 50.708805954777411, 0.0])";
createNode joint -n "wrist_L" -p "elbow_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 47.512144857071917 2.8421709430404007e-014 3.5527136788005009e-015 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" -15.004750511681657 0.73313842293858678 2.7330532741062341 ;
	setAttr ".bps" -type "matrix" 0.48811612214983091 -0.60444084261975017 0.62959822035210522 0
		 -0.85008771988293053 -0.49267593719290492 0.18606796988018504 0 0.19772081276803297 -0.62603649149567908 -0.75431080564587583 0
		 74.485310277932683 71.886141374028313 13.430977851243593 1;
	setAttr ".radi" 2;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'elbow_L', 4100811765L, [47.512144857071902, 1.4210854715202004e-14, -1.0658141036401503e-14], [-15.00475051168166, 0.73313842293858278, 2.733053274106239])";
createNode joint -n "Mid_0_L" -p "wrist_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 15.005533276807684 11.11866385066881 4.195486375834264 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" -10.576734127562119 -7.3844328949367632 82.844323286167949 ;
	setAttr ".bps" -type "matrix" -0.75076054285962934 -0.63991449124956046 0.16391476801658655 0
		 -0.63463363829129815 0.62986449973881575 -0.44778438686260746 0 0.18329962475211029 -0.44020467496107774 -0.87898867552895643 0
		 73.187448367025638 54.711758492429638 21.782561399998315 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'wrist_L', -1325337612, [18.524121628783504, 0.56344282988077055, 7.2838724462411406], [58.108356793044074, -27.924333987871421, 43.722186915624363])";
createNode joint -n "Mid_1_L" -p "Mid_0_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 13.254493213989178 1.0658141036401503e-014 1.0658141036401503e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".bps" -type "matrix" -0.75076054285962934 -0.63991449124956046 0.16391476801658655 0
		 -0.63463363829129815 0.62986449973881575 -0.44778438686260746 0 0.18329962475211029 -0.44020467496107774 -0.87898867552895643 0
		 63.236497846361843 46.230016210629003 23.955168580346758 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'Mid_0_L', -1441978381L, [10.978828037666474, 0.0, 2.8421709430404007e-14], [-5.5659706925611529e-14, -2.23433966372812e-13, 5.2479152244148016e-14])";
createNode joint -n "Index_0_L" -p "wrist_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 22.565190454168938 12.792817336307209 -4.6448997642390211 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" -9.1390952270519339 32.769247188003803 64.158405417595063 ;
	setAttr ".bps" -type "matrix" -0.57143906435095437 -0.25553523365596403 0.7798455873402752 0
		 -0.77848981767145164 0.46944838115125792 -0.41661951612512454 0 -0.25963628312617559 -0.84517451558530521 -0.46719272114360877 0
		 73.706333261082406 54.851982123285808 33.522013237216868 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'wrist_L', 882940811L, [23.354854367532955, -1.9981782199165963, -2.2868243267065509], [92.675087842959343, 11.049582949300239, 29.39234925072488])";
createNode joint -n "Index_1_L" -p "Index_0_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 13.625924606583908 1.4210854715202004e-014 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".bps" -type "matrix" -0.57143906435095437 -0.25553523365596403 0.7798455873402752 0
		 -0.77848981767145164 0.46944838115125792 -0.41661951612512454 0 -0.25963628312617559 -0.84517451558530521 -0.46719272114360877 0
		 65.919947652979445 51.370078295163843 44.148130415092595 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'Index_0_L', 1133045132, [16.458803872379931, -1.4210854715202004e-14, 1.4210854715202004e-14], [-5.8045122936709175e-14, -3.4986101496098681e-14, 1.9083328088781099e-13])";
createNode joint -n "Thumb_0_L" -p "wrist_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 5.4154598001018099 0.89946757492799634 -5.1990763064587853 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 14.887172438442262 41.802421490623928 62.086682056211131 ;
	setAttr ".bps" -type "matrix" -0.52142534346348057 -0.11817411197967614 0.84507425144291781 0
		 -0.85308992105299652 0.050382901184566092 -0.51932566840665495 0 0.018793557188138243 -0.99171389146569966 -0.12708406541409922 0
		 75.336091582381457 71.424481748742878 20.929623246755277 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'wrist_L', -3046625368L, [5.4154598001018313, 0.89946757492796792, -5.1990763064587924], [147.82595034659332, 37.730796151708873, 26.688886428440394])";
createNode joint -n "Thumb_1_L" -p "Thumb_0_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 12.546725463562396 -1.4210854715202004e-014 -4.2632564145606011e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".bps" -type "matrix" -0.52142534346348057 -0.11817411197967614 0.84507425144291781 0
		 -0.85308992105299652 0.050382901184566092 -0.51932566840665495 0 0.018793557188138243 -0.99171389146569966 -0.12708406541409922 0
		 68.793910948201443 69.941783608833646 31.532537875935077 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'Thumb_0_L', 1935306287, [11.147689821797847, -1.4210854715202004e-14, -2.8421709430404007e-14], [-1.4729943868527915e-13, 1.0336802714756432e-13, 7.7426628026877506e-14])";
createNode joint -n "neck1" -p "spine2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 21.617874031189373 -1.0188351285532905e-015 1.4210854715202004e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 0 23.879574424609991 0 ;
	setAttr ".bps" -type "matrix" 1.6877468159371786e-016 0.21624544086205105 0.97633903399709332 0
		 1 2.2204460492503131e-016 -2.2204460492503131e-016 0 -2.6480694855982463e-016 0.97633903399709332 -0.21624544086205105 0
		 -1.1773264049629642e-014 147.8142837151494 2.632296725148823 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'spine2', 1545824168, [21.617874031189373, -1.0188351285532905e-15, 1.4210854715202004e-14], [0.0, 23.879574424609991, 0.0])";
createNode joint -n "head" -p "neck1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 24.759675754866826 -4.1788063918913284e-015 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 0 22.699047887309106 0 ;
	setAttr ".bps" -type "matrix" 2.5788869652232886e-016 -0.17726412239936695 0.98416331516165667 0
		 1 2.2204460492503131e-016 -2.2204460492503131e-016 0 -1.7916761247122935e-016 0.98416331516165667 0.17726412239936695 0
		 -1.1773264049629624e-014 153.16845071436202 26.806134633736754 1;
	setAttr ".radi" 2;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'neck1', 4883812847L, [24.759675754866826, -4.1788063918913284e-15, 0.0], [0.0, 22.699047887309106, 0.0])";
createNode joint -n "jaw1_0" -p "head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 3.717047653438609 -3.6184719355657566e-014 -5.7377768568256045 ;
	setAttr ".r" -type "double3" -7.0915334913308872e-014 4.1347210859025235e-014 -7.9377374345600929e-013 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" -2.2914824223466181e-015 -10.21044305074917 1.2926938578039097e-014 ;
	setAttr ".bps" -type "matrix" 2.2204460492503126e-016 -1.9428902930940239e-016 1 0
		 1 2.2204460492503131e-016 -2.2204460492503131e-016 0 -2.2204460492503131e-016 1 1.9428902930940239e-016 0
		 -4.597137505070041e-014 146.86264203108729 29.447214595910161 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'head', -2184905966L, [3.717047653438609, -3.6184719355657566e-14, -5.7377768568256045], [-2.2914824223466181e-15, -10.21044305074917, 1.2926938578039097e-14])";
createNode joint -n "tail0_0" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -10.758980985890361 -3.0928831108783959e-014 -22.050053242414727 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 0 125.73609169962901 0 ;
	setAttr ".bps" -type "matrix" 5.0551371916031197e-017 -0.81171578210842588 -0.58405264238432042 0
		 1 2.2204460492503131e-016 -2.2204460492503131e-016 0 3.0992284838332522e-016 -0.58405264238432042 0.81171578210842588 0
		 -3.8450344098642176e-014 63.339277430841513 -29.925118406455304 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'root', -3986931174L, [-10.758980985890361, -3.0928831108783959e-14, -22.050053242414727], [0.0, 125.73609169962901, 0.0])";
createNode joint -n "tail0_1" -p "tail0_0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_skeletonFinalizeHash" -ln "_skeletonFinalizeHash" -dt "string";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 29.243932839665032 -2.9900030355669373e-014 -7.1054273576010019e-015 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr ".jo" -type "double3" 0 14.989820359461975 0 ;
	setAttr ".bps" -type "matrix" -3.1329547733655692e-017 -0.63303083805356086 -0.77412657755253877 0
		 1 2.2204460492503131e-016 -2.2204460492503131e-016 0 3.1245171241558445e-016 -0.77412657755253877 0.63303083805356086 0
		 -6.6872053529046196e-014 39.601515613966534 -47.005114655171276 1;
	setAttr "._skeletonFinalizeHash" -type "string" "(u'tail0_0', -2073962793L, [29.243932839665032, -2.9900030355669373e-14, -7.1054273576010019e-15], [0.0, 14.989820359461975, 0.0])";
createNode transform -n "forge_spirit_low:forge_spirit_fire";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "forge_spirit_low:forge_spirit_fireShape" -p "forge_spirit_low:forge_spirit_fire";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
createNode mesh -n "forge_spirit_fireShapeOrig" -p "forge_spirit_low:forge_spirit_fire";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 261 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.16298801 0.060782 0.14086799
		 0.100229 0.12157 0.092519 0.143029 0.060704 0.078373998 0.228074 0.122092 0.25080901
		 0.115181 0.228104 0.103502 0.19961999 0.121248 0.53670698 0.15658499 0.531726 0.099372998
		 0.56681401 0.161468 0.36449099 0.100708 0.36683699 0.052816998 0.29340899 0.099180996
		 0.29387301 0.047584999 0.266684 0.099806003 0.27275699 0.16222601 0.040754002 0.125871
		 0.048097 0.16691101 0.025497001 0.154669 0.081179999 0.13014001 0.142938 0.086200997
		 0.123476 0.092735998 0.090416998 0.145319 0.040470999 0.112205 0.075474001 0.123579
		 0.170701 0.070051 0.158245 0.138945 0.215284 0.171795 0.025715999 0.082341 0.14985999
		 0.093537003 0.13507301 0.191903 0.087526999 0.154195 0.16248199 0.074198 0.43887001
		 0.099794999 0.46438301 0.103855 0.445741 0.106095 0.43342599 0.107718 0.45832399
		 0.125716 0.53000498 0.14365201 0.497087 0.118881 0.48861399 0.19876701 0.518318 0.136069
		 0.56646401 0.201894 0.566809 0.174916 0.458996 0.171709 0.431981 0.146006 0.44422999
		 0.109302 0.42228499 0.184397 0.41625401 0.041102 0.41955301 0.072258003 0.35102901
		 0.163103 0.248502 0.115252 0.234634 0.181025 0.413782 0.153419 0.37357801 0.199729
		 0.38898501 0.149988 0.40768999 0.106294 0.170204 0.118411 0.17786901 0.094705001
		 0.227595 0.055333 0.22662 0.054501999 0.224343 0.077734999 0.20348699 0.061553001
		 0.24332801 0.10797 0.26148501 0.097900003 0.18818501 0.14884 0.25019899 0.200905
		 0.196383 0.182171 0.13180301 0.068122998 0.211255 0.172488 0.13753299 0.137724 0.228407
		 0.172039 0.13531201 0.15060601 0.39574 0.16161001 0.350719 0.095996998 0.27430099
		 0.090313002 0.247284 0.122223 0.60522401 0.186239 0.67256898 0.108028 0.61888897
		 0.219291 0.69497198 0.056899 0.54672003 0.074455999 0.54156297 0.51153398 0.57773101
		 0.485865 0.49212599 0.33723801 0.56827903 0.50995898 0.66729498 0.33330199 0.65641803
		 0.686616 0.65641803 0.68583 0.56827903 0.50995898 0.61136299 0.282038 0.62863201
		 0.51153398 0.57556498 0.22808699 0.65685898 0.353037 0.71345198 0.13600101 0.62020898
		 0.50995898 0.72584301 0.66688102 0.71345198 0.24183799 0.74495298 0.39099601 0.77446997
		 0.77807999 0.74495298 0.62892097 0.77446997 0.16817001 0.485778 0.173454 0.49668899
		 0.19058201 0.48796001 0.134709 0.56566501 0.26992401 0.62697399 0.28004 0.62464398
		 0.739878 0.62464398 0.70344001 0.58116603 0.71208 0.558828 0.319628 0.58116603 0.274676
		 0.558828 0.51153398 0.52303398 0.37253401 0.47615901 0.40075499 0.38102299 0.34130901
		 0.46540499 0.62163502 0.47550899 0.56057602 0.39877 0.612746 0.46806499 0.70185202
		 0.374872 0.51734102 0.44056901 0.518933 0.35220701 0.37042901 0.29604399 0.480712
		 0.309264 0.58438498 0.29818299 0.49645001 0.27456099 0.51153398 0.210585 0.45106599
		 0.218308 0.57200301 0.218308 0.51153398 0.155304 0.51153398 0.22443099 0.057314999
		 0.15409499 0.12322 0.139438 0.181715 0.052085001 0.178868 0.020231999 0.116607 0.13783699
		 0.158437 0.166767 0.628371 0.87043202 0.51323497 0.93951201 0.51323497 0.84504402
		 0.39809799 0.87043202 0.351809 0.72455102 0.219446 0.76840502 0.50995898 0.70430303
		 0.69042999 0.81551701 0.32948801 0.85680002 0.80047202 0.72712201 0.41348201 0.78170198
		 0.31039399 0.85136002 0.61953902 0.78170198 0.668109 0.72455102 0.72262698 0.85136002
		 0.51651102 0.75641501 0.35765299 0.90683198 0.675367 0.90683198 0.34975901 0.94946599
		 0.67671102 0.94946599 0.51323497 0.97987801 0.50995898 0.78802502 0.50995898 0.82811397
		 0.51651102 0.92247403 0.91081703 0.070849001 0.93072599 0.071457997 0.94026297 0.109758
		 0.913275 0.11151 0.95384097 0.20346101 0.91940999 0.174906 0.916969 0.202319 0.90954697
		 0.223079 0.906331 0.51302499 0.928873 0.54305398 0.87088501 0.508165 0.86302 0.34085199
		 0.92414898 0.26990101 0.97144002 0.26861101 0.92349702 0.34299001 0.92630702 0.245921
		 0.98006803 0.23973601 0.89494598 0.072678998 0.94940603 0.087435998 0.94293302 0.13324399
		 0.87782001 0.12950601 0.92866802 0.033863999 0.938824 0.070078999 0.94329202 0.043605998
		 0.94996703 0.160482 0.88962698 0.167096 0.88606799 0.191761 0.917391 0.018030999
		 0.91239703 0.032954 0.91240197 0.017635999 0.95681101 0.14487199 0.933393 0.15726399
		 0.86491603 0.141767 0.89249802 0.088780001 0.95121199 0.41502899 0.92170799 0.42200199
		 0.92618102 0.44062901 0.91812402 0.43459699 0.91923201 0.409684 0.88305002 0.47348201
		 0.90171498 0.50633699 0.90763199 0.46492401 0.828408 0.49490201 0.89217103 0.54282999
		 0.82635498 0.54340202 0.85094398 0.4355 0.87952501 0.420636 0.85358602 0.40846899
		 0.840648 0.39277101 0.91578901 0.398552 0.98401099 0.39554101 0.951267 0.327162 0.86831403
		 0.220126 0.91739899 0.20872299 0.84390098 0.390297 0.82495701 0.36552599 0.87106299
		 0.349893 0.87481201 0.384092 0.95824301 0.135975 0.97097403 0.193762 0.93285102 0.19151101
		 0.94200802 0.142417 0.97306901 0.19810601 0.94784302 0.177498 0.97209197 0.21656001
		 0.92868 0.236101 0.90768099 0.180106 0.884354 0.22639801 0.85736001 0.182657 0.96769899
		 0.17748 0.910878 0.114609 0.86878902 0.130235 0.89009899 0.187869 0.91662902 0.096620999
		 0.873891 0.372154 0.86207199 0.327151 0.92595398 0.25048399 0.93943202 0.22156399
		 0.9709 0.52281499 0.95322901 0.51771897 0.85828298 0.46225801 0.85324001 0.473187
		 0.83591998 0.464517 0.89351302 0.542027 0.96770197 0.15783601 0.88716102 0.12910201
		 0.89480197 0.060857002;
	setAttr ".uvst[0].uvsp[250:260]" 0.90650302 0.029699 0.92246801 0.13617299
		 0.90947402 0.127538 0.89342898 0.59657401 0.921372 0.59515798 0.90687501 0.58154202
		 0.76619202 0.62144899 0.79183102 0.65685898 0.80062598 0.69497198 0.75966102 0.60379899
		 0.91036701 0.63284302;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 261 ".vt";
	setAttr ".vt[0:165]"  0 143.2257843 -30.77180099 0.118988 114.40118408 -2.35163689
		 0.67793602 71.55918884 -14.54688072 -1.020449042 56.66604996 -25.053562164 0 131.99572754 -33.79637146
		 0.55767399 88.50791931 -7.93306684 0.118988 44.39505005 -36.87659454 -34 118.55588531 -19.99999619
		 -38.36271667 114.70938873 -16.67789268 -50.026756287 101.66671753 -20.210392 -47.67717743 99.49843597 -19.73327255
		 -8.24924469 77.086334229 -24.41796494 -56.061233521 86.65337372 0.90706903 -70.46803284 75.52962494 14.90709496
		 -62.83296204 62.99848557 41.29299545 -63.091682434 64.71083832 42.24840546 -65.5184021 40.59322739 27.97820473
		 -73.42926025 43.68757248 25.79669571 -71.59371948 50.23706436 45.56610489 -64.019332886 47.12743378 48.6905098
		 -64.2144165 45.63230515 47.60757828 -70.64772034 70.80049896 33.095016479 -67.05266571 49.81652832 43.28108978
		 -62.7065773 41.86572647 27.39058304 -60.1960144 40.32089996 29.34866524 -69.13026428 46.24591446 26.080369949
		 -80.73861694 59.53462982 18.12364769 -73.99383545 69.018035889 7.55047894 -76.96985626 69.71569061 7.92920923
		 -74.83325958 64.98401642 10.27408791 -78.78639984 64.23022461 12.68195438 -78.80898285 52.45881271 24.4967823
		 -78.66137695 54.15290833 35.14980698 -72.51104736 51.43352127 33.85432816 -74.47687531 54.94557953 25.36576271
		 -10.54006481 60.78665161 -30.4747448 -68.039894104 78.77159119 10.25228024 -36.15829849 120.29663849 -11.25213242
		 -29.55900192 127.82303619 -6.81969309 -12.73975372 93.27165985 -16.24628639 -4.44877577 45.87627029 -39.54879379
		 -21.29249954 129.99404907 -16.94148445 -81.90351105 59.085071564 24.35852432 -78.83615112 70.24578094 13.42311478
		 -78.64561462 54.70659256 27.66987228 -79.87902832 66.00365448 18.26080513 -74.66101074 53.31191635 27.90349007
		 14.49551964 75.90659332 -19.58654022 5.62212896 61.19693375 -32.21760941 7.76450682 93.78180695 -16.22543716
		 4.68675089 45.87627029 -39.54879379 0.118988 33.79153061 -51.57133102 -74.76052856 68.02772522 0.014365
		 -71.69527435 71.16488647 0.93379903 -55.48265457 88.40628052 -18.93600273 -57.660923 84.55104828 -1.38669598
		 -52.60641479 101.98495483 -16.60233498 -47.56698227 96.45254517 -12.95603466 -20.25375175 146.89122009 -7.85841179
		 20.25375175 146.89122009 -7.85841179 -21.95691872 137.30448914 -14.19321632 -30.30394173 125.090820313 -2.14976406
		 -34.17474365 118.49694824 -9.79576969 -36.82660294 112.32635498 -9.49860954 -48.32606125 103.40383911 -10.71112156
		 -51.33055115 99.68963623 -11.058035851 -44.12025452 107.49967957 -10.97768021 -59.42866135 89.80445862 1.15258396
		 -70.87257385 80.83309937 10.54910946 -74.30673981 77.0069122314 15.57963085 0 121.2676239 3.74939394
		 -17.21706581 124.57997131 2.29022098 15.26816559 111.19095612 -14.70978832 -17.77316666 111.19095612 -16.5384388
		 0.118988 104.3252182 -5.80908394 13.34458447 129.90953064 -27.028194427 11.85381222 140.8490448 -25.12448502
		 -11.85381222 140.8490448 -25.12448502 -13.34458447 129.90953064 -27.028194427 8.98639393 152.55282593 -16.88895988
		 -8.98639393 152.55282593 -16.88895988 -62.97954178 88.70713043 -1.97144997 -59.99921036 40.63583374 28.45712852
		 -70.27065277 43.054290771 19.626688 -75.18561554 54.47485733 19.17846489 -76.1460495 60.51728439 16.93445015
		 -63.4590683 40.83241272 24.91651917 -72.64794159 57.68453598 35.31172562 -78.56348419 57.11090088 36.11115265
		 -30.014837265 115.5813446 -16.52087784 -39.89955902 104.10308838 -12.85996246 -35.86433411 108.34619904 -19.1228199
		 -44.22046661 100.41593933 -18.53458405 -41.64633942 107.65000153 -16.29999352 -48.093353271 104.69020081 -19.71174812
		 -38.87759781 113.4839325 -21.27319527 -27.72843742 126.7375412 -14.10248375 -39.90673828 106.2190094 -7.73703194
		 -52.43929672 97.84679413 -9.24087048 -48.64305115 93.47577667 -10.13213634 -56.8454628 100.56731415 -16.15154839
		 -50.90825272 88.62121582 -15.79982853 -49.13375092 93.25471497 -13.95405388 -69.50684357 68.92790222 1.18059599
		 -51.70519257 93.75487518 -17.80463219 -76.92144775 64.31304169 29.094114304 -72.78778839 68.72669983 29.73171425
		 -69.043617249 63.3354187 23.43605995 -70.1391449 67.11315155 28.65419579 -70.16346741 69.84200287 15.063518524
		 -71.29491425 73.4389801 19.19877243 -76.19684601 72.81044006 20.47064972 -68.27788544 73.029411316 30.65197372
		 -53.063488007 91.90801239 -12.73547554 -74.011299133 72.089874268 8.49538136 -70.51609039 75.93966675 5.78090906
		 -24.45369148 133.0072784424 -2.38073301 -41.049999237 119.19212341 -20.8999939 -40.60000229 117.59999847 -24.71758842
		 -1.82007301 98.39682007 -28.85029411 -2.20927691 63.32252121 -35.48526001 3.82358003 80.49040985 -28.10466003
		 0.118988 47.050849915 -41.97322845 0.118988 114.81659698 -27.83117294 13.28526688 113.0037689209 -23.87451172
		 -13.047292709 113.0037689209 -23.87451172 -41.49751282 104.80155945 -6.92681694 -18.91259575 121.60845947 -12.26179886
		 17.36800003 123.81504059 -18.16835785 -17.36800003 123.81504059 -18.16835785 14.61549091 115.47555542 -8.78814888
		 -14.37751579 115.47555542 -8.78814888 -10.38105583 95.33427429 -24.7047596 8.43599796 95.20961761 -22.056568146
		 -72.22125244 48.25772095 43.56289291 -62.17054367 48.29611969 45.57783508 -56.1502037 47.23284531 47.65391159
		 -59.40966797 65.05531311 40.078952789 -54.70990372 61.13471222 45.91764832 0 129.78862 22.098609924
		 0 135.90078735 28.90993118 -12 158.63983154 11.64760303 12 158.63983154 11.64760303
		 -8.69735718 140.77027893 26.60395813 -7.78274012 134.63897705 18.63507271 8.69735718 140.77027893 26.60395813
		 7.78274012 134.63897705 18.63507271 12.34891319 155.92976379 23.96090317 -12.34891319 155.92976379 23.96090317
		 15.56995583 148 12.80000019 -15.56995583 148 12.80000019 13.63272285 155.47698975 1.61037195
		 -13.63272285 155.47698975 1.61037195 0 126.22679138 11.021824837 11.94658661 130.1105957 10.088655472
		 -11.94658661 130.1105957 10.088655472 -21.94525146 138.52209473 3.44190598 21.94525146 138.52209473 3.44190598
		 0 154.020523071 31.84155273 0 161.64015198 12.15750408 0 161.76296997 25.51214409
		 0 155.15283203 -16.88895988 0 157.89315796 1.56026101 34 118.55588531 -19.99999619
		 38.36271667 114.70938873 -16.67789268 50.026756287 101.66671753 -20.210392;
	setAttr ".vt[166:260]" 47.67717743 99.49843597 -19.73327255 56.11622238 86.67175293 0.909311
		 71.035476685 75.82926178 14.9436388 61.79152298 66.3399353 41.70051956 62.53313446 67.91498566 42.63918304
		 66.27991486 44.95868301 25.95171928 66.92673492 51.67132568 45.74102783 58.90158463 50.70269012 49.12654877
		 58.65106583 49.21517181 48.04454422 71.14523315 71.78562164 33.21516037 62.36771393 52.49975204 43.60833359
		 62.84060287 48.57909012 26.36492538 77.33133698 58.28577042 17.97133636 73.5583725 69.12150574 7.56309795
		 76.47509766 69.42102814 7.89327288 72.85744476 65.15968323 10.2955122 76.53834534 63.35813904 12.5755949
		 73.77760315 51.96253204 24.43625641 74.44178772 53.58572769 35.080635071 67.74717712 52.62927628 34.00016021729
		 70.3063736 55.52028656 25.43585396 68.13356781 78.79061127 10.25459957 36.15829849 120.29663849 -11.25213242
		 29.55900192 127.82303619 -6.81969309 78.53625488 57.51096344 24.16654587 78.23083496 69.13457489 13.28759193
		 74.33002472 54.15691376 27.60283279 78.2509079 64.74655914 18.10748863 70.1269455 53.8859787 27.97350311
		 74.067649841 68.0032348633 0.0026209999 71.81819916 71.33634186 0.88955897 55.52735901 88.41230774 -18.93526649
		 57.67764282 84.55685425 -1.385988 52.60641479 101.98495483 -16.60233498 47.56983185 96.45314789 -12.95596123
		 30.30394173 125.090820313 -2.14976406 34.17474365 118.49694824 -9.79576969 36.82660294 112.32635498 -9.49860954
		 48.32606125 103.40383911 -10.71112156 51.33393478 99.68980408 -11.058015823 44.12025452 107.49967957 -10.97768021
		 59.46370697 89.80757904 1.15296495 71.10093689 80.79505157 10.54446888 75.024353027 76.8318634 15.55828285
		 62.98588943 88.706604 -1.97151399 62.86655807 45.22738647 19.89171982 70.65848541 54.903965 19.23079872
		 73.1366806 60.47444916 16.92922592 69.61049652 58.6057663 35.4240799 75.17586517 56.45640564 36.031330109
		 30.014837265 115.5813446 -16.52087784 39.89955902 104.10308838 -12.85996246 35.86433411 108.34619904 -19.1228199
		 44.22046661 100.41593933 -18.53458405 41.64633942 107.65000153 -16.29999352 48.093353271 104.69020081 -19.71174812
		 38.87759781 113.4839325 -21.27319527 27.72843742 126.7375412 -14.10248375 39.90673828 106.2190094 -7.73703194
		 52.44365311 97.84706879 -9.24083614 48.65347672 93.47864532 -10.13178635 56.86018753 100.56475067 -16.15185928
		 50.93673706 88.63095856 -15.7986412 49.13925171 93.25606537 -13.95388889 69.26705933 69.46185303 1.18522298
		 51.71203613 93.75572205 -17.80452919 75.30479431 63.86621475 29.039619446 72.53596497 69.22722626 29.79275894
		 67.27333069 65.072105408 23.6478672 69.51668549 68.39157867 28.81011391 69.82865906 71.074279785 15.21380901
		 72.022323608 74.21489716 19.29340363 76.61283875 72.28353882 20.40638924 69.38440704 74.58145142 30.84126091
		 53.06690979 91.90856934 -12.73540783 73.97462463 72.064804077 8.49232292 70.53388977 75.93973541 5.78091717
		 41.049999237 119.19212341 -20.8999939 40.60000229 117.59999847 -24.71758842 41.49751282 104.80155945 -6.92681694
		 66.93179321 49.60515976 43.72723007 57.33468628 52.34017181 46.071048737 51.32202148 52.92839432 48.34854126
		 59.01077652 69.24825287 40.5903244 53.62313461 66.71212006 46.59787369 18.91259575 121.60845947 -12.26179886
		 21.29249954 129.99404907 -16.94148445 21.95691872 137.30448914 -14.19321632 24.45369148 133.0072784424 -2.38073301
		 17.21706581 124.57997131 2.29022098 57.90406418 44.099647522 28.40584755 55.52116776 46.085109711 27.90517998
		 52.75302505 45.26477432 29.95162201 52.61914063 45.62509537 29.065618515 55.88583755 44.89846802 25.41241646;
	setAttr -s 700 ".ed";
	setAttr ".ed[0:165]"  19 18 0 18 134 0 134 20 0 20 19 0 28 53 0 53 52 0 52 30 0
		 30 28 0 8 63 0 63 37 0 37 8 0 12 67 0 67 68 0 68 36 0 36 12 0 68 69 0 69 13 0 13 36 0
		 23 16 0 16 24 0 24 23 0 25 34 0 34 31 0 31 17 0 17 25 0 86 16 0 16 17 0 17 83 0 83 86 0
		 30 85 0 85 26 0 26 30 0 30 29 0 29 85 0 82 24 0 86 82 0 82 23 0 86 23 0 18 88 0 88 32 0
		 32 134 0 18 22 0 22 87 0 87 88 0 56 94 0 94 9 0 9 56 0 56 65 0 65 64 0 64 94 0 8 95 0
		 95 93 0 93 8 0 64 66 0 66 94 0 93 94 0 66 93 0 66 8 0 95 91 0 91 93 0 95 7 0 7 91 0
		 89 91 0 7 89 0 66 63 0 94 92 0 92 9 0 92 57 0 57 10 0 10 92 0 65 57 0 57 64 0 92 64 0
		 65 98 0 98 99 0 99 57 0 98 67 0 12 99 0 100 81 0 81 67 0 98 100 0 100 56 0 9 100 0
		 103 27 0 27 29 0 29 103 0 52 103 0 103 53 0 28 27 0 102 57 0 99 102 0 52 54 0 54 101 0
		 101 103 0 10 9 0 57 104 0 104 10 0 104 9 0 102 101 0 101 104 0 104 102 0 54 104 0
		 14 15 0 15 21 0 21 106 0 106 14 0 43 28 0 30 45 0 45 43 0 111 110 0 110 13 0 69 111 0
		 105 106 0 106 111 0 111 105 0 27 109 0 109 29 0 45 111 0 111 43 0 107 34 0 34 85 0
		 85 107 0 109 85 0 109 107 0 106 87 0 87 33 0 33 108 0 108 106 0 107 108 0 108 46 0
		 46 107 0 107 112 0 112 108 0 109 110 0 110 107 0 112 110 0 111 112 0 21 112 0 111 21 0
		 14 138 0 138 15 0 53 113 0 113 54 0 101 113 0 102 113 0 113 99 0 12 55 0 55 113 0
		 9 113 0 113 100 0 55 81 0 113 104 0 115 36 0 13 114 0 114 115 0 115 55 0 114 27 0
		 28 114 0 43 114 0 115 81 0 115 68 0 114 69 0 114 109 0 61 116 0 116 38 0 38 61 0;
	setAttr ".ed[166:331]" 116 60 0 60 38 0 37 117 0 117 8 0 95 118 0 118 7 0 123 119 0
		 119 125 0 125 123 0 4 123 0 123 78 0 78 4 0 4 75 0 75 123 0 124 123 0 75 124 0 125 78 0
		 70 71 0 71 1 0 1 70 0 41 60 0 60 77 0 77 41 0 41 96 0 96 60 0 0 4 0 4 77 0 77 0 0
		 78 77 0 0 76 0 76 4 0 76 75 0 60 58 0 58 77 0 58 80 0 80 77 0 59 76 0 76 79 0 79 59 0
		 64 126 0 126 66 0 126 97 0 97 66 0 97 63 0 91 90 0 90 93 0 93 92 0 90 92 0 92 126 0
		 126 90 0 90 97 0 63 91 0 89 63 0 62 63 0 89 62 0 63 90 0 61 71 0 71 116 0 41 127 0
		 127 96 0 7 96 0 127 89 0 127 62 0 78 41 0 41 129 0 129 127 0 78 129 0 75 128 0 128 124 0
		 129 125 0 125 127 0 127 71 0 61 127 0 130 1 0 1 72 0 72 130 0 127 131 0 131 71 0
		 127 73 0 73 131 0 131 1 0 73 1 0 74 1 0 73 74 0 125 73 0 132 11 0 11 39 0 39 132 0
		 39 73 0 73 132 0 125 132 0 124 119 0 124 72 0 72 133 0 133 124 0 133 119 0 119 132 0
		 119 11 0 121 11 0 119 121 0 49 72 0 72 74 0 74 49 0 39 74 0 133 121 0 133 49 0 49 121 0
		 47 121 0 49 47 0 5 2 0 2 49 0 49 5 0 74 5 0 5 39 0 39 2 0 35 11 0 11 120 0 120 35 0
		 47 48 0 48 121 0 121 120 0 11 2 0 35 3 0 3 11 0 3 2 0 6 3 0 3 40 0 40 6 0 35 40 0
		 120 40 0 50 51 0 51 122 0 122 50 0 40 122 0 51 40 0 48 120 0 120 122 0 122 48 0 48 50 0
		 3 48 0 48 2 0 47 2 0 6 50 0 48 6 0 6 51 0 45 105 0 105 88 0 105 42 0 42 88 0 42 32 0
		 45 42 0 31 84 0 84 83 0 85 84 0 84 26 0 32 33 0 33 134 0 22 134 0 33 22 0 19 135 0
		 135 22 0 135 134 0 135 20 0 20 136 0 136 19 0 135 136 0;
	setAttr ".ed[332:497]" 46 44 0 44 34 0 34 46 0 44 31 0 23 25 0 25 83 0 83 34 0
		 84 34 0 83 23 0 26 42 0 31 26 0 44 42 0 42 31 0 44 32 0 33 46 0 33 44 0 15 137 0
		 137 112 0 137 108 0 137 14 0 138 137 0 116 58 0 117 118 0 117 7 0 96 38 0 37 38 0
		 96 37 0 7 37 0 145 158 0 158 140 0 140 145 0 143 140 0 158 143 0 62 37 0 62 61 0
		 61 37 0 155 156 0 156 71 0 71 155 0 153 155 0 71 153 0 70 153 0 156 116 0 79 151 0
		 151 59 0 152 80 0 58 152 0 156 58 0 157 59 0 151 157 0 156 152 0 144 150 0 150 155 0
		 155 144 0 146 154 0 154 149 0 149 146 0 146 139 0 139 153 0 153 154 0 139 144 0 150 156 0
		 154 157 0 157 149 0 152 150 0 150 141 0 141 152 0 151 142 0 142 149 0 149 151 0 146 145 0
		 140 139 0 143 144 0 150 148 0 148 141 0 142 147 0 147 149 0 143 150 0 143 148 0 149 145 0
		 147 145 0 158 148 0 147 158 0 147 160 0 160 158 0 160 148 0 80 0 0 0 79 0 80 161 0
		 161 0 0 161 79 0 161 162 0 162 151 0 152 162 0 162 159 0 159 142 0 141 159 0 160 159 0
		 173 174 0 174 246 0 246 172 0 172 173 0 180 182 0 182 195 0 195 196 0 196 180 0 164 188 0
		 188 203 0 203 164 0 167 187 0 187 208 0 208 207 0 207 167 0 187 168 0 168 209 0 209 208 0
		 177 171 0 171 183 0 183 186 0 186 177 0 260 211 0 211 171 0 171 256 0 256 260 0 182 178 0
		 178 213 0 213 182 0 213 181 0 181 182 0 258 257 0 257 259 0 259 258 0 260 259 0 257 260 0
		 246 184 0 184 215 0 215 172 0 215 214 0 214 176 0 176 172 0 199 165 0 165 221 0 221 199 0
		 221 204 0 204 205 0 205 199 0 164 220 0 220 222 0 222 164 0 221 206 0 206 204 0 220 206 0
		 221 220 0 164 206 0 220 218 0 218 222 0 218 163 0 163 222 0 216 163 0 218 216 0 203 206 0
		 165 219 0 219 221 0 219 166 0 166 200 0 200 219 0;
	setAttr ".ed[498:663]" 204 200 0 200 205 0 204 219 0 200 226 0 226 225 0 225 205 0
		 226 167 0 207 225 0 227 225 0 207 210 0 210 227 0 227 165 0 199 227 0 230 181 0 181 179 0
		 179 230 0 230 195 0 179 180 0 196 230 0 229 226 0 200 229 0 230 228 0 228 197 0 197 195 0
		 165 166 0 166 231 0 231 200 0 165 231 0 229 231 0 231 228 0 228 229 0 231 197 0 169 233 0
		 233 175 0 175 170 0 170 169 0 191 193 0 193 182 0 180 191 0 238 209 0 168 237 0 237 238 0
		 232 238 0 238 233 0 233 232 0 181 236 0 236 179 0 191 238 0 238 193 0 234 213 0 213 186 0
		 186 234 0 213 236 0 234 236 0 233 235 0 235 185 0 185 214 0 214 233 0 234 194 0 194 235 0
		 235 234 0 235 239 0 239 234 0 234 237 0 237 236 0 239 238 0 237 239 0 175 238 0 239 175 0
		 170 250 0 250 169 0 197 240 0 240 196 0 240 228 0 240 229 0 240 198 0 198 167 0 226 240 0
		 227 240 0 240 165 0 210 198 0 231 240 0 242 241 0 241 168 0 187 242 0 198 242 0 241 180 0
		 179 241 0 241 191 0 210 242 0 208 242 0 209 241 0 236 241 0 164 243 0 243 188 0 163 244 0
		 244 222 0 206 245 0 245 204 0 206 224 0 224 245 0 203 224 0 220 217 0 217 218 0 219 220 0
		 219 217 0 245 219 0 224 217 0 217 245 0 203 216 0 218 203 0 202 216 0 203 202 0 217 203 0
		 232 193 0 215 232 0 215 190 0 190 232 0 184 190 0 190 193 0 211 212 0 212 183 0 178 212 0
		 212 213 0 246 185 0 185 184 0 176 185 0 246 176 0 176 247 0 247 173 0 246 247 0 174 247 0
		 173 248 0 248 174 0 248 247 0 194 186 0 186 192 0 192 194 0 183 192 0 177 257 0 257 256 0
		 186 211 0 211 177 0 186 212 0 257 211 0 190 178 0 178 183 0 183 190 0 190 192 0 184 192 0
		 194 185 0 192 185 0 239 249 0 249 170 0 235 249 0 169 249 0 249 250 0 244 243 0 163 243 0
		 188 223 0 223 189 0 189 188 0 163 223 0 188 163 0 188 202 0 188 201 0;
	setAttr ".ed[664:699]" 201 202 0 189 201 0 1 255 0 255 70 0 252 76 0 76 253 0
		 253 252 0 59 253 0 252 75 0 252 128 0 251 128 0 252 251 0 251 124 0 251 255 0 255 130 0
		 130 251 0 72 251 0 254 253 0 59 254 0 154 255 0 255 157 0 255 153 0 255 254 0 254 157 0
		 189 254 0 254 201 0 189 253 0 253 223 0 223 252 0 255 201 0 223 251 0 216 251 0 202 251 0
		 251 201 0 258 256 0 258 260 0;
	setAttr -s 1400 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.084486 0.16570801 0.98254901 -0.389157
		 0.281647 0.87705898 -0.48929399 -0.85946101 0.148045 -0.112501 -0.98388302 0.138988
		 -0.74581999 0.54084003 -0.38890201 -0.21933 0.89720899 0.38328999 -0.59883302 -0.37579101
		 -0.70723403 -0.73530602 -0.45455 -0.502702 -0.95893198 0.18272001 0.216941 0.14177901
		 0.0072369999 0.98987198 -0.84395498 0.455102 0.28393999 0.80629402 -0.17120001 0.56619799
		 -0.051121 0.70131999 0.71101099 -0.44605801 0.84572899 0.292873 0.78566301 -0.155589
		 0.59877002 0.78566301 -0.155589 0.59877002 -0.44605801 0.84572899 0.292873 -0.37593299
		 0.86765099 0.32535401 0.89802599 0.059858002 0.43585199 0.34630701 0.91491401 0.20737199
		 -0.235847 -0.653952 0.71883398 0.58553201 -0.33383301 0.73872101 0.49733901 0.66417003
		 0.55815101 0.84922099 -0.52664697 -0.038290001 -0.68990999 -0.70035702 0.18309399
		 -0.68309498 -0.54958898 0.48097101 0.51776397 -0.410436 -0.75064099 -0.235847 -0.653952
		 0.71883398 -0.68309498 -0.54958898 0.48097101 0.081536002 -0.40001899 -0.91287303
		 -0.73530602 -0.45455 -0.502702 0.39865899 -0.62353998 -0.67250901 -0.76675498 -0.335179
		 -0.54748702 -0.73530602 -0.45455 -0.502702 0.44035399 -0.803967 -0.39965701 0.39865899
		 -0.62353998 -0.67250901 0.99325001 -0.049261 -0.105013 0.58553201 -0.33383301 0.73872101
		 -0.235847 -0.653952 0.71883398 0.51776397 -0.410436 -0.75064099 0.58553201 -0.33383301
		 0.73872101 0.99325001 -0.049261 -0.105013 0.34630701 0.91491401 0.20737199 0.51776397
		 -0.410436 -0.75064099 0.34630701 0.91491401 0.20737199 0.99325001 -0.049261 -0.105013
		 -0.389157 0.281647 0.87705898 -0.67997402 0.36331201 0.63689798 -0.827815 -0.53150201
		 0.17952301 -0.48929399 -0.85946101 0.148045 -0.389157 0.281647 0.87705898 0.830975
		 0.27748701 -0.48216301 0.74520898 0.506262 0.43400899 -0.67997402 0.36331201 0.63689798
		 -0.347357 0.934102 0.082438 -0.228035 0.65490401 -0.720487 -0.33015499 0.139015 -0.93363398
		 -0.228035 0.65490401 -0.720487 -0.347357 0.934102 0.082438 -0.063363001 0.59255803
		 0.80303198 -0.52993399 0.202492 0.82350898 -0.95893198 0.18272001 0.216941 -0.49167699
		 -0.336191 -0.803262 -0.43213701 0.158576 -0.88775599 -0.228035 0.65490401 -0.720487
		 -0.52993399 0.202492 0.82350898 -0.61020201 0.71121198 0.349044 -0.43213701 0.158576
		 -0.88775599 -0.228035 0.65490401 -0.720487 -0.61020201 0.71121198 0.349044 -0.61020201
		 0.71121198 0.349044 -0.95893198 0.18272001 0.216941 -0.43213701 0.158576 -0.88775599
		 -0.49167699 -0.336191 -0.803262 0.44728801 -0.700086 -0.55660802 -0.43213701 0.158576
		 -0.88775599 -0.49167699 -0.336191 -0.803262 0.37169799 0.45747399 -0.80781102 0.44728801
		 -0.700086 -0.55660802 0.80334902 -0.51718301 -0.29521501 0.44728801 -0.700086 -0.55660802
		 0.37169799 0.45747399 -0.80781102 -0.95893198 0.18272001 0.216941 -0.61020201 0.71121198
		 0.349044 0.14177901 0.0072369999 0.98987198 -0.228035 0.65490401 -0.720487 0.67995399
		 -0.49591601 -0.54012102 -0.33015499 0.139015 -0.93363398 0.67995399 -0.49591601 -0.54012102
		 0.92645299 -0.25699601 0.27502501 0.333433 -0.38118199 -0.86227798 -0.52993399 0.202492
		 0.82350898 -0.063363001 0.59255803 0.80303198 0.92645299 -0.25699601 0.27502501 0.67995399
		 -0.49591601 -0.54012102 -0.52993399 0.202492 0.82350898 0.92645299 -0.25699601 0.27502501
		 0.92645299 -0.25699601 0.27502501 -0.063363001 0.59255803 0.80303198 0.206122 0.68999398
		 0.69384599 0.871521 -0.330419 0.36231801 0.206122 0.68999398 0.69384599 -0.051121
		 0.70131999 0.71101099 0.80629402 -0.17120001 0.56619799 0.871521 -0.330419 0.36231801
		 -0.80128199 0.448746 -0.39569601 -0.94011998 0.212099 -0.26681301 -0.051121 0.70131999
		 0.71101099 0.206122 0.68999398 0.69384599 -0.80128199 0.448746 -0.39569601 -0.347357
		 0.934102 0.082438 -0.33015499 0.139015 -0.93363398 -0.063363001 0.59255803 0.80303198
		 -0.347357 0.934102 0.082438 -0.80128199 0.448746 -0.39569601 0.206122 0.68999398
		 0.69384599 0.82595098 -0.52855802 0.196041 0.87413901 0.48459399 -0.032404002 0.44035399
		 -0.803967 -0.39965701 -0.73530602 -0.45455 -0.502702 -0.59883302 -0.37579101 -0.70723403
		 0.82595098 -0.52855802 0.196041 0.44035399 -0.803967 -0.39965701 0.87413901 0.48459399
		 -0.032404002 0.82595098 -0.52855802 0.196041 -0.21933 0.89720899 0.38328999 -0.74581999
		 0.54084003 -0.38890201 0.82877898 -0.52819198 -0.18476801 0.92645299 -0.25699601
		 0.27502501 0.871521 -0.330419 0.36231801 0.82595098 -0.52855802 0.196041 -0.59883302
		 -0.37579101 -0.70723403 -0.36923301 -0.054203 -0.927755 0.84546101 -0.51260197 -0.14977901
		 -0.33015499 0.139015 -0.93363398 0.67995399 -0.49591601 -0.54012102 0.333433 -0.38118199
		 -0.86227798 0.92645299 -0.25699601 0.27502501 -0.221762 -0.042585999 -0.97417003
		 0.333433 -0.38118199 -0.86227798 0.333433 -0.38118199 -0.86227798 -0.221762 -0.042585999
		 -0.97417003 -0.33015499 0.139015 -0.93363398 0.82877898 -0.52819198 -0.18476801 0.84546101
		 -0.51260197 -0.14977901 -0.221762 -0.042585999 -0.97417003 -0.36923301 -0.054203
		 -0.927755 -0.221762 -0.042585999 -0.97417003 0.84546101 -0.51260197 -0.14977901 -0.221762
		 -0.042585999 -0.97417003 0.92645299 -0.25699601 0.27502501 0.82877898 -0.52819198
		 -0.18476801 -0.37285301 -0.92145199 0.109118 -0.46093899 0.322153 0.82689297 -0.587596
		 0.46758899 0.66037297 -0.69503099 0.19049101 0.693286 -0.90898502 0.37808099 -0.175504
		 -0.74581999 0.54084003 -0.38890201 -0.73530602 -0.45455 -0.502702 -0.95957899 0.278952
		 0.037335999 -0.61691099 0.71957397 0.31880099 0.64463103 0.758196 0.097929999 0.89802599
		 0.059858002 0.43585199 -0.37593299 0.86765099 0.32535401 -0.75838798 0.52602297 0.38489899
		 -0.69503099 0.19049101 0.693286;
	setAttr ".n[166:331]" -type "float3"  -0.61691099 0.71957397 0.31880099 0.87413901
		 0.48459399 -0.032404002 0.95680302 0.046916001 -0.286928 0.44035399 -0.803967 -0.39965701
		 -0.95957899 0.278952 0.037335999 -0.61691099 0.71957397 0.31880099 -0.90898502 0.37808099
		 -0.175504 0.93783998 -0.33048001 -0.106014 0.84922099 -0.52664697 -0.038290001 0.39865899
		 -0.62353998 -0.67250901 0.44035399 -0.803967 -0.39965701 0.95680302 0.046916001 -0.286928
		 0.39865899 -0.62353998 -0.67250901 0.93783998 -0.33048001 -0.106014 0.39865899 -0.62353998
		 -0.67250901 0.95680302 0.046916001 -0.286928 -0.69503099 0.19049101 0.693286 0.74520898
		 0.506262 0.43400899 0.446325 -0.78120202 -0.43648201 0.76789498 -0.52583098 0.36583999
		 0.93783998 -0.33048001 -0.106014 0.76789498 -0.52583098 0.36583999 0.30629501 -0.86640799
		 -0.39436001 0.93783998 -0.33048001 -0.106014 0.476726 0.87216598 0.109815 0.76789498
		 -0.52583098 0.36583999 0.95680302 0.046916001 -0.286928 0.64463103 0.758196 0.097929999
		 0.93783998 -0.33048001 -0.106014 0.476726 0.87216598 0.109815 0.64463103 0.758196
		 0.097929999 -0.61691099 0.71957397 0.31880099 -0.587596 0.46758899 0.66037297 0.476726
		 0.87216598 0.109815 -0.61691099 0.71957397 0.31880099 -0.587596 0.46758899 0.66037297
		 -0.61691099 0.71957397 0.31880099 -0.69503099 0.19049101 0.693286 0.476726 0.87216598
		 0.109815 0.93783998 -0.33048001 -0.106014 0.64463103 0.758196 0.097929999 -0.37285301
		 -0.92145199 0.109118 0.77185899 -0.35042 0.53050798 -0.46093899 0.322153 0.82689297
		 -0.21933 0.89720899 0.38328999 -0.381639 -0.91265899 -0.14630701 -0.36923301 -0.054203
		 -0.927755 -0.59883302 -0.37579101 -0.70723403 0.82595098 -0.52855802 0.196041 0.84546101
		 -0.51260197 -0.14977901 -0.381639 -0.91265899 -0.14630701 -0.21933 0.89720899 0.38328999
		 0.82877898 -0.52819198 -0.18476801 -0.381639 -0.91265899 -0.14630701 0.84546101 -0.51260197
		 -0.14977901 -0.381639 -0.91265899 -0.14630701 0.871521 -0.330419 0.36231801 0.80629402
		 -0.17120001 0.56619799 0.364169 -0.85160202 -0.37703401 -0.80128199 0.448746 -0.39569601
		 -0.33015499 0.139015 -0.93363398 -0.381639 -0.91265899 -0.14630701 -0.381639 -0.91265899
		 -0.14630701 0.364169 -0.85160202 -0.37703401 -0.94011998 0.212099 -0.26681301 -0.80128199
		 0.448746 -0.39569601 0.871521 -0.330419 0.36231801 -0.381639 -0.91265899 -0.14630701
		 0.82877898 -0.52819198 -0.18476801 -0.381639 -0.91265899 -0.14630701 -0.221762 -0.042585999
		 -0.97417003 -0.36923301 -0.054203 -0.927755 -0.221762 -0.042585999 -0.97417003 -0.381639
		 -0.91265899 -0.14630701 -0.33015499 0.139015 -0.93363398 -0.25812301 -0.58381999
		 -0.76975799 0.78566301 -0.155589 0.59877002 0.89802599 0.059858002 0.43585199 0.125191
		 0.48069701 -0.86790401 0.364169 -0.85160202 -0.37703401 0.80629402 -0.17120001 0.56619799
		 0.78566301 -0.155589 0.59877002 -0.25812301 -0.58381999 -0.76975799 0.125191 0.48069701
		 -0.86790401 0.87413901 0.48459399 -0.032404002 -0.74581999 0.54084003 -0.38890201
		 0.125191 0.48069701 -0.86790401 -0.74581999 0.54084003 -0.38890201 -0.90898502 0.37808099
		 -0.175504 -0.25812301 -0.58381999 -0.76975799 -0.94011998 0.212099 -0.26681301 0.364169
		 -0.85160202 -0.37703401 -0.051121 0.70131999 0.71101099 -0.94011998 0.212099 -0.26681301
		 -0.25812301 -0.58381999 -0.76975799 -0.44605801 0.84572899 0.292873 -0.37593299 0.86765099
		 0.32535401 -0.44605801 0.84572899 0.292873 -0.25812301 -0.58381999 -0.76975799 0.125191
		 0.48069701 -0.86790401 -0.90898502 0.37808099 -0.175504 -0.61691099 0.71957397 0.31880099
		 -0.37593299 0.86765099 0.32535401 0.125191 0.48069701 -0.86790401 0.125191 0.48069701
		 -0.86790401 0.95680302 0.046916001 -0.286928 0.87413901 0.48459399 -0.032404002 0.64463103
		 0.758196 0.097929999 0.95680302 0.046916001 -0.286928 0.125191 0.48069701 -0.86790401
		 0.89802599 0.059858002 0.43585199 -0.62810397 -0.16689301 0.76002097 -0.85524201
		 0.2956 0.42565501 -0.78448999 0.61983699 0.019432001 -0.78448999 0.61983699 0.019432001
		 -0.85524201 0.2956 0.42565501 -0.81900102 0.371351 -0.43742001 -0.84395498 0.455102
		 0.28393999 -0.81265301 0.57766497 -0.076801002 -0.95893198 0.18272001 0.216941 -0.49167699
		 -0.336191 -0.803262 -0.43770799 0.087353997 -0.89486402 0.37169799 0.45747399 -0.80781102
		 0.0099470001 -0.110916 -0.99378002 0.0049020001 -0.024460001 -0.99968898 -0.647273
		 -0.064856999 -0.75949401 -0.00059800001 -0.013817 -0.99990398 0.0099470001 -0.110916
		 -0.99378002 -0.62812901 -0.024491001 -0.77772403 0.0099470001 -0.110916 -0.99378002
		 -0.00059800001 -0.013817 -0.99990398 0.62835097 -0.021516001 -0.77763301 0.71605498
		 -0.19834299 -0.66927201 0.0099470001 -0.110916 -0.99378002 0.62835097 -0.021516001
		 -0.77763301 0.0099470001 -0.110916 -0.99378002 -0.647273 -0.064856999 -0.75949401
		 -0.62812901 -0.024491001 -0.77772403 -0.000879 -0.74759102 0.664159 -0.46778601 -0.60730499
		 0.64214998 0.001487 -0.62310499 0.78213602 -0.63987499 -0.083814003 -0.76389498 -0.81900102
		 0.371351 -0.43742001 -0.60039902 0.38481301 -0.70102799 -0.81900102 0.371351 -0.43742001
		 -0.63987499 -0.083814003 -0.76389498 -0.46023899 0.38312301 -0.80087298 0 0.48775399
		 -0.87298101 -0.00059800001 -0.013817 -0.99990398 -0.60039902 0.38481301 -0.70102799
		 -0.62812901 -0.024491001 -0.77772403 -0.60039902 0.38481301 -0.70102799 -0.00059800001
		 -0.013817 -0.99990398 0 0.48775399 -0.87298101 0.60039902 0.38481301 -0.70102799
		 -0.00059800001 -0.013817 -0.99990398 0.62835097 -0.021516001 -0.77763301 -0.00059800001
		 -0.013817 -0.99990398 0.60039902 0.38481301 -0.70102799 -0.81900102 0.371351 -0.43742001
		 -0.833848 0.523404 -0.17534199 -0.60039902 0.38481301 -0.70102799 -0.60039902 0.38481301
		 -0.70102799 -0.833848 0.523404 -0.17534199 -0.44495499 0.76637697 -0.463337 0.833848
		 0.523404 -0.17534199;
	setAttr ".n[332:497]" -type "float3"  0.60039902 0.38481301 -0.70102799 0.444956
		 0.76637697 -0.463337 -0.52993399 0.202492 0.82350898 0.101756 -0.249429 0.96303201
		 -0.61020201 0.71121198 0.349044 -0.61020201 0.71121198 0.349044 0.101756 -0.249429
		 0.96303201 0.48667899 -0.024729 0.87323099 0.48667899 -0.024729 0.87323099 0.14177901
		 0.0072369999 0.98987198 -0.61020201 0.71121198 0.349044 -0.43213701 0.158576 -0.88775599
		 0.44728801 -0.700086 -0.55660802 0.71605903 -0.69740403 -0.029781001 -0.43213701
		 0.158576 -0.88775599 0.67995399 -0.49591601 -0.54012102 -0.228035 0.65490401 -0.720487
		 -0.43213701 0.158576 -0.88775599 0.71605903 -0.69740403 -0.029781001 0.67995399 -0.49591601
		 -0.54012102 0.67995399 -0.49591601 -0.54012102 0.101756 -0.249429 0.96303201 -0.52993399
		 0.202492 0.82350898 0.48667899 -0.024729 0.87323099 0.101756 -0.249429 0.96303201
		 0.71605903 -0.69740403 -0.029781001 0.67995399 -0.49591601 -0.54012102 0.71605903
		 -0.69740403 -0.029781001 0.101756 -0.249429 0.96303201 0.14177901 0.0072369999 0.98987198
		 0.44728801 -0.700086 -0.55660802 0.80334902 -0.51718301 -0.29521501 -0.081992 -0.43241099
		 0.89794099 0.14177901 0.0072369999 0.98987198 0.80334902 -0.51718301 -0.29521501
		 0.71605903 -0.69740403 -0.029781001 0.44728801 -0.700086 -0.55660802 0.14177901 0.0072369999
		 0.98987198 0.48667899 -0.024729 0.87323099 0.71605903 -0.69740403 -0.029781001 0.14177901
		 0.0072369999 0.98987198 -0.62810397 -0.16689301 0.76002097 -0.46778601 -0.60730499
		 0.64214998 -0.85524201 0.2956 0.42565501 -0.63987499 -0.083814003 -0.76389498 -0.68465799
		 -0.70610601 -0.180713 -0.46023899 0.38312301 -0.80087298 0.80334902 -0.51718301 -0.29521501
		 0.37169799 0.45747399 -0.80781102 -0.46023899 0.38312301 -0.80087298 -0.68465799
		 -0.70610601 -0.180713 0.80334902 -0.51718301 -0.29521501 -0.68465799 -0.70610601
		 -0.180713 -0.081992 -0.43241099 0.89794099 -0.63987499 -0.083814003 -0.76389498 -0.60039902
		 0.38481301 -0.70102799 -0.62812901 -0.024491001 -0.77772403 -0.68465799 -0.70610601
		 -0.180713 -0.63987499 -0.083814003 -0.76389498 -0.85666901 -0.27613401 -0.43573901
		 -0.62812901 -0.024491001 -0.77772403 -0.85666901 -0.27613401 -0.43573901 -0.63987499
		 -0.083814003 -0.76389498 0.71605498 -0.19834299 -0.66927201 0.62835097 -0.021516001
		 -0.77763301 0.86038101 -0.26837 -0.43326899 -0.68465799 -0.70610601 -0.180713 -0.85666901
		 -0.27613401 -0.43573901 -0.647273 -0.064856999 -0.75949401 -0.62812901 -0.024491001
		 -0.77772403 -0.647273 -0.064856999 -0.75949401 -0.85666901 -0.27613401 -0.43573901
		 -0.68465799 -0.70610601 -0.180713 -0.46778601 -0.60730499 0.64214998 -0.62810397
		 -0.16689301 0.76002097 0.59773898 -0.64784598 0.47223201 0.001487 -0.62310499 0.78213602
		 0.88217402 -0.42120099 0.210614 -0.68465799 -0.70610601 -0.180713 -0.55581999 -0.65782601
		 0.50826102 -0.46778601 -0.60730499 0.64214998 -0.68465799 -0.70610601 -0.180713 -0.97619498
		 -0.211069 0.049934998 -0.55581999 -0.65782601 0.50826102 0.001487 -0.62310499 0.78213602
		 -0.46778601 -0.60730499 0.64214998 -0.55581999 -0.65782601 0.50826102 -0.55581999
		 -0.65782601 0.50826102 -0.97619498 -0.211069 0.049934998 0.001487 -0.62310499 0.78213602
		 0.039177001 -0.26804 0.96261102 0.001487 -0.62310499 0.78213602 -0.97619498 -0.211069
		 0.049934998 -0.68465799 -0.70610601 -0.180713 -0.647273 -0.064856999 -0.75949401
		 -0.97619498 -0.211069 0.049934998 -0.72111899 -0.116641 -0.68292201 -0.95560998 -0.13454799
		 -0.262119 -0.90223402 -0.25498 0.34779301 -0.90223402 -0.25498 0.34779301 -0.97619498
		 -0.211069 0.049934998 -0.72111899 -0.116641 -0.68292201 -0.647273 -0.064856999 -0.75949401
		 -0.72111899 -0.116641 -0.68292201 -0.97619498 -0.211069 0.049934998 0.71605498 -0.19834299
		 -0.66927201 0.0049020001 -0.024460001 -0.99968898 0.0099470001 -0.110916 -0.99378002
		 0.71605498 -0.19834299 -0.66927201 0.88217402 -0.42120099 0.210614 0.870758 -0.24077
		 -0.42873099 0.71605498 -0.19834299 -0.66927201 0.870758 -0.24077 -0.42873099 0.0049020001
		 -0.024460001 -0.99968898 0.0049020001 -0.024460001 -0.99968898 -0.72111899 -0.116641
		 -0.68292201 -0.647273 -0.064856999 -0.75949401 -0.72111899 -0.116641 -0.68292201
		 0.0049020001 -0.024460001 -0.99968898 -0.95560998 -0.13454799 -0.262119 0.324981
		 0.21835899 -0.92016703 -0.95560998 -0.13454799 -0.262119 0.0049020001 -0.024460001
		 -0.99968898 0.90114403 -0.210242 0.37912801 0.88217402 -0.42120099 0.210614 0.039177001
		 -0.26804 0.96261102 0.88217402 -0.42120099 0.210614 0.001487 -0.62310499 0.78213602
		 0.039177001 -0.26804 0.96261102 -0.97619498 -0.211069 0.049934998 -0.90223402 -0.25498
		 0.34779301 0.039177001 -0.26804 0.96261102 0.0049020001 -0.024460001 -0.99968898
		 0.870758 -0.24077 -0.42873099 0.324981 0.21835899 -0.92016703 0.870758 -0.24077 -0.42873099
		 0.90114403 -0.210242 0.37912801 0.324981 0.21835899 -0.92016703 0.97518402 -0.103963
		 0.195467 0.324981 0.21835899 -0.92016703 0.90114403 -0.210242 0.37912801 0.870758
		 -0.24077 -0.42873099 0.88217402 -0.42120099 0.210614 0.90114403 -0.210242 0.37912801
		 0.14801601 -0.25871399 0.95454597 -0.097727001 -0.507541 0.856067 0.90114403 -0.210242
		 0.37912801 0.039177001 -0.26804 0.96261102 0.14801601 -0.25871399 0.95454597 0.90114403
		 -0.210242 0.37912801 0.14801601 -0.25871399 0.95454597 -0.90223402 -0.25498 0.34779301
		 -0.097727001 -0.507541 0.856067 0.039177001 -0.26804 0.96261102 -0.90223402 -0.25498
		 0.34779301 0.14801601 -0.25871399 0.95454597 -0.99633598 -0.085297003 -0.006271 -0.95560998
		 -0.13454799 -0.262119 -0.114452 0.36717799 -0.92308199 0.97518402 -0.103963 0.195467
		 0.94559503 -0.116665 -0.303709 0.324981 0.21835899 -0.92016703 -0.114452 0.36717799
		 -0.92308199 -0.95560998 -0.13454799 -0.262119 0.324981 0.21835899 -0.92016703 -0.097727001
		 -0.507541 0.856067;
	setAttr ".n[498:663]" -type "float3"  -0.90223402 -0.25498 0.34779301 -0.95560998
		 -0.13454799 -0.262119 -0.99633598 -0.085297003 -0.006271 0.074954003 -0.59140098
		 0.80288601 -0.95560998 -0.13454799 -0.262119 -0.097727001 -0.507541 0.856067 -0.95560998
		 -0.13454799 -0.262119 0.074954003 -0.59140098 0.80288601 0.050402999 -0.71529001
		 0.69700801 0.074954003 -0.59140098 0.80288601 -0.94206899 -0.29464099 -0.160292 -0.99633598
		 -0.085297003 -0.006271 -0.94206899 -0.29464099 -0.160292 0.074954003 -0.59140098
		 0.80288601 -0.94206899 -0.29464099 -0.160292 -0.99633598 -0.085297003 -0.006271 -0.114452
		 0.36717799 -0.92308199 0.98528701 -0.165604 -0.042236999 -1e-006 -0.70734 -0.70687401
		 0.016031999 0.47826201 -0.87807101 -0.94206899 -0.29464099 -0.160292 0.016031999
		 0.47826201 -0.87807101 -1e-006 -0.70734 -0.70687401 0.324981 0.21835899 -0.92016703
		 0.94559503 -0.116665 -0.303709 -0.114452 0.36717799 -0.92308199 -0.94206899 -0.29464099
		 -0.160292 -0.114452 0.36717799 -0.92308199 0.016031999 0.47826201 -0.87807101 0.98528701
		 -0.165604 -0.042236999 0.016031999 0.47826201 -0.87807101 0.94559503 -0.116665 -0.303709
		 -0.114452 0.36717799 -0.92308199 0.94559503 -0.116665 -0.303709 0.016031999 0.47826201
		 -0.87807101 0.074954003 -0.59140098 0.80288601 0.94559503 -0.116665 -0.303709 -0.097727001
		 -0.507541 0.856067 0.97518402 -0.103963 0.195467 -0.097727001 -0.507541 0.856067
		 0.94559503 -0.116665 -0.303709 0.90114403 -0.210242 0.37912801 -0.097727001 -0.507541
		 0.856067 0.97518402 -0.103963 0.195467 0.050402999 -0.71529001 0.69700801 0.98528701
		 -0.165604 -0.042236999 0.94559503 -0.116665 -0.303709 0.074954003 -0.59140098 0.80288601
		 0.050402999 -0.71529001 0.69700801 0.94559503 -0.116665 -0.303709 -1e-006 -0.70734
		 -0.70687401 0.98528701 -0.165604 -0.042236999 0.050402999 -0.71529001 0.69700801
		 -0.94206899 -0.29464099 -0.160292 -1e-006 -0.70734 -0.70687401 0.050402999 -0.71529001
		 0.69700801 -0.61691099 0.71957397 0.31880099 -0.95957899 0.278952 0.037335999 -0.75838798
		 0.52602297 0.38489899 -0.69503099 0.19049101 0.693286 -0.75838798 0.52602297 0.38489899
		 -0.67997402 0.36331201 0.63689798 0.74520898 0.506262 0.43400899 -0.67997402 0.36331201
		 0.63689798 -0.75838798 0.52602297 0.38489899 -0.99552202 0.005626 0.094366997 -0.827815
		 -0.53150201 0.17952301 -0.67997402 0.36331201 0.63689798 -0.99552202 0.005626 0.094366997
		 -0.99552202 0.005626 0.094366997 -0.75838798 0.52602297 0.38489899 -0.95957899 0.278952
		 0.037335999 -0.68309498 -0.54958898 0.48097101 -0.68990999 -0.70035702 0.18309399
		 0.422701 -0.33244699 -0.84309101 0.081536002 -0.40001899 -0.91287303 0.39865899 -0.62353998
		 -0.67250901 0.422701 -0.33244699 -0.84309101 -0.76675498 -0.335179 -0.54748702 -0.827815
		 -0.53150201 0.17952301 0.446325 -0.78120202 -0.43648201 -0.48929399 -0.85946101 0.148045
		 0.830975 0.27748701 -0.48216301 -0.48929399 -0.85946101 0.148045 0.446325 -0.78120202
		 -0.43648201 0.74520898 0.506262 0.43400899 0.830975 0.27748701 -0.48216301 0.446325
		 -0.78120202 -0.43648201 -0.389157 0.281647 0.87705898 -0.084486 0.16570801 0.98254901
		 0.49399301 0.494697 -0.71501398 0.830975 0.27748701 -0.48216301 0.49399301 0.494697
		 -0.71501398 -0.48929399 -0.85946101 0.148045 0.830975 0.27748701 -0.48216301 -0.48929399
		 -0.85946101 0.148045 0.49399301 0.494697 -0.71501398 -0.112501 -0.98388302 0.138988
		 -0.112501 -0.98388302 0.138988 0.99751103 0.01367 0.069173001 -0.084486 0.16570801
		 0.98254901 -0.112501 -0.98388302 0.138988 0.49399301 0.494697 -0.71501398 0.99751103
		 0.01367 0.069173001 0.99751103 0.01367 0.069173001 0.49399301 0.494697 -0.71501398
		 -0.084486 0.16570801 0.98254901 0.30629501 -0.86640799 -0.39436001 -0.56432903 -0.82103699
		 0.086204998 0.84922099 -0.52664697 -0.038290001 -0.68990999 -0.70035702 0.18309399
		 0.84922099 -0.52664697 -0.038290001 -0.56432903 -0.82103699 0.086204998 0.84922099
		 -0.52664697 -0.038290001 0.93783998 -0.33048001 -0.106014 0.30629501 -0.86640799
		 -0.39436001 -0.235847 -0.653952 0.71883398 0.34630701 0.91491401 0.20737199 0.49733901
		 0.66417003 0.55815101 -0.68309498 -0.54958898 0.48097101 0.49733901 0.66417003 0.55815101
		 0.081536002 -0.40001899 -0.91287303 0.84922099 -0.52664697 -0.038290001 0.422701
		 -0.33244699 -0.84309101 0.84922099 -0.52664697 -0.038290001 0.081536002 -0.40001899
		 -0.91287303 0.34630701 0.91491401 0.20737199 0.51776397 -0.410436 -0.75064099 0.081536002
		 -0.40001899 -0.91287303 0.49733901 0.66417003 0.55815101 0.34630701 0.91491401 0.20737199
		 0.081536002 -0.40001899 -0.91287303 0.422701 -0.33244699 -0.84309101 0.39865899 -0.62353998
		 -0.67250901 0.84922099 -0.52664697 -0.038290001 -0.76675498 -0.335179 -0.54748702
		 -0.99552202 0.005626 0.094366997 -0.95957899 0.278952 0.037335999 -0.73530602 -0.45455
		 -0.502702 -0.68990999 -0.70035702 0.18309399 -0.76675498 -0.335179 -0.54748702 0.422701
		 -0.33244699 -0.84309101 -0.56432903 -0.82103699 0.086204998 -0.99552202 0.005626
		 0.094366997 -0.68990999 -0.70035702 0.18309399 -0.76675498 -0.335179 -0.54748702
		 -0.68990999 -0.70035702 0.18309399 -0.99552202 0.005626 0.094366997 -0.99552202 0.005626
		 0.094366997 -0.56432903 -0.82103699 0.086204998 -0.827815 -0.53150201 0.17952301
		 0.30629501 -0.86640799 -0.39436001 0.76789498 -0.52583098 0.36583999 0.446325 -0.78120202
		 -0.43648201 0.30629501 -0.86640799 -0.39436001 0.446325 -0.78120202 -0.43648201 -0.56432903
		 -0.82103699 0.086204998 -0.827815 -0.53150201 0.17952301 -0.56432903 -0.82103699
		 0.086204998 0.446325 -0.78120202 -0.43648201 -0.587596 0.46758899 0.66037297 -0.46093899
		 0.322153 0.82689297 0.91644001 0.27582601 -0.28992599 0.476726 0.87216598 0.109815
		 0.76789498 -0.52583098 0.36583999 0.476726 0.87216598 0.109815;
	setAttr ".n[664:829]" -type "float3"  0.91644001 0.27582601 -0.28992599 0.76789498
		 -0.52583098 0.36583999 0.91644001 0.27582601 -0.28992599 -0.37285301 -0.92145199
		 0.109118 -0.69503099 0.19049101 0.693286 0.91644001 0.27582601 -0.28992599 -0.46093899
		 0.322153 0.82689297 0.77185899 -0.35042 0.53050798 0.91644001 0.27582601 -0.28992599
		 0.77185899 -0.35042 0.53050798 -0.37285301 -0.92145199 0.109118 -0.81900102 0.371351
		 -0.43742001 -0.85524201 0.2956 0.42565501 -0.833848 0.523404 -0.17534199 -0.43770799
		 0.087353997 -0.89486402 -0.49167699 -0.336191 -0.803262 -0.95893198 0.18272001 0.216941
		 -0.81265301 0.57766497 -0.076801002 -0.43770799 0.087353997 -0.89486402 -0.81265301
		 0.57766497 -0.076801002 0.37169799 0.45747399 -0.80781102 -0.78448999 0.61983699
		 0.019432001 -0.81900102 0.371351 -0.43742001 -0.46023899 0.38312301 -0.80087298 -0.84395498
		 0.455102 0.28393999 -0.78448999 0.61983699 0.019432001 -0.46023899 0.38312301 -0.80087298
		 0.37169799 0.45747399 -0.80781102 -0.84395498 0.455102 0.28393999 -0.46023899 0.38312301
		 -0.80087298 0.37169799 0.45747399 -0.80781102 -0.81265301 0.57766497 -0.076801002
		 -0.84395498 0.455102 0.28393999 0.68711197 -0.33005199 0.64725798 0 0.25483301 0.96698499
		 0 -0.52991498 0.84805101 -0.68711197 -0.33005199 0.64725798 0 -0.52991498 0.84805101
		 0 0.25483301 0.96698499 -0.84395498 0.455102 0.28393999 0.14177901 0.0072369999 0.98987198
		 -0.081992 -0.43241099 0.89794099 -0.84395498 0.455102 0.28393999 -0.081992 -0.43241099
		 0.89794099 -0.62810397 -0.16689301 0.76002097 -0.78448999 0.61983699 0.019432001
		 -0.84395498 0.455102 0.28393999 -0.62810397 -0.16689301 0.76002097 -0.081992 -0.43241099
		 0.89794099 -0.68465799 -0.70610601 -0.180713 -0.62810397 -0.16689301 0.76002097 -0.53474301
		 -0.520787 0.66545498 -0.89249998 0.067111999 0.44602701 -0.46778601 -0.60730499 0.64214998
		 0 -0.838301 0.54520798 -0.53474301 -0.520787 0.66545498 -0.46778601 -0.60730499 0.64214998
		 -0.000879 -0.74759102 0.664159 0 -0.838301 0.54520798 -0.46778601 -0.60730499 0.64214998
		 -0.46778601 -0.60730499 0.64214998 -0.89249998 0.067111999 0.44602701 -0.85524201
		 0.2956 0.42565501 0.833848 0.523404 -0.17534199 0.444956 0.76637697 -0.463337 0.61666298
		 0.782206 -0.088767 -0.61666298 0.782206 -0.088767 -0.44495499 0.76637697 -0.463337
		 -0.833848 0.523404 -0.17534199 -0.89249998 0.067111999 0.44602701 -0.833848 0.523404
		 -0.17534199 -0.85524201 0.2956 0.42565501 0.89249998 0.067111999 0.44602701 0.833848
		 0.523404 -0.17534199 0.61666298 0.782206 -0.088767 -0.833848 0.523404 -0.17534199
		 -0.89249998 0.067111999 0.44602701 -0.61666298 0.782206 -0.088767 -0.69099301 -0.58396399
		 0.426045 -0.95110798 0.081303999 0.29796401 -0.53474301 -0.520787 0.66545498 0.69099301
		 -0.58396399 0.426045 0.53474301 -0.520787 0.66545498 0.95110798 0.081303999 0.29796401
		 0.69099301 -0.58396399 0.426045 0 -0.87948501 0.475927 0 -0.838301 0.54520798 0.53474301
		 -0.520787 0.66545498 -0.69099301 -0.58396399 0.426045 -0.53474301 -0.520787 0.66545498
		 0 -0.838301 0.54520798 0 -0.87948501 0.475927 -0.53474301 -0.520787 0.66545498 -0.95110798
		 0.081303999 0.29796401 -0.89249998 0.067111999 0.44602701 0.95110798 0.081303999
		 0.29796401 0.53474301 -0.520787 0.66545498 0.89249998 0.067111999 0.44602701 -0.61666298
		 0.782206 -0.088767 -0.95110798 0.081303999 0.29796401 -0.61620599 0.78738898 -0.017569
		 0.61666298 0.782206 -0.088767 0.61620599 0.78738898 -0.017569 0.95110798 0.081303999
		 0.29796401 0.89249998 0.067111999 0.44602701 0.61666298 0.782206 -0.088767 0.95110798
		 0.081303999 0.29796401 -0.95110798 0.081303999 0.29796401 -0.61666298 0.782206 -0.088767
		 -0.89249998 0.067111999 0.44602701 0 -0.87948501 0.475927 0.69099301 -0.58396399
		 0.426045 0.68711197 -0.33005199 0.64725798 0 -0.52991498 0.84805101 0 -0.87948501
		 0.475927 0 -0.52991498 0.84805101 -0.68711197 -0.33005199 0.64725798 -0.69099301
		 -0.58396399 0.426045 -0.61620599 0.78738898 -0.017569 -0.95110798 0.081303999 0.29796401
		 -0.75371599 0.45061699 0.47838899 0.95110798 0.081303999 0.29796401 0.61620599 0.78738898
		 -0.017569 0.75371599 0.45061699 0.47838899 -0.69099301 -0.58396399 0.426045 -0.68711197
		 -0.33005199 0.64725798 -0.95110798 0.081303999 0.29796401 -0.75371599 0.45061699
		 0.47838899 -0.95110798 0.081303999 0.29796401 -0.68711197 -0.33005199 0.64725798
		 0.69099301 -0.58396399 0.426045 0.95110798 0.081303999 0.29796401 0.68711197 -0.33005199
		 0.64725798 0.75371599 0.45061699 0.47838899 0.68711197 -0.33005199 0.64725798 0.95110798
		 0.081303999 0.29796401 0 0.25483301 0.96698499 -0.75371599 0.45061699 0.47838899
		 -0.68711197 -0.33005199 0.64725798 0.75371599 0.45061699 0.47838899 0 0.25483301
		 0.96698499 0.68711197 -0.33005199 0.64725798 0.75371599 0.45061699 0.47838899 0 0.91314399
		 0.407637 0 0.25483301 0.96698499 -0.75371599 0.45061699 0.47838899 0 0.25483301 0.96698499
		 0 0.91314399 0.407637 -0.44495499 0.76637697 -0.463337 0 0.48775399 -0.87298101 -0.60039902
		 0.38481301 -0.70102799 0.60039902 0.38481301 -0.70102799 0 0.48775399 -0.87298101
		 0.444956 0.76637697 -0.463337 0 0.48775399 -0.87298101 -0.44495499 0.76637697 -0.463337
		 0 0.90767002 -0.41968501 0.444956 0.76637697 -0.463337 0 0.48775399 -0.87298101 0
		 0.90767002 -0.41968501 0 0.90767002 -0.41968501 0 0.97326702 -0.22967499 0.61666298
		 0.782206 -0.088767 0.444956 0.76637697 -0.463337 0 0.90767002 -0.41968501 -0.44495499
		 0.76637697 -0.463337;
	setAttr ".n[830:995]" -type "float3"  -0.61666298 0.782206 -0.088767 0 0.97326702
		 -0.22967499 0.61620599 0.78738898 -0.017569 0.61666298 0.782206 -0.088767 0 0.97326702
		 -0.22967499 0 0.99362999 -0.112688 -0.61620599 0.78738898 -0.017569 0 0.99362999
		 -0.112688 0 0.97326702 -0.22967499 -0.61666298 0.782206 -0.088767 0 0.99362999 -0.112688
		 -0.61620599 0.78738898 -0.017569 -0.75371599 0.45061699 0.47838899 0 0.91314399 0.407637
		 0 0.99362999 -0.112688 0 0.91314399 0.407637 0.75371599 0.45061699 0.47838899 0.61620599
		 0.78738898 -0.017569 0.158225 0.132396 0.97848701 -0.15216 -0.97843999 0.139651 0.24430899
		 -0.96014601 0.135766 0.47922799 0.16246399 0.86252302 0.83942002 0.39673299 -0.371452
		 0.57092702 -0.64530402 -0.50756699 0.55093801 -0.44661 -0.70498699 0.370289 0.89043599
		 0.26459399 0.95893198 0.182721 0.216941 0.84395498 0.455102 0.28393999 -0.14177901
		 0.0072369999 0.98987198 -0.80393201 -0.16810399 0.57046801 -0.75759101 -0.170744
		 0.63000101 0.44402599 0.85082501 0.280958 0.052884001 0.70031899 0.711869 -0.75759101
		 -0.170744 0.63000101 -0.85044003 0.108933 0.51467001 0.489575 0.81830502 0.30115399
		 0.44402599 0.85082501 0.280958 -0.281454 0.77105701 0.57118702 0.52523798 -0.71543002
		 0.46074501 0.48140299 -0.86111701 0.163488 -0.96046901 -0.278272 -0.0079979999 -0.61649603
		 -0.24779201 -0.74734998 -0.216208 -0.359155 -0.90788901 0.52523798 -0.71543002 0.46074501
		 0.092390001 -0.69634902 0.71173197 0.57092702 -0.64530402 -0.50756699 0.62972403
		 -0.52684301 -0.57086301 -0.57374197 -0.49008 -0.65623301 0.57092702 -0.64530402 -0.50756699
		 -0.57374197 -0.49008 -0.65623301 -0.70477402 -0.62149501 -0.34210601 -0.60282499
		 -0.12466 0.78807497 -0.080072999 0.97343397 0.214509 -0.94765198 0.305226 -0.093773
		 -0.61649603 -0.24779201 -0.74734998 -0.94765198 0.305226 -0.093773 -0.080072999 0.97343397
		 0.214509 0.47922799 0.16246399 0.86252302 0.24430899 -0.96014601 0.135766 0.65949702
		 -0.735632 0.154627 0.773242 0.163863 0.61257303 0.47922799 0.16246399 0.86252302
		 0.773242 0.163863 0.61257303 -0.566634 0.68630898 0.45596701 -0.74089903 0.493222
		 -0.455852 0.34708199 0.93419701 0.082525998 0.32993701 0.139153 -0.93369102 0.228012
		 0.65489799 -0.72049999 0.228012 0.65489799 -0.72049999 0.52972299 0.202545 0.823632
		 0.063175999 0.59269297 0.80294698 0.34708199 0.93419701 0.082525998 0.95893198 0.182721
		 0.216941 0.43213701 0.158575 -0.88775599 0.49167699 -0.336191 -0.803262 0.228012
		 0.65489799 -0.72049999 0.61020201 0.71121198 0.349044 0.52972299 0.202545 0.823632
		 0.43213701 0.158575 -0.88775599 0.61020201 0.71121198 0.349044 0.228012 0.65489799
		 -0.72049999 0.61020201 0.71121198 0.349044 0.43213701 0.158575 -0.88775599 0.95893198
		 0.182721 0.216941 0.49167699 -0.336191 -0.803262 0.43213701 0.158575 -0.88775599
		 -0.44728801 -0.700086 -0.55660802 0.49167699 -0.336191 -0.803262 -0.44728801 -0.700086
		 -0.55660802 -0.37169799 0.45747399 -0.80781102 -0.80334902 -0.51718301 -0.29521501
		 -0.37169799 0.45747399 -0.80781102 -0.44728801 -0.700086 -0.55660802 0.95893198 0.182721
		 0.216941 -0.14177901 0.0072369999 0.98987198 0.61020201 0.71121198 0.349044 0.228012
		 0.65489799 -0.72049999 0.32993701 0.139153 -0.93369102 -0.67992097 -0.496012 -0.54007399
		 -0.67992097 -0.496012 -0.54007399 -0.33342999 -0.38138801 -0.86218798 -0.92608398
		 -0.25791901 0.27540201 0.52972299 0.202545 0.823632 -0.92608398 -0.25791901 0.27540201
		 0.063175999 0.59269297 0.80294698 -0.67992097 -0.496012 -0.54007399 -0.92608398 -0.25791901
		 0.27540201 0.52972299 0.202545 0.823632 -0.92608398 -0.25791901 0.27540201 -0.87056899
		 -0.331182 0.363906 -0.206508 0.68958998 0.69413298 0.063175999 0.59269297 0.80294698
		 -0.206508 0.68958998 0.69413298 -0.87056899 -0.331182 0.363906 -0.80393201 -0.16810399
		 0.57046801 0.052884001 0.70031899 0.711869 0.80102903 0.44863701 -0.39632899 -0.206508
		 0.68958998 0.69413298 0.052884001 0.70031899 0.711869 0.93981397 0.21086299 -0.26886001
		 0.80102903 0.44863701 -0.39632899 0.32993701 0.139153 -0.93369102 0.34708199 0.93419701
		 0.082525998 0.063175999 0.59269297 0.80294698 -0.206508 0.68958998 0.69413298 0.80102903
		 0.44863701 -0.39632899 0.34708199 0.93419701 0.082525998 -0.880674 -0.41201901 0.233781
		 -0.70477402 -0.62149501 -0.34210601 -0.72939003 0.67882699 -0.084761001 0.57092702
		 -0.64530402 -0.50756699 -0.70477402 -0.62149501 -0.34210601 -0.880674 -0.41201901
		 0.233781 0.55093801 -0.44661 -0.70498699 -0.72939003 0.67882699 -0.084761001 0.83942002
		 0.39673299 -0.371452 0.370289 0.89043599 0.26459399 -0.880674 -0.41201901 0.233781
		 -0.82799602 -0.52930599 -0.18508799 -0.87056899 -0.331182 0.363906 -0.92608398 -0.25791901
		 0.27540201 -0.880674 -0.41201901 0.233781 -0.84252203 -0.51685703 -0.15170801 0.371196
		 -0.057053 -0.92680001 0.55093801 -0.44661 -0.70498699 0.32993701 0.139153 -0.93369102
		 -0.33342999 -0.38138801 -0.86218798 -0.67992097 -0.496012 -0.54007399 -0.92608398
		 -0.25791901 0.27540201 -0.33342999 -0.38138801 -0.86218798 0.22134399 -0.042893 -0.97425199
		 -0.33342999 -0.38138801 -0.86218798 0.32993701 0.139153 -0.93369102 0.22134399 -0.042893
		 -0.97425199 -0.82799602 -0.52930599 -0.18508799 0.22134399 -0.042893 -0.97425199
		 -0.84252203 -0.51685703 -0.15170801 0.371196 -0.057053 -0.92680001 -0.84252203 -0.51685703
		 -0.15170801 0.22134399 -0.042893 -0.97425199 0.22134399 -0.042893 -0.97425199 -0.82799602
		 -0.52930599 -0.18508799 -0.92608398 -0.25791901 0.27540201 0.114259 -0.988307 0.100964
		 0.743038 -0.006879 0.66921401 0.71318698 0.28906 0.63859898;
	setAttr ".n[996:1161]" -type "float3"  0.55758101 0.18236201 0.80984402 0.971053
		 0.14929301 -0.186459 0.99993998 0.010013 0.0045360001 0.57092702 -0.64530402 -0.50756699
		 0.83942002 0.39673299 -0.371452 0.795789 0.54317498 0.26773199 0.489575 0.81830502
		 0.30115399 -0.85044003 0.108933 0.51467001 -0.36422399 0.929232 0.062192999 0.88426203
		 0.30057299 0.35740301 0.795789 0.54317498 0.26773199 0.743038 -0.006879 0.66921401
		 -0.72939003 0.67882699 -0.084761001 -0.70477402 -0.62149501 -0.34210601 -0.91221303
		 0.30861199 -0.26949301 0.99993998 0.010013 0.0045360001 0.971053 0.14929301 -0.186459
		 0.795789 0.54317498 0.26773199 -0.99515098 -0.065182 -0.073657997 -0.57374197 -0.49008
		 -0.65623301 -0.96046901 -0.278272 -0.0079979999 -0.70477402 -0.62149501 -0.34210601
		 -0.57374197 -0.49008 -0.65623301 -0.91221303 0.30861199 -0.26949301 -0.99515098 -0.065182
		 -0.073657997 -0.91221303 0.30861199 -0.26949301 -0.57374197 -0.49008 -0.65623301
		 0.743038 -0.006879 0.66921401 -0.86869901 -0.30121201 0.39323401 -0.654333 -0.63013899
		 -0.41805899 -0.566634 0.68630898 0.45596701 -0.99515098 -0.065182 -0.073657997 -0.54112101
		 -0.750103 -0.38017601 -0.86869901 -0.30121201 0.39323401 -0.99515098 -0.065182 -0.073657997
		 -0.86869901 -0.30121201 0.39323401 -0.220319 0.96783298 0.121482 -0.91221303 0.30861199
		 -0.26949301 -0.99515098 -0.065182 -0.073657997 -0.36422399 0.929232 0.062192999 -0.220319
		 0.96783298 0.121482 0.795789 0.54317498 0.26773199 -0.36422399 0.929232 0.062192999
		 0.71318698 0.28906 0.63859898 0.795789 0.54317498 0.26773199 -0.220319 0.96783298
		 0.121482 0.71318698 0.28906 0.63859898 0.743038 -0.006879 0.66921401 0.795789 0.54317498
		 0.26773199 -0.220319 0.96783298 0.121482 -0.36422399 0.929232 0.062192999 -0.99515098
		 -0.065182 -0.073657997 0.114259 -0.988307 0.100964 0.55758101 0.18236201 0.80984402
		 -0.81985998 -0.13195901 0.55715001 0.370289 0.89043599 0.26459399 0.55093801 -0.44661
		 -0.70498699 0.371196 -0.057053 -0.92680001 0.37706 -0.91497999 -0.143658 -0.880674
		 -0.41201901 0.233781 0.370289 0.89043599 0.26459399 0.37706 -0.91497999 -0.143658
		 -0.84252203 -0.51685703 -0.15170801 -0.82799602 -0.52930599 -0.18508799 -0.84252203
		 -0.51685703 -0.15170801 0.37706 -0.91497999 -0.143658 0.37706 -0.91497999 -0.143658
		 -0.36844301 -0.851524 -0.37303701 -0.80393201 -0.16810399 0.57046801 -0.87056899
		 -0.331182 0.363906 0.80102903 0.44863701 -0.39632899 0.37706 -0.91497999 -0.143658
		 0.32993701 0.139153 -0.93369102 0.37706 -0.91497999 -0.143658 0.80102903 0.44863701
		 -0.39632899 0.93981397 0.21086299 -0.26886001 -0.36844301 -0.851524 -0.37303701 -0.87056899
		 -0.331182 0.363906 -0.82799602 -0.52930599 -0.18508799 0.37706 -0.91497999 -0.143658
		 0.37706 -0.91497999 -0.143658 0.371196 -0.057053 -0.92680001 0.22134399 -0.042893
		 -0.97425199 0.22134399 -0.042893 -0.97425199 0.32993701 0.139153 -0.93369102 0.37706
		 -0.91497999 -0.143658 0.239903 -0.60926098 -0.75581002 -0.024589 0.509552 -0.86008799
		 -0.85044003 0.108933 0.51467001 -0.75759101 -0.170744 0.63000101 -0.36844301 -0.851524
		 -0.37303701 0.239903 -0.60926098 -0.75581002 -0.75759101 -0.170744 0.63000101 -0.80393201
		 -0.16810399 0.57046801 -0.024589 0.509552 -0.86008799 0.83942002 0.39673299 -0.371452
		 -0.72939003 0.67882699 -0.084761001 -0.024589 0.509552 -0.86008799 0.971053 0.14929301
		 -0.186459 0.83942002 0.39673299 -0.371452 0.239903 -0.60926098 -0.75581002 -0.36844301
		 -0.851524 -0.37303701 0.93981397 0.21086299 -0.26886001 0.052884001 0.70031899 0.711869
		 0.44402599 0.85082501 0.280958 0.239903 -0.60926098 -0.75581002 0.93981397 0.21086299
		 -0.26886001 0.489575 0.81830502 0.30115399 -0.024589 0.509552 -0.86008799 0.239903
		 -0.60926098 -0.75581002 0.44402599 0.85082501 0.280958 0.971053 0.14929301 -0.186459
		 -0.024589 0.509552 -0.86008799 0.489575 0.81830502 0.30115399 0.795789 0.54317498
		 0.26773199 -0.024589 0.509552 -0.86008799 -0.72939003 0.67882699 -0.084761001 -0.91221303
		 0.30861199 -0.26949301 -0.36422399 0.929232 0.062192999 -0.85044003 0.108933 0.51467001
		 -0.024589 0.509552 -0.86008799 -0.91221303 0.30861199 -0.26949301 0.84395498 0.455102
		 0.28393999 0.95893198 0.182721 0.216941 0.81265301 0.57766497 -0.076801002 0.49167699
		 -0.336191 -0.803262 -0.37169799 0.45747399 -0.80781102 0.43770799 0.087353997 -0.89486402
		 0.52972299 0.202545 0.823632 0.61020201 0.71121198 0.349044 -0.101756 -0.249429 0.96303201
		 0.61020201 0.71121198 0.349044 -0.48667899 -0.024729 0.87323099 -0.101756 -0.249429
		 0.96303201 -0.48667899 -0.024729 0.87323099 0.61020201 0.71121198 0.349044 -0.14177901
		 0.0072369999 0.98987198 0.43213701 0.158575 -0.88775599 -0.71605998 -0.69740403 -0.029781001
		 -0.44728801 -0.700086 -0.55660802 0.43213701 0.158575 -0.88775599 0.228012 0.65489799
		 -0.72049999 -0.67992097 -0.496012 -0.54007399 0.43213701 0.158575 -0.88775599 -0.67992097
		 -0.496012 -0.54007399 -0.71605998 -0.69740403 -0.029781001 -0.67992097 -0.496012
		 -0.54007399 0.52972299 0.202545 0.823632 -0.101756 -0.249429 0.96303201 -0.48667899
		 -0.024729 0.87323099 -0.71605998 -0.69740403 -0.029781001 -0.101756 -0.249429 0.96303201
		 -0.67992097 -0.496012 -0.54007399 -0.101756 -0.249429 0.96303201 -0.71605998 -0.69740403
		 -0.029781001 -0.14177901 0.0072369999 0.98987198 -0.80334902 -0.51718301 -0.29521501
		 -0.44728801 -0.700086 -0.55660802 0.081992 -0.43241099 0.89794099 -0.80334902 -0.51718301
		 -0.29521501 -0.14177901 0.0072369999 0.98987198 -0.71605998 -0.69740403 -0.029781001
		 -0.14177901 0.0072369999 0.98987198 -0.44728801 -0.700086 -0.55660802 -0.48667899
		 -0.024729 0.87323099 -0.14177901 0.0072369999 0.98987198;
	setAttr ".n[1162:1327]" -type "float3"  -0.71605998 -0.69740403 -0.029781001
		 0.795789 0.54317498 0.26773199 0.88426203 0.30057299 0.35740301 0.99993998 0.010013
		 0.0045360001 0.743038 -0.006879 0.66921401 -0.566634 0.68630898 0.45596701 0.773242
		 0.163863 0.61257303 0.88426203 0.30057299 0.35740301 0.773242 0.163863 0.61257303
		 0.96278799 -0.263147 0.061586998 0.88426203 0.30057299 0.35740301 0.65949702 -0.735632
		 0.154627 0.96278799 -0.263147 0.061586998 0.773242 0.163863 0.61257303 0.96278799
		 -0.263147 0.061586998 0.99993998 0.010013 0.0045360001 0.88426203 0.30057299 0.35740301
		 0.52523798 -0.71543002 0.46074501 -0.216208 -0.359155 -0.90788901 -0.52408099 -0.202503
		 -0.82724297 0.48140299 -0.86111701 0.163488 -0.57374197 -0.49008 -0.65623301 0.62972403
		 -0.52684301 -0.57086301 -0.52408099 -0.202503 -0.82724297 0.65949702 -0.735632 0.154627
		 0.24430899 -0.96014601 0.135766 -0.654333 -0.63013899 -0.41805899 -0.74089903 0.493222
		 -0.455852 -0.654333 -0.63013899 -0.41805899 0.24430899 -0.96014601 0.135766 -0.566634
		 0.68630898 0.45596701 -0.654333 -0.63013899 -0.41805899 -0.74089903 0.493222 -0.455852
		 0.47922799 0.16246399 0.86252302 -0.74089903 0.493222 -0.455852 -0.36570299 0.612688
		 -0.70062399 0.158225 0.132396 0.97848701 -0.36570299 0.612688 -0.70062399 -0.74089903
		 0.493222 -0.455852 0.24430899 -0.96014601 0.135766 0.24430899 -0.96014601 0.135766
		 -0.15216 -0.97843999 0.139651 -0.36570299 0.612688 -0.70062399 -0.15216 -0.97843999
		 0.139651 0.158225 0.132396 0.97848701 -0.95413297 0.28152901 0.101844 -0.15216 -0.97843999
		 0.139651 -0.95413297 0.28152901 0.101844 -0.36570299 0.612688 -0.70062399 -0.95413297
		 0.28152901 0.101844 0.158225 0.132396 0.97848701 -0.36570299 0.612688 -0.70062399
		 -0.54112101 -0.750103 -0.38017601 -0.96046901 -0.278272 -0.0079979999 0.32484499
		 -0.94307399 0.071321003 0.48140299 -0.86111701 0.163488 0.32484499 -0.94307399 0.071321003
		 -0.96046901 -0.278272 -0.0079979999 -0.96046901 -0.278272 -0.0079979999 -0.54112101
		 -0.750103 -0.38017601 -0.99515098 -0.065182 -0.073657997 0.092390001 -0.69634902
		 0.71173197 0.52523798 -0.71543002 0.46074501 -0.281454 0.77105701 0.57118702 -0.080072999
		 0.97343397 0.214509 -0.281454 0.77105701 0.57118702 -0.96046901 -0.278272 -0.0079979999
		 -0.216208 -0.359155 -0.90788901 -0.52408099 -0.202503 -0.82724297 -0.216208 -0.359155
		 -0.90788901 -0.96046901 -0.278272 -0.0079979999 -0.080072999 0.97343397 0.214509
		 -0.216208 -0.359155 -0.90788901 -0.61649603 -0.24779201 -0.74734998 -0.281454 0.77105701
		 0.57118702 -0.216208 -0.359155 -0.90788901 -0.080072999 0.97343397 0.214509 -0.52408099
		 -0.202503 -0.82724297 -0.96046901 -0.278272 -0.0079979999 -0.57374197 -0.49008 -0.65623301
		 0.62972403 -0.52684301 -0.57086301 0.57092702 -0.64530402 -0.50756699 0.99993998
		 0.010013 0.0045360001 0.96278799 -0.263147 0.061586998 0.48140299 -0.86111701 0.163488
		 -0.52408099 -0.202503 -0.82724297 0.62972403 -0.52684301 -0.57086301 0.32484499 -0.94307399
		 0.071321003 0.48140299 -0.86111701 0.163488 0.96278799 -0.263147 0.061586998 0.62972403
		 -0.52684301 -0.57086301 0.96278799 -0.263147 0.061586998 0.48140299 -0.86111701 0.163488
		 0.96278799 -0.263147 0.061586998 0.65949702 -0.735632 0.154627 0.32484499 -0.94307399
		 0.071321003 -0.54112101 -0.750103 -0.38017601 -0.654333 -0.63013899 -0.41805899 -0.86869901
		 -0.30121201 0.39323401 -0.54112101 -0.750103 -0.38017601 0.32484499 -0.94307399 0.071321003
		 -0.654333 -0.63013899 -0.41805899 0.65949702 -0.735632 0.154627 -0.654333 -0.63013899
		 -0.41805899 0.32484499 -0.94307399 0.071321003 0.71318698 0.28906 0.63859898 -0.220319
		 0.96783298 0.121482 -0.81729001 0.51377702 -0.26090401 0.55758101 0.18236201 0.80984402
		 -0.86869901 -0.30121201 0.39323401 -0.81729001 0.51377702 -0.26090401 -0.220319 0.96783298
		 0.121482 -0.86869901 -0.30121201 0.39323401 0.743038 -0.006879 0.66921401 0.114259
		 -0.988307 0.100964 -0.81729001 0.51377702 -0.26090401 -0.81729001 0.51377702 -0.26090401
		 -0.81985998 -0.13195901 0.55715001 0.55758101 0.18236201 0.80984402 -0.81729001 0.51377702
		 -0.26090401 0.114259 -0.988307 0.100964 -0.81985998 -0.13195901 0.55715001 0.43770799
		 0.087353997 -0.89486402 0.81265301 0.57766497 -0.076801002 0.95893198 0.182721 0.216941
		 0.49167699 -0.336191 -0.803262 0.43770799 0.087353997 -0.89486402 -0.37169799 0.45747399
		 -0.80781102 0.81265301 0.57766497 -0.076801002 0.84395498 0.455102 0.28393999 0.46023899
		 0.38312301 -0.80087298 0.78448999 0.61983699 0.019432001 -0.37169799 0.45747399 -0.80781102
		 0.46023899 0.38312301 -0.80087298 0.84395498 0.455102 0.28393999 -0.37169799 0.45747399
		 -0.80781102 0.84395498 0.455102 0.28393999 0.81265301 0.57766497 -0.076801002 0.84395498
		 0.455102 0.28393999 0.081992 -0.43241099 0.89794099 -0.14177901 0.0072369999 0.98987198
		 0.84395498 0.455102 0.28393999 0.62810397 -0.16689301 0.76002097 0.081992 -0.43241099
		 0.89794099 0.78448999 0.61983699 0.019432001 0.62810397 -0.16689301 0.76002097 0.84395498
		 0.455102 0.28393999 -0.000879 -0.74759102 0.664159 0.001487 -0.62310499 0.78213602
		 0.46843499 -0.60525799 0.64360899 0.63987499 -0.083814003 -0.76389498 0.60039902
		 0.38481301 -0.70102799 0.81900102 0.371351 -0.43742001 0.81900102 0.371351 -0.43742001
		 0.60039902 0.38481301 -0.70102799 0.833848 0.523404 -0.17534199 0.62835097 -0.021516001
		 -0.77763301 0.60039902 0.38481301 -0.70102799 0.63987499 -0.083814003 -0.76389498
		 0.62835097 -0.021516001 -0.77763301 0.63987499 -0.083814003 -0.76389498 0.86038101
		 -0.26837 -0.43326899 0.660007 -0.72557002 -0.19477899 0.86038101 -0.26837 -0.43326899
		 0.63987499 -0.083814003 -0.76389498 0.660007 -0.72557002 -0.19477899;
	setAttr ".n[1328:1399]" -type "float3"  0.71605498 -0.19834299 -0.66927201 0.86038101
		 -0.26837 -0.43326899 0.660007 -0.72557002 -0.19477899 0.46843499 -0.60525799 0.64360899
		 0.59773898 -0.64784598 0.47223201 0.660007 -0.72557002 -0.19477899 0.59773898 -0.64784598
		 0.47223201 0.88217402 -0.42120099 0.210614 0.46843499 -0.60525799 0.64360899 0.001487
		 -0.62310499 0.78213602 0.59773898 -0.64784598 0.47223201 0.88217402 -0.42120099 0.210614
		 0.71605498 -0.19834299 -0.66927201 0.660007 -0.72557002 -0.19477899 0.85524201 0.2956
		 0.42565501 0.81900102 0.371351 -0.43742001 0.833848 0.523404 -0.17534199 0.53474301
		 -0.520787 0.66545498 0.46843499 -0.60525799 0.64360899 0.89249998 0.067111999 0.44602701
		 0 -0.838301 0.54520798 -0.000879 -0.74759102 0.664159 0.46843499 -0.60525799 0.64360899
		 0.53474301 -0.520787 0.66545498 0 -0.838301 0.54520798 0.46843499 -0.60525799 0.64360899
		 0.89249998 0.067111999 0.44602701 0.46843499 -0.60525799 0.64360899 0.85524201 0.2956
		 0.42565501 0.85524201 0.2956 0.42565501 0.833848 0.523404 -0.17534199 0.89249998
		 0.067111999 0.44602701 0.62810397 -0.16689301 0.76002097 0.78448999 0.61983699 0.019432001
		 0.85524201 0.2956 0.42565501 0.78448999 0.61983699 0.019432001 0.81900102 0.371351
		 -0.43742001 0.85524201 0.2956 0.42565501 0.81900102 0.371351 -0.43742001 0.46023899
		 0.38312301 -0.80087298 0.63987499 -0.083814003 -0.76389498 0.62810397 -0.16689301
		 0.76002097 0.85524201 0.2956 0.42565501 0.46843499 -0.60525799 0.64360899 0.63987499
		 -0.083814003 -0.76389498 0.46023899 0.38312301 -0.80087298 0.660007 -0.72557002 -0.19477899
		 -0.80334902 -0.51718301 -0.29521501 0.660007 -0.72557002 -0.19477899 0.46023899 0.38312301
		 -0.80087298 -0.37169799 0.45747399 -0.80781102 -0.80334902 -0.51718301 -0.29521501
		 0.081992 -0.43241099 0.89794099 0.660007 -0.72557002 -0.19477899 0.660007 -0.72557002
		 -0.19477899 0.62810397 -0.16689301 0.76002097 0.46843499 -0.60525799 0.64360899 0.78448999
		 0.61983699 0.019432001 0.46023899 0.38312301 -0.80087298 0.81900102 0.371351 -0.43742001
		 0.081992 -0.43241099 0.89794099 0.62810397 -0.16689301 0.76002097 0.660007 -0.72557002
		 -0.19477899 -0.60282499 -0.12466 0.78807497 0.092390001 -0.69634902 0.71173197 -0.080072999
		 0.97343397 0.214509 -0.60282499 -0.12466 0.78807497 -0.61649603 -0.24779201 -0.74734998
		 0.092390001 -0.69634902 0.71173197 -0.60282499 -0.12466 0.78807497 -0.94765198 0.305226
		 -0.093773 -0.61649603 -0.24779201 -0.74734998;
	setAttr -s 437 ".fc[0:436]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 3 8 9 10
		mu 0 3 8 9 10
		f 4 11 12 13 14
		mu 0 4 11 12 13 14
		f 4 -14 15 16 17
		mu 0 4 14 13 15 16
		f 3 18 19 20
		mu 0 3 17 18 19
		f 4 21 22 23 24
		mu 0 4 20 21 22 23
		f 4 25 26 27 28
		mu 0 4 24 18 23 25
		f 3 29 30 31
		mu 0 3 7 26 27
		f 3 32 33 -30
		mu 0 3 7 28 26
		f 4 34 -20 -26 35
		mu 0 4 29 19 18 24
		f 3 -35 36 -21
		mu 0 3 19 29 17
		f 3 37 -37 -36
		mu 0 3 24 17 29
		f 4 38 39 40 -2
		mu 0 4 1 30 31 2
		f 4 41 42 43 -39
		mu 0 4 1 32 33 30
		f 3 44 45 46
		mu 0 3 34 35 36
		f 4 -45 47 48 49
		mu 0 4 35 34 37 38
		f 3 50 51 52
		mu 0 3 8 39 40
		f 3 -50 53 54
		mu 0 3 35 38 41
		f 3 55 -55 56
		mu 0 3 40 35 41
		f 3 57 -53 -57
		mu 0 3 41 8 40
		f 3 58 59 -52
		mu 0 3 39 42 40
		f 3 60 61 -59
		mu 0 3 39 43 42
		f 3 62 -62 63
		mu 0 3 44 42 43
		f 3 -58 64 -9
		mu 0 3 8 41 9
		f 3 65 66 -46
		mu 0 3 35 45 36
		f 3 67 68 69
		mu 0 3 45 46 47
		f 3 -49 70 71
		mu 0 3 38 37 46
		f 3 72 -72 -68
		mu 0 3 45 38 46
		f 4 -71 73 74 75
		mu 0 4 46 37 48 49
		f 4 76 -12 77 -75
		mu 0 4 48 12 11 49
		f 4 78 79 -77 80
		mu 0 4 50 51 12 48
		f 3 81 -47 82
		mu 0 3 50 34 36
		f 4 -48 -82 -81 -74
		mu 0 4 37 34 50 48
		f 3 83 84 85
		mu 0 3 52 53 28
		f 4 -7 86 -86 -33
		mu 0 4 7 6 52 28
		f 4 -84 87 -5 88
		mu 0 4 53 52 5 4
		f 3 89 -76 90
		mu 0 3 54 46 49
		f 4 -87 91 92 93
		mu 0 4 52 6 55 56
		f 3 -67 -70 94
		mu 0 3 36 45 47
		f 3 95 96 -69
		mu 0 3 46 57 47
		f 3 -97 97 -95
		mu 0 3 47 57 36
		f 3 98 99 100
		mu 0 3 54 56 57
		f 3 101 -100 -93
		mu 0 3 55 57 56
		f 3 -96 -90 -101
		mu 0 3 57 46 54
		f 4 102 103 104 105
		mu 0 4 58 59 60 61
		f 4 106 -8 107 108
		mu 0 4 62 4 7 63
		f 4 109 110 -17 111
		mu 0 4 64 65 16 15
		f 3 112 113 114
		mu 0 3 66 61 64
		f 3 115 116 -85
		mu 0 3 53 67 28
		f 3 117 118 -109
		mu 0 3 63 64 62
		f 3 119 120 121
		mu 0 3 68 21 26
		f 3 -117 122 -34
		mu 0 3 28 67 26
		f 3 -122 -123 123
		mu 0 3 68 26 67
		f 4 124 125 126 127
		mu 0 4 61 33 69 70
		f 3 128 129 130
		mu 0 3 68 70 71
		f 3 131 132 -129
		mu 0 3 68 72 70
		f 3 133 134 -124
		mu 0 3 67 65 68
		f 3 135 -110 136
		mu 0 3 72 65 64
		f 3 137 -137 138
		mu 0 3 60 72 64
		f 3 -139 -114 -105
		mu 0 3 60 64 61
		f 3 -132 -135 -136
		mu 0 3 72 68 65
		f 3 139 140 -103
		mu 0 3 58 73 59
		f 4 141 142 -92 -6
		mu 0 4 5 74 55 6
		f 4 -94 143 -142 -88
		mu 0 4 52 56 74 5
		f 3 144 -144 -99
		mu 0 3 54 74 56
		f 4 145 -78 146 147
		mu 0 4 74 49 11 75
		f 3 -83 148 149
		mu 0 3 50 36 74
		f 4 -148 150 -79 -150
		mu 0 4 74 75 51 50
		f 3 -146 -145 -91
		mu 0 3 49 74 54
		f 3 151 -102 -143
		mu 0 3 74 57 55
		f 3 -152 -149 -98
		mu 0 3 57 74 36
		f 4 152 -18 153 154
		mu 0 4 76 14 16 77
		f 4 -147 -15 -153 155
		mu 0 4 75 11 14 76
		f 3 156 -89 157
		mu 0 3 77 53 4
		f 3 -158 -107 158
		mu 0 3 77 4 62
		f 3 159 -151 -156
		mu 0 3 76 51 75
		f 4 -80 -160 160 -13
		mu 0 4 12 51 76 13
		f 4 -16 -161 -155 161
		mu 0 4 15 13 76 77
		f 4 -119 -112 -162 -159
		mu 0 4 62 64 15 77
		f 3 162 -116 -157
		mu 0 3 77 67 53
		f 4 -134 -163 -154 -111
		mu 0 4 65 67 77 16
		f 3 163 164 165
		mu 0 3 78 79 80
		f 3 -165 166 167
		mu 0 3 80 79 81
		f 3 168 169 -11
		mu 0 3 10 82 8
		f 3 170 171 -61
		mu 0 3 39 83 43
		f 3 172 173 174
		mu 0 3 84 85 86
		f 3 175 176 177
		mu 0 3 87 84 88
		f 3 -176 178 179
		mu 0 3 84 87 89
		f 3 180 -180 181
		mu 0 3 90 84 89
		f 3 -175 182 -177
		mu 0 3 84 86 88
		f 3 183 184 185
		mu 0 3 91 92 93
		f 3 186 187 188
		mu 0 3 94 81 95
		f 3 -187 189 190
		mu 0 3 81 94 96
		f 3 191 192 193
		mu 0 3 97 87 95
		f 3 194 -193 -178
		mu 0 3 88 95 87
		f 3 195 196 -192
		mu 0 3 97 98 87
		f 3 -179 -197 197
		mu 0 3 89 87 98
		f 3 198 199 -188
		mu 0 3 81 99 95
		f 3 -200 200 201
		mu 0 3 95 99 100
		f 3 202 203 204
		mu 0 3 101 98 102
		f 3 205 206 -54
		mu 0 3 38 103 41
		f 3 -207 207 208
		mu 0 3 41 103 104
		f 3 209 -65 -209
		mu 0 3 104 9 41
		f 3 -60 210 211
		mu 0 3 40 42 105
		f 3 212 -66 -56
		mu 0 3 40 45 35
		f 3 -212 213 -213
		mu 0 3 40 105 45
		f 3 214 -206 -73
		mu 0 3 45 103 38
		f 3 -208 215 216
		mu 0 3 104 103 105
		f 3 -214 -216 -215
		mu 0 3 45 105 103
		f 3 217 -63 218
		mu 0 3 9 42 44
		f 3 219 -219 220
		mu 0 3 106 9 44
		f 3 -211 -218 221
		mu 0 3 105 42 9
		f 3 -217 -222 -210
		mu 0 3 104 105 9
		f 3 222 223 -164
		mu 0 3 78 92 79
		f 3 224 225 -190
		mu 0 3 94 107 96
		f 4 -64 226 -226 227
		mu 0 4 44 43 96 107
		f 3 -228 228 -221
		mu 0 3 44 107 106
		f 3 -189 -195 229
		mu 0 3 94 95 88
		f 3 -225 230 231
		mu 0 3 107 94 108
		f 3 232 -231 -230
		mu 0 3 88 108 94
		f 3 -182 233 234
		mu 0 3 90 89 109
		f 3 -232 235 236
		mu 0 3 107 108 86
		f 3 -183 -236 -233
		mu 0 3 88 86 108
		f 3 237 -223 238
		mu 0 3 107 92 78
		f 3 239 240 241
		mu 0 3 110 93 111
		f 3 242 243 -238
		mu 0 3 107 112 92
		f 3 244 245 -243
		mu 0 3 107 113 112
		f 3 -185 -244 246
		mu 0 3 93 92 112
		f 3 -246 247 -247
		mu 0 3 112 113 93
		f 3 248 -248 249
		mu 0 3 114 93 113
		f 3 -237 250 -245
		mu 0 3 107 86 113
		f 3 251 252 253
		mu 0 3 115 116 117
		f 3 254 255 -254
		mu 0 3 117 113 115
		f 3 256 -256 -251
		mu 0 3 86 115 113
		f 3 257 -173 -181
		mu 0 3 90 85 84
		f 3 258 259 260
		mu 0 3 90 111 118
		f 3 -261 261 -258
		mu 0 3 90 118 85
		f 3 262 -257 -174
		mu 0 3 85 115 86
		f 3 -263 263 -252
		mu 0 3 115 85 116
		f 3 264 -264 265
		mu 0 3 119 116 85
		f 3 266 267 268
		mu 0 3 120 111 114
		f 3 -241 -249 -268
		mu 0 3 111 93 114
		f 3 -255 269 -250
		mu 0 3 113 117 114
		f 3 -262 270 -266
		mu 0 3 85 118 119
		f 3 271 272 -271
		mu 0 3 118 120 119
		f 3 273 -273 274
		mu 0 3 121 119 120
		f 3 -260 -267 -272
		mu 0 3 118 111 120
		f 3 275 276 277
		mu 0 3 122 123 120
		f 3 278 -278 -269
		mu 0 3 114 122 120
		f 3 279 280 -276
		mu 0 3 122 117 123
		f 3 -270 -280 -279
		mu 0 3 114 117 122
		f 3 281 282 283
		mu 0 3 124 116 125
		f 3 284 285 -274
		mu 0 3 121 126 119
		f 3 -283 -265 286
		mu 0 3 125 116 119
		f 3 -281 -253 287
		mu 0 3 123 117 116
		f 3 288 289 -282
		mu 0 3 124 127 116
		f 3 -288 -290 290
		mu 0 3 123 116 127
		f 3 291 292 293
		mu 0 3 128 127 129
		f 3 294 -293 -289
		mu 0 3 124 129 127
		f 3 -295 -284 295
		mu 0 3 129 124 125
		f 3 296 297 298
		mu 0 3 130 131 132
		f 3 299 -298 300
		mu 0 3 129 132 131
		f 3 -286 301 -287
		mu 0 3 119 126 125
		f 3 -296 302 -300
		mu 0 3 129 125 132
		f 3 -299 303 304
		mu 0 3 130 132 126
		f 3 -302 -304 -303
		mu 0 3 125 126 132
		f 3 305 306 -291
		mu 0 3 127 126 123
		f 3 307 -307 -285
		mu 0 3 121 123 126
		f 3 -277 -308 -275
		mu 0 3 120 123 121
		f 3 308 -305 309
		mu 0 3 128 130 126
		f 3 -292 -310 -306
		mu 0 3 127 128 126
		f 3 -297 -309 310
		mu 0 3 131 130 128
		f 3 -301 -311 -294
		mu 0 3 129 131 128
		f 3 -118 311 -115
		mu 0 3 64 63 66
		f 4 -113 312 -44 -125
		mu 0 4 61 66 30 33
		f 3 -313 313 314
		mu 0 3 30 66 133
		f 3 -40 -315 315
		mu 0 3 31 30 133
		f 3 -314 -312 316
		mu 0 3 133 66 63
		f 4 -24 317 318 -28
		mu 0 4 23 22 134 25
		f 3 319 320 -31
		mu 0 3 26 134 27
		f 3 321 322 -41
		mu 0 3 31 69 2
		f 3 323 -323 324
		mu 0 3 32 2 69
		f 3 -43 -325 -126
		mu 0 3 33 32 69
		f 4 -1 325 326 -42
		mu 0 4 1 0 135 32
		f 3 327 -324 -327
		mu 0 3 135 2 32
		f 3 -328 328 -3
		mu 0 3 2 135 3
		f 3 329 330 -4
		mu 0 3 3 136 0
		f 3 -329 331 -330
		mu 0 3 3 135 136
		f 3 -332 -326 -331
		mu 0 3 136 135 0
		f 3 332 333 334
		mu 0 3 71 137 21
		f 3 -23 -334 335
		mu 0 3 22 21 137
		f 3 -120 -131 -335
		mu 0 3 21 68 71
		f 4 -19 336 -25 -27
		mu 0 4 18 17 20 23
		f 3 337 338 -22
		mu 0 3 20 25 21
		f 3 339 -339 -319
		mu 0 3 134 21 25
		f 3 -38 -29 340
		mu 0 3 17 24 25
		f 3 -337 -341 -338
		mu 0 3 20 17 25
		f 3 -320 -121 -340
		mu 0 3 134 26 21
		f 4 341 -317 -108 -32
		mu 0 4 27 133 63 7
		f 3 342 -321 -318
		mu 0 3 22 27 134
		f 3 343 344 -336
		mu 0 3 137 133 22
		f 3 -343 -345 -342
		mu 0 3 27 22 133
		f 3 -344 345 -316
		mu 0 3 133 137 31
		f 3 -130 -127 346
		mu 0 3 71 70 69
		f 3 -347 347 -333
		mu 0 3 71 69 137
		f 3 -346 -348 -322
		mu 0 3 31 137 69
		f 4 -104 348 349 -138
		mu 0 4 60 59 138 72
		f 3 -133 -350 350
		mu 0 3 70 72 138
		f 4 -351 351 -106 -128
		mu 0 4 70 138 58 61
		f 3 -349 -141 352
		mu 0 3 138 59 73
		f 3 -353 -140 -352
		mu 0 3 138 73 58
		f 3 -167 353 -199
		mu 0 3 81 79 99
		f 4 -171 -51 -170 354
		mu 0 4 83 39 8 82
		f 3 -355 355 -172
		mu 0 3 83 82 43
		f 3 -168 -191 356
		mu 0 3 80 81 96
		f 3 357 -357 358
		mu 0 3 10 80 96
		f 3 359 -359 -227
		mu 0 3 43 10 96
		f 3 -356 -169 -360
		mu 0 3 43 82 10
		f 3 360 361 362
		mu 0 3 139 140 141
		f 3 363 -362 364
		mu 0 3 142 141 140
		f 3 -10 -220 365
		mu 0 3 10 9 106
		f 3 -366 366 367
		mu 0 3 10 106 78
		f 3 -358 -368 -166
		mu 0 3 80 10 78
		f 3 -229 -239 -367
		mu 0 3 106 107 78
		f 3 368 369 370
		mu 0 3 143 144 92
		f 3 371 -371 372
		mu 0 3 145 143 92
		f 3 373 -373 -184
		mu 0 3 91 145 92
		f 3 -370 374 -224
		mu 0 3 92 144 79
		f 3 -205 375 376
		mu 0 3 101 102 146
		f 3 377 -201 378
		mu 0 3 147 100 99
		f 3 379 -354 -375
		mu 0 3 144 99 79
		f 3 380 -377 381
		mu 0 3 148 101 146
		f 3 -380 382 -379
		mu 0 3 99 144 147
		f 3 383 384 385
		mu 0 3 149 150 143
		f 3 386 387 388
		mu 0 3 151 152 153
		f 4 389 390 391 -387
		mu 0 4 151 154 145 152
		f 4 -386 -372 -391 392
		mu 0 4 149 143 145 154
		f 3 -385 393 -369
		mu 0 3 143 150 144
		f 3 -388 394 395
		mu 0 3 153 152 148
		f 3 396 397 398
		mu 0 3 147 150 155
		f 3 399 400 401
		mu 0 3 146 156 153
		f 3 -382 -402 -396
		mu 0 3 148 146 153
		f 3 -397 -383 -394
		mu 0 3 150 147 144
		f 4 -390 402 -363 403
		mu 0 4 154 151 139 141
		f 4 -404 -364 404 -393
		mu 0 4 154 141 142 149
		f 3 -398 405 406
		mu 0 3 155 150 157
		f 3 -401 407 408
		mu 0 3 153 156 158
		f 3 -405 409 -384
		mu 0 3 149 142 150
		f 3 -406 -410 410
		mu 0 3 157 150 142
		f 3 -389 411 -403
		mu 0 3 151 153 139
		f 3 412 -412 -409
		mu 0 3 158 139 153
		f 3 413 -411 -365
		mu 0 3 140 157 142
		f 3 414 -361 -413
		mu 0 3 158 140 139
		f 3 415 416 -415
		mu 0 3 158 159 140
		f 3 -414 -417 417
		mu 0 3 157 140 159
		f 3 418 -194 -202
		mu 0 3 100 97 95
		f 3 -196 419 -204
		mu 0 3 98 97 102
		f 3 -419 420 421
		mu 0 3 97 100 160
		f 3 -420 -422 422
		mu 0 3 102 97 160
		f 4 423 424 -376 -423
		mu 0 4 160 161 146 102
		f 4 -421 -378 425 -424
		mu 0 4 160 100 147 161
		f 4 -400 -425 426 427
		mu 0 4 156 146 161 162
		f 4 428 -427 -426 -399
		mu 0 4 155 162 161 147
		f 4 -429 -407 -418 429
		mu 0 4 162 155 157 159
		f 4 -430 -416 -408 -428
		mu 0 4 162 159 158 156
		f 4 430 431 432 433
		mu 0 4 163 164 165 166
		f 4 434 435 436 437
		mu 0 4 167 168 169 170
		f 3 438 439 440
		mu 0 3 171 172 173
		f 4 441 442 443 444
		mu 0 4 174 175 176 177
		f 4 445 446 447 -443
		mu 0 4 175 178 179 176
		f 4 448 449 450 451
		mu 0 4 180 181 182 183
		f 4 452 453 454 455
		mu 0 4 184 185 181 186
		f 3 456 457 458
		mu 0 3 168 187 188
		f 3 -459 459 460
		mu 0 3 168 188 189
		f 3 461 462 463
		mu 0 3 190 191 192
		f 3 464 -463 465
		mu 0 3 184 192 191
		f 4 -433 466 467 468
		mu 0 4 166 165 193 194
		f 4 -469 469 470 471
		mu 0 4 166 194 195 196
		f 3 472 473 474
		mu 0 3 197 198 199
		f 4 475 476 477 -475
		mu 0 4 199 200 201 197
		f 3 478 479 480
		mu 0 3 171 202 203
		f 3 481 482 -476
		mu 0 3 199 204 200
		f 3 483 -482 484
		mu 0 3 202 204 199
		f 3 -484 -479 485
		mu 0 3 204 202 171
		f 3 -480 486 487
		mu 0 3 203 202 205
		f 3 -488 488 489
		mu 0 3 203 205 206
		f 3 490 -489 491
		mu 0 3 207 206 205
		f 3 -441 492 -486
		mu 0 3 171 173 204
		f 3 -474 493 494
		mu 0 3 199 198 208
		f 3 495 496 497
		mu 0 3 208 209 210
		f 3 498 499 -477
		mu 0 3 200 210 201
		f 3 -498 -499 500
		mu 0 3 208 210 200
		f 4 501 502 503 -500
		mu 0 4 210 211 212 201
		f 4 -503 504 -445 505
		mu 0 4 212 211 174 177
		f 4 506 -506 507 508
		mu 0 4 213 212 177 214
		f 3 509 -473 510
		mu 0 3 213 198 197
		f 4 -504 -507 -511 -478
		mu 0 4 201 212 213 197
		f 3 511 512 513
		mu 0 3 215 189 216
		f 4 -461 -512 514 -436
		mu 0 4 168 189 215 169
		f 4 515 -438 516 -514
		mu 0 4 216 167 170 215
		f 3 517 -502 518
		mu 0 3 217 211 210
		f 4 519 520 521 -515
		mu 0 4 215 218 219 169
		f 3 522 -496 -494
		mu 0 3 198 209 208
		f 3 -497 523 524
		mu 0 3 210 209 220
		f 3 -523 525 -524
		mu 0 3 209 198 220
		f 3 526 527 528
		mu 0 3 217 220 218
		f 3 -521 -528 529
		mu 0 3 219 218 220
		f 3 -527 -519 -525
		mu 0 3 220 217 210
		f 4 530 531 532 533
		mu 0 4 221 222 223 224
		f 4 534 535 -435 536
		mu 0 4 225 226 168 167
		f 4 537 -447 538 539
		mu 0 4 227 179 178 228
		f 3 540 541 542
		mu 0 3 229 227 222
		f 3 -513 543 544
		mu 0 3 216 189 230
		f 3 -535 545 546
		mu 0 3 226 225 227
		f 3 547 548 549
		mu 0 3 231 188 183
		f 3 -460 550 -544
		mu 0 3 189 188 230
		f 3 551 -551 -548
		mu 0 3 231 230 188
		f 4 552 553 554 555
		mu 0 4 222 232 233 195
		f 3 556 557 558
		mu 0 3 231 234 232
		f 3 -559 559 560
		mu 0 3 231 232 235
		f 3 -552 561 562
		mu 0 3 230 231 228
		f 3 563 -540 564
		mu 0 3 235 227 228
		f 3 565 -564 566
		mu 0 3 223 227 235
		f 3 -532 -542 -566
		mu 0 3 223 222 227
		f 3 -565 -562 -561
		mu 0 3 235 228 231
		f 3 -534 567 568
		mu 0 3 221 224 236
		f 4 -437 -522 569 570
		mu 0 4 170 169 219 237
		f 4 -517 -571 571 -520
		mu 0 4 215 170 237 218
		f 3 -529 -572 572
		mu 0 3 217 218 237
		f 4 573 574 -505 575
		mu 0 4 237 238 174 211
		f 3 576 577 -510
		mu 0 3 213 237 198
		f 4 -577 -509 578 -574
		mu 0 4 237 213 214 238
		f 3 -518 -573 -576
		mu 0 3 211 217 237
		f 3 -570 -530 579
		mu 0 3 237 219 220
		f 3 -526 -578 -580
		mu 0 3 220 198 237
		f 4 580 581 -446 582
		mu 0 4 239 240 178 175
		f 4 583 -583 -442 -575
		mu 0 4 238 239 175 174
		f 3 584 -516 585
		mu 0 3 240 167 216
		f 3 586 -537 -585
		mu 0 3 240 225 167
		f 3 -584 -579 587
		mu 0 3 239 238 214
		f 4 -444 588 -588 -508
		mu 0 4 177 176 239 214
		f 4 589 -581 -589 -448
		mu 0 4 179 240 239 176
		f 4 -587 -590 -538 -546
		mu 0 4 225 240 179 227
		f 3 -586 -545 590
		mu 0 3 240 216 230
		f 4 -539 -582 -591 -563
		mu 0 4 228 178 240 230
		f 3 -439 591 592
		mu 0 3 172 171 241
		f 3 -490 593 594
		mu 0 3 203 206 242
		f 3 -483 595 596
		mu 0 3 200 204 243
		f 3 597 598 -596
		mu 0 3 204 244 243
		f 3 -598 -493 599
		mu 0 3 244 204 173
		f 3 600 601 -487
		mu 0 3 202 245 205
		f 3 -485 -495 602
		mu 0 3 202 199 208
		f 3 -603 603 -601
		mu 0 3 202 208 245
		f 3 -501 -597 604
		mu 0 3 208 200 243
		f 3 605 606 -599
		mu 0 3 244 245 243
		f 3 -605 -607 -604
		mu 0 3 208 243 245
		f 3 607 -492 608
		mu 0 3 173 207 205
		f 3 609 -608 610
		mu 0 3 246 207 173
		f 3 611 -609 -602
		mu 0 3 245 173 205
		f 3 -600 -612 -606
		mu 0 3 244 173 245
		f 3 -541 612 -547
		mu 0 3 227 229 226
		f 4 -556 -470 613 -543
		mu 0 4 222 195 194 229
		f 3 614 615 -614
		mu 0 3 194 247 229
		f 3 616 -615 -468
		mu 0 3 193 247 194
		f 3 617 -613 -616
		mu 0 3 247 226 229
		f 4 -454 618 619 -450
		mu 0 4 181 185 248 182
		f 3 -458 620 621
		mu 0 3 188 187 248
		f 3 -467 622 623
		mu 0 3 193 165 233
		f 3 624 -623 625
		mu 0 3 196 233 165
		f 3 -555 -625 -471
		mu 0 3 195 233 196
		f 4 -472 626 627 -434
		mu 0 4 166 196 249 163
		f 3 -627 -626 628
		mu 0 3 249 196 165
		f 3 -432 629 -629
		mu 0 3 165 164 249
		f 3 -431 630 631
		mu 0 3 164 163 250
		f 3 -632 632 -630
		mu 0 3 164 250 249
		f 3 -631 -628 -633
		mu 0 3 250 163 249
		f 3 633 634 635
		mu 0 3 234 183 251
		f 3 636 -635 -451
		mu 0 3 182 251 183
		f 3 -634 -557 -550
		mu 0 3 183 234 231
		f 4 -455 -449 637 638
		mu 0 4 186 181 180 191
		f 3 -452 639 640
		mu 0 3 180 183 185
		f 3 -619 -640 641
		mu 0 3 248 185 183
		f 3 642 -453 -466
		mu 0 3 191 185 184
		f 3 -641 -643 -638
		mu 0 3 180 185 191
		f 3 -642 -549 -622
		mu 0 3 248 183 188
		f 4 -457 -536 -618 643
		mu 0 4 187 168 226 247
		f 3 -620 -621 644
		mu 0 3 182 248 187
		f 3 -637 645 646
		mu 0 3 251 182 247
		f 3 -644 -646 -645
		mu 0 3 187 247 182
		f 3 -617 647 -647
		mu 0 3 247 193 251
		f 3 648 -554 -558
		mu 0 3 234 233 232
		f 3 -636 649 -649
		mu 0 3 234 251 233
		f 3 -624 -650 -648
		mu 0 3 193 233 251
		f 4 -567 650 651 -533
		mu 0 4 223 235 252 224
		f 3 652 -651 -560
		mu 0 3 232 252 235
		f 4 -553 -531 653 -653
		mu 0 4 232 222 221 252
		f 3 654 -568 -652
		mu 0 3 252 236 224
		f 3 -654 -569 -655
		mu 0 3 252 221 236
		f 4 655 -592 -481 -595
		mu 0 4 242 241 171 203
		f 3 -594 656 -656
		mu 0 3 242 206 241
		f 3 657 658 659
		mu 0 3 172 253 254
		f 3 660 -658 661
		mu 0 3 206 253 172
		f 3 -662 -593 -657
		mu 0 3 206 172 241
		f 3 662 -611 -440
		mu 0 3 172 246 173
		f 3 663 664 -663
		mu 0 3 172 255 246
		f 3 665 -664 -660
		mu 0 3 254 255 172
		f 3 -186 666 667
		mu 0 3 91 93 256
		f 3 668 669 670
		mu 0 3 257 98 258
		f 3 -670 -203 671
		mu 0 3 258 98 101
		f 3 -198 -669 672
		mu 0 3 89 98 257
		f 3 -673 673 -234
		mu 0 3 89 257 109
		f 3 674 -674 675
		mu 0 3 259 109 257
		f 3 676 -235 -675
		mu 0 3 259 90 109
		f 3 677 678 679
		mu 0 3 259 256 110
		f 3 -680 -242 680
		mu 0 3 259 110 111
		f 3 -667 -240 -679
		mu 0 3 256 93 110
		f 3 -259 -677 -681
		mu 0 3 111 90 259
		f 3 681 -672 682
		mu 0 3 260 258 101
		f 3 683 684 -395
		mu 0 3 152 256 148
		f 3 -374 -668 685
		mu 0 3 145 91 256
		f 3 -392 -686 -684
		mu 0 3 152 145 256
		f 3 -685 686 687
		mu 0 3 148 256 260
		f 3 -683 -381 -688
		mu 0 3 260 101 148
		f 3 -666 688 689
		mu 0 3 255 254 260
		f 3 690 -682 -689
		mu 0 3 254 258 260
		f 3 691 692 -671
		mu 0 3 258 253 257
		f 3 -690 -687 693
		mu 0 3 255 260 256
		f 3 -693 694 -676
		mu 0 3 257 253 259
		f 4 695 -695 -661 -491
		mu 0 4 207 259 253 206
		f 3 -610 696 -696
		mu 0 3 207 246 259
		f 3 697 -694 -678
		mu 0 3 259 255 256
		f 3 -659 -692 -691
		mu 0 3 254 253 258
		f 3 -665 -698 -697
		mu 0 3 246 255 259
		f 3 698 -639 -462
		mu 0 3 190 186 191
		f 3 699 -456 -699
		mu 0 3 190 184 186
		f 3 -464 -465 -700
		mu 0 3 190 192 184;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "forge_spirit_low:forge_spirit_solid";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "forge_spirit_low:forge_spirit_solidShape" -p "forge_spirit_low:forge_spirit_solid";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
createNode mesh -n "forge_spirit_solidShapeOrig" -p "forge_spirit_low:forge_spirit_solid";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 838 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.192286 0.458159 0.169956
		 0.41130599 0.204836 0.45107099 0.085867003 0.13830601 0.078938 0.125899 0.090944998
		 0.110528 0.053013999 0.86605501 0.046967998 0.89134902 0.041963 0.87252599 0.032690998
		 0.90931302 0.23017401 0.271505 0.20095301 0.253023 0.224792 0.22859401 0.09302 0.57711297
		 0.108927 0.65417302 0.082047001 0.66668999 0.044943001 0.64735401 0.028302999 0.58783299
		 0.055937 0.154579 0.058033999 0.12553 0.061951 0.14507399 0.097638004 0.91018099
		 0.108498 0.91671097 0.10271 0.92150301 0.11995 0.7299 0.024333 0.83031303 0.032667
		 0.79097497 0.043035001 0.81732601 0.078977004 0.93138897 0.100988 0.952214 0.042755
		 0.119758 0.041756 0.090870999 0.058038 0.087041996 0.230863 0.14740001 0.247796 0.175157
		 0.14937501 0.214573 0.124342 0.264936 0.092540003 0.23018999 0.082250997 0.72187197
		 0.116004 0.76604903 0.106436 0.79841 0.040860999 0.144784 0.020691 0.111759 0.035953999
		 0.67288798 0.075165004 0.755243 0.029958 0.68897599 0.31854501 0.70344299 0.34617499
		 0.66991597 0.33154401 0.73448497 0.090686001 0.20838401 0.13288499 0.13408799 0.131908
		 0.149838 0.34412801 0.90074098 0.344163 0.95283097 0.30942401 0.94808197 0.37649199
		 0.151508 0.40181801 0.20352399 0.37941501 0.20711 0.46614701 0.484979 0.439336 0.51149601
		 0.42616099 0.46125901 0.38032401 0.13397899 0.378591 0.076075003 0.41008201 0.127298
		 0.32497299 0.78654402 0.34608901 0.82129103 0.33738801 0.83649701 0.50428098 0.59566098
		 0.46846899 0.64538002 0.47218299 0.57881498 0.360277 0.81174302 0.381165 0.77502501
		 0.38686901 0.81024301 0.47373301 0.28933099 0.49311799 0.19042601 0.50515401 0.28511301
		 0.48104799 0.37590301 0.461669 0.39168799 0.46375 0.32575199 0.542741 0.185544 0.57754701
		 0.238049 0.55861098 0.282875 0.51958799 0.81031197 0.50984699 0.78003198 0.54273701
		 0.77947903 0.17219301 0.13492 0.14832 0.105526 0.180153 0.092850998 0.53533399 0.94325501
		 0.59704202 0.85426098 0.59212101 0.914841 0.22031701 0.045310002 0.176109 0.041373
		 0.131918 0.81592399 0.16583499 0.77013499 0.163165 0.84876102 0.64590299 0.15304001
		 0.68476498 0.230689 0.64045697 0.183011 0.66057497 0.130374 0.63476503 0.67649001
		 0.59587598 0.66617 0.60362297 0.59620202 0.66121697 0.46639299 0.64807701 0.41012201
		 0.675623 0.46855199 0.2058 0.87840801 0.163176 0.89292997 0.693699 0.70792001 0.66070199
		 0.72701401 0.65939403 0.69773799 0.69138598 0.755647 0.68398899 0.91007 0.65332699
		 0.90805602 0.67742503 0.86545402 0.93072301 0.168 0.93486297 0.093203001 0.94887102
		 0.112288 0.70265698 0.91707897 0.70934403 0.88087398 0.71427399 0.92997098 0.93770599
		 0.058123 0.94600701 0.057611 0.85985303 0.26914501 0.84908599 0.16599999 0.87888002
		 0.20117299 0.80295497 0.40010199 0.80764902 0.47849599 0.78045499 0.40607199 0.89920801
		 0.70544899 0.87624103 0.609007 0.919559 0.69333398 0.904746 0.408005 0.89994699 0.42821199
		 0.83666903 0.50067401 0.92203599 0.66490102 0.893704 0.61315 0.907947 0.60973102
		 0.857283 0.69498599 0.85897398 0.75282502 0.841254 0.42223001 0.88316101 0.35758299
		 0.89485401 0.39082399 0.91507202 0.48222801 0.87491298 0.54450899 0.94952899 0.77709597
		 0.96275502 0.74859703 0.98406798 0.76357502 0.926862 0.57235801 0.93630397 0.54668897
		 0.94739199 0.57065099 0.989537 0.339935 0.96821302 0.37033299 0.97348303 0.30430499
		 0.93093199 0.70841599 0.94392699 0.72540498 0.95728499 0.98933899 0.95122099 0.94112098
		 0.97891599 0.90026402 0.95829701 0.492046 0.96562999 0.430821 0.97468197 0.45179999
		 0.95011002 0.846681 0.97707403 0.88696599 0.95349801 0.90995997 0.255564 0.195724
		 0.041359998 0.072741002 0.045081001 0.042597 0.050636999 0.068203002 0.29508001 0.241292
		 0.324467 0.25233501 0.301909 0.33078799 0.164542 0.44823501 0.155729 0.486182 0.121935
		 0.48144901 0.20428801 0.73952103 0.236058 0.77555102 0.22588401 0.78939903 0.086056001
		 0.105507 0.19553401 0.41088301 0.166407 0.363801 0.203385 0.364517 0.27807999 0.303352
		 0.23608799 0.44596201 0.27003801 0.42440501 0.250918 0.50720298 0.031060001 0.100482
		 0.33229199 0.35612601 0.291747 0.398671 0.321648 0.32498601 0.221848 0.422304 0.244367
		 0.37184501 0.25648901 0.37291199 0.23796 0.493669 0.21944501 0.47245401 0.184637
		 0.73035699 0.041198 0.85344398 0.020307001 0.90485799 0.012522 0.87441301 0.011633
		 0.603423 0.021638 0.60201401 0.13781901 0.73713303 0.121582 0.70247298 0.18705399
		 0.67565101 0.20679601 0.62838501 0.200353 0.67037803 0.17633601 0.599913 0.174909
		 0.63472599 0.145051 0.59492803 0.071194999 0.14421999 0.070494004 0.126941 0.101668
		 0.30468801 0.103004 0.35009101 0.062486 0.38683701 0.059344999 0.89508599 0.062853001
		 0.93307602 0.053461 0.90722197 0.31605399 0.80891299 0.30238 0.75467801 0.043219
		 0.17246801 0.085267998 0.96087998 0.066091999 0.97005999 0.047486 0.220386 0.084748
		 0.179895 0.061321001 0.240716 0.79602301 0.34338301 0.73341799 0.355526 0.72700101
		 0.52636999 0.77334702 0.533885 0.71149999 0.632999 0.76220602 0.43966499 0.704301
		 0.45263401 0.700764 0.34984899 0.708395 0.41269699 0.66419703 0.28309101 0.70871699
		 0.25947601 0.71447599 0.29345599 0.057225 0.278745 0.033094998 0.42044199 0.031466
		 0.34536499 0.127684 0.74962598 0.054219 0.78422898 0.041485 0.75278801 0.149855 0.252298
		 0.116778 0.31942701 0.27090099 0.13302501 0.25282601 0.27512801 0.268639 0.213429
		 0.22955 0.38209 0.22592901 0.33669001;
	setAttr ".uvst[0].uvsp[250:499]" 0.114409 0.95638198 0.708188 0.68314099 0.74739498
		 0.60105902 0.74567801 0.62869 0.68374401 0.65270197 0.669554 0.588471 0.686068 0.54165798
		 0.048245002 0.96404701 0.021782 0.28368899 0.039136998 0.29170701 0.018433001 0.34681699
		 0.79044002 0.325109 0.74639601 0.27296901 0.78232801 0.26735899 0.84077102 0.46760601
		 0.82215399 0.40219501 0.83161801 0.373027 0.18103901 0.50226003 0.175843 0.53623903
		 0.130861 0.52354401 0.27315101 0.471636 0.300798 0.56689399 0.067858003 0.50599098
		 0.099793002 0.54767799 0.053865999 0.53927797 0.056265999 0.87957299 0.741005 0.25529
		 0.27470401 0.66687399 0.27484 0.73575097 0.249365 0.76008499 0.24272799 0.55331099
		 0.228277 0.56486201 0.214995 0.521501 0.30951199 0.60513002 0.348046 0.64470601 0.269104
		 0.61698699 0.87266302 0.91843897 0.84615099 0.82344902 0.91194201 0.83388799 0.288912
		 0.65821898 0.76332599 0.739393 0.73481899 0.68630701 0.784051 0.68918198 0.79938698
		 0.92331803 0.83170903 0.84123403 0.85289198 0.95543402 0.24958199 0.59335601 0.254758
		 0.56726199 0.75261599 0.655761 0.838696 0.58006501 0.081653997 0.099705003 0.070459001
		 0.093153998 0.20133799 0.33723101 0.161882 0.321738 0.85762101 0.77753699 0.812747
		 0.79360598 0.82493001 0.74542898 0.36085099 0.55383801 0.322431 0.52132899 0.041204002
		 0.51662701 0.0068140002 0.461274 9.0000003e-006 0.471652 0.0088849999 0.398945 0.226813
		 0.313831 0.196812 0.30287501 0.24261899 0.68096602 0.198239 0.55073899 0.72992802
		 0.139073 0.73039001 0.213361 0.70095402 0.18948001 0.702636 0.153662 0.78845501 0.100575
		 0.78154898 0.187031 0.233574 0.63749403 0.221936 0.65351498 0.2094 0.60399598 0.210076
		 0.72455901 0.71966702 0.77126402 0.73927999 0.79330897 0.75169998 0.91512603 0.77684402
		 0.87800598 0.75891697 0.024088001 0.70449603 0.055918001 0.57494098 0.107313 0.58664101
		 0.18059599 0.56514603 0.170774 0.231253 0.740493 0.78446698 0.53453898 0.76510102
		 0.46456301 0.72749603 0.46667799 0.54247099 0.112957 0.52185202 0.070133999 0.53982103
		 0.036415 0.52960497 0.188122 0.53616101 0.25505301 0.52054697 0.219733 0.111125 0.408517
		 0.103406 0.37587601 0.093594 0.40706801 0.055148002 0.43523201 0.837834 0.77266097
		 0.830311 0.71648997 0.71575999 0.021754 0.76071 0.016450999 0.200884 0.81578201 0.344237
		 0.41588101 0.29596001 0.45253101 0.013974 0.088939004 0.024402 0.085702002 0.600806
		 0.48784199 0.606601 0.54156798 0.56849402 0.56974399 0.62210798 0.513623 0.63507998
		 0.60259998 0.140321 0.33226901 0.14276201 0.36086401 0.13012099 0.37380499 0.153998
		 0.42065501 0.123813 0.44894999 0.137941 0.86341202 0.65579998 0.51536399 0.201903
		 0.72174299 0.53661102 0.63199401 0.59339398 0.604397 0.56263798 0.66582501 0.61298901
		 0.47509 0.619304 0.45773399 0.64001697 0.50848001 0.55223697 0.51526499 0.59764498
		 0.443533 0.84592903 0.67100298 0.79907399 0.70003903 0.81768602 0.72957897 0.78016698
		 0.78841299 0.018685 0.141776 0.026278 0.150343 0.36497101 0.61161798 0.458635 0.84820497
		 0.49259299 0.80852598 0.48502299 0.86332703 0.141458 0.55414402 0.098615997 0.125431
		 0.091752 0.141204 0.03286 0.20069 0.037625 0.206687 0.306779 0.83141398 0.29379901
		 0.86756098 0.293928 0.795623 0.17404801 0.91816199 0.12468 0.922189 0.103783 0.81370097
		 0.127757 0.86629701 0.035652999 0.468353 0.0094849998 0.45312101 0.020676 0.41822001
		 0.79159701 0.081882998 0.43601301 0.58272803 0.91856802 0.90917897 0.88575798 0.93351603
		 0.803141 0.94664502 0.82793403 0.99339598 0.528319 0.73778802 0.500323 0.754089 0.44687
		 0.799806 0.46777201 0.745758 0.48114601 0.78662097 0.49075699 0.487537 0.49126801
		 0.45074099 0.50591201 0.529055 0.48717099 0.53674102 0.67113298 0.32577801 0.63231301
		 0.34045199 0.62540197 0.40226701 0.61562198 0.32920101 0.76393998 0.91558599 0.75356901
		 0.85443401 0.79975098 0.53532302 0.82937199 0.48645499 0.68566799 0.197779 0.69548702
		 0.017942 0.697442 0.075277999 0.41712701 0.83642101 0.445041 0.89163703 0.460444
		 0.92022598 0.434358 0.92237598 0.44146401 0.57835901 0.19642299 0.195518 0.46827301
		 0.44070399 0.419514 0.378232 0.161608 0.73124599 0.13033301 0.78646201 0.126091 0.80684501
		 0.199062 0.48696399 0.169843 0.47969601 0.184067 0.46434101 0.38984501 0.39182901
		 0.400635 0.483145 0.38293499 0.48947001 0.586577 0.225289 0.6164 0.352368 0.59587801
		 0.34046 0.60047197 0.25555801 0.041948002 0.92023998 0.033316001 0.93638802 0.18073399
		 0.449325 0.86322999 0.64336997 0.81506801 0.57344902 0.30498499 0.110029 0.315229
		 0.15294699 0.603782 0.37893099 0.57196599 0.459328 0.54212397 0.405325 0.55183798
		 0.41021201 0.54685301 0.46952799 0.946051 0.27014801 0.62248898 0.114294 0.59624702
		 0.093850002 0.58785802 0.126634 0.63262302 0.214894 0.23497599 0.51840198 0.65329802
		 0.246352 0.62615299 0.231198 0.33454201 0.169467 0.28267899 0.14606901 0.512707 0.91774797
		 0.49558499 0.93295002 0.51374602 0.89018202 0.56236202 0.80377799 0.57185602 0.84362298
		 0.52306998 0.915824 0.018212 0.460127 0.025009001 0.52163899 0.020641999 0.48031199
		 0.223406 0.60226202 0.21519101 0.56550002 0.23925599 0.59779203 0.26929599 0.34261101
		 0.29317701 0.35340801 0.26295 0.38213801 0.937774 0.35486099 0.51762003 0.935036
		 0.97338003 0.25016701 0.94355202 0.25610799 0.92703599 0.230932 0.93483597 0.291491
		 0.929793 0.347013 0.60568798 0.048914 0.596048 0.032467 0.022220001 0.067027003 0.812994
		 0.31667501;
	setAttr ".uvst[0].uvsp[500:749]" 0.78459299 0.25875399 0.343528 0.73218 0.375227
		 0.69503897 0.37699199 0.43107501 0.36863101 0.49717399 0.365989 0.36559299 0.53305399
		 0.976107 0.190634 0.76018202 0.215864 0.83319998 0.62528098 0.042663999 0.64486498
		 0.087168001 0.38357699 0.734689 0.50996703 0.130445 0.60075998 0.77903098 0.62043703
		 0.80709201 0.62128299 0.80566901 0.55832899 0.76004303 0.55262101 0.73160499 0.590244
		 0.74027199 0.016403999 0.53136402 0.008924 0.53007698 0.52672702 0.70795101 0.51374602
		 0.59411597 0.53368801 0.692711 0.40840399 0.65738302 0.41673601 0.69903898 0.384415
		 0.65445101 0.424734 0.87676799 0.75361198 0.63763303 0.491247 0.72626501 0.491357
		 0.70938498 0.83226699 0.55158502 0.85147101 0.58733398 0.427477 0.57348198 0.425585
		 0.60548699 0.40068501 0.56049299 0.39497399 0.52104503 0.58798999 0.297959 0.57156497
		 0.34019399 0.448084 0.65299898 0.473804 0.67908603 0.92650002 0.64374501 0.837596
		 0.245801 0.838498 0.038509998 0.86705202 0.033094 0.85408199 0.096463002 0.888165
		 0.239785 0.88748401 0.12676001 0.87125701 0.131625 0.856233 0.094099998 0.87564301
		 0.061427001 0.107645 0.80594099 0.091688998 0.450351 0.096996002 0.49386701 0.92042398
		 0.536843 0.44639599 0.65694398 0.42142799 0.69321799 0.42006201 0.76342303 0.468095
		 0.081904002 0.47981 0.108286 0.447887 0.13880301 0.82778198 0.178123 0.84371299 0.15709101
		 0.41081199 0.091498002 0.44633099 0.088753998 0.41566601 0.052969001 0.38154101 0.046390001
		 0.439895 0.031597 0.95715201 0.60600197 0.035321999 0.063299 0.63697201 0.75788599
		 0.912826 0.154256 0.91636902 0.033053 0.91952902 0.078946002 0.104743 0.58571398
		 0.121885 0.65310001 0.64945602 0.76960701 0.24893899 0.61958599 0.962695 0.141261
		 0.95721799 0.16641299 0.71321499 0.71392101 0.67530203 0.81683701 0.663674 0.80244702
		 0.985367 0.82596803 0.99517298 0.92719698 0.44936299 0.72577298 0.40403801 0.73614901
		 0.423731 0.23526999 0.42717099 0.245663 0.46171799 0.41274399 0.465601 0.26526099
		 0.44204599 0.25652301 0.470474 0.20617899 0.97785801 0.198569 0.92167699 0.190817
		 0.509646 0.33291799 0.80383903 0.106957 0.79063201 0.83467799 0.94286102 0.87667102
		 0.93305999 0.91260302 0.91777802 0.937213 0.202876 0.486487 0.44771299 0.159252 0.65855902
		 0.63576698 0.40013999 0.31100401 0.36827001 0.30284801 0.679887 0.96042103 0.667575
		 0.98546702 0.70986599 0.96588898 0.504861 0.062222999 0.069193996 0.150389 0.189777
		 0.58629799 0.50213599 0.030828999 0.48694101 0.036058001 0.47414699 0.017825 0.16091201
		 0.038446002 0.14372 0.120187 0.328722 0.86882198 0.36970401 0.92216903 0.39116701
		 0.32306799 0.38914701 0.35312799 0.35780099 0.31785801 0.42079601 0.27003601 0.42131001
		 0.352321 0.36772299 0.87334299 0.20639899 0.106355 0.782076 0.58820599 0.64538503
		 0.56443602 0.654975 0.57450497 0.290407 0.90711099 0.32835001 0.848432 0.64140499
		 0.88676602 0.45091301 0.053024001 0.13680001 0.89873201 0.70069999 0.67874199 0.012365
		 0.14228199 0.013197 0.124221 0.018028 0.121487 0.37860501 0.47944301 0.38488701 0.52055597
		 0.83072001 0.098362997 0.81370902 0.147166 0.85908997 0.296574 0.82218599 0.233527
		 0.27262601 0.80025899 0.281719 0.85765302 0.035057001 0.56166297 0.59538603 0.76201397
		 0.61473298 0.72959 0.63805801 0.70306498 0.61214101 0.70438999 0.51438302 0.044888999
		 0.53914398 0.029676 0.180426 0.168419 0.97679698 0.84984899 0.33615899 0.30067801
		 0.05821 0.46950799 0.552885 0.101641 0.559771 0.051580001 0.54241002 0.57117599 0.54320502
		 0.54353303 0.81769001 0.53632498 0.51499498 0.565808 0.53475302 0.34351501 0.55263102
		 0.35614401 0.029948 0.070501 0.033201002 0.079461001 0.94336998 0.822056 0.87805802
		 0.24216101 0.75550598 0.234124 0.72991103 0.24507301 0.53528303 0.81763798 0.59844202
		 0.77439398 0.45490599 0.72762501 0.42773399 0.77256 0.55962902 0.024731001 0.53580898
		 0.0043540001 0.370572 0.63185102 0.88575298 0.021895999 0.88601297 0.065494001 0.53705698
		 0.309475 0.042954002 0.66288102 0.63049102 0.29911199 0.64870799 0.32085499 0.029332001
		 0.16238301 0.033778001 0.16034301 0.033716999 0.189234 0.88212699 0.45265201 0.86202401
		 0.50137001 0.87514699 0.57290298 0.50899899 0.61650997 0.080734 0.150343 0.135887
		 0.60765499 0.124873 0.56415999 0.93575501 0.42202601 0.94305998 0.478053 0.850995
		 0.51459599 0.92218602 0.457425 0.015165 0.073072001 0.351679 0.31898701 0.66096801
		 0.56281602 0.107916 0.45713499 0.121126 0.52759999 0.124567 0.40429401 0.481177 0.139575
		 0.50879198 0.073385999 0.095380001 0.116119 0.115492 0.40880901 0.36486101 0.234317
		 0.47181299 0.52226597 0.37620401 0.87343597 0.93245602 0.80012399 0.37573001 0.074460998
		 0.35651499 0.094821997 0.37400699 0.026657 0.50571799 0.19259401 0.517811 0.27988699
		 0.47649801 0.161872 0.109271 0.55136597 0.88373101 0.97090203 0.107079 0.460926 0.109193
		 0.51007003 0.41280901 0.199625 0.38197699 0.143199 0.100322 0.442536 0.72050899 0.845263
		 0.732544 0.92293799 0.338269 0.173527 0.343481 0.124035 0.360149 0.18761399 0.513547
		 0.35281301 0.70027202 0.868379 0.68113899 0.833049 0.32500499 0.99406099 0.37031499
		 0.93361402 0.299808 0.98141497 0.032019001 0.21706501 0.26444301 0.860879 0.153862
		 0.30530301 0.037115999 0.21864299 0.84966999 0.32515699 0.87893599 0.33493 0.904688
		 0.344989 0.920578 0.33877599 0.57869202 0.46914801 0.54376698 0.48976499 0.669967
		 0.67142302 0.94954199 0.50361103 0.89464402 0.307688 0.209002 0.079559997;
	setAttr ".uvst[0].uvsp[750:837]" 0.24542899 0.33597001 0.25727299 0.327887
		 0.234209 0.092179999 0.36235699 0.83906299 0.270008 0.92676502 0.95003599 0.64655799
		 0.025873 0.943829 0.020306 0.92857301 0.036607001 0.95151103 0.908746 0.778575 0.75982702
		 0.22098801 0.406863 0.63898599 0.23735701 0.93159401 0.64515197 0.45770699 0.065219998
		 0.084155001 0.255844 0.89027399 0.240428 0.89976901 0.34052399 0.105095 0.35604599
		 0.126013 0.245967 0.30875701 0.65508199 0.66535002 0.66679698 0.66466802 0.30742401
		 0.094917998 0.32415599 0.11272 0.958794 0.050687999 0.351713 0.135804 0.219597 0.87402099
		 0.18336999 0.93144101 0.153936 0.389137 0.36968899 0.56856298 0.361812 0.51680398
		 0.87359297 0.31470001 0.48746601 0.89351302 0.83911002 0.740233 0.89515698 0.28726
		 0.20339499 0.724105 0.463202 0.92986602 0.430547 0.92884803 0.62623399 0.73049802
		 0.24913301 0.87063497 0.29049799 0.89213902 0.22951099 0.89535397 0.39740601 0.38343701
		 0.718853 0.67904598 0.974657 0.68646097 0.95067102 0.70373601 0.91813803 0.72936398
		 0.97746098 0.709903 0.95943499 0.72096401 0.62638402 0.80610502 0.38333499 0.41194001
		 0.01392 0.11022 0.074187003 0.921866 0.051973999 0.040725 0.75212002 0.625929 0.939556
		 0.52763402 0.952259 0.55545199 0.69633299 0.69543999 0.68106198 0.66507602 0.235514
		 0.42808601 0.047789 0.023079 0.053344999 0.022892 0.37651601 0.54508901 0.60800999
		 0.39742699 0.162835 0.64108598 0.68233001 0.249937 0.140388 0.156609 0.148866 0.15101101
		 0.15910301 0.211739 0.326507 0.84233397 0.048884999 0.85560101 0.119505 0.94048202
		 0.23971599 0.83979398 0.91844797 0.49230701 0.108452 0.13901 0.52913499 0.285817
		 0.979891 0.46669 0.169783 0.68822998 0.018843001 0.153046 0.014895 0.83117598 0.22376999
		 0.044466998 0.188472 0.285703 0.76121998 0.01112 0.29225001 0.104721 0.051741 0.013446
		 0.94021899 0.80733502 0.474457 0.684183 0.78853202 0.195886;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 774 ".vt";
	setAttr ".vt[0:165]"  -9.50974369 145.93962097 35.96030045 6.94901896 145.47743225 35.58141327
		 7.58813286 147.42089844 34.15491486 12.66529655 146.31629944 36.42156219 -0.63905001 153.25744629 32.63814926
		 -5.58569622 133.92567444 30.71234322 -7.12247276 132.87071228 30.32418633 11.6069479 146.94772339 29.70990753
		 5.21035004 133.63459778 30.68423653 6.18362999 164.45266724 28.95693398 -12.77290535 163.62117004 26.3063221
		 14.44429684 155.1713562 24.19833565 14.018267632 156.87487793 21.34511185 -14.045042038 156.60502625 21.058637619
		 -11.84028053 158.18777466 21.13084602 13.48467636 156.64611816 19.55709457 11.57710648 166.6194458 18.26298141
		 -14.93555164 145.83135986 18.37926292 -17.75596237 147.31005859 16.42941666 -0.79908699 166.80535889 14.50858402
		 -10.88576889 167.97303772 16.89389992 -10.12370014 163.84457397 12.92167091 11.26133156 160.33279419 16.26674461
		 7.66503286 164.68649292 11.54663658 -10.2757597 161.20022583 11.95458031 11.28218174 159.25360107 10.40087318
		 -19.14453316 153.71749878 7.84204292 18.62132454 153.25808716 6.81192589 -16.32924271 153.98826599 4.77508593
		 -13.38204479 156.40853882 3.47715211 14.52279568 155.24079895 3.600914 4.92827082 158.49235535 2.76277089
		 -22.34493828 140.82606506 3.77323103 25.5728035 143.4949646 1.90988302 -18.1400528 146.88833618 1.133533
		 -16.57128525 153.9520874 0.051369 19.42477989 154.512146 1.60361803 -10.27054882 159.89498901 0.280617
		 22.67047691 140.55357361 -0.412415 20.56527519 146.83239746 -0.85246301 19.80203438 151.91148376 1.079995036
		 13.3473568 153.51264954 -4.20809412 2.87497711 163.088867188 -4.080380917 -28.0065402985 141.10369873 -4.31430292
		 -14.053926468 158.36747742 -4.70963717 -11.25812721 158.063522339 -5.49287081 -6.95322084 158.90911865 -7.44709778
		 -21.99509048 150.49383545 -7.5703392 -12.98564434 154.65272522 -8.11261463 -22.96950912 143.74275208 -8.72286797
		 -23.78514099 139.37159729 -8.20805073 24.52481651 134.040740967 -8.28851318 -19.53269196 146.61160278 -8.62988377
		 -16.86629486 149.6869812 -9.28748608 28.45749092 137.77732849 -7.33419323 26.10148239 137.60646057 -10.57828522
		 8.27017403 154.066558838 -23.3565197 11.47003555 145.19796753 -24.29149055 14.99421501 141.51382446 -24.16567993
		 -1.43651605 148.41296387 -24.90413857 7.70046997 150.071670532 -23.89907455 -14.039793968 136.71270752 -28.55210304
		 2.7238481 144.89849854 -28.026294708 7.365417 140.076782227 -29.27321053 -13.6315012 149.40086365 -28.67654991
		 -6.61354399 146.21476746 -30.16280174 10.80340195 138.69859314 -29.89081573 -0.86572701 143.14414978 -30.55341339
		 -16.83282089 146.54725647 -31.13365555 1.512573 146.19598389 -30.40956116 -2.58064008 141.75189209 -31.24118042
		 2.86518693 130.28401184 -32.51676941 -3.79333091 137.9145813 -33.16479492 -5.041629791 140.85209656 -32.49360657
		 0.50155699 127.24446106 -32.59899902 3.51524997 128.66322327 -33.92585373 1.52767205 143.13075256 -31.70043564
		 3.64569402 132.64834595 -32.84508133 -5.054278851 131.39277649 -34.79244614 2.23522902 139.61280823 -36.13405991
		 0.34976199 132.46139526 -35.61022186 -1.58760798 130.52534485 -36.5428772 14.34994793 151.1411438 33.83105087
		 3.14988208 152.86430359 46.95077133 1.046959996 146.93650818 46.60455704 3.70422506 139.59928894 46.50779724
		 7.13101578 162.1438446 42.50952911 3.067899942 158.83355713 32.51990891 10.40063763 150.62223816 42.88789368
		 -21.45487213 155.1529541 25.64142799 8.15899277 133.35334778 30.018564224 -6.394485 140.64585876 36.32860947
		 -7.87141705 147.6789856 38.21998596 -0.931068 145.19389343 47.51253128 -4.80613518 136.38548279 39.80720901
		 -10.4149971 157.96444702 30.020288467 6.38185596 139.47825623 30.055833817 11.49288082 154.80371094 -3.976794
		 -1.433828 158.78497314 -10.16544533 11.97361183 158.24078369 -10.70608521 -3.85615492 127.53723907 41.85925674
		 -10.86741638 147.95562744 29.38401413 7.56074381 141.6688385 35.34704971 14.8286953 154.35700989 27.76237106
		 4.84129477 139.50883484 34.6771431 9.076049805 156.95094299 41.56340408 -8.33396816 156.44340515 -12.20996761
		 1.84885299 126.842453 38.89110565 15.61409092 150.6368103 -14.071972847 16.23659515 146.43112183 -17.66129684
		 -13.23515606 151.40176392 31.92209053 4.26407003 135.0020446777 43.32043457 -14.91078377 158.072113037 30.37309837
		 14.19062424 150.56111145 -13.23672676 -7.88942623 163.84014893 37.24844742 -11.12147713 137.10798645 -26.34392738
		 -12.081957817 158.21897888 37.98968124 -23.12345505 148.63929749 -23.25510597 -9.19661427 156.4513092 43.65022278
		 -12.1489439 154.95036316 -14.3674469 5.68590212 141.36331177 42.023258209 -21.85149956 142.70509338 -27.49228287
		 -1.738397 166.080322266 37.88060379 -3.70870304 125.98908997 39.039253235 6.83848286 148.45030212 43.60149002
		 -8.85384083 155.68537903 41.39880753 21.67710686 150.39608765 -7.67404699 -7.44916821 150.77270508 43.38474655
		 -20.41175652 142.50312805 -10.67488766 23.84031296 142.019561768 -5.59564209 17.12389946 148.59503174 7.53252792
		 -11.58899212 151.6643219 41.51089478 -1.82943106 153.37884521 -23.54011536 18.6071949 146.13499451 14.34284401
		 -2.009344101 135.54443359 45.045352936 -21.35573006 146.65840149 -28.42216301 25.039403915 141.60458374 -11.60562134
		 -20.56917191 144.30513 -1.091397047 -5.68052292 166.13230896 28.82923698 -5.014214039 165.53738403 0.44092
		 5.852314 140.078704834 46.27762604 -22.078655243 136.91824341 -0.709746 -4.021738052 156.56163025 -7.61608887
		 -9.89191723 148.13191223 38.91605759 -1.91668606 166.20455933 3.84336495 18.78663445 155.39984131 10.12538528
		 4.11563587 159.79328918 -1.37581801 0.689089 158.42626953 -6.27731514 -14.6022253 152.96110535 -19.1507473
		 -6.19093609 163.066116333 29.72814178 -17.92801476 141.8302002 12.43717766 -5.57652998 140.70558167 42.33093643
		 -17.76946259 154.91514587 26.17964935 -26.50606918 138.98295593 -7.20412922 2.875458 123.95831299 41.84070206
		 22.84822464 139.87416077 -11.2178297 -11.60901737 159.19895935 19.053808212 -20.3573513 135.19122314 -24.031524658
		 -16.25728226 157.69215393 8.1982336 -3.23160791 168.22438049 13.72436047 12.19278908 157.55053711 -5.56807518
		 -17.099948883 151.8586731 -16.3535614 1.30733395 147.67918396 -28.073516846 20.047561646 150.45498657 -3.756598
		 -17.76453209 151.44102478 14.19476795 -7.70975399 166.02532959 24.06048584;
	setAttr ".vt[166:331]" 4.78937101 153.23149109 43.68402863 10.92022228 151.24082947 31.74333
		 -22.87085533 140.19081116 -16.18147278 6.16684723 165.5914917 23.2754631 -26.12321281 139.18293762 0.72344899
		 -3.96998405 156.10090637 48.31297684 0.058329001 167.58448792 22.85029984 15.013273239 156.75141907 4.15385103
		 -0.202425 133.77511597 41.18182373 1.18384004 146.42721558 50.50803757 -6.85856581 147.28414917 -24.97764206
		 13.78532887 157.078094482 33.89260483 -11.95776653 156.90412903 3.37504196 12.49077034 159.19766235 6.55357504
		 0.017351 164.72064209 8.052812576 6.34190607 130.87350464 -32.91215515 17.73565674 149.85823059 1.04508698
		 -3.15217495 152.73416138 47.43913269 17.30275536 148.44549561 6.35607481 17.55226135 156.25958252 27.41477203
		 -19.52092743 141.53019714 8.018860817 0.751288 120.96600342 41.97199249 -4.17485189 152.20507813 43.44106293
		 8.76033401 155.95346069 44.73565674 10.78269577 133.88124084 -30.019788742 -21.48027039 139.56391907 8.56062508
		 9.94702721 132.46363831 -28.03950119 19.7113781 147.23295593 7.8905201 9.31124973 163.63192749 30.77416801
		 10.68798542 146.490448 -19.75477982 2.92442298 162.068069458 -8.81941605 -14.22528553 147.44490051 20.8257637
		 6.37083483 165.32054138 34.65763474 -19.97838402 140.49247742 3.24508691 -23.88580894 144.39865112 -0.457533
		 18.75455284 142.82217407 6.9279418 -13.374753 160.41769409 16.66597366 16.010320663 150.3789978 13.78067303
		 -21.30026054 149.60498047 4.28203297 -12.12124634 160.66876221 8.79039955 -2.87797189 126.59018707 38.99889755
		 -9.38369465 161.6383667 11.81137085 -15.37182236 155.7724762 19.67310715 3.084779978 164.097244263 42.37875366
		 -20.26875687 149.32736206 11.8265028 -10.57035446 152.95431519 -13.94565201 -19.8959198 150.69927979 0.88473499
		 -4.41070795 149.98226929 -21.95678902 -5.50226307 164.92042542 27.11613274 8.94244003 163.59468079 8.19674301
		 -9.77806664 161.83621216 20.57870102 -9.31527519 138.40214539 -29.83936119 19.094173431 143.864151 -22.52549171
		 16.57530403 138.64508057 -20.31525612 -8.47424793 147.92001343 29.31038475 1.63711596 128.98320007 42.90034485
		 -7.31477594 142.88453674 -27.51480103 -16.96613121 160.52487183 14.55260944 15.65646744 146.029052734 15.76588154
		 22.43845177 141.3841095 -18.91716766 7.30105305 147.64042664 41.29163742 7.36569691 160.99971008 1.68845606
		 13.88883781 158.73292542 9.84266853 -5.89117622 137.068832397 -28.90721321 5.66220617 154.45857239 32.88830566
		 3.62199211 158.10926819 -23.70042038 -15.93379402 153.48278809 -5.73325396 23.35808563 135.94432068 -2.60086107
		 -2.74593401 134.65298462 40.22800446 -15.17176914 157.47546387 -1.10308695 -8.41043854 148.67633057 -27.45678711
		 -8.89389515 152.95855713 40.51820374 25.037254333 139.69056702 -6.25718307 -15.61700821 152.65966797 -1.66640699
		 -1.10177302 127.95694733 -32.078144073 -16.94908524 151.80749512 16.32408142 1.21436906 167.36021423 14.29576397
		 8.15464497 166.0028991699 23.11506462 -13.66248608 156.15568542 13.71240616 4.19540691 130.54885864 40.67949295
		 -13.45205688 158.9624176 9.70446301 26.32727623 136.48200989 -3.14424992 7.32858276 169.19590759 16.14620972
		 -3.80697894 139.85235596 48.21792221 19.46246338 143.35127258 -14.41951942 4.53926802 160.82278442 -13.31355858
		 -0.64131498 166.22966003 29.28600311 -21.32438278 146.50756836 -12.71136189 -6.2082901 131.00390625 -29.65967178
		 14.75254154 154.28936768 -10.93443871 -2.12732196 147.56919861 49.019496918 16.53039169 151.94700623 20.77712059
		 -9.24277878 140.77305603 31.064310074 -5.49349213 127.067466736 -30.9905777 -18.33501053 151.87298584 -0.88414299
		 11.4683218 156.026748657 -15.5565834 -23.76801491 145.76979065 -5.53337717 -1.85957205 158.18005371 -5.87767792
		 12.035814285 163.47625732 25.89074326 -19.98518944 146.73513794 -1.603351 12.52750111 158.48175049 16.25094604
		 -5.82245922 146.5690918 40.75217056 -12.90052986 162.9671936 19.018247604 13.32954597 157.020812988 11.66988754
		 25.91903305 138.097335815 1.59521794 -12.99423122 160.60897827 28.95870399 -9.16737366 165.21562195 28.65645409
		 23.72624588 140.89848328 3.95293808 -2.91364598 151.4119873 -19.87334824 1.79053104 159.87573242 -4.33709288
		 -10.89266586 159.3062439 29.33141327 -16.19510269 151.48387146 -2.90717506 8.27468681 138.68081665 30.26695061
		 17.059268951 159.74668884 14.16883755 -27.2112484 135.32119751 -5.47509623 -11.59032536 155.45948792 -9.66971302
		 -1.91501296 164.24967957 30.79494286 1.72070706 150.90281677 50.20394516 16.29392433 155.96191406 14.038870811
		 19.49558449 141.96008301 -16.67640114 17.16877365 145.62982178 -19.58439445 -17.87038612 154.39126587 30.54680252
		 -5.8585968 128.13484192 35.36769104 -9.92839432 158.22940063 0.92138302 16.54266357 156.15144348 2.40269208
		 16.56196785 145.25502014 13.88487053 20.60137939 140.97142029 3.31419897 -2.59442902 134.76934814 -34.49758911
		 10.77724648 158.25244141 31.16132545 -2.32996893 131.48887634 42.2621727 19.80133247 148.2071991 9.61349297
		 18.66044044 144.24075317 8.82470703 -0.96661901 162.95605469 5.97908306 2.82373095 145.64016724 -26.62084198
		 -5.94217682 164.26179504 40.42700958 -1.77384305 166.12219238 11.96538258 -5.84022093 146.745224 43.23057175
		 5.24744797 164.046691895 10.37395096 8.99396515 160.37168884 35.56673431 -1.402053 135.16064453 -32.059898376
		 -23.80658722 143.35675049 -24.1195507 12.22425556 141.87535095 -23.92362022 16.71700859 152.33518982 -3.17402101
		 -23.13054085 135.34934998 -4.91657495 -18.50283623 149.74197388 6.098568916 -13.97049236 153.86802673 12.99290371
		 7.0054559708 129.98014832 -30.12925529 -23.46602058 146.78475952 -18.53428268 2.37976098 134.0042572021 40.34538269
		 -6.896451 141.94529724 30.94661903 17.065906525 143.39405823 9.54715824 -8.40421009 164.87757874 30.2050209
		 21.51140976 136.78587341 -16.79826927 2.28745008 151.10470581 -25.99464607 11.077503204 158.22344971 9.30826569
		 -15.67006588 155.98085022 12.5250082 -8.53201008 132.62800598 31.17764091 10.24510098 155.97633362 1.21697605
		 5.82034492 165.78166199 27.45902252 19.82893944 143.021102905 11.98148441 -22.79376221 148.63224792 -2.87648392
		 -6.058765888 153.45915222 31.54907417 -3.52224994 147.80586243 -25.38837051 -0.74538201 128.76010132 41.42876053
		 10.68113422 158.9488678 0.59204602 14.69919109 155.054946899 2.22941494;
	setAttr ".vt[332:497]" 1.57554805 167.27560425 11.61510944 12.69702721 156.1421814 0.527834
		 -5.46659994 165.2197113 13.2737484 7.93405199 137.46307373 -32.23352432 -6.92561007 144.18034363 -27.30541039
		 17.44189072 155.20149231 12.37095737 7.58965588 164.021133423 23.063333511 7.40590382 137.36360168 -29.34342194
		 10.17784309 160.32496643 31.73433495 -4.36371708 161.97590637 -5.3082571 -1.23051298 138.78022766 50.019371033
		 13.86298561 160.7388916 15.43648148 0.604563 136.88272095 49.1314621 11.42658615 159.83612061 30.97659874
		 -4.73290586 148.50041199 -27.8790226 -5.086956978 149.36680603 -24.86590385 -3.83308911 128.59835815 34.16460419
		 -9.46164703 156.0057373047 -7.48160601 6.29070282 160.44142151 -3.63157296 12.89069176 160.26303101 29.50362015
		 -6.051496983 169.090942383 16.7418251 -7.40538597 164.96104431 27.55861092 -17.073209763 133.26730347 -21.55953789
		 17.054258347 145.067886353 18.98670197 13.011323929 160.50860596 17.5425396 7.27961493 159.010971069 -12.8545084
		 -4.78724098 137.11079407 42.18371582 18.35061646 145.90344238 16.63528824 -12.075996399 151.68240356 30.682621
		 -18.82574272 135.78996277 -17.3714962 9.46854973 144.79808044 -22.84323311 -18.87955666 155.08694458 10.2539444
		 -21.17851639 149.92547607 -18.41437721 1.65561497 135.94610596 44.75090027 0.72901702 167.75706482 16.78188705
		 1.056313038 161.50624084 45.16928101 2.67014098 135.98875427 41.8260231 -19.70746994 150.94691467 -9.57544136
		 13.68261337 147.23236084 19.48296547 15.34596729 148.18482971 21.64079857 11.37117672 147.73394775 24.14167213
		 -5.1250968 141.1803894 35.68339539 -0.65849501 157.56512451 -16.14720535 4.33462715 167.33273315 12.72639847
		 -6.23161077 164.8722229 27.57543373 -18.0056285858 153.20649719 -5.692976 11.80894279 152.67759705 38.70033264
		 2.55071807 161.53683472 -6.17711878 -10.97775459 162.18930054 22.42037201 -7.6506629 152.94372559 43.96576309
		 -19.13093567 152.82728577 26.7314415 6.22770405 161.51229858 32.48013306 6.92126322 142.32725525 43.11479568
		 -21.45696259 153.91772461 27.62710381 15.76599312 149.77078247 -13.19609356 6.18109179 163.8008728 11.4186573
		 20.28275299 144.22254944 4.31873608 8.57334232 159.92144775 40.09179306 -12.56308174 158.759552 3.45963192
		 12.72717857 140.4833374 -27.49864769 -6.096013069 165.24119568 9.47962284 0.76864201 165.91316223 7.73628521
		 0.060196999 153.28175354 48.68189621 -12.73685169 153.05027771 -6.81826305 1.36236799 132.5461731 -33.16358185
		 0.149075 141.66552734 -30.6927433 11.21983147 143.15367126 -29.24909782 -9.48917675 161.99606323 14.17426872
		 19.12505913 147.062545776 1.68910003 16.52842712 156.21751404 16.33473587 6.98669291 154.62852478 44.1603508
		 9.87074089 167.42105103 21.074151993 22.48752213 146.40867615 1.38709295 -17.8013401 144.20602417 18.52548981
		 -8.1997366 142.42451477 -29.99034882 11.32741547 149.074417114 -21.59811211 -13.81587219 155.034072876 25.39500999
		 -9.1444912 138.37974548 -27.86783218 4.8879528 127.58961487 37.094680786 -16.064725876 147.20637512 14.59127617
		 -4.3052001 150.33398438 46.10097885 -11.73141956 138.92658997 -30.052440643 -0.83285701 167.73091125 27.11148453
		 -13.70081043 150.45854187 34.73664093 15.16779804 152.0080108643 -10.85901737 6.55065918 128.88020325 33.081413269
		 -12.37619114 158.99452209 16.72126961 -4.5761919 154.91040039 43.64211655 -14.66895866 152.064697266 24.061925888
		 9.53686714 137.5743866 -27.27470016 7.79616594 131.59005737 33.0081672668 6.051856995 158.20526123 -0.99143499
		 -7.92515612 158.36747742 45.31899643 -1.050770044 144.59812927 39.52453613 21.91178894 149.46269226 4.66137886
		 -12.3446722 149.43386841 25.50427055 13.067852974 146.93571472 25.0074596405 8.70787334 154.960495 40.53910828
		 -8.8080759 157.18371582 -6.17875099 21.51336288 154.027893066 26.1194725 23.11416435 139.28977966 -3.069103956
		 -0.30967301 142.37838745 42.39684677 13.36458588 147.8931427 22.61701393 11.97430134 149.059738159 39.8986969
		 -21.030015945 144.72486877 -7.62473917 -13.98313046 147.92575073 22.47390747 -9.4382534 158.7308197 -6.3869729
		 22.71417236 138.32775879 2.1157999 9.51644325 162.11557007 10.6029644 -21.81738853 146.21054077 -2.60527492
		 -21.78082466 148.26733398 -8.32610989 7.81445503 158.57432556 33.80604172 20.89932823 143.86106873 6.82980204
		 3.76591802 145.41047668 48.24719238 -2.70163798 165.93527222 29.44970703 8.36537361 145.33242798 -26.21533394
		 -0.62399 123.99703979 40.40891647 12.54966545 157.40039063 20.38484001 -17.29205322 147.61369324 8.41756535
		 -18.505476 151.63175964 -28.42004013 2.90229106 143.41853333 49.43509293 -11.95861626 160.35284424 31.5482254
		 11.8132391 140.2545166 -25.6191082 19.48570633 139.55247498 -22.53354454 -12.62951088 145.74388123 35.9986496
		 3.73545504 128.95593262 33.37758255 9.35284615 155.23561096 31.96917152 -18.97256279 149.23379517 8.020760536
		 -4.23893404 167.44464111 21.41508484 -20.89359474 134.54919434 -20.59773636 14.23121262 152.14840698 25.8204689
		 -10.57026386 157.27391052 -0.802634 23.74576759 136.18441772 -11.15764046 6.38950682 157.81317139 -22.13871765
		 -10.29408646 156.21113586 -5.78894711 4.96193218 135.39515686 -34.92336273 10.060224533 160.80456543 38.18042755
		 -20.41396713 152.21073914 -26.37327385 -13.75086784 149.90202332 26.32657623 -19.95569611 144.82012939 12.41790962
		 12.4900198 162.71626282 19.99622726 -0.86682802 125.7008667 44.52986145 -2.1780479 165.76863098 7.91830492
		 9.42525196 164.37568665 29.082208633 -27.39837074 137.095550537 -2.47895789 10.25941658 130.67062378 -29.908741
		 -14.71057034 150.39501953 15.72304726 -9.31964874 167.41136169 22.045040131 -12.77192879 151.97596741 -10.21879673
		 -2.16145205 123.17037964 43.028289795 19.16922951 135.79187012 -19.10536385 -2.55766296 158.38867188 46.67602158
		 0.961532 149.59466553 47.17389679 14.41557503 153.077346802 34.16233444 -1.27103305 146.50682068 34.36602783
		 1.78987002 124.60704041 -30.41834641 -19.14812088 139.94883728 6.82802486 -7.70247412 138.20954895 33.69833374
		 -13.52759647 154.88658142 -11.75708485 21.51807976 136.079879761 -19.51735687 -9.15300369 142.19551086 -25.92545509
		 -21.28016281 138.73072815 6.066940784 4.86344099 127.87658691 -30.040201187 2.78175902 125.82158661 -33.035327911
		 -16.021289825 149.72097778 -10.80226517 9.38170147 162.23399353 35.45449448;
	setAttr ".vt[498:663]" -2.86649609 140.45118713 44.98162842 -13.16643143 155.88638306 2.37591195
		 -19.058877945 143.66970825 9.12147427 -4.80885601 141.48815918 46.32539368 -13.042921066 158.74102783 -0.41848499
		 -2.21962905 151.060714722 -24.62408257 -14.060185432 157.89646912 10.03041935 -22.72234344 141.080917358 6.9923172
		 -23.27773285 139.97860718 1.13476598 5.11598396 166.054107666 29.21395111 -7.590734 164.15058899 23.10532379
		 -16.29826355 142.46841431 12.24250412 -16.24366188 151.85926819 -6.58517885 -21.90332413 142.35241699 -11.92312813
		 1.454494 165.68289185 29.26422119 -14.95932388 150.80827332 21.052177429 23.60524368 138.28668213 -9.63309765
		 -21.48676872 146.5819397 -6.31891394 4.026033878 134.90568542 36.085521698 -6.8970499 155.87820435 46.32607269
		 17.56857491 151.11227417 18.59737206 -16.35172653 153.99125671 -0.76749498 16.54074287 152.031188965 29.047782898
		 10.78107452 160.95526123 11.90227032 -4.88607216 151.76429749 -21.083257675 -1.91123998 139.52423096 -31.27470016
		 -18.66602135 149.93772888 -11.80563164 12.95030308 148.65184021 -20.88244057 14.3869276 155.56282043 11.54097652
		 -10.20845222 154.29602051 -9.30371666 -18.27429962 144.67379761 -30.4478054 9.4907856 142.042434692 -30.078779221
		 -17.75378227 154.94775391 0.101947 -4.070195198 130.032867432 40.33739853 -9.87105083 143.17276001 -28.81847572
		 8.25939846 151.20367432 43.28959656 -9.58592892 156.061462402 29.90785217 -6.61813879 153.44195557 -15.55448055
		 0.32957 135.89520264 43.69843292 2.21604395 155.48542786 47.21340942 4.81830311 125.76178741 -30.50338936
		 18.78176308 153.5786438 25.55584526 -3.023053885 167.08253479 12.22877312 11.82081223 159.32818604 19.43896294
		 -8.82057381 164.9564209 24.75909996 20.042877197 149.49533081 11.17978191 -1.06743598 150.83061218 50.16405869
		 -12.60017681 148.32627869 23.3027401 -3.47205997 137.72937012 41.079471588 0.525451 163.36669922 31.18116951
		 14.88144493 146.3309021 -16.89051437 -10.99539566 148.093887329 34.13575745 3.97687697 149.14167786 47.96472168
		 13.048812866 152.094482422 22.20495796 -7.22719002 167.97529602 14.35853958 -9.11540222 149.8006897 42.27874374
		 14.15083885 155.4342804 -0.77322102 0.31799701 164.7824707 -1.83374703 -1.31816006 143.9276123 49.64725876
		 -0.017410999 122.090538025 43.64286041 4.12768316 160.83737183 2.86714792 13.95702744 151.36340332 -7.55310011
		 5.31940603 161.85877991 -1.507761 8.52270508 157.89668274 45.1407814 13.36297798 146.12779236 -21.85775566
		 4.61109304 163.47099304 -0.023138 6.1635108 137.46128845 39.67150116 -6.33819294 141.84963989 43.54742432
		 -8.66560555 162.8089447 1.35622203 14.68248653 153.59953308 -4.65253878 22.15346909 145.70097351 -2.49717593
		 -1.122069 164.3190155 7.82352018 24.37185669 144.81518555 -3.45506811 -0.68279999 149.85238647 49.4000473
		 4.798491 159.88102722 45.095989227 -4.69049692 166.15812683 -1.909657 8.7227726 161.92593384 5.28057814
		 -13.00050926208 155.059875488 25.17428398 9.27296066 153.81266785 42.12397766 3.67202401 159.49989319 -17.11744881
		 10.12065887 163.85972595 13.1498394 8.90616989 152.58105469 39.91735458 3.51511502 138.56404114 48.6051445
		 4.55273819 140.13250732 44.031517029 -26.15529633 135.50463867 -2.25585508 9.60551929 146.68669128 34.32755661
		 14.78043461 157.22914124 18.98163605 16.68762398 150.30166626 -2.51297092 0.01168 166.83538818 12.47008228
		 -1.35446095 160.49049377 -6.78385687 -12.72436523 158.4236908 8.34328556 3.96507406 155.089889526 47.72938919
		 -0.51969302 129.50405884 43.33882523 -3.77767491 136.71342468 38.66828918 -13.46288586 157.99497986 23.12376213
		 -11.55522633 160.12089539 37.16595459 6.58456707 137.50160217 36.38378525 -17.32921982 156.3729248 6.20348883
		 -21.6084404 150.43864441 -27.10977936 20.0032920837 138.8926239 -14.71845341 -11.21625805 153.28283691 37.89972687
		 11.90872097 163.84025574 27.92833138 5.96044302 143.83372498 46.12887573 -0.044785 139.085693359 -34.019901276
		 -11.54073715 159.80015564 30.27641487 16.0011405945 143.78102112 11.55556488 1.45304894 134.36857605 45.22504044
		 22.13678169 145.30670166 2.99335289 11.25872612 143.41950989 -26.91605186 -14.32349396 152.51608276 32.80588531
		 4.84776497 142.70388794 47.79738998 10.68297291 167.36236572 16.032136917 -18.55225563 132.87686157 -23.88161469
		 9.79343605 146.84413147 28.13119316 4.79892683 136.6580658 40.86499405 2.31066108 124.57376099 39.66303635
		 2.76889992 168.43045044 14.40435696 -21.83767128 140.074295044 -7.92222786 4.91361809 141.1723175 -32.58576584
		 2.82485104 125.68254852 42.51646042 -21.29497337 144.083251953 -4.43260193 -3.25242901 138.80558777 47.1510582
		 -13.38565159 147.54220581 36.37524414 5.086242199 128.71702576 -32.44713593 -22.1015377 145.86898804 -6.76364803
		 -7.78304386 155.21669006 42.95246506 -9.3799572 158.27462769 -2.57109308 -2.22408891 166.91378784 31.16471291
		 -5.60709095 147.64637756 -26.35564423 16.59061623 143.6796875 -17.57607651 -17.39584923 144.55337524 14.82667542
		 -4.55035019 136.36424255 -30.84268761 -20.89271736 151.63931274 -5.13358688 1.59257805 144.32929993 -28.8022995
		 27.31254196 135.32559204 -7.68598509 11.25386333 156.83958435 38.77334595 -1.61637998 156.30638123 47.3338356
		 -5.086412907 151.050323486 -24.45635986 -1.56437397 143.077667236 -29.33410072 5.73904181 149.17533875 44.97261047
		 26.74703217 135.25889587 -10.23607063 -16.0034561157 146.69836426 16.069971085 -21.71033096 138.28244019 -15.4571476
		 7.13600922 147.30622864 -24.91340446 18.55711555 142.060531616 12.23729515 2.090194941 130.070022583 40.061965942
		 25.4433651 139.33761597 -3.90336609 -9.89994335 163.18736267 11.13684654 7.51502705 144.23046875 29.78100586
		 7.5170908 145.98832703 -22.37725449 2.57579207 138.032348633 47.93576813 22.43251419 142.26737976 -3.35966492
		 0.78749198 139.14916992 50.54971313 12.22984028 157.82177734 -2.032476902 12.20958519 142.39920044 -25.36559105
		 -16.69444275 156.43183899 15.24353027 10.53760242 160.16433716 9.49251556 -12.96775627 156.81028748 9.74060345
		 -4.69877005 145.19966125 40.91239929 -16.34095001 152.22892761 -22.58569145 -0.55818897 138.7530365 -32.22577667
		 -5.47374392 146.73635864 36.94456482 5.21389008 165.38244629 9.438941 3.16175008 159.89437866 -4.16975117
		 -18.29412842 146.03175354 6.39163589 19.4943943 145.044311523 -14.44551468;
	setAttr ".vt[664:773]" -8.71355915 162.98455811 29.95244217 -15.69284821 152.67190552 2.9112761
		 -5.32652617 128.22886658 33.93344879 -14.34391785 134.30609131 -23.83166122 -7.856462 159.68528748 30.31830978
		 -11.084609985 145.6459198 35.522995 -16.32857132 153.53901672 3.014336109 3.73095894 160.75137329 4.47971678
		 -4.86167383 135.99777222 32.58793259 13.70878696 157.73597717 9.6208849 -7.966681 147.29983521 34.58556366
		 23.067415237 142.25584412 -0.91370797 -13.62163639 147.060958862 25.171175 19.90488815 134.85351563 -16.92959595
		 0.110907 166.82389832 30.38878632 -17.81917 144.40002441 9.3862133 -0.95017999 147.75810242 -29.24547386
		 2.81864405 141.91252136 -29.93501091 19.024539948 147.35321045 2.80063605 8.29283524 147.45805359 37.68413162
		 19.47209167 146.52458191 0.0136 -5.92978477 148.62915039 44.39609528 -8.48446369 163.83181763 24.39794922
		 -6.69435883 132.23974609 -32.34241867 -16.51475716 154.60676575 17.71334648 -5.80438185 129.42207336 -33.73633575
		 -11.044363976 154.42987061 -10.46330547 -0.28170401 166.30766296 32.019069672 -18.78280258 149.59341431 -29.56647301
		 6.33857393 146.63821411 40.15377808 8.5854826 138.1595459 31.37675285 -9.82015133 160.098114014 -3.64163089
		 -10.27930355 147.16540527 32.72389984 -2.81073999 168.14466858 17.30805779 8.045617104 164.66850281 24.554533
		 15.23779297 153.98403931 14.19354343 -9.426898 140.81257629 -27.50082016 -14.81246853 156.1355896 33.86669922
		 -13.24752998 157.57247925 5.10291481 -4.08804512 146.78753662 47.43241119 14.35394478 147.99780273 24.020053864
		 -15.32879353 154.85203552 27.10782623 15.46249485 152.78645325 5.43069077 16.98663521 150.98173523 15.83149719
		 -8.7164526 163.90768433 6.19506311 -15.37156296 161.4072876 13.84608364 14.10113621 151.50611877 22.1265831
		 -17.38044548 156.80250549 29.028064728 11.44004917 156.036575317 3.491956 7.028448105 164.64628601 27.55981636
		 -2.45299196 140.063156128 -32.85089493 13.55385876 150.7590332 32.77297974 21.80356789 140.36012268 -10.54900169
		 11.77393246 161.190979 10.99088001 10.76243114 146.019332886 28.57817268 18.39284134 145.7828064 19.45376205
		 10.81426144 132.2265625 -30.58310318 -2.18411589 137.018112183 42.9523468 21.098093033 154.69815063 27.10438728
		 -13.11411858 158.26599121 19.39025307 4.92762423 126.81547546 -33.019695282 18.14865875 152.93609619 30.075206757
		 12.58499527 150.76246643 26.45639038 -0.72391897 120.75015259 41.2431221 13.079206467 152.30751038 -9.62204933
		 -0.30121899 148.11621094 46.44063568 13.72794342 145.20057678 -20.079216003 -4.12424707 125.5069809 40.54817581
		 20.23263741 152.68443298 27.41190338 -10.53972244 154.12059021 -14.3287468 -12.30282307 150.42210388 -27.14655113
		 -4.92297792 128.23866272 38.0058135986 -2.48558497 137.81312561 -32.41195297 -7.46692801 144.27554321 36.29045868
		 -23.21863937 144.42367554 -15.098748207 -19.13685036 152.94569397 -9.12171555 -1.35962796 129.11026001 -35.55881882
		 -5.90232182 154.55163574 -17.22671318 16.2663269 152.46789551 -7.36939383 -14.40385628 150.043991089 14.12082481
		 -2.085398912 136.20967102 -32.64326477 -3.43193793 166.61303711 28.57343864 -1.53941596 154.53598022 -22.4657135
		 3.59792495 159.82066345 0.68982601 10.83737373 161.1342926 22.36938477 -8.94058418 166.29367065 23.26546478
		 9.45555687 162.26637268 12.57347202 -4.95055294 134.097579956 -33.67813492 4.76999998 138.61227417 36.58436584
		 -8.32525253 132.23039246 32.54946136 12.95098209 155.58189392 26.53441238 -2.10995293 158.63796997 -7.042431831
		 -12.83932114 159.57862854 18.83392334 22.84102631 135.89323425 -4.57649183 10.71307564 159.36193848 2.60781002
		 -0.254576 141.70059204 -32.038475037 -24.8938961 138.29360962 1.244519 22.34926224 140.22328186 -19.90277863
		 3.3492229 126.80742645 36.94071579 -8.77671814 158.47401428 40.51977158 19.53337669 144.49272156 -21.14353752
		 -9.30878639 157.027618408 -7.67582321 -6.66766024 146.99133301 35.062797546 6.29872322 146.90820313 33.61003876
		 8.32994175 147.51133728 33.68749619 10.87922955 148.27632141 29.94221687 -8.61619186 147.45407104 34.34694672
		 14.57193756 149.073486328 -13.017066002 14.38729477 152.20288086 -10.19583511 17.10790825 144.73649597 -14.3622694;
	setAttr -s 2018 ".ed";
	setAttr ".ed[0:165]"  484 445 0 445 283 0 283 484 0 498 433 0 433 85 0 85 498 0
		 721 174 0 174 234 0 234 721 0 174 329 0 329 234 0 435 683 0 683 3 0 3 435 0 94 91 0
		 91 489 0 489 94 0 94 753 0 753 288 0 288 94 0 674 486 0 486 659 0 659 674 0 1 768 0
		 768 767 0 767 1 0 91 0 0 0 489 0 672 315 0 315 373 0 373 672 0 104 767 0 767 646 0
		 646 104 0 4 230 0 230 2 0 2 4 0 167 715 0 715 3 0 3 167 0 583 102 0 102 694 0 694 583 0
		 258 696 0 696 101 0 101 258 0 327 547 0 547 4 0 4 327 0 6 315 0 315 5 0 5 6 0 453 664 0
		 664 95 0 95 453 0 278 611 0 611 718 0 718 278 0 10 380 0 380 592 0 592 10 0 710 12 0
		 12 11 0 11 710 0 697 460 0 460 172 0 172 697 0 371 719 0 719 257 0 257 371 0 197 405 0
		 405 17 0 17 197 0 21 268 0 268 20 0 20 21 0 18 241 0 241 478 0 478 18 0 609 356 0
		 356 578 0 578 609 0 375 614 0 614 248 0 248 375 0 145 173 0 173 179 0 179 145 0 28 595 0
		 595 29 0 29 28 0 273 270 0 270 33 0 33 273 0 32 212 0 212 34 0 34 32 0 39 33 0 33 675 0
		 675 39 0 170 200 0 200 43 0 43 170 0 40 567 0 567 36 0 36 40 0 182 567 0 40 182 0
		 695 566 0 566 573 0 573 695 0 379 350 0 350 196 0 196 379 0 43 49 0 49 153 0 153 43 0
		 48 44 0 44 45 0 45 48 0 232 44 0 48 232 0 630 260 0 260 377 0 377 630 0 247 632 0
		 632 54 0 54 247 0 47 369 0 369 442 0 442 47 0 638 55 0 55 54 0 54 638 0 57 218 0
		 218 58 0 58 57 0 60 319 0 319 56 0 56 60 0 532 176 0 176 492 0 492 532 0 631 69 0
		 69 328 0 328 631 0 409 222 0 222 406 0 406 409 0 64 532 0 532 68 0 68 64 0 62 529 0
		 529 63 0 63 62 0 69 67 0 67 65 0 65 69 0 74 495 0 495 487 0 487 74 0 73 714 0 714 72 0
		 72 73 0 77 467 0 467 181 0;
	setAttr ".ed[166:331]" 181 77 0 74 71 0 71 75 0 75 74 0 259 689 0 689 740 0
		 740 259 0 759 79 0 79 601 0 601 759 0 293 81 0 81 78 0 78 293 0 82 435 0 3 82 0 458 103 0
		 103 167 0 167 458 0 177 294 0 294 468 0 468 177 0 175 556 0 556 342 0 342 175 0 549 110 0
		 110 360 0 360 549 0 433 581 0 581 85 0 550 600 0 600 637 0 637 550 0 468 633 0 633 177 0
		 537 572 0 572 483 0 483 537 0 547 87 0 87 4 0 497 86 0 86 304 0 304 497 0 83 402 0
		 402 189 0 189 83 0 537 634 0 634 394 0 394 537 0 360 674 0 674 549 0 327 486 0 674 327 0
		 591 206 0 206 348 0 348 591 0 6 348 0 348 666 0 666 6 0 373 591 0 591 672 0 766 0 0
		 0 737 0 737 766 0 92 553 0 553 143 0 143 92 0 302 267 0 267 565 0 565 302 0 656 425 0
		 425 433 0 433 656 0 594 564 0 564 245 0 245 594 0 368 516 0 516 314 0 314 368 0 95 705 0
		 705 112 0 112 95 0 360 327 0 104 96 0 96 8 0 8 104 0 96 90 0 90 8 0 407 56 0 56 261 0
		 261 407 0 374 746 0 746 106 0 106 374 0 261 465 0 465 251 0 251 261 0 350 99 0 99 357 0
		 357 350 0 97 728 0 728 255 0 255 97 0 486 425 0 425 659 0 245 422 0 422 594 0 422 617 0
		 617 410 0 410 422 0 770 101 0 696 770 0 766 373 0 315 220 0 220 766 0 583 1 0 1 102 0
		 594 752 0 752 564 0 167 520 0 520 715 0 378 485 0 485 177 0 177 378 0 104 1 0 1 752 0
		 752 102 0 378 435 0 435 485 0 402 166 0 166 533 0 533 402 0 767 611 0 611 646 0 96 611 0
		 278 96 0 690 741 0 741 535 0 535 690 0 765 142 0 142 98 0 98 765 0 516 457 0 457 314 0
		 457 417 0 417 762 0 762 457 0 525 261 0 261 108 0 108 525 0 109 525 0 108 109 0 299 641 0
		 641 647 0 647 299 0 256 703 0 703 249 0 249 256 0 367 300 0 300 483 0 483 367 0 295 358 0
		 358 531 0 531 295 0 721 536 0 536 174 0 108 113 0;
	setAttr ".ed[332:497]" 113 109 0 2 486 0 486 4 0 116 701 0 701 607 0 607 116 0
		 517 419 0 419 183 0 183 517 0 453 114 0 114 317 0 317 453 0 114 116 0 116 763 0 763 114 0
		 157 121 0 121 61 0 61 157 0 116 112 0 112 701 0 453 593 0 593 114 0 161 490 0 490 148 0
		 148 161 0 168 306 0 306 461 0 461 168 0 118 424 0 424 763 0 763 118 0 300 424 0 424 483 0
		 148 119 0 119 635 0 635 148 0 120 433 0 425 693 0 693 120 0 124 600 0 600 384 0 384 124 0
		 121 528 0 528 61 0 117 596 0 596 306 0 306 117 0 625 114 0 114 122 0 122 625 0 114 424 0
		 300 114 0 100 295 0 531 100 0 727 448 0 448 613 0 613 727 0 88 124 0 124 683 0 683 88 0
		 226 124 0 384 226 0 598 116 0 607 598 0 419 412 0 412 183 0 126 742 0 742 308 0 308 126 0
		 163 126 0 308 163 0 663 386 0 386 126 0 126 663 0 237 131 0 131 127 0 127 237 0 131 620 0
		 620 553 0 553 131 0 496 524 0 524 128 0 128 496 0 738 306 0 168 738 0 136 126 0 126 570 0
		 570 136 0 130 706 0 706 27 0 27 130 0 598 415 0 415 131 0 131 598 0 415 620 0 132 231 0
		 231 319 0 319 132 0 231 746 0 746 577 0 577 231 0 543 133 0 133 325 0 325 543 0 337 673 0
		 673 526 0 526 337 0 368 612 0 612 752 0 752 368 0 111 221 0 221 245 0 245 111 0 121 135 0
		 135 528 0 451 64 0 68 451 0 136 663 0 136 129 0 129 155 0 155 136 0 262 49 0 43 262 0
		 198 122 0 122 209 0 209 198 0 9 383 0 383 547 0 547 9 0 563 555 0 555 144 0 144 563 0
		 42 341 0 341 555 0 555 42 0 581 140 0 140 85 0 452 175 0 175 650 0 650 452 0 43 476 0
		 476 170 0 142 147 0 147 98 0 669 549 0 549 92 0 92 669 0 669 110 0 392 139 0 139 708 0
		 708 392 0 27 173 0 145 27 0 543 337 0 337 133 0 560 146 0 146 275 0 275 560 0 298 747 0
		 747 563 0 563 298 0 734 451 0 451 657 0 657 734 0 657 469 0 469 364 0;
	setAttr ".ed[498:663]" 364 657 0 149 547 0 547 668 0 668 149 0 138 317 0 114 138 0
		 210 26 0 26 459 0 459 210 0 501 302 0 565 501 0 498 344 0 344 619 0 619 498 0 152 360 0
		 360 382 0 382 152 0 152 89 0 89 711 0 711 152 0 49 50 0 50 153 0 309 141 0 141 582 0
		 582 309 0 221 473 0 473 617 0 617 221 0 187 613 0 613 154 0 154 187 0 155 250 0 250 136 0
		 460 749 0 749 172 0 667 610 0 610 61 0 61 667 0 640 461 0 461 361 0 361 640 0 702 595 0
		 595 158 0 158 702 0 164 321 0 321 363 0 363 164 0 159 19 0 19 334 0 334 159 0 20 552 0
		 552 21 0 160 97 0 255 160 0 330 423 0 423 323 0 323 330 0 469 117 0 117 364 0 511 253 0
		 253 738 0 738 511 0 503 132 0 132 162 0 162 503 0 585 649 0 649 568 0 568 585 0 570 129 0
		 164 411 0 411 321 0 471 500 0 500 150 0 150 471 0 749 479 0 479 268 0 268 749 0 166 550 0
		 637 166 0 637 533 0 167 2 0 2 458 0 3 2 0 168 511 0 128 640 0 361 128 0 19 366 0
		 366 169 0 169 19 0 141 137 0 137 506 0 506 141 0 760 582 0 141 760 0 571 484 0 283 571 0
		 571 93 0 93 729 0 729 571 0 324 366 0 366 172 0 172 324 0 324 414 0 414 252 0 252 324 0
		 30 173 0 27 30 0 31 227 0 227 712 0 712 31 0 329 643 0 643 107 0 107 329 0 643 457 0
		 457 107 0 175 93 0 93 556 0 452 84 0 84 175 0 532 236 0 236 176 0 522 635 0 119 522 0
		 485 722 0 722 177 0 185 294 0 177 185 0 566 708 0 139 566 0 558 393 0 393 227 0 227 558 0
		 303 660 0 660 332 0 332 303 0 467 720 0 720 181 0 426 36 0 36 193 0 193 426 0 184 193 0
		 193 290 0 290 184 0 171 517 0 183 171 0 634 183 0 183 394 0 554 331 0 331 290 0 290 554 0
		 103 294 0 185 103 0 725 82 0 82 520 0 520 725 0 191 488 0 488 186 0 186 191 0 310 204 0
		 204 505 0 505 310 0 557 187 0 154 557 0 731 727 0 727 481 0 481 731 0;
	setAttr ".ed[664:829]" 381 127 0 127 188 0 188 381 0 517 623 0 623 419 0 105 389 0
		 389 561 0 561 105 0 467 335 0 335 720 0 204 32 0 32 505 0 32 493 0 493 505 0 312 477 0
		 477 192 0 192 312 0 192 190 0 190 339 0 339 192 0 193 444 0 444 426 0 201 193 0 184 201 0
		 198 86 0 497 198 0 9 340 0 340 383 0 109 195 0 195 525 0 113 548 0 548 109 0 147 196 0
		 196 98 0 374 577 0 513 208 0 208 405 0 405 513 0 507 678 0 678 198 0 198 507 0 198 194 0
		 194 507 0 34 199 0 199 32 0 137 200 0 200 506 0 441 622 0 622 262 0 262 441 0 40 388 0
		 388 682 0 682 40 0 688 18 0 18 208 0 208 688 0 337 203 0 203 133 0 310 670 0 670 204 0
		 530 35 0 35 34 0 34 530 0 588 205 0 205 390 0 390 588 0 123 348 0 206 123 0 123 448 0
		 727 123 0 207 205 0 588 207 0 207 540 0 540 645 0 645 207 0 202 223 0 223 208 0 208 202 0
		 723 208 0 513 723 0 209 86 0 572 561 0 561 86 0 86 572 0 363 210 0 210 164 0 628 164 0
		 164 471 0 471 628 0 733 522 0 119 733 0 496 490 0 490 524 0 204 212 0 530 204 0 670 530 0
		 504 655 0 655 702 0 702 504 0 213 176 0 176 347 0 347 213 0 165 508 0 508 214 0 214 165 0
		 165 745 0 745 414 0 414 165 0 179 758 0 758 574 0 574 179 0 574 227 0 393 574 0 216 749 0
		 749 756 0 756 216 0 72 217 0 217 73 0 57 562 0 562 218 0 597 318 0 318 225 0 225 597 0
		 307 58 0 58 219 0 219 307 0 455 761 0 761 491 0 491 455 0 101 220 0 220 258 0 770 220 0
		 111 604 0 604 221 0 134 358 0 295 134 0 70 406 0 222 70 0 24 709 0 709 202 0 202 24 0
		 241 244 0 244 478 0 279 343 0 343 584 0 584 279 0 286 225 0 225 764 0 764 286 0 455 218 0
		 218 761 0 226 683 0 758 227 0 758 712 0 257 518 0 518 401 0 401 257 0 707 359 0 359 699 0
		 699 707 0 72 629 0 629 217 0 87 230 0 458 294 0 231 56 0 56 465 0;
	setAttr ".ed[830:995]" 44 502 0 502 45 0 757 464 0 464 51 0 51 757 0 91 591 0
		 373 91 0 94 591 0 235 44 0 232 235 0 64 236 0 635 734 0 734 148 0 381 237 0 125 116 0
		 598 125 0 55 238 0 238 54 0 54 644 0 644 247 0 232 395 0 395 239 0 239 232 0 232 519 0
		 519 235 0 740 396 0 396 240 0 240 740 0 223 688 0 223 246 0 246 653 0 653 223 0 338 243 0
		 243 242 0 242 338 0 614 243 0 243 248 0 16 403 0 403 472 0 472 16 0 24 246 0 246 709 0
		 617 245 0 246 244 0 244 653 0 432 233 0 233 247 0 247 432 0 233 632 0 23 248 0 248 609 0
		 609 23 0 403 609 0 248 403 0 556 249 0 249 342 0 556 256 0 155 773 0 773 250 0 663 773 0
		 773 386 0 196 577 0 577 98 0 357 196 0 214 745 0 253 364 0 364 313 0 313 253 0 161 524 0
		 751 687 0 687 254 0 254 751 0 254 689 0 259 254 0 255 99 0 99 160 0 99 261 0 261 357 0
		 183 544 0 544 394 0 183 703 0 703 544 0 401 584 0 584 257 0 257 15 0 15 371 0 258 315 0
		 6 258 0 489 753 0 240 259 0 255 261 0 255 108 0 200 262 0 200 441 0 46 573 0 573 341 0
		 341 46 0 264 351 0 351 12 0 12 264 0 326 265 0 265 260 0 260 326 0 326 515 0 515 265 0
		 279 717 0 717 343 0 267 659 0 425 267 0 685 92 0 92 267 0 267 685 0 21 756 0 756 268 0
		 25 228 0 228 269 0 269 25 0 270 675 0 38 270 0 270 439 0 439 38 0 271 10 0 592 271 0
		 542 380 0 10 542 0 599 475 0 475 345 0 345 599 0 748 698 0 698 264 0 264 748 0 271 272 0
		 272 10 0 599 698 0 698 475 0 605 273 0 33 605 0 274 132 0 503 274 0 46 587 0 587 755 0
		 755 46 0 408 602 0 602 271 0 271 408 0 602 272 0 260 277 0 277 377 0 265 277 0 278 90 0
		 694 594 0 422 694 0 279 228 0 228 717 0 228 284 0 284 269 0 50 280 0 280 153 0 280 43 0
		 281 106 0 106 741 0 741 281 0 376 446 0 446 282 0 282 376 0 678 512 0;
	setAttr ".ed[996:1161]" 512 547 0 547 678 0 544 283 0 283 394 0 166 83 0 83 550 0
		 279 284 0 401 279 0 285 225 0 286 285 0 627 285 0 286 627 0 562 362 0 362 730 0 730 562 0
		 287 711 0 711 385 0 385 287 0 110 287 0 385 110 0 288 735 0 735 94 0 123 666 0 178 390 0
		 390 289 0 289 178 0 695 624 0 624 37 0 37 695 0 567 290 0 290 36 0 203 291 0 291 133 0
		 291 642 0 642 133 0 605 292 0 292 273 0 273 439 0 293 80 0 80 81 0 294 304 0 304 468 0
		 294 443 0 443 304 0 590 295 0 295 473 0 473 590 0 604 295 0 590 604 0 592 408 0 27 296 0
		 296 130 0 145 543 0 543 27 0 297 130 0 296 297 0 474 569 0 569 563 0 563 474 0 144 139 0
		 392 144 0 299 162 0 162 641 0 299 59 0 59 162 0 300 122 0 300 209 0 474 301 0 301 569 0
		 685 553 0 412 188 0 127 412 0 440 179 0 179 215 0 215 440 0 340 304 0 304 383 0 443 87 0
		 87 304 0 254 744 0 744 751 0 744 80 0 293 744 0 306 121 0 157 306 0 306 135 0 652 57 0
		 58 652 0 308 585 0 568 308 0 772 559 0 559 742 0 742 772 0 50 309 0 309 280 0 308 559 0
		 559 585 0 310 662 0 662 665 0 665 310 0 310 191 0 186 310 0 311 655 0 504 311 0 411 743 0
		 743 321 0 312 77 0 181 312 0 181 477 0 306 313 0 313 117 0 314 174 0 536 314 0 174 643 0
		 297 316 0 316 130 0 291 603 0 603 642 0 138 376 0 376 317 0 317 664 0 597 677 0 677 318 0
		 482 455 0 491 482 0 319 162 0 60 162 0 440 654 0 654 179 0 179 673 0 673 145 0 158 363 0
		 321 158 0 321 311 0 504 321 0 322 258 0 6 322 0 666 322 0 333 97 0 97 651 0 651 333 0
		 324 169 0 325 297 0 296 325 0 297 642 0 642 316 0 442 326 0 326 47 0 630 326 0 327 668 0
		 95 534 0 534 705 0 680 65 0 65 346 0 346 680 0 336 65 0 67 336 0 206 234 0 329 206 0
		 206 448 0 330 333 0 651 330 0 350 160 0 331 184 0 660 393 0 393 332 0;
	setAttr ".ed[1162:1327]" 323 333 0 334 21 0 21 159 0 21 399 0 399 756 0 151 656 0
		 433 151 0 501 151 0 151 498 0 498 501 0 616 79 0 79 76 0 76 616 0 616 339 0 190 616 0
		 626 65 0 336 626 0 337 145 0 338 472 0 472 243 0 76 681 0 681 616 0 194 340 0 9 194 0
		 340 497 0 263 587 0 587 275 0 275 263 0 587 560 0 344 342 0 342 619 0 650 580 0 580 452 0
		 266 15 0 15 343 0 343 266 0 521 266 0 343 521 0 85 648 0 648 498 0 650 648 0 648 580 0
		 11 345 0 345 754 0 754 11 0 351 11 0 328 680 0 346 328 0 336 328 0 328 626 0 236 347 0
		 64 635 0 635 236 0 5 348 0 348 672 0 106 765 0 98 106 0 281 765 0 330 350 0 350 423 0
		 651 350 0 345 351 0 351 599 0 352 552 0 20 352 0 479 20 0 602 353 0 353 272 0 272 542 0
		 61 115 0 115 667 0 355 370 0 370 224 0 224 355 0 224 699 0 359 224 0 356 22 0 22 750 0
		 750 356 0 541 472 0 338 541 0 251 357 0 251 196 0 358 94 0 94 531 0 546 591 0 94 546 0
		 707 518 0 518 359 0 359 355 0 461 354 0 354 361 0 362 57 0 652 362 0 595 363 0 363 26 0
		 161 364 0 253 161 0 161 657 0 604 134 0 134 536 0 721 134 0 159 366 0 366 697 0 367 86 0
		 209 367 0 449 710 0 710 551 0 551 449 0 368 365 0 365 612 0 604 536 0 369 53 0 53 52 0
		 52 369 0 371 370 0 355 371 0 726 428 0 428 462 0 462 726 0 737 373 0 374 98 0 242 375 0
		 375 387 0 387 242 0 23 375 0 282 149 0 149 376 0 376 664 0 739 630 0 377 739 0 53 739 0
		 739 510 0 510 53 0 633 378 0 402 105 0 105 189 0 147 379 0 14 380 0 380 686 0 686 14 0
		 13 380 0 14 13 0 623 125 0 125 237 0 237 623 0 623 118 0 118 125 0 382 89 0 385 382 0
		 382 110 0 87 383 0 600 581 0 581 384 0 120 226 0 384 120 0 385 89 0 23 387 0 201 444 0
		 389 86 0 389 304 0 390 37 0 37 289 0 205 566 0 566 390 0 447 398 0;
	setAttr ".ed[1328:1493]" 398 62 0 62 447 0 66 421 0 421 63 0 63 66 0 474 392 0
		 392 540 0 540 474 0 392 645 0 180 586 0 586 393 0 393 180 0 558 180 0 150 628 0 394 83 0
		 83 537 0 283 83 0 48 395 0 48 466 0 466 395 0 396 80 0 744 396 0 740 80 0 76 397 0
		 397 681 0 759 76 0 66 398 0 398 391 0 391 66 0 529 66 0 334 399 0 404 33 0 39 404 0
		 401 284 0 707 401 0 533 576 0 576 402 0 402 429 0 429 105 0 403 243 0 39 400 0 400 404 0
		 605 400 0 400 292 0 18 639 0 639 405 0 405 18 0 217 406 0 406 73 0 70 73 0 407 60 0
		 195 641 0 641 407 0 407 195 0 592 420 0 420 408 0 217 409 0 217 229 0 229 409 0 107 613 0
		 448 107 0 762 107 0 685 412 0 127 685 0 501 703 0 703 685 0 685 501 0 413 61 0 61 68 0
		 68 413 0 413 115 0 172 165 0 414 172 0 110 620 0 415 110 0 607 287 0 110 607 0 386 416 0
		 416 126 0 457 90 0 90 417 0 410 417 0 417 422 0 202 418 0 418 24 0 723 202 0 419 188 0
		 419 381 0 437 420 0 420 13 0 13 437 0 391 421 0 422 90 0 90 694 0 350 661 0 661 423 0
		 171 424 0 424 517 0 2 683 0 683 425 0 426 40 0 426 388 0 470 408 0 420 470 0 437 676 0
		 676 420 0 726 372 0 372 428 0 372 551 0 551 434 0 434 372 0 429 378 0 378 105 0 378 579 0
		 579 533 0 533 378 0 624 438 0 438 430 0 430 624 0 755 430 0 430 46 0 431 539 0 539 185 0
		 185 431 0 722 185 0 644 432 0 514 432 0 432 238 0 238 514 0 434 428 0 428 704 0 704 462 0
		 88 435 0 378 88 0 49 436 0 436 615 0 615 49 0 622 49 0 438 46 0 438 573 0 292 439 0
		 303 440 0 440 660 0 137 441 0 442 515 0 52 442 0 458 443 0 443 230 0 444 388 0 201 388 0
		 445 608 0 608 550 0 550 445 0 580 608 0 608 452 0 138 446 0 691 625 0 122 691 0 606 391 0
		 398 606 0 329 448 0 449 12 0 12 748 0 29 450 0 450 28 0 26 28 0;
	setAttr ".ed[1494:1659]" 28 459 0 135 692 0 692 528 0 469 596 0 445 452 0 445 84 0
		 112 593 0 453 112 0 454 421 0 391 454 0 606 454 0 455 58 0 482 58 0 110 456 0 456 620 0
		 143 669 0 457 8 0 516 8 0 458 230 0 450 459 0 500 679 0 679 509 0 509 500 0 697 352 0
		 352 460 0 479 352 0 157 461 0 461 610 0 610 354 0 11 462 0 462 710 0 754 462 0 463 45 0
		 502 463 0 638 464 0 464 55 0 55 514 0 465 231 0 577 465 0 45 466 0 463 466 0 79 467 0
		 77 79 0 79 335 0 389 468 0 389 633 0 469 451 0 451 596 0 427 575 0 575 470 0 470 427 0
		 676 545 0 545 427 0 427 676 0 210 471 0 459 471 0 472 356 0 356 16 0 541 356 0 100 473 0
		 100 731 0 481 100 0 144 474 0 698 713 0 713 475 0 713 345 0 280 476 0 582 280 0 720 477 0
		 477 190 0 639 17 0 479 460 0 490 480 0 480 733 0 733 490 0 481 473 0 473 557 0 557 617 0
		 482 219 0 171 483 0 634 171 0 484 84 0 93 84 0 84 729 0 485 725 0 725 722 0 82 485 0
		 494 621 0 621 71 0 71 494 0 191 493 0 493 488 0 489 696 0 258 489 0 322 489 0 490 119 0
		 761 318 0 318 491 0 677 491 0 413 700 0 700 115 0 199 488 0 493 199 0 495 538 0 538 487 0
		 75 495 0 495 724 0 724 538 0 496 480 0 194 497 0 502 499 0 499 463 0 499 235 0 519 499 0
		 459 500 0 450 500 0 619 501 0 501 249 0 235 502 0 59 503 0 59 274 0 158 504 0 505 191 0
		 170 506 0 476 760 0 760 170 0 9 507 0 512 9 0 508 749 0 216 508 0 509 628 0 150 509 0
		 277 510 0 510 377 0 128 511 0 511 640 0 128 253 0 512 507 0 197 513 0 464 514 0 52 515 0
		 516 104 0 104 752 0 118 517 0 359 719 0 719 355 0 239 519 0 239 499 0 103 520 0 539 103 0
		 25 717 0 754 726 0 213 522 0 522 211 0 211 213 0 213 635 0 714 523 0 523 736 0 736 714 0
		 253 524 0 407 525 0 526 203 0 281 527 0 527 349 0 349 281 0 692 68 0;
	setAttr ".ed[1660:1825]" 68 528 0 529 398 0 212 530 0 735 531 0 735 100 0 532 413 0
		 532 700 0 533 88 0 533 124 0 327 534 0 534 668 0 741 274 0 274 535 0 536 368 0 536 365 0
		 589 83 0 189 589 0 561 189 0 494 487 0 538 494 0 538 621 0 539 520 0 539 732 0 732 520 0
		 540 301 0 541 22 0 353 542 0 296 543 0 256 571 0 571 544 0 544 256 0 437 545 0 358 546 0
		 134 546 0 282 547 0 282 691 0 691 547 0 548 195 0 770 0 0 766 770 0 0 696 0 550 283 0
		 552 159 0 352 159 0 553 127 0 567 554 0 555 573 0 573 144 0 93 256 0 727 557 0 557 481 0
		 31 558 0 558 671 0 671 180 0 587 42 0 42 560 0 563 42 0 561 589 0 572 589 0 764 562 0
		 562 286 0 730 286 0 747 560 0 560 563 0 612 111 0 245 612 0 365 111 0 151 565 0 565 656 0
		 37 566 0 567 41 0 41 554 0 568 163 0 163 570 0 7 769 0 769 768 0 768 7 0 694 7 0
		 7 583 0 301 298 0 298 569 0 568 570 0 649 570 0 572 367 0 139 573 0 574 215 0 393 215 0
		 575 408 0 276 408 0 575 276 0 579 576 0 576 429 0 577 251 0 578 23 0 23 750 0 750 387 0
		 579 429 0 580 85 0 85 608 0 178 588 0 120 581 0 476 582 0 583 768 0 584 15 0 586 303 0
		 332 586 0 587 341 0 537 589 0 590 221 0 546 234 0 234 591 0 592 13 0 116 593 0 102 594 0
		 26 595 0 135 596 0 596 692 0 285 597 0 627 597 0 598 237 0 599 264 0 600 140 0 140 608 0
		 77 601 0 276 602 0 276 353 0 603 316 0 604 365 0 404 605 0 447 606 0 447 454 0 607 415 0
		 611 769 0 769 718 0 600 608 0 16 609 0 157 610 0 769 767 0 564 612 0 613 410 0 410 154 0
		 410 762 0 242 614 0 615 50 0 615 309 0 616 335 0 190 335 0 617 154 0 619 249 0 143 620 0
		 456 143 0 621 75 0 75 724 0 622 436 0 618 436 0 622 618 0 381 623 0 624 289 0 625 138 0
		 625 446 0 346 626 0 730 627 0 628 411 0 509 411 0 629 229 0 47 630 0;
	setAttr ".ed[1826:1991]" 739 47 0 631 67 0 51 632 0 233 51 0 638 51 0 633 105 0
		 634 483 0 347 635 0 631 636 0 636 67 0 636 336 0 637 124 0 632 638 0 478 639 0 640 168 0
		 641 60 0 325 642 0 314 643 0 238 644 0 645 205 0 205 708 0 646 96 0 195 647 0 648 344 0
		 650 344 0 649 129 0 649 155 0 342 650 0 160 651 0 307 652 0 307 362 0 241 653 0 653 688 0
		 440 320 0 320 654 0 673 320 0 320 526 0 656 267 0 657 148 0 77 658 0 658 601 0 658 759 0
		 659 92 0 92 674 0 215 660 0 379 661 0 147 661 0 488 662 0 662 186 0 663 250 0 668 664 0
		 664 149 0 670 35 0 288 666 0 123 288 0 288 322 0 667 354 0 95 668 0 669 456 0 665 670 0
		 665 35 0 31 671 0 5 672 0 654 673 0 38 675 0 684 675 0 38 684 0 676 470 0 482 677 0
		 677 219 0 691 678 0 450 679 0 284 699 0 699 269 0 680 69 0 339 681 0 681 192 0 682 182 0
		 39 684 0 684 400 0 302 685 0 542 686 0 353 686 0 751 78 0 78 687 0 687 689 0 241 688 0
		 81 689 0 689 78 0 690 281 0 690 527 0 691 446 0 692 451 0 693 226 0 693 683 0 278 694 0
		 718 694 0 695 438 0 697 159 0 492 700 0 492 115 0 701 711 0 287 701 0 702 29 0 703 412 0
		 704 710 0 434 704 0 705 152 0 152 112 0 705 360 0 706 30 0 707 284 0 708 645 0 709 223 0
		 710 434 0 112 711 0 758 30 0 30 712 0 706 712 0 723 418 0 70 714 0 70 523 0 82 715 0
		 155 716 0 716 773 0 649 716 0 521 717 0 25 521 0 7 718 0 518 719 0 190 720 0 546 721 0
		 722 431 0 732 725 0 724 621 0 732 722 0 187 727 0 484 729 0 731 123 0 123 735 0 431 732 0
		 733 211 0 480 211 0 734 64 0 735 731 0 736 72 0 736 629 0 91 737 0 738 313 0 369 739 0
		 740 81 0 741 132 0 746 741 0 416 742 0 416 772 0 743 311 0 360 534 0 254 305 0 305 744 0
		 305 396 0 214 252 0 252 745 0 746 132 0 747 146 0 449 748 0 165 749 0;
	setAttr ".ed[1992:2017]" 578 750 0 293 751 0 752 516 0 753 322 0 755 263 0 263 430 0
		 756 156 0 156 216 0 399 156 0 233 757 0 758 173 0 759 397 0 658 397 0 760 506 0 761 225 0
		 218 225 0 613 762 0 125 763 0 218 764 0 349 142 0 765 349 0 691 198 0 728 113 0 386 771 0
		 771 772 0 773 771 0;
	setAttr -s 3827 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 -0.138318 -0.89424402 -0.42567101 -0.069968998 -0.78963 -0.60957998
		 0.39024201 -0.89767098 -0.20469201 0.19782101 0.97359997 0.113886 0.057349999 0.388197
		 -0.91979003 0.75857502 0.237964 -0.60657799 0.057349999 0.388197 -0.91979003 0.090414003
		 0.151467 -0.98431802 0.75857502 0.237964 -0.60657799 0.66192198 -0.454889 0.59576398
		 0.139432 -0.97512698 0.17229401 0.51277798 -0.85824502 0.021757999 -0.88121599 0.40867001
		 0.23758601 -0.33874199 0.122805 0.93283099 -0.89617401 -0.096988 0.43297401 -0.88121599
		 0.40867001 0.23758601 -0.94647503 -0.24011999 0.215701 -0.810233 -0.58321702 0.058139
		 -0.13846099 -0.888978 -0.436517 0.002318 -0.73278201 -0.68045902 -0.28054199 -0.95506799
		 -0.095615998 -0.25921199 0.34458399 0.90225899 0.005347 0.92011499 0.39161199 -0.75637698
		 0.64602602 0.102686 -0.33874199 0.122805 0.93283099 -0.62614 0.243672 0.74065697
		 -0.89617401 -0.096988 0.43297401 0.92978197 0.135708 -0.342181 0.62379301 0.066841997
		 -0.77872598 0.88051897 0.35189301 0.31758201 -0.97229999 0.211913 -0.098617002 -0.75637698
		 0.64602602 0.102686 -0.80088699 0.200471 -0.56426197 0.12625299 -0.187203 -0.97417402
		 -0.021268999 -0.040780999 -0.99894202 -0.013611 -0.777035 -0.62931001 -0.27631399
		 -0.48959199 -0.82701302 0.33657601 -0.84634799 -0.41281 0.51277798 -0.85824502 0.021757999
		 0.65073597 0.39269799 0.64986998 0.676238 -0.091583997 0.730968 0.98742902 -0.14821599
		 0.054923002 -0.82393998 -0.209534 -0.52651602 -0.87018698 0.39941901 0.28851199 -0.67102301
		 0.49822101 -0.54909301 0.189054 -0.28040299 -0.94108099 -0.055744 -0.2448 -0.96797001
		 0.12625299 -0.187203 -0.97417402 -0.058412001 -0.31390801 -0.94765502 0.62379301
		 0.066841997 -0.77872598 0.62204403 -0.039535999 -0.78198397 -0.637124 0.65883899
		 -0.40000501 -0.41124901 -0.0076870001 -0.91149098 0.021002 0.272576 -0.961905 0.56153101
		 -0.193279 -0.80456603 -0.117119 0.41622099 -0.90168899 0.64331102 -0.121234 -0.75594503
		 -0.78114998 0.62416703 -0.01484 -0.13547 0.48409599 -0.86446398 -0.95038003 0.30696401
		 -0.05051 0.64420998 -0.147337 -0.75052297 0.83346701 0.201134 -0.51466203 0.98849702
		 0.076364003 0.130549 0.151886 0.98495197 0.082460999 -0.030283 0.96150798 0.27310199
		 0.089452997 0.99439502 0.056366999 0.20790499 -0.28794599 0.93480599 0.76068801 -0.46332201
		 0.45462701 0.55185097 0.28157601 0.78496897 -0.26850301 -0.342868 0.90019298 -0.51903498
		 -0.84380901 0.13634101 0.49428999 -0.86874598 0.030959999 -0.44457901 -0.077128999
		 -0.89241302 -0.97756499 0.119516 0.173445 -0.674344 0.71810001 -0.172025 -0.83243603
		 -0.080541998 -0.54823703 -0.83063102 0.020745 -0.55643702 -0.304896 -0.095688999
		 -0.94756597 0.68240798 0.64576602 -0.3425 0.89121097 -0.40284199 -0.208473 0.73388201
		 0.178302 -0.65545797 -0.122808 0.54149801 -0.83168399 -0.39150399 0.90857702 -0.14564499
		 0.107957 0.989335 -0.097783998 0.80229002 0.58538502 0.11686 0.63575101 0.48841801
		 -0.59772003 0.62816799 0.77472299 -0.072182 -0.40294999 -0.178229 -0.89770001 -0.67827499
		 0.54634398 -0.491377 -0.40935099 0.43672299 -0.80106503 0.23896199 -0.130941 0.96215999
		 0.69269502 -0.71926099 -0.053268 0.911816 0.40025699 0.091572002 -0.74119198 -0.361792
		 -0.56545597 -0.65777802 0.117647 -0.743967 -0.25760901 -0.1868 -0.94802099 -0.082713
		 0.59133899 -0.80216998 0.911816 0.40025699 0.091572002 0.21336401 -0.0058360002 -0.976955
		 -0.66869903 0.029448999 0.74295002 -0.34465399 0.64433002 0.68268001 -0.94391501
		 0.32132599 -0.075988002 0.768116 -0.072908998 -0.63614702 0.22409099 0.76042002 -0.60954499
		 0.75302202 0.65608901 -0.050051998 0.467329 -0.457454 -0.75653201 0.22409099 0.76042002
		 -0.60954499 0.768116 -0.072908998 -0.63614702 -0.932567 0.28227499 -0.225032 -0.72077501
		 0.67184597 -0.17060301 -0.22139101 0.90810102 -0.355441 -0.473887 0.81920302 0.32301399
		 0.090582997 0.944139 0.316852 -0.141974 0.98967201 -0.019820999 -0.94391501 0.32132599
		 -0.075988002 -0.14312699 0.32810301 -0.93373603 -0.631791 -0.057410002 -0.77301002
		 0.003176 -0.039142001 -0.99922901 -0.46818799 0.801036 -0.373018 0.441232 0.774656
		 -0.453015 -0.79864299 -0.37781101 -0.46843299 -0.46818799 0.801036 -0.373018 0.003176
		 -0.039142001 -0.99922901 -0.63863498 0.75407702 0.15334 0.095344 0.50142097 0.85993397
		 0.112517 0.99170899 0.062068999 0.58584899 -0.328262 0.74096203 0.69568503 -0.711595
		 0.098259002 0.949705 0.30918601 -0.049640998 -0.86857998 0.381028 -0.31683901 -0.28782001
		 0.119455 -0.95020503 -0.74480301 -0.25441301 -0.61688101 0.55542302 -0.53504997 -0.63657397
		 0.380292 0.50294697 -0.77615899 0.949705 0.30918601 -0.049640998 -0.20280699 0.65824699
		 -0.72496998 0.50556701 0.457398 -0.73156601 0.098679997 -0.376531 -0.92113298 0.48800701
		 0.14108001 -0.86136299 0.074128002 0.407276 -0.91029203 0.60225201 0.311342 -0.73509097
		 0.68440098 -0.0083699999 -0.72905803 0.77093601 -0.38988701 -0.50363201 0.95441401
		 -0.230133 -0.19008601 0.98553503 -0.16941901 -0.0042249998 0.77169597 0.39188099
		 -0.50091398 0.087782003 0.824058 0.55966401 -0.929726 -0.34775001 0.121158 -0.52890098
		 0.84810001 0.031473 -0.62760299 0.692343 -0.356056 0.285649 0.49456599 -0.82085901
		 0.68440098 -0.0083699999 -0.72905803 -0.047270998 0.153749 -0.98697901 -0.069812998
		 0.55531299 -0.82870603 0.0092580002 0.202227 -0.97929502 -0.32637799 -0.26321501
		 -0.90785199 0.77169597 0.39188099 -0.50091398 0.15128601 -0.72601497 -0.67083102
		 -0.71300101 0.14427701 -0.68615901 -0.50050801 -0.26585299 -0.82390201 -0.048700999
		 -0.69321197 -0.71908599 -0.0088849999 -0.98519999 -0.171176 -0.24961101 0.449595
		 -0.857647;
	setAttr ".n[166:331]" -type "float3"  0.56553602 0.28396299 -0.77429497 -0.041536
		 -0.41522199 -0.90877199 -0.45244399 -0.55760598 -0.69596702 0.187209 -0.212497 -0.95906103
		 -0.02108 -0.73989201 -0.67239499 -0.50050801 -0.26585299 -0.82390201 0.100867 0.82141697
		 -0.56133801 0.097228996 0.28351599 -0.95402598 -0.657978 -0.66535902 -0.352649 -0.74444699
		 -0.41721001 -0.521281 0.31838101 -0.71641099 -0.62079698 -0.845182 0.51058 -0.15803599
		 -0.109453 0.237293 -0.96525198 -0.81957901 -0.089032002 -0.566006 -0.119741 0.65114301
		 -0.74945003 0.060261 -0.16693901 -0.984124 -0.60161698 0.082217999 -0.79454201 0.87476099
		 -0.443813 0.194484 0.66192198 -0.454889 0.59576398 0.51277798 -0.85824502 0.021757999
		 -0.49046999 0.014579 -0.87133598 -0.47025701 -0.119214 -0.87444103 -0.27631399 -0.48959199
		 -0.82701302 0.732692 0.608015 0.30574399 -0.212558 0.70815402 -0.67330301 0.326832
		 0.89965099 0.28949901 0.143666 0.72560102 0.67295098 -0.427753 0.222378 0.87611401
		 -0.46621999 -0.39133701 0.79340601 0.098699003 -0.67433202 -0.73180199 -0.52559799
		 -0.79729199 -0.29676899 0.118583 -0.66543698 -0.736974 0.39024201 -0.89767098 -0.20469201
		 -0.069968998 -0.78963 -0.60957998 0.25398499 -0.90960503 -0.32880101 0.78530103 0.173279
		 0.59437102 0.90313798 -0.033429001 0.428047 0.75505197 0.175984 0.63160598 0.732692
		 0.608015 0.30574399 0.326832 0.89965099 0.28949901 0.81346601 0.218582 0.53897703
		 0.0678 0.28549001 0.95598 0.21510001 0.49817801 0.83997101 -0.03269 0.54058301 0.84065503
		 0.12625299 -0.187203 -0.97417402 -0.055744 -0.2448 -0.96797001 0.218603 -0.121555
		 -0.96821302 0.91807002 0.302459 0.256253 0.61154002 0.63705099 0.469239 0.83708298
		 0.465051 -0.28812999 0.66661501 0.055656001 0.743321 0.63210303 -0.59561503 0.49566999
		 0.83987498 -0.41640699 0.34815899 0.0678 0.28549001 0.95598 0.13675199 0.284527 0.94886398
		 0.026355 0.49164101 0.870399 0.098699003 -0.67433202 -0.73180199 0.118583 -0.66543698
		 -0.736974 -0.13846099 -0.888978 -0.436517 0.189054 -0.28040299 -0.94108099 0.002318
		 -0.73278201 -0.68045902 -0.13846099 -0.888978 -0.436517 0.84773499 0.52989799 -0.023531999
		 0.679353 -0.23197199 -0.696181 0.73459202 -0.42489201 -0.52899998 -0.058412001 -0.31390801
		 -0.94765502 0.73459202 -0.42489201 -0.52899998 -0.172148 -0.80066001 -0.57385498
		 0.92978197 0.135708 -0.342181 0.88051897 0.35189301 0.31758201 0.84773499 0.52989799
		 -0.023531999 0.650451 0.64988399 0.39314601 -0.62614 0.243672 0.74065697 0.155899
		 0.14296401 0.97737199 -0.231038 -0.95082599 0.206278 -0.494057 -0.54648799 0.67620897
		 -0.111971 -0.84021997 0.53056002 -0.99681902 -0.020471999 0.077024996 -0.76573801
		 -0.63183898 -0.120104 -0.96361202 -0.26031899 0.060704 -0.34389499 -0.44164699 -0.828664
		 -0.129272 -0.85779202 -0.49747601 -0.069968998 -0.78963 -0.60957998 0.86957997 0.155366
		 0.468712 0.68139601 0.52953303 0.50526798 0.85971302 -0.149003 0.488561 -0.53435099
		 0.80690902 -0.251728 -0.95079499 0.18175 -0.25091001 -0.74622899 0.35137901 -0.56539798
		 0.021002 0.272576 -0.961905 0.341768 0.025086001 -0.93945003 -0.445209 0.86085099
		 -0.24642301 0.118583 -0.66543698 -0.736974 0.189054 -0.28040299 -0.94108099 -0.13846099
		 -0.888978 -0.436517 -0.97229999 0.211913 -0.098617002 -0.60422999 0.040844001 -0.79576302
		 -0.66627401 -0.097488999 -0.73930699 -0.66627401 -0.097488999 -0.73930699 -0.60422999
		 0.040844001 -0.79576302 0.584961 -0.299918 -0.75357097 0.62749898 -0.040677998 -0.77755398
		 0.60225201 0.311342 -0.73509097 0.67043602 0.64250398 -0.37108499 -0.37857699 0.87520897
		 -0.301146 -0.55141002 0.70621997 -0.44407299 -0.44472101 0.81862599 -0.36342001 0.67043602
		 0.64250398 -0.37108499 0.487892 0.743725 -0.456983 0.249791 0.94737798 -0.20020001
		 0.090582997 0.944139 0.316852 0.57256299 0.80301201 -0.165355 0.45763099 0.87980801
		 -0.128497 0.97743398 -0.14979801 0.148939 0.81090897 -0.40492901 0.42244399 0.98255599
		 0.15549 0.102011 -0.28054199 -0.95506799 -0.095615998 0.002318 -0.73278201 -0.68045902
		 -0.129272 -0.85779202 -0.49747601 0.86957997 0.155366 0.468712 0.85971302 -0.149003
		 0.488561 0.95696998 -0.247134 0.152097 0.95696998 -0.247134 0.152097 0.73414701 -0.081271999
		 0.67410898 0.741781 -0.67063999 0.00189 -0.143093 0.91753399 0.37101999 -0.67102301
		 0.49822101 -0.54909301 -0.87018698 0.39941901 0.28851199 0.650451 0.64988399 0.39314601
		 0.88051897 0.35189301 0.31758201 0.62379301 0.066841997 -0.77872598 0.40814501 0.58739603
		 -0.69884503 0.676238 -0.091583997 0.730968 0.65073597 0.39269799 0.64986998 -0.25921199
		 0.34458399 0.90225899 0.86957997 0.155366 0.468712 -0.644373 0.62426001 0.44168201
		 0.68139601 0.52953303 0.50526798 -0.27631399 -0.48959199 -0.82701302 0.024080001
		 -0.94437301 -0.32799301 0.33657601 -0.84634799 -0.41281 0.77119398 0.215297 0.59908903
		 0.81775498 0.045818001 0.57374001 0.732692 0.608015 0.30574399 -0.25921199 0.34458399
		 0.90225899 -0.75637698 0.64602602 0.102686 -0.97229999 0.211913 -0.098617002 0.676238
		 -0.091583997 0.730968 -0.25921199 0.34458399 0.90225899 -0.644373 0.62426001 0.44168201
		 0.81775498 0.045818001 0.57374001 0.77119398 0.215297 0.59908903 0.66192198 -0.454889
		 0.59576398 0.63210303 -0.59561503 0.49566999 0.59785098 -0.29791701 0.74418998 0.45696801
		 0.175983 0.87190098 -0.80088699 0.200471 -0.56426197 -0.75637698 0.64602602 0.102686
		 -0.117119 0.41622099 -0.90168899 -0.60422999 0.040844001 -0.79576302 -0.117119 0.41622099
		 -0.90168899 0.56153101 -0.193279 -0.80456603 -0.91334301 -0.27866301 -0.296902 -0.78996199
		 0.160675 -0.59173 -0.75020498 -0.355858 -0.55727798 -0.38985899 0.72837502 0.56345397;
	setAttr ".n[332:497]" -type "float3"  -0.090682 0.77080798 0.63058001 -0.41943499
		 0.90667498 0.044893 -0.74622899 0.35137901 -0.56539798 -0.95079499 0.18175 -0.25091001
		 -0.64569998 -0.43255401 -0.62926 -0.64569998 -0.43255401 -0.62926 0.52798998 -0.74619502
		 -0.40548599 -0.133523 -0.84594399 -0.516285 0.56088501 -0.018092999 -0.82769603 0.67043602
		 0.64250398 -0.37108499 0.970783 -0.036302999 0.237197 0.84692001 -0.50947398 -0.152192
		 0.56088501 -0.018092999 -0.82769603 0.970783 -0.036302999 0.237197 0.195568 -0.55729598
		 -0.80695403 0.57453197 -0.30711901 -0.75867701 0.48932201 -0.74160397 -0.45889801
		 -0.146082 -0.15117601 0.97765303 -0.76842803 0.057151001 0.63737899 -0.78996599 -0.334176
		 0.514081 0.026268 0.57115102 0.82042497 -0.419826 0.796332 0.43543199 -0.03269 0.54058301
		 0.84065503 -0.60980499 -0.120097 0.78339899 -0.75513798 0.51255202 0.40872601 -0.89108503
		 0.017622 0.453493 0.057349999 0.388197 -0.91979003 0.19782101 0.97359997 0.113886
		 0.047139 0.99698001 0.061717998 0.84692001 -0.50947398 -0.152192 0.970783 -0.036302999
		 0.237197 0.52987897 -0.509938 0.67763698 0.12625299 -0.187203 -0.97417402 -0.013611
		 -0.777035 -0.62931001 0.002318 -0.73278201 -0.68045902 0.12625299 -0.187203 -0.97417402
		 0.002318 -0.73278201 -0.68045902 0.189054 -0.28040299 -0.94108099 -0.77703398 0.214641
		 0.59173203 -0.81660402 0.131915 0.56192303 -0.80548799 -0.460922 0.37247801 -0.65700001
		 -0.459939 0.59733403 -0.59736001 -0.54092902 0.59207797 -0.675107 0.037643 0.73675901
		 -0.637124 0.65883899 -0.40000501 -0.602911 0.75746101 0.25050101 -0.68592101 0.68682998
		 -0.240366 -0.602911 0.75746101 0.25050101 -0.77703398 0.214641 0.59173203 -0.839809
		 0.32659 0.433658 -0.72091699 -0.48269501 -0.497278 -0.70859098 -0.26278901 -0.65485901
		 0.0089919996 -0.68199998 -0.73129702 -0.81660402 0.131915 0.56192303 -0.77703398
		 0.214641 0.59173203 -0.445209 0.86085099 -0.24642301 -0.637124 0.65883899 -0.40000501
		 -0.698919 0.56343699 0.440512 -0.602911 0.75746101 0.25050101 -0.572146 0.81888598
		 0.045558002 -0.088105999 0.855443 0.51034802 -0.217584 0.95484102 -0.202327 -0.94006002
		 -0.285263 0.186848 -0.96681303 -0.112155 -0.22955 -0.66690099 -0.72690302 0.163877
		 -0.93315202 -0.229349 0.276815 -0.65657097 0.40683001 0.63514102 -0.839809 0.32659
		 0.433658 -0.419826 0.796332 0.43543199 -0.65657097 0.40683001 0.63514102 -0.03269
		 0.54058301 0.84065503 -0.217584 0.95484102 -0.202327 0.073547997 0.99614203 -0.047878001
		 0.62970799 0.61077303 -0.48002499 0.406955 -0.68561602 -0.60358799 -0.069968998 -0.78963
		 -0.60957998 -0.129272 -0.85779202 -0.49747601 0.58128899 -0.74053502 -0.33721101
		 0.81589001 -0.210519 0.53852099 0.90313798 -0.033429001 0.428047 0.91394299 -0.40470299
		 -0.030401001 -0.70859098 -0.26278901 -0.65485901 -0.38366199 -0.18543001 -0.90466499
		 0.0089919996 -0.68199998 -0.73129702 -0.91544998 0.400022 -0.043974001 -0.77815998
		 0.42368001 -0.46363899 -0.96681303 -0.112155 -0.22955 0.108753 0.97588003 -0.18929
		 -0.602911 0.75746101 0.25050101 -0.079370998 0.96711397 0.241642 -0.602911 0.75746101
		 0.25050101 -0.65657097 0.40683001 0.63514102 -0.419826 0.796332 0.43543199 -0.83272201
		 0.041189998 0.55215698 -0.60980499 -0.120097 0.78339899 -0.89108503 0.017622 0.453493
		 -0.26438001 -0.911834 -0.314105 0.022381 -0.163491 -0.98629099 0.215312 -0.64880103
		 -0.72986197 0.62772298 0.024829 0.77804101 0.81589001 -0.210519 0.53852099 0.139432
		 -0.97512698 0.17229401 0.94825798 -0.297622 0.110577 0.81589001 -0.210519 0.53852099
		 0.91394299 -0.40470299 -0.030401001 -0.843499 0.230747 0.48504201 -0.77703398 0.214641
		 0.59173203 -0.80548799 -0.460922 0.37247801 -0.675107 0.037643 0.73675901 -0.59736001
		 -0.54092902 0.59207797 -0.82214803 0.21079101 0.52881002 0.67944801 0.71369702 -0.170256
		 0.000374 0.999726 -0.023419 -0.19639599 0.767304 0.61047 0.547809 0.63478702 0.54493099
		 0.67944801 0.71369702 -0.170256 -0.19639599 0.767304 0.61047 0.32916999 0.27494201
		 -0.90335703 0.024777001 0.554896 -0.83155 0.67944801 0.71369702 -0.170256 -0.69543803
		 0.340628 0.63272297 -0.67233801 0.28777799 0.68201602 -0.519696 0.075363003 0.85102099
		 -0.67233801 0.28777799 0.68201602 -0.905123 -0.33816499 0.25767699 -0.494057 -0.54648799
		 0.67620897 -0.33309299 0.29082599 0.89692199 -0.65494603 0.52557898 0.54296601 -0.56653398
		 -0.093259998 0.818744 -0.95252699 0.109796 0.28396699 -0.96681303 -0.112155 -0.22955
		 -0.94006002 -0.285263 0.186848 0.85917503 -0.25389001 -0.44424999 0.67944801 0.71369702
		 -0.170256 0.83394802 0.064668998 0.54803997 0.48943099 -0.22693001 -0.84199798 0.347267
		 -0.41958201 -0.838664 0.79684502 0.073505998 -0.59969503 -0.843499 0.230747 0.48504201
		 -0.995516 -0.028155001 0.090306997 -0.67233801 0.28777799 0.68201602 -0.67233801
		 0.28777799 0.68201602 -0.995516 -0.028155001 0.090306997 -0.905123 -0.33816499 0.25767699
		 -0.67454499 0.39750099 -0.622078 -0.081519 0.75663102 -0.64873999 0.074128002 0.407276
		 -0.91029203 -0.081519 0.75663102 -0.64873999 -0.55141002 0.70621997 -0.44407299 -0.246273
		 0.92361999 -0.29372799 0.96958703 0.13918699 0.201316 0.419301 -0.079594001 0.904351
		 0.84296799 -0.51981902 0.138539 0.35009399 0.56023997 0.75071001 0.25600401 0.79727799
		 0.54663497 -0.133405 0.55750197 0.81938702 -0.53435099 0.80690902 -0.251728 0.45115599
		 0.63474202 0.62734503 -0.644373 0.62426001 0.44168201 0.80167502 0.12477 0.584593
		 0.47336599 -0.064329997 0.87851399 0.85971302 -0.149003 0.488561 -0.70859098 -0.26278901
		 -0.65485901 -0.72231501 0.062948003 -0.68869299 -0.38366199 -0.18543001 -0.90466499
		 -0.066552997 0.78864503 -0.61123598;
	setAttr ".n[498:663]" -type "float3"  0.285649 0.49456599 -0.82085901 -0.047270998
		 0.153749 -0.98697901 0.32916999 0.27494201 -0.90335703 0.67944801 0.71369702 -0.170256
		 0.85917503 -0.25389001 -0.44424999 0.85917503 -0.25389001 -0.44424999 0.67290902
		 -0.67096502 0.31144801 0.120438 -0.95517498 -0.27043599 -0.53221202 0.82531703 -0.188684
		 -0.14312699 0.32810301 -0.93373603 -0.94391501 0.32132599 -0.075988002 0.42169899
		 0.891137 0.167464 -0.079370998 0.96711397 0.241642 0.173391 0.831563 0.52767301 0.20516901
		 -0.149059 -0.967309 0.020176999 -0.73061901 -0.68248701 -0.055744 -0.2448 -0.96797001
		 0.81703103 0.53243703 0.221294 0.231051 0.89785898 -0.37478599 0.13727701 0.98993802
		 0.034325 0.51812601 0.46164399 -0.72002 -0.032749001 0.652713 -0.75689799 0.231051
		 0.89785898 -0.37478599 0.25398499 -0.90960503 -0.32880101 0.77613801 -0.592592 0.215508
		 0.39024201 -0.89767098 -0.20469201 0.59929001 0.14965899 0.78641802 0.143666 0.72560102
		 0.67295098 0.178146 -0.27043 0.946114 -0.94391501 0.32132599 -0.075988002 -0.89524198
		 -0.29272199 0.33594 -0.66869903 0.029448999 0.74295002 -0.41943499 0.90667498 0.044893
		 -0.090682 0.77080798 0.63058001 -0.65907103 0.66060501 0.35948101 0.26395401 -0.915811
		 -0.30268601 0.098699003 -0.67433202 -0.73180199 -0.231038 -0.95082599 0.206278 0.098699003
		 -0.67433202 -0.73180199 0.26395401 -0.915811 -0.30268601 -0.52559799 -0.79729199
		 -0.29676899 -0.38655901 0.92021799 -0.061411001 -0.465213 0.88114601 0.084608003
		 -0.60139 0.79462498 -0.083072998 0.79684502 0.073505998 -0.59969503 0.63575101 0.48841801
		 -0.59772003 0.80229002 0.58538502 0.11686 0.96958703 0.13918699 0.201316 0.35009399
		 0.56023997 0.75071001 0.419301 -0.079594001 0.904351 0.98437101 0.00078900001 -0.176108
		 0.84160203 -0.50304502 -0.19660001 0.62595898 -0.112664 -0.77167499 0.66431302 -0.51883698
		 0.53804898 0.81543499 -0.198916 0.54359698 0.81703103 0.53243703 0.221294 0.165406
		 0.85747999 -0.48720399 -0.066552997 0.78864503 -0.61123598 -0.061776999 0.995601
		 -0.070445001 -0.061776999 0.995601 -0.070445001 -0.41860101 0.88774103 -0.191542
		 -0.62506199 0.74401098 0.236105 0.146686 -0.50171 -0.85250801 -0.055744 -0.2448 -0.96797001
		 0.160147 -0.108259 -0.981139 -0.194699 0.90134698 -0.38686699 -0.68592101 0.68682998
		 -0.240366 -0.602911 0.75746101 0.25050101 -0.97237003 0.063801996 0.224557 -0.90679598
		 0.177036 -0.38259599 -0.68539399 -0.225109 -0.69250298 -0.88908798 -0.35642901 0.287195
		 -0.99681902 -0.020471999 0.077024996 -0.96361202 -0.26031899 0.060704 -0.138318 -0.89424402
		 -0.42567101 0.10781 -0.97032797 0.216427 -0.55146402 -0.81045198 -0.197624 0.26622701
		 0.210343 -0.94068003 0.118583 -0.66543698 -0.736974 -0.112989 -0.83851302 -0.53303701
		 0.26622701 0.210343 -0.94068003 -0.70045 0.30467099 -0.64540303 -0.47828901 0.87814301
		 0.010247 -0.631791 -0.057410002 -0.77301002 -0.14312699 0.32810301 -0.93373603 -0.0053320001
		 -0.338002 -0.94112998 0.159973 -0.93788701 -0.30785701 0.34718901 -0.66821897 0.65798402
		 -0.33305901 -0.84486198 0.41866601 0.47336599 -0.064329997 0.87851399 -0.120837 -0.0062230001
		 0.99265301 0.73414701 -0.081271999 0.67410898 0.47559699 -0.87582898 0.082038 0.215312
		 -0.64880103 -0.72986197 0.85683697 -0.451765 0.248473 0.120438 -0.95517498 -0.27043599
		 -0.064664997 -0.49607 -0.86587101 0.85917503 -0.25389001 -0.44424999 -0.030283 0.96150798
		 0.27310199 -0.487795 0.309829 0.81612599 0.089452997 0.99439502 0.056366999 0.33227399
		 -0.88055098 -0.33797199 -0.26795 -0.90443802 -0.331956 0.0089919996 -0.68199998 -0.73129702
		 -0.592673 -0.63083702 0.50078201 -0.66690099 -0.72690302 0.163877 -0.26454699 -0.80410099
		 0.53238702 -0.20533299 0.90364301 -0.375855 -0.67827499 0.54634398 -0.491377 -0.41892499
		 0.90802097 0.00021 -0.32505399 0.27958801 0.90342098 -0.102217 0.64517701 0.757164
		 -0.80333799 0.54262799 0.245362 0.217731 0.65442401 -0.72410101 0.54105502 0.39778599
		 -0.74096298 0.104539 0.0095910002 -0.99447501 -0.44457901 -0.077128999 -0.89241302
		 -0.674344 0.71810001 -0.172025 -0.24885 0.72036302 -0.64741802 0.83577597 0.528503
		 0.148873 0.97743398 -0.14979801 0.148939 0.98255599 0.15549 0.102011 0.24860799 0.73118901
		 0.635261 -0.31474999 0.66004503 0.682109 -0.030687001 0.209949 0.97723103 -0.62506199
		 0.74401098 0.236105 -0.41860101 0.88774103 -0.191542 -0.91544998 0.400022 -0.043974001
		 -0.75915903 -0.18235201 0.62484097 -0.745588 0.40545201 0.52887303 -0.95252699 0.109796
		 0.28396699 -0.83069301 0.13655999 -0.53972203 -0.67454499 0.39750099 -0.622078 -0.21598101
		 -0.17568 -0.96046299 -0.154852 0.262005 0.95256197 0.405283 -0.55392498 0.72726399
		 0.19873001 0.052103002 0.97866797 0.85917503 -0.25389001 -0.44424999 0.83394802 0.064668998
		 0.54803997 0.67290902 -0.67096502 0.31144801 -0.102217 0.64517701 0.757164 -0.32505399
		 0.27958801 0.90342098 0.155829 0.054246999 0.98629302 -0.92724699 -0.23519 0.29137301
		 -0.415373 -0.57183301 -0.70744002 -0.20442 -0.96055597 0.18853299 -0.487795 0.309829
		 0.81612599 -0.43311599 0.74491799 0.50745302 -0.97756499 0.119516 0.173445 0.59785098
		 -0.29791701 0.74418998 0.78530103 0.173279 0.59437102 0.75505197 0.175984 0.63160598
		 0.75505197 0.175984 0.63160598 0.45696801 0.175983 0.87190098 0.59785098 -0.29791701
		 0.74418998 -0.49046999 0.014579 -0.87133598 -0.27631399 -0.48959199 -0.82701302 -0.013611
		 -0.777035 -0.62931001 -0.013611 -0.777035 -0.62931001 -0.27631399 -0.48959199 -0.82701302
		 0.51277798 -0.85824502 0.021757999 -0.94006002 -0.285263 0.186848 -0.75915903 -0.18235201
		 0.62484097 -0.95252699 0.109796 0.28396699 -0.56653398 -0.093259998 0.818744 -0.592673
		 -0.63083702 0.50078201;
	setAttr ".n[664:829]" -type "float3"  -0.26454699 -0.80410099 0.53238702 0.54105502
		 0.39778599 -0.74096298 0.56435502 0.74365199 -0.358448 0.416958 0.90773898 -0.046441998
		 0.34718901 -0.66821897 0.65798402 0.295674 0.442761 0.84648699 0.292941 0.047602002
		 0.95494503 -0.152744 -0.353798 0.92276502 -0.33305901 -0.84486198 0.41866601 0.34718901
		 -0.66821897 0.65798402 0.42482299 -0.60601801 0.672508 -0.19173101 -0.69435799 0.693618
		 0.303341 0.0067289998 0.95285797 0.42482299 -0.60601801 0.672508 0.25354499 0.67281598
		 0.69500601 0.489043 -0.227807 0.841986 0.297245 0.94649798 0.125646 0.56435502 0.74365199
		 -0.358448 0.089452997 0.99439502 0.056366999 0.297245 0.94649798 0.125646 0.013694
		 0.969244 0.245719 0.055447999 0.73742902 0.673145 0.268244 -0.268803 -0.925089 0.63575101
		 0.48841801 -0.59772003 0.79684502 0.073505998 -0.59969503 -0.362901 -0.267849 -0.89250201
		 0.123033 0.39042401 -0.912377 -0.024843 -0.33211201 -0.942913 0.090414003 0.151467
		 -0.98431802 -0.75532597 0.146275 -0.638816 -0.73628199 -0.075327002 -0.67246902 -0.75532597
		 0.146275 -0.638816 -0.64569998 -0.43255401 -0.62926 -0.73628199 -0.075327002 -0.67246902
		 -0.427753 0.222378 0.87611401 0.143666 0.72560102 0.67295098 0.25354499 0.67281598
		 0.69500601 0.59929001 0.14965899 0.78641802 -0.26606101 0.31906301 0.909621 0.143666
		 0.72560102 0.67295098 0.68440098 -0.0083699999 -0.72905803 0.498546 0.22582801 -0.83693099
		 0.77093601 -0.38988701 -0.50363201 0.78856999 0.57753003 0.211225 0.62970799 0.61077303
		 -0.48002499 0.073547997 0.99614203 -0.047878001 0.732692 0.608015 0.30574399 0.81775498
		 0.045818001 0.57374001 0.83332098 0.51414597 0.203051 0.058419 0.86167699 -0.50408298
		 -0.212558 0.70815402 -0.67330301 0.732692 0.608015 0.30574399 -0.72077501 0.67184597
		 -0.17060301 -0.60139 0.79462498 -0.083072998 -0.465213 0.88114601 0.084608003 -0.67596501
		 0.051293999 -0.73514599 -0.39027101 0.744753 -0.54132301 0.123033 0.39042401 -0.912377
		 0.37953299 0.51365203 0.76949102 0.453996 0.88384801 0.112699 0.225063 0.89708602
		 0.38024199 -0.02108 -0.73989201 -0.67239499 0.187209 -0.212497 -0.95906103 0.92928898
		 -0.191627 -0.315754 0.95881498 0.25343499 0.12824 0.75302202 0.65608901 -0.050051998
		 0.15094499 0.172234 0.97342199 -0.40609899 0.288149 0.86720997 0.15094499 0.172234
		 0.97342199 0.061437 0.92904902 0.36482 -0.11678 0.115631 0.98640299 -0.65700001 -0.459939
		 0.59733403 -0.675107 0.037643 0.73675901 0.13675199 0.284527 0.94886398 -0.675107
		 0.037643 0.73675901 0.026355 0.49164101 0.870399 0.076297 0.94604999 -0.31490901
		 -0.45941401 0.682567 0.568367 0.061437 0.92904902 0.36482 -0.47025701 -0.119214 -0.87444103
		 -0.212558 0.70815402 -0.67330301 0.058419 0.86167699 -0.50408298 0.66104901 -0.53268898
		 0.52844697 0.87476099 -0.443813 0.194484 0.024080001 -0.94437301 -0.32799301 -0.26817101
		 -0.50467002 0.82060498 0.67897397 -0.654706 0.33219501 0.55081999 -0.024436999 0.83426601
		 0.085486002 0.43039501 0.89858299 -0.85563701 0.442554 0.268388 -0.93377501 -0.034637999
		 0.35618001 0.079790004 -0.54956198 0.83163399 0.47559699 -0.87582898 0.082038 0.85683697
		 -0.451765 0.248473 -0.918733 -0.39139399 0.052347999 -0.26438001 -0.911834 -0.314105
		 -0.70398402 -0.438454 0.55871701 -0.51810998 -0.012858 0.85521799 -0.519696 0.075363003
		 0.85102099 -0.710491 0.158922 0.68552703 -0.59736001 -0.54092902 0.59207797 -0.65700001
		 -0.459939 0.59733403 -0.69235802 -0.47365001 0.54433101 0.91360098 -0.030843001 0.40544099
		 0.82204098 0.475097 0.31389701 0.72826803 0.282143 0.62451702 0.187209 -0.212497
		 -0.95906103 0.78035498 0.44073999 -0.443616 0.92928898 -0.191627 -0.315754 -0.93377501
		 -0.034637999 0.35618001 -0.85563701 0.442554 0.268388 -0.74119198 -0.361792 -0.56545597
		 -0.93377501 -0.034637999 0.35618001 -0.74119198 -0.361792 -0.56545597 -0.198364 -0.97653502
		 -0.083848 0.038628001 -0.99435598 -0.098808996 0.64801103 -0.75788403 0.075461 0.75108802
		 -0.085378997 0.65465802 0.75108802 -0.085378997 0.65465802 0.94425899 0.32550201
		 0.049224999 0.54244798 0.56773198 0.61921799 0.95881498 0.25343499 0.12824 0.15094499
		 0.172234 0.97342199 0.72978199 -0.54437 0.41361701 0.134993 -0.666704 0.73299497
		 0.15094499 0.172234 0.97342199 -0.40609899 0.288149 0.86720997 0.42169899 0.891137
		 0.167464 0.61154002 0.63705099 0.469239 0.91807002 0.302459 0.256253 0.020176999
		 -0.73061901 -0.68248701 0.20516901 -0.149059 -0.967309 0.64421999 -0.66726798 -0.37380999
		 0.56088501 -0.018092999 -0.82769603 0.84692001 -0.50947398 -0.152192 0.40612301 -0.67131603
		 -0.62 0.52987897 -0.509938 0.67763698 0.26763201 -0.89612699 0.35401899 0.84692001
		 -0.50947398 -0.152192 -0.65907103 0.66060501 0.35948101 -0.141974 0.98967201 -0.019820999
		 -0.41943499 0.90667498 0.044893 -0.55141002 0.70621997 -0.44407299 -0.37857699 0.87520897
		 -0.301146 -0.246273 0.92361999 -0.29372799 -0.68238002 0.070038997 0.72763503 -0.588543
		 0.29765701 0.75167698 -0.51903498 -0.84380901 0.13634101 0.24161001 0.75712901 -0.60694402
		 -0.62193698 0.688555 -0.372942 0.42169899 0.891137 0.167464 0.24161001 0.75712901
		 -0.60694402 0.42169899 0.891137 0.167464 0.79285198 0.42522901 -0.43653899 -0.74119198
		 -0.361792 -0.56545597 -0.25760901 -0.1868 -0.94802099 -0.096892998 -0.59291703 -0.79941303
		 0.295674 0.442761 0.84648699 -0.34465399 0.64433002 0.68268001 0.292941 0.047602002
		 0.95494503 -0.246997 0.89264798 0.37705699 0.078693002 0.924743 -0.37236801 -0.53221202
		 0.82531703 -0.188684 0.768116 -0.072908998 -0.63614702 0.78322202 -0.462111 -0.41595399
		 0.213991 -0.37671 -0.90127498;
	setAttr ".n[830:995]" -type "float3"  -0.94306302 0.092382997 0.31952801 -0.83243603
		 -0.080541998 -0.54823703 -0.588543 0.29765701 0.75167698 0.419301 -0.079594001 0.904351
		 0.35009399 0.56023997 0.75071001 0.052407999 0.22035199 0.974011 -0.85563701 0.442554
		 0.268388 0.085486002 0.43039501 0.89858299 0.32857201 0.775222 0.53951001 -0.196154
		 0.85968798 -0.47165701 0.425295 0.494279 -0.75816399 -0.25760901 -0.1868 -0.94802099
		 -0.97713 0.14589401 0.1547 -0.88385701 0.391974 0.25525099 -0.93640101 0.117078 -0.330825
		 -0.33312199 -0.71815002 -0.61097401 0.73459202 -0.42489201 -0.52899998 0.679353 -0.23197199
		 -0.696181 -0.33312199 -0.71815002 -0.61097401 0.022381 -0.163491 -0.98629099 -0.26438001
		 -0.911834 -0.314105 -0.583018 0.157217 0.79710299 -0.88385701 0.391974 0.25525099
		 -0.97713 0.14589401 0.1547 -0.583018 0.157217 0.79710299 0.031052001 0.99161398 -0.125451
		 -0.65945399 0.56060803 0.50083798 0.155854 0.796161 0.58466798 -0.85549998 0.51778299
		 0.0044860002 -0.588543 0.29765701 0.75167698 -0.35472301 0.63867301 0.68283802 -0.588543
		 0.29765701 0.75167698 -0.68238002 0.070038997 0.72763503 0.61154002 0.63705099 0.469239
		 0.42169899 0.891137 0.167464 0.173391 0.831563 0.52767301 0.21510001 0.49817801 0.83997101
		 0.72826803 0.282143 0.62451702 0.61154002 0.63705099 0.469239 -0.32505399 0.27958801
		 0.90342098 -0.80333799 0.54262799 0.245362 -0.97237003 0.063801996 0.224557 -0.00899
		 -0.33840501 0.94095701 -0.32505399 0.27958801 0.90342098 -0.92724699 -0.23519 0.29137301
		 0.681243 0.61791801 0.392537 0.78856999 0.57753003 0.211225 0.073547997 0.99614203
		 -0.047878001 -0.33309299 0.29082599 0.89692199 -0.088105999 0.855443 0.51034802 -0.65494603
		 0.52557898 0.54296601 -0.85563701 0.442554 0.268388 -0.65777802 0.117647 -0.743967
		 -0.74119198 -0.361792 -0.56545597 -0.196154 0.85968798 -0.47165701 -0.85563701 0.442554
		 0.268388 0.32857201 0.775222 0.53951001 0.249915 0.89205301 0.37654299 0.70201302
		 0.60641599 0.373413 -0.20533299 0.90364301 -0.375855 0.99875998 0.021764999 0.044782002
		 0.77093601 -0.38988701 -0.50363201 0.84054101 -0.246342 -0.48249999 -0.61411101 0.41225299
		 0.67298901 -0.61890501 -0.364999 0.69550902 -0.71761298 0.144426 0.68130302 -0.61411101
		 0.41225299 0.67298901 -0.41005999 0.42267099 0.80820799 0.013694 0.969244 0.245719
		 0.62816799 0.77472299 -0.072182 0.46195701 0.379509 -0.80160397 0.46834901 0.79186398
		 -0.39192 0.46834901 0.79186398 -0.39192 0.123033 0.39042401 -0.912377 -0.39027101
		 0.744753 -0.54132301 -0.19676501 -0.46788901 0.86160499 -0.487795 0.309829 0.81612599
		 -0.75633502 -0.64183003 0.126535 -0.24961101 0.449595 -0.857647 -0.041536 -0.41522199
		 -0.90877199 -0.863585 -0.371263 -0.341151 0.50556701 0.457398 -0.73156601 -0.20280699
		 0.65824699 -0.72496998 -0.068429001 0.997648 -0.0040899999 0.66151702 0.173803 0.72951198
		 0.821311 -0.33860099 0.459126 0.90773201 0.396249 0.137876 -0.415353 -0.83703101
		 -0.35617501 0.098679997 -0.376531 -0.92113298 -0.61383498 -0.73713398 -0.28255999
		 0.36681601 -0.32851201 -0.87036002 0.920973 -0.018046999 -0.38920799 0.62924802 -0.65085298
		 -0.42478001 -0.67102301 0.49822101 -0.54909301 0.40814501 0.58739603 -0.69884503
		 -0.82393998 -0.209534 -0.52651602 -0.67102301 0.49822101 -0.54909301 -0.143093 0.91753399
		 0.37101999 0.40814501 0.58739603 -0.69884503 0.47336599 -0.064329997 0.87851399 0.80167502
		 0.12477 0.584593 0.142223 -0.029124999 0.98940599 -0.31325001 0.219493 0.92395699
		 -0.75513798 0.51255202 0.40872601 -0.60980499 -0.120097 0.78339899 0.31732899 0.771415
		 -0.55156302 -0.62760299 0.692343 -0.356056 -0.52890098 0.84810001 0.031473 0.063050002
		 0.98405701 -0.1663 -0.32253999 0.938878 -0.120316 0.155854 0.796161 0.58466798 -0.304896
		 -0.095688999 -0.94756597 -0.83063102 0.020745 -0.55643702 -0.40461999 -0.559479 -0.72337103
		 0.86578399 0.49712801 -0.057282001 -0.047917999 0.891087 0.451296 0.433301 0.55637199
		 0.70901299 0.20296299 0.92729503 0.31453201 0.90773201 0.396249 0.137876 0.60904598
		 0.77129698 -0.184834 0.36681601 -0.32851201 -0.87036002 0.50556701 0.457398 -0.73156601
		 0.920973 -0.018046999 -0.38920799 0.139432 -0.97512698 0.17229401 0.81589001 -0.210519
		 0.53852099 0.94825798 -0.297622 0.110577 0.46195701 0.379509 -0.80160397 0.123033
		 0.39042401 -0.912377 0.46834901 0.79186398 -0.39192 0.123033 0.39042401 -0.912377
		 0.46195701 0.379509 -0.80160397 -0.024843 -0.33211201 -0.942913 0.55185097 0.28157601
		 0.78496897 0.97018403 0.219539 0.10269 0.97100902 0.148783 0.187096 0.88982499 0.115509
		 -0.441439 0.72572303 -0.48396099 -0.488987 0.437121 -0.26109001 -0.86067301 -0.863585
		 -0.371263 -0.341151 -0.041536 -0.41522199 -0.90877199 -0.32258499 -0.83261597 -0.45021099
		 0.218603 -0.121555 -0.96821302 -0.021268999 -0.040780999 -0.99894202 0.12625299 -0.187203
		 -0.97417402 -0.49046999 0.014579 -0.87133598 -0.212558 0.70815402 -0.67330301 -0.47025701
		 -0.119214 -0.87444103 0.074128002 0.407276 -0.91029203 -0.081519 0.75663102 -0.64873999
		 0.60225201 0.311342 -0.73509097 0.60225201 0.311342 -0.73509097 0.487892 0.743725
		 -0.456983 0.67043602 0.64250398 -0.37108499 0.441232 0.774656 -0.453015 -0.46818799
		 0.801036 -0.373018 -0.019731 0.918607 0.39467999 -0.61679202 -0.77951002 0.109236
		 -0.242264 -0.227322 -0.94320399 -0.242532 -0.966371 -0.085473999 -0.33874199 0.122805
		 0.93283099 0.84773499 0.52989799 -0.023531999 0.88051897 0.35189301 0.31758201 -0.88121599
		 0.40867001 0.23758601 0.84773499 0.52989799 -0.023531999 -0.33874199 0.122805 0.93283099
		 -0.79008102 0.57027501 0.22485299;
	setAttr ".n[996:1161]" -type "float3"  -0.46818799 0.801036 -0.373018 -0.79864299
		 -0.37781101 -0.46843299 0.68440098 -0.0083699999 -0.72905803 0.285649 0.49456599
		 -0.82085901 0.498546 0.22582801 -0.83693099 0.62970799 0.61077303 -0.48002499 0.165406
		 0.85747999 -0.48720399 -0.217584 0.95484102 -0.202327 -0.51810998 -0.012858 0.85521799
		 -0.69543803 0.340628 0.63272297 -0.519696 0.075363003 0.85102099 -0.88442898 -0.180472
		 0.43036699 -0.77703398 0.214641 0.59173203 -0.843499 0.230747 0.48504201 0.949705
		 0.30918601 -0.049640998 0.380292 0.50294697 -0.77615899 0.049463 0.98954701 -0.13546
		 0.58584899 -0.328262 0.74096203 0.949705 0.30918601 -0.049640998 0.425154 0.74779999
		 0.50994098 -0.79864299 -0.37781101 -0.46843299 0.072258003 -0.73728901 -0.67170203
		 -0.69972098 -0.69517601 0.164683 -0.79008102 0.57027501 0.22485299 -0.79864299 -0.37781101
		 -0.46843299 -0.88105202 -0.21049 0.42360601 0.31838101 -0.71641099 -0.62079698 0.93722802
		 0.140377 -0.319215 0.42886701 -0.84755498 -0.31260699 -0.588543 0.29765701 0.75167698
		 -0.85549998 0.51778299 0.0044860002 -0.94306302 0.092382997 0.31952801 -0.85549998
		 0.51778299 0.0044860002 -0.55503601 0.34820399 -0.75543898 -0.89235997 -0.195418
		 -0.40682301 -0.036545999 -0.029817 0.998887 -0.050533999 0.399946 0.91514498 -0.66637999
		 0.71229798 -0.220384 -0.39150399 0.90857702 -0.14564499 -0.050533999 0.399946 0.91514498
		 0.107957 0.989335 -0.097783998 0.84227598 0.53706503 0.046168 0.41689801 0.74312401
		 0.52341503 0.85365403 0.030199001 0.51996499 0.063050002 0.98405701 -0.1663 -0.55503601
		 0.34820399 -0.75543898 -0.32253999 0.938878 -0.120316 0.73414701 -0.081271999 0.67410898
		 0.85971302 -0.149003 0.488561 0.47336599 -0.064329997 0.87851399 0.85971302 -0.149003
		 0.488561 0.73414701 -0.081271999 0.67410898 0.95696998 -0.247134 0.152097 -0.55503601
		 0.34820399 -0.75543898 -0.40461999 -0.559479 -0.72337103 -0.89235997 -0.195418 -0.40682301
		 0.067287996 0.71429402 0.69660401 0.110514 -0.58649099 0.80238098 0.58584899 -0.328262
		 0.74096203 0.69568503 -0.711595 0.098259002 0.58584899 -0.328262 0.74096203 0.110514
		 -0.58649099 0.80238098 0.29974601 0.26950699 -0.91516 0.107957 0.989335 -0.097783998
		 0.68240798 0.64576602 -0.3425 0.41689801 0.74312401 0.52341503 0.68240798 0.64576602
		 -0.3425 0.107957 0.989335 -0.097783998 -0.427753 0.222378 0.87611401 -0.78996599
		 -0.334176 0.514081 -0.46621999 -0.39133701 0.79340601 -0.146082 -0.15117601 0.97765303
		 -0.78996599 -0.334176 0.514081 -0.427753 0.222378 0.87611401 -0.064664997 -0.49607
		 -0.86587101 0.120438 -0.95517498 -0.27043599 -0.170992 -0.030494999 -0.98479998 0.32916999
		 0.27494201 -0.90335703 -0.170992 -0.030494999 -0.98479998 0.024777001 0.554896 -0.83155
		 -0.141974 0.98967201 -0.019820999 -0.246273 0.92361999 -0.29372799 -0.41943499 0.90667498
		 0.044893 0.090582997 0.944139 0.316852 0.45763099 0.87980801 -0.128497 -0.141974
		 0.98967201 -0.019820999 -0.71761298 0.144426 0.68130302 -0.41005999 0.42267099 0.80820799
		 -0.61411101 0.41225299 0.67298901 -0.745588 0.40545201 0.52887303 -0.62506199 0.74401098
		 0.236105 -0.93619698 0.311582 0.162643 -0.572146 0.81888598 0.045558002 -0.65494603
		 0.52557898 0.54296601 -0.088105999 0.855443 0.51034802 -0.67259198 0.65831298 -0.33800101
		 -0.935534 0.35312 -0.0090539996 -0.95825797 0.168722 0.230813 -0.95825797 0.168722
		 0.230813 -0.74444699 -0.41721001 -0.521281 -0.657978 -0.66535902 -0.352649 0.83577597
		 0.528503 0.148873 0.98255599 0.15549 0.102011 0.57256299 0.80301201 -0.165355 0.57256299
		 0.80301201 -0.165355 0.67043602 0.64250398 -0.37108499 0.45763099 0.87980801 -0.128497
		 -0.675107 0.037643 0.73675901 -0.27743399 0.058747001 0.958947 0.026355 0.49164101
		 0.870399 -0.27743399 0.058747001 0.958947 -0.675107 0.037643 0.73675901 -0.76842803
		 0.057151001 0.63737899 0.55185097 0.28157601 0.78496897 0.97100902 0.148783 0.187096
		 0.433301 0.55637199 0.70901299 0.55185097 0.28157601 0.78496897 0.018785 0.51901299
		 0.85456002 0.20790499 -0.28794599 0.93480599 -0.82393998 -0.209534 -0.52651602 0.62379301
		 0.066841997 -0.77872598 -0.058412001 -0.31390801 -0.94765502 -0.94647503 -0.24011999
		 0.215701 -0.88121599 0.40867001 0.23758601 -0.89617401 -0.096988 0.43297401 0.31838101
		 -0.71641099 -0.62079698 0.42886701 -0.84755498 -0.31260699 -0.657978 -0.66535902
		 -0.352649 0.98255599 0.15549 0.102011 0.67043602 0.64250398 -0.37108499 0.57256299
		 0.80301201 -0.165355 0.970783 -0.036302999 0.237197 0.67043602 0.64250398 -0.37108499
		 0.98255599 0.15549 0.102011 -0.94391501 0.32132599 -0.075988002 -0.34465399 0.64433002
		 0.68268001 -0.53221202 0.82531703 -0.188684 -0.246997 0.89264798 0.37705699 -0.53221202
		 0.82531703 -0.188684 -0.34465399 0.64433002 0.68268001 -0.166021 0.041882001 -0.985232
		 -0.22139101 0.90810102 -0.355441 -0.032749001 0.652713 -0.75689799 0.70322901 0.66521001
		 -0.250929 0.86064303 0.109165 0.49737 0.83346701 0.201134 -0.51466203 -0.89967102
		 -0.052009001 0.43345901 -0.38706401 -0.40717301 0.82727998 0.095344 0.50142097 0.85993397
		 -0.38706401 -0.40717301 0.82727998 -0.89967102 -0.052009001 0.43345901 -0.80954099
		 -0.56061602 -0.174219 0.86578399 0.49712801 -0.057282001 -0.129813 0.83267999 -0.53832299
		 -0.047917999 0.891087 0.451296 -0.76573801 -0.63183898 -0.120104 -0.28054199 -0.95506799
		 -0.095615998 -0.129272 -0.85779202 -0.49747601 -0.82674301 -0.17679401 0.534078 -0.231038
		 -0.95082599 0.206278 -0.76573801 -0.63183898 -0.120104 -0.97756499 0.119516 0.173445
		 -0.44457901 -0.077128999 -0.89241302 -0.75633502 -0.64183003 0.126535 -0.75633502
		 -0.64183003 0.126535 -0.487795 0.309829 0.81612599;
	setAttr ".n[1162:1327]" -type "float3"  -0.97756499 0.119516 0.173445 -0.33270299
		 0.063266002 -0.940907 0.31153601 -0.071910001 -0.94750899 0.146357 -0.69263202 -0.70628601
		 0.911816 0.40025699 0.091572002 0.69269502 -0.71926099 -0.053268 0.21336401 -0.0058360002
		 -0.976955 0.046627 -0.41693801 -0.90773797 0.69269502 -0.71926099 -0.053268 -0.110397
		 -0.92942798 0.35210201 -0.83182901 0.162295 0.53077298 -0.78114998 0.62416703 -0.01484
		 -0.95038003 0.30696401 -0.05051 0.226271 0.829561 -0.51051903 -0.13547 0.48409599
		 -0.86446398 -0.78114998 0.62416703 -0.01484 0.65786201 0.71090299 0.248665 -0.057661999
		 0.73307902 0.67769498 0.56778002 0.140773 0.81105399 0.53238499 0.61018902 -0.58671498
		 0.29089701 0.92195201 -0.25570101 0.70322901 0.66521001 -0.250929 -0.83182901 0.162295
		 0.53077298 0.039801002 0.75671703 0.652529 -0.78114998 0.62416703 -0.01484 0.65786201
		 0.71090299 0.248665 0.29089701 0.92195201 -0.25570101 -0.057661999 0.73307902 0.67769498
		 0.13365699 0.48619401 0.86356902 0.23896199 -0.130941 0.96215999 0.911816 0.40025699
		 0.091572002 -0.88815302 -0.265643 -0.374991 -0.67454499 0.39750099 -0.622078 -0.83069301
		 0.13655999 -0.53972203 -0.166021 0.041882001 -0.985232 0.32147601 0.22695699 -0.91931701
		 0.448084 -0.46004301 -0.76653898 -0.71344697 -0.040892001 0.69951499 -0.037253998
		 -0.22172999 0.97439599 -0.83182901 0.162295 0.53077298 0.039801002 0.75671703 0.652529
		 -0.83182901 0.162295 0.53077298 -0.037253998 -0.22172999 0.97439599 0.095344 0.50142097
		 0.85993397 0.64977598 0.60154301 0.464692 0.112517 0.99170899 0.062068999 0.095344
		 0.50142097 0.85993397 -0.38706401 -0.40717301 0.82727998 0.64977598 0.60154301 0.464692
		 -0.60422999 0.040844001 -0.79576302 0.56153101 -0.193279 -0.80456603 0.584961 -0.299918
		 -0.75357097 0.98742902 -0.14821599 0.054923002 0.86957997 0.155366 0.468712 0.95696998
		 -0.247134 0.152097 0.86578399 0.49712801 -0.057282001 0.31153601 -0.071910001 -0.94750899
		 -0.129813 0.83267999 -0.53832299 0.146357 -0.69263202 -0.70628601 0.31153601 -0.071910001
		 -0.94750899 0.82648098 -0.228035 -0.51471198 -0.0053320001 -0.338002 -0.94112998
		 -0.58059502 -0.71980101 -0.380521 -0.631791 -0.057410002 -0.77301002 -0.631791 -0.057410002
		 -0.77301002 -0.58059502 -0.71980101 -0.380521 -0.94391501 0.32132599 -0.075988002
		 -0.98006803 0.168286 0.105579 -0.44472101 0.81862599 -0.36342001 -0.78996199 0.160675
		 -0.59173 -0.136271 0.017374 -0.99051899 0.50794798 0.30621499 -0.80512202 0.41802499
		 -0.034327999 -0.90778702 -0.62193698 0.688555 -0.372942 -0.34646299 0.035813998 -0.93738002
		 -0.055744 -0.2448 -0.96797001 -0.27743399 0.058747001 0.958947 0.303341 0.0067289998
		 0.95285797 0.026355 0.49164101 0.870399 0.59785098 -0.29791701 0.74418998 0.66661501
		 0.055656001 0.743321 0.78530103 0.173279 0.59437102 0.82648098 -0.228035 -0.51471198
		 0.31153601 -0.071910001 -0.94750899 0.86578399 0.49712801 -0.057282001 0.97100902
		 0.148783 0.187096 0.86578399 0.49712801 -0.057282001 0.433301 0.55637199 0.70901299
		 0.34969199 0.61598098 0.70589101 0.90773201 0.396249 0.137876 0.20296299 0.92729503
		 0.31453201 0.058042001 0.68828201 0.72311801 0.34969199 0.61598098 0.70589101 0.20296299
		 0.92729503 0.31453201 -0.068429001 0.997648 -0.0040899999 -0.68909502 0.62792897
		 -0.361736 -0.23770399 0.81661701 0.52595901 -0.699 -0.028553 0.71455097 -0.47828901
		 0.87814301 0.010247 -0.926364 -0.26225299 0.27032 -0.52559799 -0.79729199 -0.29676899
		 -0.699 -0.028553 0.71455097 -0.926364 -0.26225299 0.27032 -0.88121599 0.40867001
		 0.23758601 -0.810233 -0.58321702 0.058139 -0.94257301 -0.163072 0.29148501 -0.172148
		 -0.80066001 -0.57385498 0.73459202 -0.42489201 -0.52899998 -0.33312199 -0.71815002
		 -0.61097401 -0.86778498 -0.26391 -0.42107099 -0.93640101 0.117078 -0.330825 -0.818003
		 -0.31660399 -0.48024201 -0.932567 0.28227499 -0.225032 -0.95332301 -0.289141 -0.087026
		 -0.94099802 0.15865 -0.29891899 0.75302202 0.65608901 -0.050051998 0.22409099 0.76042002
		 -0.60954499 0.061437 0.92904902 0.36482 0.061437 0.92904902 0.36482 0.15094499 0.172234
		 0.97342199 0.75302202 0.65608901 -0.050051998 0.419301 -0.079594001 0.904351 0.052407999
		 0.22035199 0.974011 -0.227837 -0.36755899 0.90166003 -0.227837 -0.36755899 0.90166003
		 0.098745003 -0.95560902 0.27759799 0.419301 -0.079594001 0.904351 0.13365699 0.48619401
		 0.86356902 -0.225704 -0.090313002 0.97000098 0.23896199 -0.130941 0.96215999 0.69269502
		 -0.71926099 -0.053268 0.23896199 -0.130941 0.96215999 -0.110397 -0.92942798 0.35210201
		 -0.119741 0.65114301 -0.74945003 0.66727102 0.21072499 -0.71438402 0.060261 -0.16693901
		 -0.984124 -0.212558 0.70815402 -0.67330301 0.83708298 0.465051 -0.28812999 0.326832
		 0.89965099 0.28949901 -0.212558 0.70815402 -0.67330301 -0.115797 0.51681298 -0.84823102
		 0.83708298 0.465051 -0.28812999 -0.121867 0.071261004 0.98998499 -0.60980499 -0.120097
		 0.78339899 -0.120837 -0.0062230001 0.99265301 0.142223 -0.029124999 0.98940599 -0.60980499
		 -0.120097 0.78339899 -0.121867 0.071261004 0.98998499 -0.83182901 0.162295 0.53077298
		 -0.95038003 0.30696401 -0.05051 -0.71344697 -0.040892001 0.69951499 0.79684502 0.073505998
		 -0.59969503 0.88851398 -0.066933997 -0.453942 0.48943099 -0.22693001 -0.84199798
		 0.79684502 0.073505998 -0.59969503 0.80229002 0.58538502 0.11686 0.96958703 0.13918699
		 0.201316 0.420928 -0.447806 -0.78885299 0.48943099 -0.22693001 -0.84199798 0.88851398
		 -0.066933997 -0.453942 0.35963199 0.93281299 0.022903999 0.94068003 0.093406998 0.32618299
		 0.81703103 0.53243703 0.221294 0.13727701 0.98993802 0.034325 -0.465213 0.88114601
		 0.084608003 -0.38655901 0.92021799 -0.061411001;
	setAttr ".n[1328:1493]" -type "float3"  0.195568 -0.55729598 -0.80695403 -0.21598101
		 -0.17568 -0.96046299 0.57453197 -0.30711901 -0.75867701 -0.21598101 -0.17568 -0.96046299
		 0.195568 -0.55729598 -0.80695403 -0.82934099 -0.29384699 -0.475234 -0.602911 0.75746101
		 0.25050101 -0.419826 0.796332 0.43543199 -0.079370998 0.96711397 0.241642 -0.079370998
		 0.96711397 0.241642 -0.419826 0.796332 0.43543199 0.173391 0.831563 0.52767301 0.35963199
		 0.93281299 0.022903999 0.65716499 0.74433798 -0.118723 0.94068003 0.093406998 0.32618299
		 -0.494057 -0.54648799 0.67620897 -0.231038 -0.95082599 0.206278 -0.82674301 -0.17679401
		 0.534078 -0.82214803 0.21079101 0.52881002 -0.710491 0.158922 0.68552703 -0.519696
		 0.075363003 0.85102099 0.71498698 0.59684998 0.36409399 0.62816799 0.77472299 -0.072182
		 0.56256098 0.82099801 -0.097407997 0.020176999 -0.73061901 -0.68248701 0.64421999
		 -0.66726798 -0.37380999 0.83708298 0.465051 -0.28812999 -0.115797 0.51681298 -0.84823102
		 0.218603 -0.121555 -0.96821302 0.83708298 0.465051 -0.28812999 -0.67259198 0.65831298
		 -0.33800101 -0.95825797 0.168722 0.230813 0.071889997 0.98770303 0.138834 0.071889997
		 0.98770303 0.138834 0.66727102 0.21072499 -0.71438402 -0.119741 0.65114301 -0.74945003
		 -0.96681303 -0.112155 -0.22955 -0.70859098 -0.26278901 -0.65485901 -0.72091699 -0.48269501
		 -0.497278 -0.96681303 -0.112155 -0.22955 -0.72231501 0.062948003 -0.68869299 -0.70859098
		 -0.26278901 -0.65485901 -0.19088501 -0.32011801 -0.927948 -0.20280699 0.65824699
		 -0.72496998 0.098679997 -0.376531 -0.92113298 -0.19639599 0.767304 0.61047 -0.154852
		 0.262005 0.95256197 0.19873001 0.052103002 0.97866797 -0.188675 0.95245701 -0.239224
		 -0.52039802 0.82676202 0.213662 0.000374 0.999726 -0.023419 -0.0053320001 -0.338002
		 -0.94112998 0.159973 -0.93788701 -0.30785701 -0.58059502 -0.71980101 -0.380521 -0.154852
		 0.262005 0.95256197 -0.19639599 0.767304 0.61047 -0.52039802 0.82676202 0.213662
		 0.085486002 0.43039501 0.89858299 0.68346101 0.080876999 0.72549301 0.72833902 0.42517099
		 0.53735602 0.085486002 0.43039501 0.89858299 -0.26817101 -0.50467002 0.82060498 0.55081999
		 -0.024436999 0.83426601 0.220752 0.36152601 0.90585202 0.70201302 0.60641599 0.373413
		 0.249915 0.89205301 0.37654299 0.155829 0.054246999 0.98629302 -0.101539 0.237988
		 0.96594602 -0.102217 0.64517701 0.757164 0.038628001 -0.99435598 -0.098808996 -0.45244399
		 -0.55760598 -0.69596702 -0.02108 -0.73989201 -0.67239499 -0.02108 -0.73989201 -0.67239499
		 0.64801103 -0.75788403 0.075461 0.038628001 -0.99435598 -0.098808996 -0.91544998
		 0.400022 -0.043974001 -0.96681303 -0.112155 -0.22955 -0.93619698 0.311582 0.162643
		 -0.62506199 0.74401098 0.236105 -0.91544998 0.400022 -0.043974001 -0.93619698 0.311582
		 0.162643 -0.74622899 0.35137901 -0.56539798 0.057349999 0.388197 -0.91979003 0.047139
		 0.99698001 0.061717998 0.090414003 0.151467 -0.98431802 0.057349999 0.388197 -0.91979003
		 -0.75532597 0.146275 -0.638816 -0.82393998 -0.209534 -0.52651602 0.40814501 0.58739603
		 -0.69884503 0.62379301 0.066841997 -0.77872598 0.48943099 -0.22693001 -0.84199798
		 0.420928 -0.447806 -0.78885299 -0.14562 -0.80540502 -0.57455897 -0.227837 -0.36755899
		 0.90166003 -0.58561599 -0.77168 0.24812099 0.098745003 -0.95560902 0.27759799 -0.68592101
		 0.68682998 -0.240366 -0.194699 0.90134698 -0.38686699 -0.136271 0.017374 -0.99051899
		 -0.68592101 0.68682998 -0.240366 -0.41124901 -0.0076870001 -0.91149098 -0.637124
		 0.65883899 -0.40000501 0.66151702 0.173803 0.72951198 0.35087901 -0.91783297 0.185652
		 0.821311 -0.33860099 0.459126 -0.36818799 -0.83504701 -0.40882 0.36681601 -0.32851201
		 -0.87036002 0.62924802 -0.65085298 -0.42478001 0.074128002 0.407276 -0.91029203 -0.21598101
		 -0.17568 -0.96046299 -0.67454499 0.39750099 -0.622078 0.074128002 0.407276 -0.91029203
		 0.48800701 0.14108001 -0.86136299 -0.21598101 -0.17568 -0.96046299 0.62816799 0.77472299
		 -0.072182 0.71498698 0.59684998 0.36409399 0.805628 0.26028001 0.53218102 0.80229002
		 0.58538502 0.11686 0.62816799 0.77472299 -0.072182 0.25600401 0.79727799 0.54663497
		 -0.41892499 0.90802097 0.00021 -0.80333799 0.54262799 0.245362 -0.102217 0.64517701
		 0.757164 -0.102217 0.64517701 0.757164 0.220752 0.36152601 0.90585202 0.249915 0.89205301
		 0.37654299 -0.83816397 -0.32738301 -0.43623599 -0.82393998 -0.209534 -0.52651602
		 -0.058412001 -0.31390801 -0.94765502 -0.83816397 -0.32738301 -0.43623599 -0.058412001
		 -0.31390801 -0.94765502 -0.172148 -0.80066001 -0.57385498 0.842834 0.29826599 0.44795999
		 0.97743398 -0.14979801 0.148939 0.86283898 0.50062698 -0.069862001 0.416958 0.90773898
		 -0.046441998 0.56435502 0.74365199 -0.358448 0.297245 0.94649798 0.125646 0.84296799
		 -0.51981902 0.138539 0.420928 -0.447806 -0.78885299 0.88851398 -0.066933997 -0.453942
		 -0.14562 -0.80540502 -0.57455897 0.420928 -0.447806 -0.78885299 0.098745003 -0.95560902
		 0.27759799 -0.86857998 0.381028 -0.31683901 -0.74480301 -0.25441301 -0.61688101 -0.89967102
		 -0.052009001 0.43345901 -0.63863498 0.75407702 0.15334 -0.89967102 -0.052009001 0.43345901
		 0.095344 0.50142097 0.85993397 0.160147 -0.108259 -0.981139 -0.055744 -0.2448 -0.96797001
		 0.189054 -0.28040299 -0.94108099 0.021002 0.272576 -0.961905 0.328392 -0.090902001
		 -0.940157 0.341768 0.025086001 -0.93945003 0.347128 0.901492 -0.25848401 -0.71300101
		 0.14427701 -0.68615901 -0.25360799 0.95675999 -0.142452 -0.942186 -0.32145199 -0.094630003
		 -0.71300101 0.14427701 -0.68615901 0.15128601 -0.72601497 -0.67083102 0.679353 -0.23197199
		 -0.696181 0.75857502 0.237964 -0.60657799 0.090414003 0.151467 -0.98431802 -0.33312199
		 -0.71815002 -0.61097401;
	setAttr ".n[1494:1659]" -type "float3"  0.679353 -0.23197199 -0.696181 0.022381
		 -0.163491 -0.98629099 0.24860799 0.73118901 0.635261 0.842834 0.29826599 0.44795999
		 0.86283898 0.50062698 -0.069862001 0.090582997 0.944139 0.316852 0.83577597 0.528503
		 0.148873 0.57256299 0.80301201 -0.165355 0.061437 0.92904902 0.36482 -0.45941401
		 0.682567 0.568367 -0.40609899 0.288149 0.86720997 0.225063 0.89708602 0.38024199
		 0.453996 0.88384801 0.112699 -0.39027101 0.744753 -0.54132301 -0.030687001 0.209949
		 0.97723103 0.842834 0.29826599 0.44795999 0.24860799 0.73118901 0.635261 0.104539
		 0.0095910002 -0.99447501 -0.44457901 -0.077128999 -0.89241302 0.217731 0.65442401
		 -0.72410101 -0.44457901 -0.077128999 -0.89241302 -0.23844101 -0.61598802 -0.75080299
		 -0.75633502 -0.64183003 0.126535 -0.45765001 -0.72230202 -0.51849401 -0.34389499
		 -0.44164699 -0.828664 -0.069968998 -0.78963 -0.60957998 -0.88908798 -0.35642901 0.287195
		 -0.45765001 -0.72230202 -0.51849401 -0.138318 -0.89424402 -0.42567101 0.62755698
		 0.741018 -0.238884 -0.109453 0.237293 -0.96525198 -0.10283 0.99446398 -0.021635 0.62755698
		 0.741018 -0.238884 0.54244798 0.56773198 0.61921799 0.94425899 0.32550201 0.049224999
		 -0.659738 0.49395201 0.56635499 -0.71300101 0.14427701 -0.68615901 -0.942186 -0.32145199
		 -0.094630003 0.35009399 0.56023997 0.75071001 0.80229002 0.58538502 0.11686 0.25600401
		 0.79727799 0.54663497 0.96958703 0.13918699 0.201316 0.80229002 0.58538502 0.11686
		 0.35009399 0.56023997 0.75071001 -0.036545999 -0.029817 0.998887 0.85365403 0.030199001
		 0.51996499 -0.050533999 0.399946 0.91514498 0.62755698 0.741018 -0.238884 -0.10283
		 0.99446398 -0.021635 0.395776 0.81764299 0.418116 0.79285198 0.42522901 -0.43653899
		 0.64421999 -0.66726798 -0.37380999 0.20516901 -0.149059 -0.967309 0.91807002 0.302459
		 0.256253 0.83708298 0.465051 -0.28812999 0.64421999 -0.66726798 -0.37380999 0.518489
		 -0.65394598 -0.55093002 0.32147601 0.22695699 -0.91931701 0.62595898 -0.112664 -0.77167499
		 0.98437101 0.00078900001 -0.176108 0.62595898 -0.112664 -0.77167499 0.32147601 0.22695699
		 -0.91931701 0.10781 -0.97032797 0.216427 -0.46621999 -0.39133701 0.79340601 -0.55146402
		 -0.81045198 -0.197624 0.178146 -0.27043 0.946114 0.70177501 -0.60465199 0.37670699
		 0.59929001 0.14965899 0.78641802 -0.63660902 0.56576502 0.52406102 0.018785 0.51901299
		 0.85456002 -0.047917999 0.891087 0.451296 -0.47192001 0.87953597 -0.060894001 -0.63660902
		 0.56576502 0.52406102 -0.047917999 0.891087 0.451296 0.39024201 -0.89767098 -0.20469201
		 0.34766501 -0.91359502 -0.210887 -0.138318 -0.89424402 -0.42567101 0.178146 -0.27043
		 0.946114 0.34766501 -0.91359502 -0.210887 0.70177501 -0.60465199 0.37670699 0.98849702
		 0.076364003 0.130549 0.56778002 0.140773 0.81105399 0.784311 -0.13885801 0.60462803
		 0.83346701 0.201134 -0.51466203 0.86064303 0.109165 0.49737 0.98849702 0.076364003
		 0.130549 0.087782003 0.824058 0.55966401 0.347128 0.901492 -0.25848401 -0.25360799
		 0.95675999 -0.142452 -0.659738 0.49395201 0.56635499 -0.942186 -0.32145199 -0.094630003
		 0.087782003 0.824058 0.55966401 0.84054101 -0.246342 -0.48249999 0.77093601 -0.38988701
		 -0.50363201 0.498546 0.22582801 -0.83693099 0.498546 0.22582801 -0.83693099 0.285649
		 0.49456599 -0.82085901 0.62970799 0.61077303 -0.48002499 0.62204403 -0.039535999
		 -0.78198397 0.73459202 -0.42489201 -0.52899998 -0.058412001 -0.31390801 -0.94765502
		 0.92978197 0.135708 -0.342181 0.84773499 0.52989799 -0.023531999 0.73459202 -0.42489201
		 -0.52899998 -0.44472101 0.81862599 -0.36342001 -0.38985899 0.72837502 0.56345397
		 -0.41943499 0.90667498 0.044893 -0.44472101 0.81862599 -0.36342001 -0.98006803 0.168286
		 0.105579 -0.38985899 0.72837502 0.56345397 0.24860799 0.73118901 0.635261 0.090582997
		 0.944139 0.316852 -0.31474999 0.66004503 0.682109 0.86283898 0.50062698 -0.069862001
		 0.090582997 0.944139 0.316852 0.24860799 0.73118901 0.635261 0.56778002 0.140773
		 0.81105399 0.86064303 0.109165 0.49737 0.65786201 0.71090299 0.248665 0.56778002
		 0.140773 0.81105399 0.98849702 0.076364003 0.130549 0.86064303 0.109165 0.49737 -0.010101
		 0.999749 -0.019991999 -0.24885 0.72036302 -0.64741802 -0.674344 0.71810001 -0.172025
		 -0.43311599 0.74491799 0.50745302 -0.674344 0.71810001 -0.172025 -0.97756499 0.119516
		 0.173445 0.039801002 0.75671703 0.652529 -0.037253998 -0.22172999 0.97439599 0.50266898
		 0.80980301 0.302562 -0.78114998 0.62416703 -0.01484 0.039801002 0.75671703 0.652529
		 0.226271 0.829561 -0.51051903 0.0089919996 -0.68199998 -0.73129702 0.60747302 -0.70617801
		 -0.36371601 0.33227399 -0.88055098 -0.33797199 -0.033142 -0.96584898 0.25697699 -0.46131599
		 -0.80441898 0.37429601 -0.0026370001 -0.72290498 -0.69094199 -0.0026370001 -0.72290498
		 -0.69094199 0.437121 -0.26109001 -0.86067301 0.72572303 -0.48396099 -0.488987 0.89121097
		 -0.40284199 -0.208473 0.45458299 -0.72002798 -0.52432299 0.63095301 -0.105981 -0.76854801
		 0.74409699 -0.49129099 0.45271799 0.85365403 0.030199001 0.51996499 -0.036545999
		 -0.029817 0.998887 0.45763099 0.87980801 -0.128497 0.67043602 0.64250398 -0.37108499
		 0.249791 0.94737798 -0.20020001 0.45763099 0.87980801 -0.128497 0.249791 0.94737798
		 -0.20020001 -0.141974 0.98967201 -0.019820999 -0.89108503 0.017622 0.453493 -0.75513798
		 0.51255202 0.40872601 -0.88121599 0.40867001 0.23758601 0.23438101 0.95661002 -0.173099
		 0.84773499 0.52989799 -0.023531999 -0.88121599 0.40867001 0.23758601 0.88982499 0.115509
		 -0.441439 0.97018403 0.219539 0.10269 0.72572303 -0.48396099 -0.488987 -0.033142
		 -0.96584898 0.25697699 -0.0026370001 -0.72290498 -0.69094199;
	setAttr ".n[1660:1825]" -type "float3"  0.72572303 -0.48396099 -0.488987 -0.26454699
		 -0.80410099 0.53238702 -0.66690099 -0.72690302 0.163877 0.0049149999 -0.97793698
		 0.20884 -0.68909502 0.62792897 -0.361736 -0.20280699 0.65824699 -0.72496998 -0.19088501
		 -0.32011801 -0.927948 -0.20280699 0.65824699 -0.72496998 -0.68909502 0.62792897 -0.361736
		 -0.068429001 0.997648 -0.0040899999 -0.67827499 0.54634398 -0.491377 -0.80333799
		 0.54262799 0.245362 -0.41892499 0.90802097 0.00021 -0.80333799 0.54262799 0.245362
		 -0.90679598 0.177036 -0.38259599 -0.97237003 0.063801996 0.224557 -0.572146 0.81888598
		 0.045558002 -0.62506199 0.74401098 0.236105 -0.745588 0.40545201 0.52887303 -0.061776999
		 0.995601 -0.070445001 -0.62506199 0.74401098 0.236105 -0.572146 0.81888598 0.045558002
		 0.142223 -0.029124999 0.98940599 -0.31325001 0.219493 0.92395699 -0.60980499 -0.120097
		 0.78339899 -0.31325001 0.219493 0.92395699 0.047139 0.99698001 0.061717998 0.19782101
		 0.97359997 0.113886 0.56435502 0.74365199 -0.358448 0.54105502 0.39778599 -0.74096298
		 0.217731 0.65442401 -0.72410101 0.56435502 0.74365199 -0.358448 0.151886 0.98495197
		 0.082460999 0.089452997 0.99439502 0.056366999 0.026268 0.57115102 0.82042497 0.61154002
		 0.63705099 0.469239 0.173391 0.831563 0.52767301 0.026268 0.57115102 0.82042497 0.173391
		 0.831563 0.52767301 -0.419826 0.796332 0.43543199 0.56761402 0.34149501 -0.74913001
		 0.64420998 -0.147337 -0.75052297 -0.275336 -0.24639 -0.92923802 0.45115599 0.63474202
		 0.62734503 -0.53435099 0.80690902 -0.251728 -0.010389 0.70283198 0.71127999 -0.31325001
		 0.219493 0.92395699 0.142223 -0.029124999 0.98940599 0.047139 0.99698001 0.061717998
		 -0.28782001 0.119455 -0.95020503 0.32838401 0.143925 -0.93351501 -0.32665101 -0.409484
		 -0.851834 0.20790499 -0.28794599 0.93480599 -0.46131599 -0.80441898 0.37429601 -0.033142
		 -0.96584898 0.25697699 0.35155001 -0.22941799 0.90762299 0.100645 -0.88274997 0.45893699
		 0.82885998 -0.048464 0.55735302 0.88051897 0.35189301 0.31758201 0.650451 0.64988399
		 0.39314601 0.155899 0.14296401 0.97737199 -0.246273 0.92361999 -0.29372799 -0.37857699
		 0.87520897 -0.301146 -0.41943499 0.90667498 0.044893 -0.37857699 0.87520897 -0.301146
		 -0.44472101 0.81862599 -0.36342001 -0.41943499 0.90667498 0.044893 -0.66637999 0.71229798
		 -0.220384 -0.122808 0.54149801 -0.83168399 -0.046250999 0.093939997 -0.99450302 0.29974601
		 0.26950699 -0.91516 -0.122808 0.54149801 -0.83168399 0.107957 0.989335 -0.097783998
		 -0.136271 0.017374 -0.99051899 0.41802499 -0.034327999 -0.90778702 0.146686 -0.50171
		 -0.85250801 -0.41124901 -0.0076870001 -0.91149098 -0.68592101 0.68682998 -0.240366
		 -0.136271 0.017374 -0.99051899 -0.084137999 0.78693497 -0.61127299 -0.63863498 0.75407702
		 0.15334 0.112517 0.99170899 0.062068999 0.32838401 0.143925 -0.93351501 -0.084137999
		 0.78693497 -0.61127299 0.63475102 0.73603702 -0.235245 0.81346601 0.218582 0.53897703
		 0.77119398 0.215297 0.59908903 0.732692 0.608015 0.30574399 0.83987498 -0.41640699
		 0.34815899 0.63210303 -0.59561503 0.49566999 0.91360098 -0.030843001 0.40544099 -0.141974
		 0.98967201 -0.019820999 -0.65907103 0.66060501 0.35948101 -0.473887 0.81920302 0.32301399
		 -0.123126 0.32833499 -0.93650198 -0.13547 0.48409599 -0.86446398 0.57528502 0.371016
		 -0.72896802 -0.94348103 0.29688999 -0.14731 -0.13547 0.48409599 -0.86446398 -0.123126
		 0.32833499 -0.93650198 -0.69235802 -0.47365001 0.54433101 -0.88442898 -0.180472 0.43036699
		 -0.69543803 0.340628 0.63272297 -0.88442898 -0.180472 0.43036699 -0.69235802 -0.47365001
		 0.54433101 -0.93315202 -0.229349 0.276815 -0.70045 0.30467099 -0.64540303 0.26622701
		 0.210343 -0.94068003 -0.112989 -0.83851302 -0.53303701 -0.926364 -0.26225299 0.27032
		 -0.112989 -0.83851302 -0.53303701 -0.52559799 -0.79729199 -0.29676899 0.218603 -0.121555
		 -0.96821302 0.020176999 -0.73061901 -0.68248701 0.83708298 0.465051 -0.28812999 0.020176999
		 -0.73061901 -0.68248701 0.218603 -0.121555 -0.96821302 -0.055744 -0.2448 -0.96797001
		 0.90313798 -0.033429001 0.428047 0.25398499 -0.90960503 -0.32880101 0.91394299 -0.40470299
		 -0.030401001 0.406955 -0.68561602 -0.60358799 0.94825798 -0.297622 0.110577 0.91394299
		 -0.40470299 -0.030401001 -0.70045 0.30467099 -0.64540303 -0.112989 -0.83851302 -0.53303701
		 -0.926364 -0.26225299 0.27032 -0.926364 -0.26225299 0.27032 -0.47828901 0.87814301
		 0.010247 -0.70045 0.30467099 -0.64540303 0.29974601 0.26950699 -0.91516 -0.046250999
		 0.093939997 -0.99450302 -0.122808 0.54149801 -0.83168399 0.72978199 -0.54437 0.41361701
		 0.15094499 0.172234 0.97342199 0.134993 -0.666704 0.73299497 0.72826803 0.282143
		 0.62451702 0.82204098 0.475097 0.31389701 0.61154002 0.63705099 0.469239 0.82204098
		 0.475097 0.31389701 0.83708298 0.465051 -0.28812999 0.61154002 0.63705099 0.469239
		 -0.818003 -0.31660399 -0.48024201 -0.93640101 0.117078 -0.330825 -0.94099802 0.15865
		 -0.29891899 -0.93640101 0.117078 -0.330825 -0.88385701 0.391974 0.25525099 -0.72077501
		 0.67184597 -0.17060301 0.27964601 0.92155099 -0.26933399 0.576527 0.554232 -0.60036898
		 -0.069812998 0.55531299 -0.82870603 0.344028 -0.59508401 -0.72630602 0.26160601 -0.939309
		 -0.221947 -0.32637799 -0.26321501 -0.90785199 0.35963199 0.93281299 0.022903999 -0.38655901
		 0.92021799 -0.061411001 0.031052001 0.99161398 -0.125451 -0.38655901 0.92021799 -0.061411001
		 -0.65945399 0.56060803 0.50083798 0.031052001 0.99161398 -0.125451 -0.807109 0.32019001
		 -0.49603701 -0.25951499 0.92927301 0.26287499 -0.39027101 0.744753 -0.54132301 -0.807109
		 0.32019001 -0.49603701 -0.39027101 0.744753 -0.54132301 -0.67596501 0.051293999 -0.73514599;
	setAttr ".n[1826:1991]" -type "float3"  -0.20442 -0.96055597 0.18853299 -0.00899
		 -0.33840501 0.94095701 -0.92724699 -0.23519 0.29137301 0.0678 0.28549001 0.95598
		 0.026355 0.49164101 0.870399 0.66661501 0.055656001 0.743321 0.66661501 0.055656001
		 0.743321 0.026355 0.49164101 0.870399 0.303341 0.0067289998 0.95285797 -0.79864299
		 -0.37781101 -0.46843299 0.003176 -0.039142001 -0.99922901 0.072258003 -0.73728901
		 -0.67170203 0.072258003 -0.73728901 -0.67170203 0.003176 -0.039142001 -0.99922901
		 0.74842203 0.336427 -0.57156098 0.93722802 0.140377 -0.319215 0.66727102 0.21072499
		 -0.71438402 0.071889997 0.98770303 0.138834 0.66727102 0.21072499 -0.71438402 0.93722802
		 0.140377 -0.319215 0.31838101 -0.71641099 -0.62079698 -0.10283 0.99446398 -0.021635
		 -0.697384 0.58237898 0.41771999 0.395776 0.81764299 0.418116 -0.10283 0.99446398
		 -0.021635 -0.109453 0.237293 -0.96525198 -0.845182 0.51058 -0.15803599 0.344028 -0.59508401
		 -0.72630602 0.576527 0.554232 -0.60036898 0.98914498 -0.145952 -0.017012 -0.32637799
		 -0.26321501 -0.90785199 0.0092580002 0.202227 -0.97929502 0.344028 -0.59508401 -0.72630602
		 -0.44457901 -0.077128999 -0.89241302 0.104539 0.0095910002 -0.99447501 -0.23844101
		 -0.61598802 -0.75080299 0.52016699 0.84780598 0.103206 0.911816 0.40025699 0.091572002
		 -0.082713 0.59133899 -0.80216998 0.82648098 -0.228035 -0.51471198 0.86578399 0.49712801
		 -0.057282001 0.97100902 0.148783 0.187096 0.88982499 0.115509 -0.441439 0.97100902
		 0.148783 0.187096 0.97018403 0.219539 0.10269 0.63210303 -0.59561503 0.49566999 0.45696801
		 0.175983 0.87190098 0.93061 0.22517601 0.28854999 0.63210303 -0.59561503 0.49566999
		 0.73112899 -0.172001 0.66020203 0.91360098 -0.030843001 0.40544099 0.41689801 0.74312401
		 0.52341503 -0.050533999 0.399946 0.91514498 0.85365403 0.030199001 0.51996499 0.107957
		 0.989335 -0.097783998 -0.050533999 0.399946 0.91514498 0.41689801 0.74312401 0.52341503
		 0.52016699 0.84780598 0.103206 -0.082713 0.59133899 -0.80216998 -0.061666001 0.887963
		 0.45576301 0.13365699 0.48619401 0.86356902 -0.061666001 0.887963 0.45576301 -0.225704
		 -0.090313002 0.97000098 -0.83243603 -0.080541998 -0.54823703 -0.103813 -0.42926401
		 -0.89719301 -0.51903498 -0.84380901 0.13634101 -0.588543 0.29765701 0.75167698 -0.83243603
		 -0.080541998 -0.54823703 -0.51903498 -0.84380901 0.13634101 -0.863585 -0.371263 -0.341151
		 -0.62760299 0.692343 -0.356056 -0.24961101 0.449595 -0.857647 0.31732899 0.771415
		 -0.55156302 -0.24961101 0.449595 -0.857647 -0.62760299 0.692343 -0.356056 0.62749898
		 -0.040677998 -0.77755398 0.48800701 0.14108001 -0.86136299 0.60225201 0.311342 -0.73509097
		 0.40612301 -0.67131603 -0.62 0.57453197 -0.30711901 -0.75867701 0.62749898 -0.040677998
		 -0.77755398 -0.71344697 -0.040892001 0.69951499 -0.95038003 0.30696401 -0.05051 -0.996387
		 0.0053889998 0.084757 -0.929726 -0.34775001 0.121158 -0.62760299 0.692343 -0.356056
		 -0.863585 -0.371263 -0.341151 -0.929726 -0.34775001 0.121158 -0.863585 -0.371263
		 -0.341151 -0.37679499 -0.92421001 0.062135998 -0.73628199 -0.075327002 -0.67246902
		 0.215312 -0.64880103 -0.72986197 0.022381 -0.163491 -0.98629099 -0.64569998 -0.43255401
		 -0.62926 -0.133523 -0.84594399 -0.516285 -0.73628199 -0.075327002 -0.67246902 -0.82674301
		 -0.17679401 0.534078 -0.82214803 0.21079101 0.52881002 -0.519696 0.075363003 0.85102099
		 -0.88908798 -0.35642901 0.287195 -0.76842803 0.057151001 0.63737899 -0.82674301 -0.17679401
		 0.534078 0.369605 -0.40553799 -0.83602101 0.0089919996 -0.68199998 -0.73129702 -0.047270998
		 0.153749 -0.98697901 0.369605 -0.40553799 -0.83602101 0.60747302 -0.70617801 -0.36371601
		 0.0089919996 -0.68199998 -0.73129702 0.089452997 0.99439502 0.056366999 -0.61411101
		 0.41225299 0.67298901 0.013694 0.969244 0.245719 0.297245 0.94649798 0.125646 0.089452997
		 0.99439502 0.056366999 0.013694 0.969244 0.245719 -0.52559799 -0.79729199 -0.29676899
		 -0.905123 -0.33816499 0.25767699 -0.995516 -0.028155001 0.090306997 -0.80548799 -0.460922
		 0.37247801 -0.699 -0.028553 0.71455097 -0.52559799 -0.79729199 -0.29676899 0.67944801
		 0.71369702 -0.170256 0.024777001 0.554896 -0.83155 0.016960001 0.83885902 -0.54408401
		 -0.64569998 -0.43255401 -0.62926 0.584961 -0.299918 -0.75357097 0.52798998 -0.74619502
		 -0.40548599 0.95696998 -0.247134 0.152097 0.741781 -0.67063999 0.00189 0.52798998
		 -0.74619502 -0.40548599 0.155854 0.796161 0.58466798 0.72647297 0.52686799 0.44118801
		 0.063050002 0.98405701 -0.1663 -0.35472301 0.63867301 0.68283802 0.155854 0.796161
		 0.58466798 -0.588543 0.29765701 0.75167698 -0.59736001 -0.54092902 0.59207797 -0.710491
		 0.158922 0.68552703 -0.82214803 0.21079101 0.52881002 -0.710491 0.158922 0.68552703
		 -0.59736001 -0.54092902 0.59207797 -0.51810998 -0.012858 0.85521799 -0.781578 -0.59366298
		 -0.191572 -0.996387 0.0053889998 0.084757 -0.94348103 0.29688999 -0.14731 0.26160601
		 -0.939309 -0.221947 0.344028 -0.59508401 -0.72630602 0.98914498 -0.145952 -0.017012
		 0.98742902 -0.14821599 0.054923002 0.95696998 -0.247134 0.152097 0.584961 -0.299918
		 -0.75357097 0.584961 -0.299918 -0.75357097 0.95696998 -0.247134 0.152097 0.52798998
		 -0.74619502 -0.40548599 -0.31474999 0.66004503 0.682109 0.090582997 0.944139 0.316852
		 -0.40371901 0.652987 0.64079499 -0.65700001 -0.459939 0.59733403 -0.11678 0.115631
		 0.98640299 -0.65657097 0.40683001 0.63514102 0.002318 -0.73278201 -0.68045902 -0.013611
		 -0.777035 -0.62931001 0.139432 -0.97512698 0.17229401 -0.129272 -0.85779202 -0.49747601
		 0.768116 -0.072908998 -0.63614702 0.75302202 0.65608901 -0.050051998 0.95881498 0.25343499
		 0.12824;
	setAttr ".n[1992:2157]" -type "float3"  0.768116 -0.072908998 -0.63614702 0.95881498
		 0.25343499 0.12824 0.78322202 -0.462111 -0.41595399 -0.33586401 -0.112604 0.93515497
		 -0.71344697 -0.040892001 0.69951499 -0.996387 0.0053889998 0.084757 -0.996387 0.0053889998
		 0.084757 -0.781578 -0.59366298 -0.191572 -0.151109 -0.900653 0.40741801 0.35155001
		 -0.22941799 0.90762299 -0.69142598 -0.71683103 -0.089909002 0.100645 -0.88274997
		 0.45893699 -0.69142598 -0.71683103 -0.089909002 -0.275336 -0.24639 -0.92923802 0.114592
		 -0.56502801 -0.81707501 0.73112899 -0.172001 0.66020203 0.77119398 0.215297 0.59908903
		 0.91360098 -0.030843001 0.40544099 0.77119398 0.215297 0.59908903 0.710926 0.36890399
		 0.59874398 0.45696801 0.175983 0.87190098 -0.95332301 -0.289141 -0.087026 -0.79501998
		 0.081032999 -0.601147 -0.60681701 -0.508169 -0.61117703 -0.166021 0.041882001 -0.985232
		 0.448084 -0.46004301 -0.76653898 -0.60681701 -0.508169 -0.61117703 0.865107 -0.014376
		 -0.50138199 -0.095522001 -0.247179 -0.96425003 0.058419 0.86167699 -0.50408298 0.732692
		 0.608015 0.30574399 0.83332098 0.51414597 0.203051 0.058419 0.86167699 -0.50408298
		 0.58584899 -0.328262 0.74096203 0.425154 0.74779999 0.50994098 0.067287996 0.71429402
		 0.69660401 -0.082493 0.836689 -0.54143 0.067287996 0.71429402 0.69660401 0.049463
		 0.98954701 -0.13546 0.100645 -0.88274997 0.45893699 -0.69142598 -0.71683103 -0.089909002
		 0.114592 -0.56502801 -0.81707501 0.82885998 -0.048464 0.55735302 0.100645 -0.88274997
		 0.45893699 0.88811702 -0.45924601 0.018475 0.62772298 0.024829 0.77804101 0.66192198
		 -0.454889 0.59576398 0.77119398 0.215297 0.59908903 0.66192198 -0.454889 0.59576398
		 0.62772298 0.024829 0.77804101 0.139432 -0.97512698 0.17229401 -0.14312699 0.32810301
		 -0.93373603 0.53238201 0.57807702 -0.61838299 0.29993701 -0.28754401 -0.90959102
		 0.078693002 0.924743 -0.37236801 -0.14312699 0.32810301 -0.93373603 -0.53221202 0.82531703
		 -0.188684 -0.79501998 0.081032999 -0.601147 -0.166021 0.041882001 -0.985232 -0.60681701
		 -0.508169 -0.61117703 -0.22139101 0.90810102 -0.355441 -0.166021 0.041882001 -0.985232
		 -0.79501998 0.081032999 -0.601147 -0.225704 -0.090313002 0.97000098 -0.110397 -0.92942798
		 0.35210201 0.23896199 -0.130941 0.96215999 0.453996 0.88384801 0.112699 0.37953299
		 0.51365203 0.76949102 0.71498698 0.59684998 0.36409399 -0.34465399 0.64433002 0.68268001
		 0.295674 0.442761 0.84648699 -0.246997 0.89264798 0.37705699 -0.89967102 -0.052009001
		 0.43345901 -0.74480301 -0.25441301 -0.61688101 -0.80954099 -0.56061602 -0.174219
		 -0.74480301 -0.25441301 -0.61688101 -0.28782001 0.119455 -0.95020503 -0.32665101
		 -0.409484 -0.851834 -0.49046999 0.014579 -0.87133598 -0.115797 0.51681298 -0.84823102
		 -0.212558 0.70815402 -0.67330301 0.218603 -0.121555 -0.96821302 -0.115797 0.51681298
		 -0.84823102 -0.021268999 -0.040780999 -0.99894202 0.78322202 -0.462111 -0.41595399
		 0.95881498 0.25343499 0.12824 0.72978199 -0.54437 0.41361701 0.134993 -0.666704 0.73299497
		 0.78322202 -0.462111 -0.41595399 0.72978199 -0.54437 0.41361701 0.207913 0.16413601
		 0.96427798 0.73657799 -0.048516002 0.67461002 0.78530103 0.173279 0.59437102 0.59929001
		 0.14965899 0.78641802 0.70177501 -0.60465199 0.37670699 0.73657799 -0.048516002 0.67461002
		 0.50794798 0.30621499 -0.80512202 -0.136271 0.017374 -0.99051899 -0.194699 0.90134698
		 -0.38686699 0.038047999 0.97242802 -0.23007999 0.108753 0.97588003 -0.18929 -0.079370998
		 0.96711397 0.241642 0.70747501 0.623712 0.33235899 0.98914498 -0.145952 -0.017012
		 0.576527 0.554232 -0.60036898 0.022381 -0.163491 -0.98629099 0.679353 -0.23197199
		 -0.696181 0.090414003 0.151467 -0.98431802 0.022381 -0.163491 -0.98629099 0.090414003
		 0.151467 -0.98431802 -0.73628199 -0.075327002 -0.67246902 0.56761402 0.34149501 -0.74913001
		 0.83346701 0.201134 -0.51466203 0.64420998 -0.147337 -0.75052297 0.83346701 0.201134
		 -0.51466203 0.53238499 0.61018902 -0.58671498 0.70322901 0.66521001 -0.250929 -0.40294999
		 -0.178229 -0.89770001 -0.40935099 0.43672299 -0.80106503 -0.0081120003 -0.306777
		 -0.951747 -0.90679598 0.177036 -0.38259599 -0.40294999 -0.178229 -0.89770001 -0.68539399
		 -0.225109 -0.69250298 -0.72231501 0.062948003 -0.68869299 -0.31030399 0.37026399
		 -0.87556601 -0.38366199 -0.18543001 -0.90466499 -0.91544998 0.400022 -0.043974001
		 -0.41860101 0.88774103 -0.191542 -0.77815998 0.42368001 -0.46363899 0.207913 0.16413601
		 0.96427798 0.59929001 0.14965899 0.78641802 0.73657799 -0.048516002 0.67461002 0.207913
		 0.16413601 0.96427798 -0.26606101 0.31906301 0.909621 0.59929001 0.14965899 0.78641802
		 -0.445209 0.86085099 -0.24642301 -0.698919 0.56343699 0.440512 -0.637124 0.65883899
		 -0.40000501 -0.637124 0.65883899 -0.40000501 0.021002 0.272576 -0.961905 -0.445209
		 0.86085099 -0.24642301 0.85179698 -0.18404999 0.490477 0.26160601 -0.939309 -0.221947
		 0.98914498 -0.145952 -0.017012 0.85179698 -0.18404999 0.490477 0.98914498 -0.145952
		 -0.017012 0.70747501 0.623712 0.33235899 0.098679997 -0.376531 -0.92113298 0.50556701
		 0.457398 -0.73156601 0.36681601 -0.32851201 -0.87036002 0.098679997 -0.376531 -0.92113298
		 0.36681601 -0.32851201 -0.87036002 -0.36818799 -0.83504701 -0.40882 -0.52559799 -0.79729199
		 -0.29676899 -0.53303403 -0.84398901 0.059643 -0.905123 -0.33816499 0.25767699 -0.231038
		 -0.95082599 0.206278 -0.111971 -0.84021997 0.53056002 0.26395401 -0.915811 -0.30268601
		 -0.66627401 -0.097488999 -0.73930699 0.584961 -0.299918 -0.75357097 -0.64569998 -0.43255401
		 -0.62926 -0.95079499 0.18175 -0.25091001 -0.66627401 -0.097488999 -0.73930699 -0.64569998
		 -0.43255401 -0.62926 -0.021268999 -0.040780999 -0.99894202;
	setAttr ".n[2158:2323]" -type "float3"  -0.115797 0.51681298 -0.84823102 -0.49046999
		 0.014579 -0.87133598 -0.021268999 -0.040780999 -0.99894202 -0.49046999 0.014579 -0.87133598
		 -0.013611 -0.777035 -0.62931001 -0.0081120003 -0.306777 -0.951747 -0.68539399 -0.225109
		 -0.69250298 -0.40294999 -0.178229 -0.89770001 -0.415373 -0.57183301 -0.70744002 0.43154201
		 -0.44889501 -0.78247303 0.509332 -0.84401798 0.167971 -0.030283 0.96150798 0.27310199
		 0.151886 0.98495197 0.082460999 -0.010101 0.999749 -0.019991999 -0.010101 0.999749
		 -0.019991999 -0.674344 0.71810001 -0.172025 -0.43311599 0.74491799 0.50745302 -0.96681303
		 -0.112155 -0.22955 -0.72091699 -0.48269501 -0.497278 -0.66690099 -0.72690302 0.163877
		 0.0049149999 -0.97793698 0.20884 -0.66690099 -0.72690302 0.163877 -0.26795 -0.90443802
		 -0.331956 0.98849702 0.076364003 0.130549 0.82885998 -0.048464 0.55735302 0.64420998
		 -0.147337 -0.75052297 0.98849702 0.076364003 0.130549 0.784311 -0.13885801 0.60462803
		 0.82885998 -0.048464 0.55735302 0.58644599 0.75991601 0.28037301 0.441232 0.774656
		 -0.453015 -0.019731 0.918607 0.39467999 0.55542302 -0.53504997 -0.63657397 -0.242264
		 -0.227322 -0.94320399 0.380292 0.50294697 -0.77615899 0.380292 0.50294697 -0.77615899
		 -0.082493 0.836689 -0.54143 0.049463 0.98954701 -0.13546 0.487892 0.743725 -0.456983
		 -0.081519 0.75663102 -0.64873999 -0.246273 0.92361999 -0.29372799 -0.081519 0.75663102
		 -0.64873999 0.487892 0.743725 -0.456983 0.60225201 0.311342 -0.73509097 0.74842203
		 0.336427 -0.57156098 0.003176 -0.039142001 -0.99922901 0.441232 0.774656 -0.453015
		 0.74842203 0.336427 -0.57156098 0.441232 0.774656 -0.453015 0.58644599 0.75991601
		 0.28037301 -0.109453 0.237293 -0.96525198 0.187209 -0.212497 -0.95906103 -0.45244399
		 -0.55760598 -0.69596702 0.187209 -0.212497 -0.95906103 -0.109453 0.237293 -0.96525198
		 0.78035498 0.44073999 -0.443616 0.83708298 0.465051 -0.28812999 0.82204098 0.475097
		 0.31389701 0.326832 0.89965099 0.28949901 0.82204098 0.475097 0.31389701 0.81346601
		 0.218582 0.53897703 0.326832 0.89965099 0.28949901 -0.41860101 0.88774103 -0.191542
		 -0.066552997 0.78864503 -0.61123598 -0.77815998 0.42368001 -0.46363899 -0.066552997
		 0.78864503 -0.61123598 -0.41860101 0.88774103 -0.191542 -0.061776999 0.995601 -0.070445001
		 0.62776399 -0.25184 0.73653901 0.28451401 -0.339003 0.89673197 -0.33586401 -0.112604
		 0.93515497 -0.151109 -0.900653 0.40741801 0.66983801 -0.73121703 -0.12898999 0.62776399
		 -0.25184 0.73653901 -0.92724699 -0.23519 0.29137301 -0.32505399 0.27958801 0.90342098
		 -0.97237003 0.063801996 0.224557 -0.97237003 0.063801996 0.224557 -0.68539399 -0.225109
		 -0.69250298 -0.92724699 -0.23519 0.29137301 0.84227598 0.53706503 0.046168 0.85365403
		 0.030199001 0.51996499 0.89121097 -0.40284199 -0.208473 0.89121097 -0.40284199 -0.208473
		 0.85365403 0.030199001 0.51996499 0.74409699 -0.49129099 0.45271799 -0.120837 -0.0062230001
		 0.99265301 -0.60980499 -0.120097 0.78339899 -0.83272201 0.041189998 0.55215698 -0.83272201
		 0.041189998 0.55215698 -0.918733 -0.39139399 0.052347999 -0.70398402 -0.438454 0.55871701
		 0.35963199 0.93281299 0.022903999 0.81703103 0.53243703 0.221294 0.13727701 0.98993802
		 0.034325 0.13727701 0.98993802 0.034325 -0.38655901 0.92021799 -0.061411001 0.35963199
		 0.93281299 0.022903999 0.29089701 0.92195201 -0.25570101 -0.083526999 0.95015299
		 0.30038899 -0.057661999 0.73307902 0.67769498 -0.057661999 0.73307902 0.67769498
		 -0.083526999 0.95015299 0.30038899 0.56778002 0.140773 0.81105399 -0.94391501 0.32132599
		 -0.075988002 -0.58059502 -0.71980101 -0.380521 -0.89524198 -0.29272199 0.33594 -0.58059502
		 -0.71980101 -0.380521 0.159973 -0.93788701 -0.30785701 -0.33305901 -0.84486198 0.41866601
		 0.92928898 -0.191627 -0.315754 0.64801103 -0.75788403 0.075461 -0.02108 -0.73989201
		 -0.67239499 0.94425899 0.32550201 0.049224999 0.75108802 -0.085378997 0.65465802
		 0.64801103 -0.75788403 0.075461 -0.103813 -0.42926401 -0.89719301 0.49428999 -0.86874598
		 0.030959999 -0.51903498 -0.84380901 0.13634101 -0.43311599 0.74491799 0.50745302
		 -0.030283 0.96150798 0.27310199 -0.010101 0.999749 -0.019991999 -0.487795 0.309829
		 0.81612599 -0.030283 0.96150798 0.27310199 -0.43311599 0.74491799 0.50745302 -0.088105999
		 0.855443 0.51034802 0.013752 0.44672599 0.89456499 0.681243 0.61791801 0.392537 -0.70398402
		 -0.438454 0.55871701 -0.120837 -0.0062230001 0.99265301 -0.83272201 0.041189998 0.55215698
		 -0.120837 -0.0062230001 0.99265301 0.079790004 -0.54956198 0.83163399 0.73414701
		 -0.081271999 0.67410898 -0.61383498 -0.73713398 -0.28255999 0.098679997 -0.376531
		 -0.92113298 -0.36818799 -0.83504701 -0.40882 -0.03269 0.54058301 0.84065503 -0.65657097
		 0.40683001 0.63514102 -0.11678 0.115631 0.98640299 -0.11678 0.115631 0.98640299 -0.675107
		 0.037643 0.73675901 0.13675199 0.284527 0.94886398 0.207913 0.16413601 0.96427798
		 -0.19173101 -0.69435799 0.693618 -0.26606101 0.31906301 0.909621 0.489043 -0.227807
		 0.841986 0.25354499 0.67281598 0.69500601 -0.26606101 0.31906301 0.909621 0.81775498
		 0.045818001 0.57374001 0.66104901 -0.53268898 0.52844697 0.83332098 0.51414597 0.203051
		 0.81775498 0.045818001 0.57374001 0.66192198 -0.454889 0.59576398 0.87476099 -0.443813
		 0.194484 0.88460398 0.144178 0.443497 0.86052102 0.47275001 -0.189766 0.100867 0.82141697
		 -0.56133801 -0.26817101 -0.50467002 0.82060498 -0.198364 -0.97653502 -0.083848 0.67897397
		 -0.654706 0.33219501 -0.89617401 -0.096988 0.43297401 -0.87018698 0.39941901 0.28851199
		 -0.82393998 -0.209534 -0.52651602 -0.83816397 -0.32738301 -0.43623599 -0.89617401
		 -0.096988 0.43297401;
	setAttr ".n[2324:2489]" -type "float3"  -0.82393998 -0.209534 -0.52651602 0.073547997
		 0.99614203 -0.047878001 -0.217584 0.95484102 -0.202327 -0.088105999 0.855443 0.51034802
		 0.681243 0.61791801 0.392537 0.073547997 0.99614203 -0.047878001 -0.088105999 0.855443
		 0.51034802 0.920973 -0.018046999 -0.38920799 0.821311 -0.33860099 0.459126 0.62924802
		 -0.65085298 -0.42478001 0.821311 -0.33860099 0.459126 0.35087901 -0.91783297 0.185652
		 0.62924802 -0.65085298 -0.42478001 0.60747302 -0.70617801 -0.36371601 0.369605 -0.40553799
		 -0.83602101 0.93875003 -0.25703001 -0.22952799 -0.096892998 -0.59291703 -0.79941303
		 0.67897397 -0.654706 0.33219501 -0.198364 -0.97653502 -0.083848 -0.74119198 -0.361792
		 -0.56545597 -0.096892998 -0.59291703 -0.79941303 -0.198364 -0.97653502 -0.083848
		 -0.048700999 -0.69321197 -0.71908599 0.66965598 -0.61405402 0.41773 -0.0088849999
		 -0.98519999 -0.171176 -0.50050801 -0.26585299 -0.82390201 0.097228996 0.28351599
		 -0.95402598 -0.048700999 -0.69321197 -0.71908599 -0.048700999 -0.69321197 -0.71908599
		 0.72807801 -0.37918299 -0.57107198 0.66965598 -0.61405402 0.41773 0.013752 0.44672599
		 0.89456499 -0.088105999 0.855443 0.51034802 -0.33309299 0.29082599 0.89692199 0.91807002
		 0.302459 0.256253 0.64421999 -0.66726798 -0.37380999 0.79285198 0.42522901 -0.43653899
		 0.42169899 0.891137 0.167464 0.91807002 0.302459 0.256253 0.79285198 0.42522901 -0.43653899
		 -0.45765001 -0.72230202 -0.51849401 -0.069968998 -0.78963 -0.60957998 -0.138318 -0.89424402
		 -0.42567101 0.58644599 0.75991601 0.28037301 -0.019731 0.918607 0.39467999 -0.384574
		 0.463552 0.798262 -0.384574 0.463552 0.798262 -0.79008102 0.57027501 0.22485299 -0.88105202
		 -0.21049 0.42360601 -0.68539399 -0.225109 -0.69250298 -0.415373 -0.57183301 -0.70744002
		 -0.92724699 -0.23519 0.29137301 -0.415373 -0.57183301 -0.70744002 -0.68539399 -0.225109
		 -0.69250298 -0.0081120003 -0.306777 -0.951747 -0.88908798 -0.35642901 0.287195 -0.138318
		 -0.89424402 -0.42567101 -0.55146402 -0.81045198 -0.197624 -0.88908798 -0.35642901
		 0.287195 -0.78996599 -0.334176 0.514081 -0.76842803 0.057151001 0.63737899 -0.019731
		 0.918607 0.39467999 -0.46818799 0.801036 -0.373018 -0.79008102 0.57027501 0.22485299
		 -0.384574 0.463552 0.798262 -0.019731 0.918607 0.39467999 -0.79008102 0.57027501
		 0.22485299 -0.83069301 0.13655999 -0.53972203 -0.21598101 -0.17568 -0.96046299 -0.82934099
		 -0.29384699 -0.475234 -0.83069301 0.13655999 -0.53972203 -0.82934099 -0.29384699
		 -0.475234 -0.88815302 -0.265643 -0.374991 -0.20533299 0.90364301 -0.375855 -0.41892499
		 0.90802097 0.00021 0.249915 0.89205301 0.37654299 -0.41892499 0.90802097 0.00021
		 -0.102217 0.64517701 0.757164 0.249915 0.89205301 0.37654299 0.085486002 0.43039501
		 0.89858299 -0.93377501 -0.034637999 0.35618001 -0.26817101 -0.50467002 0.82060498
		 -0.26817101 -0.50467002 0.82060498 -0.93377501 -0.034637999 0.35618001 -0.198364
		 -0.97653502 -0.083848 -0.34465399 0.64433002 0.68268001 -0.66869903 0.029448999 0.74295002
		 0.292941 0.047602002 0.95494503 -0.66869903 0.029448999 0.74295002 -0.89524198 -0.29272199
		 0.33594 -0.152744 -0.353798 0.92276502 0.20516901 -0.149059 -0.967309 0.24161001
		 0.75712901 -0.60694402 0.79285198 0.42522901 -0.43653899 -0.34646299 0.035813998
		 -0.93738002 0.20516901 -0.149059 -0.967309 -0.055744 -0.2448 -0.96797001 -0.61890501
		 -0.364999 0.69550902 -0.487795 0.309829 0.81612599 -0.19676501 -0.46788901 0.86160499
		 0.509332 -0.84401798 0.167971 -0.00899 -0.33840501 0.94095701 -0.20442 -0.96055597
		 0.18853299 -0.415373 -0.57183301 -0.70744002 0.509332 -0.84401798 0.167971 -0.20442
		 -0.96055597 0.18853299 0.64977598 0.60154301 0.464692 0.63475102 0.73603702 -0.235245
		 0.112517 0.99170899 0.062068999 0.63475102 0.73603702 -0.235245 -0.084137999 0.78693497
		 -0.61127299 0.112517 0.99170899 0.062068999 -0.56653398 -0.093259998 0.818744 -0.75915903
		 -0.18235201 0.62484097 -0.592673 -0.63083702 0.50078201 -0.56653398 -0.093259998
		 0.818744 -0.745588 0.40545201 0.52887303 -0.75915903 -0.18235201 0.62484097 0.24161001
		 0.75712901 -0.60694402 0.20516901 -0.149059 -0.967309 -0.34646299 0.035813998 -0.93738002
		 -0.34646299 0.035813998 -0.93738002 -0.62193698 0.688555 -0.372942 0.24161001 0.75712901
		 -0.60694402 -0.68238002 0.070038997 0.72763503 -0.51903498 -0.84380901 0.13634101
		 -0.26850301 -0.342868 0.90019298 -0.242264 -0.227322 -0.94320399 -0.082493 0.836689
		 -0.54143 0.380292 0.50294697 -0.77615899 -0.74480301 -0.25441301 -0.61688101 -0.32665101
		 -0.409484 -0.851834 -0.80954099 -0.56061602 -0.174219 -0.95079499 0.18175 -0.25091001
		 -0.97229999 0.211913 -0.098617002 -0.66627401 -0.097488999 -0.73930699 -0.644373
		 0.62426001 0.44168201 -0.25921199 0.34458399 0.90225899 -0.97229999 0.211913 -0.098617002
		 -0.65700001 -0.459939 0.59733403 -0.65657097 0.40683001 0.63514102 -0.93315202 -0.229349
		 0.276815 -0.033142 -0.96584898 0.25697699 0.72572303 -0.48396099 -0.488987 0.76068801
		 -0.46332201 0.45462701 -0.033142 -0.96584898 0.25697699 0.76068801 -0.46332201 0.45462701
		 0.20790499 -0.28794599 0.93480599 -0.88105202 -0.21049 0.42360601 -0.79864299 -0.37781101
		 -0.46843299 -0.69972098 -0.69517601 0.164683 -0.69972098 -0.69517601 0.164683 -0.384574
		 0.463552 0.798262 -0.88105202 -0.21049 0.42360601 -0.27631399 -0.48959199 -0.82701302
		 -0.47025701 -0.119214 -0.87444103 0.024080001 -0.94437301 -0.32799301 -0.47025701
		 -0.119214 -0.87444103 0.058419 0.86167699 -0.50408298 -0.095522001 -0.247179 -0.96425003
		 -0.129813 0.83267999 -0.53832299 0.31153601 -0.071910001 -0.94750899 -0.33270299
		 0.063266002 -0.940907 0.82885998 -0.048464 0.55735302 0.784311 -0.13885801 0.60462803
		 0.35155001 -0.22941799 0.90762299;
	setAttr ".n[2490:2655]" -type "float3"  0.99875998 0.021764999 0.044782002 0.78856999
		 0.57753003 0.211225 0.81298798 0.150903 0.56238598 0.99875998 0.021764999 0.044782002
		 0.62970799 0.61077303 -0.48002499 0.78856999 0.57753003 0.211225 0.56553602 0.28396299
		 -0.77429497 0.95096999 0.098518997 -0.293172 0.560965 -0.45031899 -0.69464397 -0.745588
		 0.40545201 0.52887303 -0.65494603 0.52557898 0.54296601 -0.572146 0.81888598 0.045558002
		 -0.65494603 0.52557898 0.54296601 -0.745588 0.40545201 0.52887303 -0.56653398 -0.093259998
		 0.818744 0.62749898 -0.040677998 -0.77755398 0.56088501 -0.018092999 -0.82769603
		 0.40612301 -0.67131603 -0.62 0.56088501 -0.018092999 -0.82769603 0.62749898 -0.040677998
		 -0.77755398 0.67043602 0.64250398 -0.37108499 0.35009399 0.56023997 0.75071001 -0.133405
		 0.55750197 0.81938702 0.052407999 0.22035199 0.974011 -0.98006803 0.168286 0.105579
		 -0.60893899 -0.54066902 0.580405 -0.488516 0.105441 0.86616099 -0.31030399 0.37026399
		 -0.87556601 -0.047270998 0.153749 -0.98697901 -0.38366199 -0.18543001 -0.90466499
		 -0.38366199 -0.18543001 -0.90466499 -0.047270998 0.153749 -0.98697901 0.0089919996
		 -0.68199998 -0.73129702 0.0092580002 0.202227 -0.97929502 0.576527 0.554232 -0.60036898
		 0.344028 -0.59508401 -0.72630602 0.0092580002 0.202227 -0.97929502 -0.069812998 0.55531299
		 -0.82870603 0.576527 0.554232 -0.60036898 -0.65777802 0.117647 -0.743967 -0.196154
		 0.85968798 -0.47165701 -0.25760901 -0.1868 -0.94802099 -0.196154 0.85968798 -0.47165701
		 -0.65777802 0.117647 -0.743967 -0.85563701 0.442554 0.268388 -0.88121599 0.40867001
		 0.23758601 -0.94257301 -0.163072 0.29148501 -0.89108503 0.017622 0.453493 -0.89108503
		 0.017622 0.453493 -0.94257301 -0.163072 0.29148501 -0.83272201 0.041189998 0.55215698
		 0.68440098 -0.0083699999 -0.72905803 0.369605 -0.40553799 -0.83602101 -0.047270998
		 0.153749 -0.98697901 0.93875003 -0.25703001 -0.22952799 0.369605 -0.40553799 -0.83602101
		 0.68440098 -0.0083699999 -0.72905803 0.45696801 0.175983 0.87190098 0.62772298 0.024829
		 0.77804101 0.77119398 0.215297 0.59908903 0.81589001 -0.210519 0.53852099 0.62772298
		 0.024829 0.77804101 0.45696801 0.175983 0.87190098 0.160147 -0.108259 -0.981139 0.189054
		 -0.28040299 -0.94108099 0.328392 -0.090902001 -0.940157 -0.78996199 0.160675 -0.59173
		 -0.88815302 -0.265643 -0.374991 -0.75020498 -0.355858 -0.55727798 -0.53435099 0.80690902
		 -0.251728 -0.74622899 0.35137901 -0.56539798 0.047139 0.99698001 0.061717998 -0.53435099
		 0.80690902 -0.251728 0.047139 0.99698001 0.061717998 -0.010389 0.70283198 0.71127999
		 0.143777 -0.023049001 0.98934197 0.66661501 0.055656001 0.743321 0.83987498 -0.41640699
		 0.34815899 0.91360098 -0.030843001 0.40544099 0.72826803 0.282143 0.62451702 0.83987498
		 -0.41640699 0.34815899 0.88460398 0.144178 0.443497 -0.0088849999 -0.98519999 -0.171176
		 0.66965598 -0.61405402 0.41773 0.88460398 0.144178 0.443497 0.66965598 -0.61405402
		 0.41773 0.86052102 0.47275001 -0.189766 -0.47025701 -0.119214 -0.87444103 -0.095522001
		 -0.247179 -0.96425003 0.024080001 -0.94437301 -0.32799301 -0.095522001 -0.247179
		 -0.96425003 0.56749803 -0.81992298 0.075315997 0.024080001 -0.94437301 -0.32799301
		 0.35963199 0.93281299 0.022903999 0.031052001 0.99161398 -0.125451 0.65716499 0.74433798
		 -0.118723 0.45458299 -0.72002798 -0.52432299 0.89121097 -0.40284199 -0.208473 0.74409699
		 -0.49129099 0.45271799 0.039801002 0.75671703 0.652529 0.50266898 0.80980301 0.302562
		 0.226271 0.829561 -0.51051903 0.88851398 -0.066933997 -0.453942 0.96958703 0.13918699
		 0.201316 0.84296799 -0.51981902 0.138539 0.79684502 0.073505998 -0.59969503 0.96958703
		 0.13918699 0.201316 0.88851398 -0.066933997 -0.453942 -0.146082 -0.15117601 0.97765303
		 0.42482299 -0.60601801 0.672508 -0.27743399 0.058747001 0.958947 -0.146082 -0.15117601
		 0.97765303 -0.27743399 0.058747001 0.958947 -0.76842803 0.057151001 0.63737899 -0.781578
		 -0.59366298 -0.191572 0.66983801 -0.73121703 -0.12898999 -0.151109 -0.900653 0.40741801
		 -0.75513798 0.51255202 0.40872601 0.23438101 0.95661002 -0.173099 -0.88121599 0.40867001
		 0.23758601 -0.75513798 0.51255202 0.40872601 -0.31325001 0.219493 0.92395699 0.23438101
		 0.95661002 -0.173099 0.146686 -0.50171 -0.85250801 0.41802499 -0.034327999 -0.90778702
		 -0.055744 -0.2448 -0.96797001 0.41802499 -0.034327999 -0.90778702 0.038047999 0.97242802
		 -0.23007999 -0.055744 -0.2448 -0.96797001 0.26763201 -0.89612699 0.35401899 0.40612301
		 -0.67131603 -0.62 0.84692001 -0.50947398 -0.152192 -0.143093 0.91753399 0.37101999
		 -0.62614 0.243672 0.74065697 0.650451 0.64988399 0.39314601 -0.62614 0.243672 0.74065697
		 -0.87018698 0.39941901 0.28851199 -0.89617401 -0.096988 0.43297401 0.303341 0.0067289998
		 0.95285797 0.207913 0.16413601 0.96427798 0.78530103 0.173279 0.59437102 0.303341
		 0.0067289998 0.95285797 0.78530103 0.173279 0.59437102 0.66661501 0.055656001 0.743321
		 -0.44457901 -0.077128999 -0.89241302 -0.24885 0.72036302 -0.64741802 0.217731 0.65442401
		 -0.72410101 0.217731 0.65442401 -0.72410101 -0.24885 0.72036302 -0.64741802 -0.010101
		 0.999749 -0.019991999 -0.67233801 0.28777799 0.68201602 -0.494057 -0.54648799 0.67620897
		 -0.519696 0.075363003 0.85102099 -0.519696 0.075363003 0.85102099 -0.494057 -0.54648799
		 0.67620897 -0.82674301 -0.17679401 0.534078 0.061437 0.92904902 0.36482 0.22409099
		 0.76042002 -0.60954499 0.076297 0.94604999 -0.31490901 0.13727701 0.98993802 0.034325
		 0.231051 0.89785898 -0.37478599 -0.22139101 0.90810102 -0.355441 -0.032749001 0.652713
		 -0.75689799 -0.22139101 0.90810102 -0.355441 0.231051 0.89785898 -0.37478599 -0.146082
		 -0.15117601 0.97765303;
	setAttr ".n[2656:2821]" -type "float3"  -0.427753 0.222378 0.87611401 0.25354499
		 0.67281598 0.69500601 -0.26438001 -0.911834 -0.314105 0.079790004 -0.54956198 0.83163399
		 -0.70398402 -0.438454 0.55871701 -0.120837 -0.0062230001 0.99265301 -0.70398402 -0.438454
		 0.55871701 0.079790004 -0.54956198 0.83163399 -0.67596501 0.051293999 -0.73514599
		 0.123033 0.39042401 -0.912377 -0.362901 -0.267849 -0.89250201 -0.807109 0.32019001
		 -0.49603701 -0.67596501 0.051293999 -0.73514599 -0.84525698 -0.48060501 -0.23358101
		 0.32147601 0.22695699 -0.91931701 0.51812601 0.46164399 -0.72002 0.98437101 0.00078900001
		 -0.176108 0.51812601 0.46164399 -0.72002 0.231051 0.89785898 -0.37478599 0.81703103
		 0.53243703 0.221294 0.143777 -0.023049001 0.98934197 0.83987498 -0.41640699 0.34815899
		 0.72826803 0.282143 0.62451702 0.72826803 0.282143 0.62451702 0.21510001 0.49817801
		 0.83997101 0.143777 -0.023049001 0.98934197 0.20296299 0.92729503 0.31453201 0.60904598
		 0.77129698 -0.184834 -0.068429001 0.997648 -0.0040899999 -0.068429001 0.997648 -0.0040899999
		 -0.23770399 0.81661701 0.52595901 0.20296299 0.92729503 0.31453201 0.81703103 0.53243703
		 0.221294 0.81543499 -0.198916 0.54359698 0.98437101 0.00078900001 -0.176108 0.51812601
		 0.46164399 -0.72002 0.81703103 0.53243703 0.221294 0.98437101 0.00078900001 -0.176108
		 0.45115599 0.63474202 0.62734503 0.80167502 0.12477 0.584593 0.85971302 -0.149003
		 0.488561 0.45115599 0.63474202 0.62734503 -0.010389 0.70283198 0.71127999 0.80167502
		 0.12477 0.584593 -0.45765001 -0.72230202 -0.51849401 -0.96361202 -0.26031899 0.060704
		 -0.34389499 -0.44164699 -0.828664 -0.88908798 -0.35642901 0.287195 -0.96361202 -0.26031899
		 0.060704 -0.45765001 -0.72230202 -0.51849401 -0.932567 0.28227499 -0.225032 -0.94099802
		 0.15865 -0.29891899 -0.72077501 0.67184597 -0.17060301 -0.93640101 0.117078 -0.330825
		 -0.72077501 0.67184597 -0.17060301 -0.94099802 0.15865 -0.29891899 0.22409099 0.76042002
		 -0.60954499 -0.20376 0.87393999 -0.44126001 0.076297 0.94604999 -0.31490901 0.19873001
		 0.052103002 0.97866797 0.547809 0.63478702 0.54493099 -0.19639599 0.767304 0.61047
		 0.83394802 0.064668998 0.54803997 0.67944801 0.71369702 -0.170256 0.547809 0.63478702
		 0.54493099 0.96962601 0.18887199 -0.15540899 0.41563001 0.90354598 -0.104196 0.005347
		 0.92011499 0.39161199 0.65073597 0.39269799 0.64986998 0.98742902 -0.14821599 0.054923002
		 0.96962601 0.18887199 -0.15540899 0.65716499 0.74433798 -0.118723 0.66431302 -0.51883698
		 0.53804898 0.94068003 0.093406998 0.32618299 0.94068003 0.093406998 0.32618299 0.66431302
		 -0.51883698 0.53804898 0.81703103 0.53243703 0.221294 0.83394802 0.064668998 0.54803997
		 0.547809 0.63478702 0.54493099 0.19873001 0.052103002 0.97866797 0.405283 -0.55392498
		 0.72726399 0.83394802 0.064668998 0.54803997 0.19873001 0.052103002 0.97866797 -0.146082
		 -0.15117601 0.97765303 0.25354499 0.67281598 0.69500601 0.42482299 -0.60601801 0.672508
		 -0.03269 0.54058301 0.84065503 0.21510001 0.49817801 0.83997101 0.026268 0.57115102
		 0.82042497 0.61154002 0.63705099 0.469239 0.026268 0.57115102 0.82042497 0.21510001
		 0.49817801 0.83997101 -0.72077501 0.67184597 -0.17060301 -0.465213 0.88114601 0.084608003
		 -0.22139101 0.90810102 -0.355441 -0.22139101 0.90810102 -0.355441 -0.465213 0.88114601
		 0.084608003 0.13727701 0.98993802 0.034325 0.56256098 0.82099801 -0.097407997 0.62816799
		 0.77472299 -0.072182 0.46834901 0.79186398 -0.39192 0.56256098 0.82099801 -0.097407997
		 0.46834901 0.79186398 -0.39192 -0.39027101 0.744753 -0.54132301 -0.33586401 -0.112604
		 0.93515497 0.28451401 -0.339003 0.89673197 -0.71344697 -0.040892001 0.69951499 0.51070899
		 -0.563573 0.649279 -0.71344697 -0.040892001 0.69951499 0.28451401 -0.339003 0.89673197
		 0.710926 0.36890399 0.59874398 0.93061 0.22517601 0.28854999 0.45696801 0.175983
		 0.87190098 0.63210303 -0.59561503 0.49566999 0.93061 0.22517601 0.28854999 0.73112899
		 -0.172001 0.66020203 0.487892 0.743725 -0.456983 -0.246273 0.92361999 -0.29372799
		 0.249791 0.94737798 -0.20020001 0.249791 0.94737798 -0.20020001 -0.246273 0.92361999
		 -0.29372799 -0.141974 0.98967201 -0.019820999 0.73388201 0.178302 -0.65545797 0.29974601
		 0.26950699 -0.91516 0.68240798 0.64576602 -0.3425 -0.046250999 0.093939997 -0.99450302
		 0.29974601 0.26950699 -0.91516 0.63095301 -0.105981 -0.76854801 0.710926 0.36890399
		 0.59874398 0.73112899 -0.172001 0.66020203 0.93061 0.22517601 0.28854999 0.73112899
		 -0.172001 0.66020203 0.710926 0.36890399 0.59874398 0.77119398 0.215297 0.59908903
		 0.73657799 -0.048516002 0.67461002 0.70177501 -0.60465199 0.37670699 0.39024201 -0.89767098
		 -0.20469201 0.39024201 -0.89767098 -0.20469201 0.70177501 -0.60465199 0.37670699
		 0.34766501 -0.91359502 -0.210887 -0.97713 0.14589401 0.1547 -0.93640101 0.117078
		 -0.330825 -0.86778498 -0.26391 -0.42107099 -0.069968998 -0.78963 -0.60957998 0.406955
		 -0.68561602 -0.60358799 0.25398499 -0.90960503 -0.32880101 0.25398499 -0.90960503
		 -0.32880101 0.406955 -0.68561602 -0.60358799 0.91394299 -0.40470299 -0.030401001
		 -0.152744 -0.353798 0.92276502 -0.89524198 -0.29272199 0.33594 -0.33305901 -0.84486198
		 0.41866601 -0.58059502 -0.71980101 -0.380521 -0.33305901 -0.84486198 0.41866601 -0.89524198
		 -0.29272199 0.33594 -0.25921199 0.34458399 0.90225899 0.65073597 0.39269799 0.64986998
		 0.005347 0.92011499 0.39161199 0.96962601 0.18887199 -0.15540899 0.005347 0.92011499
		 0.39161199 0.65073597 0.39269799 0.64986998 0.433301 0.55637199 0.70901299 0.018785
		 0.51901299 0.85456002 0.55185097 0.28157601 0.78496897 0.018785 0.51901299 0.85456002
		 0.433301 0.55637199 0.70901299;
	setAttr ".n[2822:2987]" -type "float3"  -0.047917999 0.891087 0.451296 -0.25951499
		 0.92927301 0.26287499 0.37953299 0.51365203 0.76949102 0.225063 0.89708602 0.38024199
		 -0.39027101 0.744753 -0.54132301 -0.25951499 0.92927301 0.26287499 0.225063 0.89708602
		 0.38024199 0.32147601 0.22695699 -0.91931701 -0.032749001 0.652713 -0.75689799 0.51812601
		 0.46164399 -0.72002 0.32147601 0.22695699 -0.91931701 -0.166021 0.041882001 -0.985232
		 -0.032749001 0.652713 -0.75689799 0.0678 0.28549001 0.95598 0.143777 -0.023049001
		 0.98934197 0.21510001 0.49817801 0.83997101 0.143777 -0.023049001 0.98934197 0.0678
		 0.28549001 0.95598 0.66661501 0.055656001 0.743321 0.142223 -0.029124999 0.98940599
		 -0.121867 0.071261004 0.98998499 0.47336599 -0.064329997 0.87851399 0.47336599 -0.064329997
		 0.87851399 -0.121867 0.071261004 0.98998499 -0.120837 -0.0062230001 0.99265301 0.84773499
		 0.52989799 -0.023531999 0.23438101 0.95661002 -0.173099 0.75857502 0.237964 -0.60657799
		 0.84773499 0.52989799 -0.023531999 0.75857502 0.237964 -0.60657799 0.679353 -0.23197199
		 -0.696181 -0.996387 0.0053889998 0.084757 -0.95038003 0.30696401 -0.05051 -0.94348103
		 0.29688999 -0.14731 -0.94348103 0.29688999 -0.14731 -0.95038003 0.30696401 -0.05051
		 -0.13547 0.48409599 -0.86446398 -0.698919 0.56343699 0.440512 -0.445209 0.86085099
		 -0.24642301 -0.77703398 0.214641 0.59173203 -0.602911 0.75746101 0.25050101 -0.698919
		 0.56343699 0.440512 -0.77703398 0.214641 0.59173203 0.676238 -0.091583997 0.730968
		 0.86957997 0.155366 0.468712 0.98742902 -0.14821599 0.054923002 0.676238 -0.091583997
		 0.730968 -0.644373 0.62426001 0.44168201 0.86957997 0.155366 0.468712 -0.40294999
		 -0.178229 -0.89770001 -0.90679598 0.177036 -0.38259599 -0.67827499 0.54634398 -0.491377
		 -0.80333799 0.54262799 0.245362 -0.67827499 0.54634398 -0.491377 -0.90679598 0.177036
		 -0.38259599 -0.72231501 0.062948003 -0.68869299 -0.77815998 0.42368001 -0.46363899
		 -0.31030399 0.37026399 -0.87556601 -0.96681303 -0.112155 -0.22955 -0.77815998 0.42368001
		 -0.46363899 -0.72231501 0.062948003 -0.68869299 0.66151702 0.173803 0.72951198 0.90773201
		 0.396249 0.137876 0.34969199 0.61598098 0.70589101 0.34969199 0.61598098 0.70589101
		 0.058042001 0.68828201 0.72311801 0.66151702 0.173803 0.72951198 -0.69543803 0.340628
		 0.63272297 -0.88442898 -0.180472 0.43036699 -0.843499 0.230747 0.48504201 -0.843499
		 0.230747 0.48504201 -0.67233801 0.28777799 0.68201602 -0.69543803 0.340628 0.63272297
		 0.65786201 0.71090299 0.248665 0.70322901 0.66521001 -0.250929 0.29089701 0.92195201
		 -0.25570101 0.70322901 0.66521001 -0.250929 0.65786201 0.71090299 0.248665 0.86064303
		 0.109165 0.49737 0.90313798 -0.033429001 0.428047 0.77613801 -0.592592 0.215508 0.25398499
		 -0.90960503 -0.32880101 0.73657799 -0.048516002 0.67461002 0.39024201 -0.89767098
		 -0.20469201 0.77613801 -0.592592 0.215508 -0.45244399 -0.55760598 -0.69596702 -0.81957901
		 -0.089032002 -0.566006 -0.109453 0.237293 -0.96525198 -0.037253998 -0.22172999 0.97439599
		 -0.71344697 -0.040892001 0.69951499 0.51070899 -0.563573 0.649279 -0.037253998 -0.22172999
		 0.97439599 0.51070899 -0.563573 0.649279 0.50266898 0.80980301 0.302562 -0.58561599
		 -0.77168 0.24812099 -0.14562 -0.80540502 -0.57455897 0.098745003 -0.95560902 0.27759799
		 -0.010389 0.70283198 0.71127999 0.047139 0.99698001 0.061717998 0.142223 -0.029124999
		 0.98940599 -0.010389 0.70283198 0.71127999 0.142223 -0.029124999 0.98940599 0.80167502
		 0.12477 0.584593 0.13365699 0.48619401 0.86356902 0.911816 0.40025699 0.091572002
		 0.52016699 0.84780598 0.103206 -0.061666001 0.887963 0.45576301 0.13365699 0.48619401
		 0.86356902 0.52016699 0.84780598 0.103206 0.70747501 0.623712 0.33235899 0.576527
		 0.554232 -0.60036898 0.27964601 0.92155099 -0.26933399 0.85179698 -0.18404999 0.490477
		 0.70747501 0.623712 0.33235899 0.27964601 0.92155099 -0.26933399 -0.843499 0.230747
		 0.48504201 -0.80548799 -0.460922 0.37247801 -0.995516 -0.028155001 0.090306997 -0.80548799
		 -0.460922 0.37247801 -0.52559799 -0.79729199 -0.29676899 -0.995516 -0.028155001 0.090306997
		 0.64331102 -0.121234 -0.75594503 -0.117119 0.41622099 -0.90168899 0.41563001 0.90354598
		 -0.104196 0.73657799 -0.048516002 0.67461002 0.77613801 -0.592592 0.215508 0.90313798
		 -0.033429001 0.428047 0.78530103 0.173279 0.59437102 0.73657799 -0.048516002 0.67461002
		 0.90313798 -0.033429001 0.428047 0.84227598 0.53706503 0.046168 0.68240798 0.64576602
		 -0.3425 0.41689801 0.74312401 0.52341503 0.68240798 0.64576602 -0.3425 0.84227598
		 0.53706503 0.046168 0.89121097 -0.40284199 -0.208473 -0.72091699 -0.48269501 -0.497278
		 -0.26795 -0.90443802 -0.331956 -0.66690099 -0.72690302 0.163877 -0.26795 -0.90443802
		 -0.331956 -0.72091699 -0.48269501 -0.497278 0.0089919996 -0.68199998 -0.73129702
		 0.41563001 0.90354598 -0.104196 -0.75637698 0.64602602 0.102686 0.005347 0.92011499
		 0.39161199 0.45115599 0.63474202 0.62734503 0.85971302 -0.149003 0.488561 0.68139601
		 0.52953303 0.50526798 0.45115599 0.63474202 0.62734503 0.68139601 0.52953303 0.50526798
		 -0.644373 0.62426001 0.44168201 0.215312 -0.64880103 -0.72986197 0.741781 -0.67063999
		 0.00189 0.85683697 -0.451765 0.248473 0.741781 -0.67063999 0.00189 -0.133523 -0.84594399
		 -0.516285 0.52798998 -0.74619502 -0.40548599 -0.122808 0.54149801 -0.83168399 -0.66637999
		 0.71229798 -0.220384 -0.39150399 0.90857702 -0.14564499 -0.66637999 0.71229798 -0.220384
		 -0.050533999 0.399946 0.91514498 -0.39150399 0.90857702 -0.14564499 -0.14312699 0.32810301
		 -0.93373603 0.29993701 -0.28754401 -0.90959102 -0.0053320001 -0.338002 -0.94112998;
	setAttr ".n[2988:3153]" -type "float3"  -0.0053320001 -0.338002 -0.94112998 0.29993701
		 -0.28754401 -0.90959102 0.159973 -0.93788701 -0.30785701 -0.109453 0.237293 -0.96525198
		 0.62755698 0.741018 -0.238884 0.78035498 0.44073999 -0.443616 0.94425899 0.32550201
		 0.049224999 0.78035498 0.44073999 -0.443616 0.62755698 0.741018 -0.238884 0.73414701
		 -0.081271999 0.67410898 0.85683697 -0.451765 0.248473 0.741781 -0.67063999 0.00189
		 0.079790004 -0.54956198 0.83163399 0.85683697 -0.451765 0.248473 0.73414701 -0.081271999
		 0.67410898 -0.78996599 -0.334176 0.514081 -0.88908798 -0.35642901 0.287195 -0.55146402
		 -0.81045198 -0.197624 -0.78996599 -0.334176 0.514081 -0.55146402 -0.81045198 -0.197624
		 -0.46621999 -0.39133701 0.79340601 -0.111971 -0.84021997 0.53056002 -0.905123 -0.33816499
		 0.25767699 -0.53303403 -0.84398901 0.059643 -0.111971 -0.84021997 0.53056002 -0.494057
		 -0.54648799 0.67620897 -0.905123 -0.33816499 0.25767699 0.097228996 0.28351599 -0.95402598
		 0.100867 0.82141697 -0.56133801 0.86052102 0.47275001 -0.189766 0.097228996 0.28351599
		 -0.95402598 0.72807801 -0.37918299 -0.57107198 -0.048700999 -0.69321197 -0.71908599
		 0.53238201 0.57807702 -0.61838299 -0.14312699 0.32810301 -0.93373603 0.078693002
		 0.924743 -0.37236801 0.78279698 0.59431797 0.184432 0.53238201 0.57807702 -0.61838299
		 0.078693002 0.924743 -0.37236801 -0.51810998 -0.012858 0.85521799 -0.69235802 -0.47365001
		 0.54433101 -0.69543803 0.340628 0.63272297 -0.69235802 -0.47365001 0.54433101 -0.51810998
		 -0.012858 0.85521799 -0.59736001 -0.54092902 0.59207797 -0.94099802 0.15865 -0.29891899
		 -0.95332301 -0.289141 -0.087026 -0.818003 -0.31660399 -0.48024201 -0.194699 0.90134698
		 -0.38686699 -0.602911 0.75746101 0.25050101 0.108753 0.97588003 -0.18929 -0.194699
		 0.90134698 -0.38686699 0.108753 0.97588003 -0.18929 0.50794798 0.30621499 -0.80512202
		 -0.659738 0.49395201 0.56635499 0.087782003 0.824058 0.55966401 -0.25360799 0.95675999
		 -0.142452 -0.71300101 0.14427701 -0.68615901 -0.659738 0.49395201 0.56635499 -0.25360799
		 0.95675999 -0.142452 -0.23770399 0.81661701 0.52595901 0.058042001 0.68828201 0.72311801
		 0.20296299 0.92729503 0.31453201 0.155829 0.054246999 0.98629302 -0.32505399 0.27958801
		 0.90342098 -0.00899 -0.33840501 0.94095701 0.509332 -0.84401798 0.167971 0.155829
		 0.054246999 0.98629302 -0.00899 -0.33840501 0.94095701 -0.863585 -0.371263 -0.341151
		 -0.32258499 -0.83261597 -0.45021099 -0.37679499 -0.92421001 0.062135998 -0.86857998
		 0.381028 -0.31683901 -0.63863498 0.75407702 0.15334 -0.084137999 0.78693497 -0.61127299
		 -0.63863498 0.75407702 0.15334 -0.86857998 0.381028 -0.31683901 -0.89967102 -0.052009001
		 0.43345901 0.77169597 0.39188099 -0.50091398 0.98553503 -0.16941901 -0.0042249998
		 0.15128601 -0.72601497 -0.67083102 -0.242532 -0.966371 -0.085473999 0.69568503 -0.711595
		 0.098259002 0.110514 -0.58649099 0.80238098 -0.242264 -0.227322 -0.94320399 0.55542302
		 -0.53504997 -0.63657397 -0.242532 -0.966371 -0.085473999 0.91360098 -0.030843001
		 0.40544099 0.77119398 0.215297 0.59908903 0.81346601 0.218582 0.53897703 0.82204098
		 0.475097 0.31389701 0.91360098 -0.030843001 0.40544099 0.81346601 0.218582 0.53897703
		 0.13675199 0.284527 0.94886398 -0.03269 0.54058301 0.84065503 -0.11678 0.115631 0.98640299
		 0.0678 0.28549001 0.95598 -0.03269 0.54058301 0.84065503 0.13675199 0.284527 0.94886398
		 0.62970799 0.61077303 -0.48002499 0.99875998 0.021764999 0.044782002 0.84054101 -0.246342
		 -0.48249999 0.62970799 0.61077303 -0.48002499 0.84054101 -0.246342 -0.48249999 0.498546
		 0.22582801 -0.83693099 0.15128601 -0.72601497 -0.67083102 0.98553503 -0.16941901
		 -0.0042249998 -0.068764001 -0.99323601 -0.093557 0.15128601 -0.72601497 -0.67083102
		 -0.068764001 -0.99323601 -0.093557 -0.942186 -0.32145199 -0.094630003 0.45696801
		 0.175983 0.87190098 0.75505197 0.175984 0.63160598 0.81589001 -0.210519 0.53852099
		 0.75505197 0.175984 0.63160598 0.90313798 -0.033429001 0.428047 0.81589001 -0.210519
		 0.53852099 0.69568503 -0.711595 0.098259002 0.55542302 -0.53504997 -0.63657397 0.949705
		 0.30918601 -0.049640998 0.69568503 -0.711595 0.098259002 -0.242532 -0.966371 -0.085473999
		 0.55542302 -0.53504997 -0.63657397 -0.83243603 -0.080541998 -0.54823703 -0.304896
		 -0.095688999 -0.94756597 -0.103813 -0.42926401 -0.89719301 -0.94006002 -0.285263
		 0.186848 -0.66690099 -0.72690302 0.163877 -0.592673 -0.63083702 0.50078201 -0.592673
		 -0.63083702 0.50078201 -0.75915903 -0.18235201 0.62484097 -0.94006002 -0.285263 0.186848
		 0.57453197 -0.30711901 -0.75867701 0.48800701 0.14108001 -0.86136299 0.62749898 -0.040677998
		 -0.77755398 0.48800701 0.14108001 -0.86136299 0.57453197 -0.30711901 -0.75867701
		 -0.21598101 -0.17568 -0.96046299 0.420928 -0.447806 -0.78885299 0.84296799 -0.51981902
		 0.138539 0.098745003 -0.95560902 0.27759799 0.419301 -0.079594001 0.904351 0.098745003
		 -0.95560902 0.27759799 0.84296799 -0.51981902 0.138539 0.057349999 0.388197 -0.91979003
		 -0.74622899 0.35137901 -0.56539798 -0.75532597 0.146275 -0.638816 -0.74622899 0.35137901
		 -0.56539798 -0.64569998 -0.43255401 -0.62926 -0.75532597 0.146275 -0.638816 0.949705
		 0.30918601 -0.049640998 0.049463 0.98954701 -0.13546 0.425154 0.74779999 0.50994098
		 0.067287996 0.71429402 0.69660401 0.425154 0.74779999 0.50994098 0.049463 0.98954701
		 -0.13546 -0.65945399 0.56060803 0.50083798 -0.88385701 0.391974 0.25525099 -0.583018
		 0.157217 0.79710299 -0.60139 0.79462498 -0.083072998 -0.72077501 0.67184597 -0.17060301
		 -0.88385701 0.391974 0.25525099 -0.80088699 0.200471 -0.56426197 -0.60422999 0.040844001
		 -0.79576302 -0.97229999 0.211913 -0.098617002 -0.80088699 0.200471 -0.56426197;
	setAttr ".n[3154:3319]" -type "float3"  -0.117119 0.41622099 -0.90168899 -0.60422999
		 0.040844001 -0.79576302 0.48932201 -0.74160397 -0.45889801 0.57453197 -0.30711901
		 -0.75867701 0.40612301 -0.67131603 -0.62 -0.138318 -0.89424402 -0.42567101 0.34766501
		 -0.91359502 -0.210887 0.10781 -0.97032797 0.216427 0.178146 -0.27043 0.946114 0.10781
		 -0.97032797 0.216427 0.34766501 -0.91359502 -0.210887 0.83394802 0.064668998 0.54803997
		 0.405283 -0.55392498 0.72726399 0.67290902 -0.67096502 0.31144801 0.120438 -0.95517498
		 -0.27043599 0.67290902 -0.67096502 0.31144801 0.405283 -0.55392498 0.72726399 0.143666
		 0.72560102 0.67295098 -0.46621999 -0.39133701 0.79340601 0.178146 -0.27043 0.946114
		 0.178146 -0.27043 0.946114 -0.46621999 -0.39133701 0.79340601 0.10781 -0.97032797
		 0.216427 0.83577597 0.528503 0.148873 0.86283898 0.50062698 -0.069862001 0.97743398
		 -0.14979801 0.148939 0.86283898 0.50062698 -0.069862001 0.83577597 0.528503 0.148873
		 0.090582997 0.944139 0.316852 -0.19088501 -0.32011801 -0.927948 0.098679997 -0.376531
		 -0.92113298 -0.415353 -0.83703101 -0.35617501 -0.68909502 0.62792897 -0.361736 -0.19088501
		 -0.32011801 -0.927948 -0.415353 -0.83703101 -0.35617501 -0.89235997 -0.195418 -0.40682301
		 -0.40461999 -0.559479 -0.72337103 -0.83063102 0.020745 -0.55643702 -0.94306302 0.092382997
		 0.31952801 -0.85549998 0.51778299 0.0044860002 -0.89235997 -0.195418 -0.40682301
		 0.805628 0.26028001 0.53218102 0.71498698 0.59684998 0.36409399 -0.023026001 0.070653997
		 0.997235 0.25600401 0.79727799 0.54663497 -0.023026001 0.070653997 0.997235 -0.133405
		 0.55750197 0.81938702 -0.34389499 -0.44164699 -0.828664 -0.76573801 -0.63183898 -0.120104
		 -0.129272 -0.85779202 -0.49747601 -0.96361202 -0.26031899 0.060704 -0.76573801 -0.63183898
		 -0.120104 -0.34389499 -0.44164699 -0.828664 0.165406 0.85747999 -0.48720399 -0.061776999
		 0.995601 -0.070445001 -0.217584 0.95484102 -0.202327 -0.217584 0.95484102 -0.202327
		 -0.061776999 0.995601 -0.070445001 -0.572146 0.81888598 0.045558002 -0.81957901 -0.089032002
		 -0.566006 -0.45244399 -0.55760598 -0.69596702 -0.95565403 -0.182135 -0.231416 -0.845182
		 0.51058 -0.15803599 -0.81957901 -0.089032002 -0.566006 -0.95565403 -0.182135 -0.231416
		 -0.28054199 -0.95506799 -0.095615998 -0.231038 -0.95082599 0.206278 -0.13846099 -0.888978
		 -0.436517 -0.231038 -0.95082599 0.206278 -0.28054199 -0.95506799 -0.095615998 -0.76573801
		 -0.63183898 -0.120104 0.56256098 0.82099801 -0.097407997 0.453996 0.88384801 0.112699
		 0.71498698 0.59684998 0.36409399 0.453996 0.88384801 0.112699 0.56256098 0.82099801
		 -0.097407997 -0.39027101 0.744753 -0.54132301 0.090582997 0.944139 0.316852 -0.473887
		 0.81920302 0.32301399 -0.40371901 0.652987 0.64079499 -0.40371901 0.652987 0.64079499
		 -0.473887 0.81920302 0.32301399 -0.65907103 0.66060501 0.35948101 0.55081999 -0.024436999
		 0.83426601 0.67897397 -0.654706 0.33219501 0.68346101 0.080876999 0.72549301 0.68346101
		 0.080876999 0.72549301 0.085486002 0.43039501 0.89858299 0.55081999 -0.024436999
		 0.83426601 -0.170992 -0.030494999 -0.98479998 0.32916999 0.27494201 -0.90335703 -0.064664997
		 -0.49607 -0.86587101 -0.064664997 -0.49607 -0.86587101 0.32916999 0.27494201 -0.90335703
		 0.85917503 -0.25389001 -0.44424999 0.160147 -0.108259 -0.981139 -0.41124901 -0.0076870001
		 -0.91149098 0.146686 -0.50171 -0.85250801 -0.136271 0.017374 -0.99051899 0.146686
		 -0.50171 -0.85250801 -0.41124901 -0.0076870001 -0.91149098 0.32857201 0.775222 0.53951001
		 0.425295 0.494279 -0.75816399 -0.196154 0.85968798 -0.47165701 -0.810233 -0.58321702
		 0.058139 -0.172148 -0.80066001 -0.57385498 -0.33312199 -0.71815002 -0.61097401 -0.83816397
		 -0.32738301 -0.43623599 -0.172148 -0.80066001 -0.57385498 -0.810233 -0.58321702 0.058139
		 -0.26795 -0.90443802 -0.331956 0.33227399 -0.88055098 -0.33797199 0.0049149999 -0.97793698
		 0.20884 0.021002 0.272576 -0.961905 0.160147 -0.108259 -0.981139 0.328392 -0.090902001
		 -0.940157 -0.41124901 -0.0076870001 -0.91149098 0.160147 -0.108259 -0.981139 0.021002
		 0.272576 -0.961905 -0.53303403 -0.84398901 0.059643 -0.52559799 -0.79729199 -0.29676899
		 0.26395401 -0.915811 -0.30268601 -0.111971 -0.84021997 0.53056002 -0.53303403 -0.84398901
		 0.059643 0.26395401 -0.915811 -0.30268601 0.72833902 0.42517099 0.53735602 0.32857201
		 0.775222 0.53951001 0.085486002 0.43039501 0.89858299 0.72833902 0.42517099 0.53735602
		 0.425295 0.494279 -0.75816399 0.32857201 0.775222 0.53951001 -0.67596501 0.051293999
		 -0.73514599 -0.362901 -0.267849 -0.89250201 -0.84525698 -0.48060501 -0.23358101 0.62204403
		 -0.039535999 -0.78198397 0.92978197 0.135708 -0.342181 0.73459202 -0.42489201 -0.52899998
		 0.62204403 -0.039535999 -0.78198397 0.62379301 0.066841997 -0.77872598 0.92978197
		 0.135708 -0.342181 0.805628 0.26028001 0.53218102 0.25600401 0.79727799 0.54663497
		 0.62816799 0.77472299 -0.072182 -0.023026001 0.070653997 0.997235 0.25600401 0.79727799
		 0.54663497 0.805628 0.26028001 0.53218102 0.098699003 -0.67433202 -0.73180199 -0.13846099
		 -0.888978 -0.436517 -0.231038 -0.95082599 0.206278 0.046627 -0.41693801 -0.90773797
		 0.21336401 -0.0058360002 -0.976955 0.69269502 -0.71926099 -0.053268 -0.61525297 0.471775
		 -0.63157898 0.21336401 -0.0058360002 -0.976955 0.046627 -0.41693801 -0.90773797 -0.151109
		 -0.900653 0.40741801 -0.33586401 -0.112604 0.93515497 -0.996387 0.0053889998 0.084757
		 -0.151109 -0.900653 0.40741801 0.62776399 -0.25184 0.73653901 -0.33586401 -0.112604
		 0.93515497 -0.61383498 -0.73713398 -0.28255999 -0.36818799 -0.83504701 -0.40882 0.35087901
		 -0.91783297 0.185652 0.62924802 -0.65085298 -0.42478001 0.35087901 -0.91783297 0.185652;
	setAttr ".n[3320:3485]" -type "float3"  -0.36818799 -0.83504701 -0.40882 0.038047999
		 0.97242802 -0.23007999 -0.62193698 0.688555 -0.372942 -0.055744 -0.2448 -0.96797001
		 -0.415373 -0.57183301 -0.70744002 -0.0081120003 -0.306777 -0.951747 0.43154201 -0.44889501
		 -0.78247303 0.146357 -0.69263202 -0.70628601 0.82648098 -0.228035 -0.51471198 0.437121
		 -0.26109001 -0.86067301 0.77169597 0.39188099 -0.50091398 -0.71300101 0.14427701
		 -0.68615901 0.347128 0.901492 -0.25848401 0.77169597 0.39188099 -0.50091398 0.347128
		 0.901492 -0.25848401 0.087782003 0.824058 0.55966401 0.54244798 0.56773198 0.61921799
		 0.395776 0.81764299 0.418116 0.75108802 -0.085378997 0.65465802 0.54244798 0.56773198
		 0.61921799 0.62755698 0.741018 -0.238884 0.395776 0.81764299 0.418116 0.467329 -0.457454
		 -0.75653201 0.768116 -0.072908998 -0.63614702 0.213991 -0.37671 -0.90127498 -0.013611
		 -0.777035 -0.62931001 0.51277798 -0.85824502 0.021757999 0.139432 -0.97512698 0.17229401
		 -0.082713 0.59133899 -0.80216998 -0.61525297 0.471775 -0.63157898 -0.061666001 0.887963
		 0.45576301 -0.082713 0.59133899 -0.80216998 0.21336401 -0.0058360002 -0.976955 -0.61525297
		 0.471775 -0.63157898 -0.99681902 -0.020471999 0.077024996 -0.82674301 -0.17679401
		 0.534078 -0.76573801 -0.63183898 -0.120104 -0.82674301 -0.17679401 0.534078 -0.99681902
		 -0.020471999 0.077024996 -0.88908798 -0.35642901 0.287195 0.226271 0.829561 -0.51051903
		 0.57528502 0.371016 -0.72896802 -0.13547 0.48409599 -0.86446398 0.50266898 0.80980301
		 0.302562 0.57528502 0.371016 -0.72896802 0.226271 0.829561 -0.51051903 -0.935534
		 0.35312 -0.0090539996 -0.67259198 0.65831298 -0.33800101 -0.60161698 0.082217999
		 -0.79454201 -0.95825797 0.168722 0.230813 -0.935534 0.35312 -0.0090539996 -0.74444699
		 -0.41721001 -0.521281 -0.89235997 -0.195418 -0.40682301 -0.83063102 0.020745 -0.55643702
		 -0.94306302 0.092382997 0.31952801 -0.94306302 0.092382997 0.31952801 -0.83063102
		 0.020745 -0.55643702 -0.83243603 -0.080541998 -0.54823703 0.060261 -0.16693901 -0.984124
		 -0.74444699 -0.41721001 -0.521281 -0.60161698 0.082217999 -0.79454201 -0.74444699
		 -0.41721001 -0.521281 -0.935534 0.35312 -0.0090539996 -0.60161698 0.082217999 -0.79454201
		 -0.98006803 0.168286 0.105579 -0.78996199 0.160675 -0.59173 -0.91334301 -0.27866301
		 -0.296902 -0.60893899 -0.54066902 0.580405 -0.98006803 0.168286 0.105579 -0.91334301
		 -0.27866301 -0.296902 0.50794798 0.30621499 -0.80512202 0.108753 0.97588003 -0.18929
		 0.038047999 0.97242802 -0.23007999 0.50794798 0.30621499 -0.80512202 0.038047999
		 0.97242802 -0.23007999 0.41802499 -0.034327999 -0.90778702 -0.31030399 0.37026399
		 -0.87556601 -0.066552997 0.78864503 -0.61123598 -0.047270998 0.153749 -0.98697901
		 -0.31030399 0.37026399 -0.87556601 -0.77815998 0.42368001 -0.46363899 -0.066552997
		 0.78864503 -0.61123598 0.406955 -0.68561602 -0.60358799 0.58128899 -0.74053502 -0.33721101
		 0.94825798 -0.297622 0.110577 0.58128899 -0.74053502 -0.33721101 0.139432 -0.97512698
		 0.17229401 0.94825798 -0.297622 0.110577 0.56153101 -0.193279 -0.80456603 0.98742902
		 -0.14821599 0.054923002 0.584961 -0.299918 -0.75357097 0.56153101 -0.193279 -0.80456603
		 0.64331102 -0.121234 -0.75594503 0.98742902 -0.14821599 0.054923002 -0.932567 0.28227499
		 -0.225032 -0.79501998 0.081032999 -0.601147 -0.95332301 -0.289141 -0.087026 -0.22139101
		 0.90810102 -0.355441 -0.79501998 0.081032999 -0.601147 -0.932567 0.28227499 -0.225032
		 -0.87018698 0.39941901 0.28851199 -0.62614 0.243672 0.74065697 -0.143093 0.91753399
		 0.37101999 0.217731 0.65442401 -0.72410101 -0.010101 0.999749 -0.019991999 0.151886
		 0.98495197 0.082460999 0.56435502 0.74365199 -0.358448 0.217731 0.65442401 -0.72410101
		 0.151886 0.98495197 0.082460999 0.68440098 -0.0083699999 -0.72905803 0.95441401 -0.230133
		 -0.19008601 0.93875003 -0.25703001 -0.22952799 0.95441401 -0.230133 -0.19008601 0.60747302
		 -0.70617801 -0.36371601 0.93875003 -0.25703001 -0.22952799 -0.81660402 0.131915 0.56192303
		 -0.47828901 0.87814301 0.010247 -0.699 -0.028553 0.71455097 -0.80548799 -0.460922
		 0.37247801 -0.81660402 0.131915 0.56192303 -0.699 -0.028553 0.71455097 -0.20533299
		 0.90364301 -0.375855 -0.40935099 0.43672299 -0.80106503 -0.67827499 0.54634398 -0.491377
		 -0.76842803 0.057151001 0.63737899 -0.82214803 0.21079101 0.52881002 -0.82674301
		 -0.17679401 0.534078 -0.76842803 0.057151001 0.63737899 -0.675107 0.037643 0.73675901
		 -0.82214803 0.21079101 0.52881002 0.64420998 -0.147337 -0.75052297 0.82885998 -0.048464
		 0.55735302 0.88811702 -0.45924601 0.018475 0.100645 -0.88274997 0.45893699 0.114592
		 -0.56502801 -0.81707501 0.88811702 -0.45924601 0.018475 0.341768 0.025086001 -0.93945003
		 0.26622701 0.210343 -0.94068003 -0.445209 0.86085099 -0.24642301 0.341768 0.025086001
		 -0.93945003 0.118583 -0.66543698 -0.736974 0.26622701 0.210343 -0.94068003 0.347267
		 -0.41958201 -0.838664 0.268244 -0.268803 -0.925089 0.79684502 0.073505998 -0.59969503
		 0.82648098 -0.228035 -0.51471198 0.97100902 0.148783 0.187096 0.88982499 0.115509
		 -0.441439 0.88982499 0.115509 -0.441439 0.437121 -0.26109001 -0.86067301 0.82648098
		 -0.228035 -0.51471198 -0.60139 0.79462498 -0.083072998 -0.65945399 0.56060803 0.50083798
		 -0.38655901 0.92021799 -0.061411001 -0.60139 0.79462498 -0.083072998 -0.88385701
		 0.391974 0.25525099 -0.65945399 0.56060803 0.50083798 -0.32253999 0.938878 -0.120316
		 -0.85549998 0.51778299 0.0044860002 0.155854 0.796161 0.58466798 -0.32253999 0.938878
		 -0.120316 -0.55503601 0.34820399 -0.75543898 -0.85549998 0.51778299 0.0044860002
		 0.114592 -0.56502801 -0.81707501 -0.275336 -0.24639 -0.92923802 0.64420998 -0.147337
		 -0.75052297;
	setAttr ".n[3486:3651]" -type "float3"  0.64420998 -0.147337 -0.75052297 0.88811702
		 -0.45924601 0.018475 0.114592 -0.56502801 -0.81707501 -0.81660402 0.131915 0.56192303
		 -0.445209 0.86085099 -0.24642301 -0.47828901 0.87814301 0.010247 0.26622701 0.210343
		 -0.94068003 -0.47828901 0.87814301 0.010247 -0.445209 0.86085099 -0.24642301 -0.024843
		 -0.33211201 -0.942913 0.46195701 0.379509 -0.80160397 0.268244 -0.268803 -0.925089
		 0.268244 -0.268803 -0.925089 0.347267 -0.41958201 -0.838664 -0.024843 -0.33211201
		 -0.942913 0.155854 0.796161 0.58466798 -0.35472301 0.63867301 0.68283802 0.72647297
		 0.52686799 0.44118801 -0.24961101 0.449595 -0.857647 0.31732899 0.771415 -0.55156302
		 0.56553602 0.28396299 -0.77429497 0.31732899 0.771415 -0.55156302 0.95096999 0.098518997
		 -0.293172 0.56553602 0.28396299 -0.77429497 0.33657601 -0.84634799 -0.41281 0.024080001
		 -0.94437301 -0.32799301 0.87476099 -0.443813 0.194484 0.87476099 -0.443813 0.194484
		 0.51277798 -0.85824502 0.021757999 0.33657601 -0.84634799 -0.41281 0.120438 -0.95517498
		 -0.27043599 -0.416338 -0.90915197 0.010291 -0.170992 -0.030494999 -0.98479998 -0.416338
		 -0.90915197 0.010291 0.120438 -0.95517498 -0.27043599 0.405283 -0.55392498 0.72726399
		 -0.47192001 0.87953597 -0.060894001 -0.129813 0.83267999 -0.53832299 -0.33270299
		 0.063266002 -0.940907 -0.129813 0.83267999 -0.53832299 -0.47192001 0.87953597 -0.060894001
		 -0.047917999 0.891087 0.451296 0.64331102 -0.121234 -0.75594503 0.41563001 0.90354598
		 -0.104196 0.96962601 0.18887199 -0.15540899 0.98742902 -0.14821599 0.054923002 0.64331102
		 -0.121234 -0.75594503 0.96962601 0.18887199 -0.15540899 0.72572303 -0.48396099 -0.488987
		 0.97018403 0.219539 0.10269 0.76068801 -0.46332201 0.45462701 0.55185097 0.28157601
		 0.78496897 0.76068801 -0.46332201 0.45462701 0.97018403 0.219539 0.10269 0.92928898
		 -0.191627 -0.315754 0.78035498 0.44073999 -0.443616 0.94425899 0.32550201 0.049224999
		 0.92928898 -0.191627 -0.315754 0.94425899 0.32550201 0.049224999 0.64801103 -0.75788403
		 0.075461 0.23438101 0.95661002 -0.173099 0.19782101 0.97359997 0.113886 0.75857502
		 0.237964 -0.60657799 0.19782101 0.97359997 0.113886 0.23438101 0.95661002 -0.173099
		 -0.31325001 0.219493 0.92395699 0.865107 -0.014376 -0.50138199 0.058419 0.86167699
		 -0.50408298 0.83332098 0.51414597 0.203051 0.66104901 -0.53268898 0.52844697 0.024080001
		 -0.94437301 -0.32799301 0.56749803 -0.81992298 0.075315997 0.72807801 -0.37918299
		 -0.57107198 0.86052102 0.47275001 -0.189766 0.66965598 -0.61405402 0.41773 0.72807801
		 -0.37918299 -0.57107198 0.097228996 0.28351599 -0.95402598 0.86052102 0.47275001
		 -0.189766 0.83332098 0.51414597 0.203051 0.66104901 -0.53268898 0.52844697 0.56749803
		 -0.81992298 0.075315997 -0.26438001 -0.911834 -0.314105 0.215312 -0.64880103 -0.72986197
		 0.47559699 -0.87582898 0.082038 0.47559699 -0.87582898 0.082038 0.079790004 -0.54956198
		 0.83163399 -0.26438001 -0.911834 -0.314105 0.489043 -0.227807 0.841986 -0.26606101
		 0.31906301 0.909621 -0.19173101 -0.69435799 0.693618 0.42482299 -0.60601801 0.672508
		 0.489043 -0.227807 0.841986 -0.19173101 -0.69435799 0.693618 -0.918733 -0.39139399
		 0.052347999 -0.33312199 -0.71815002 -0.61097401 -0.26438001 -0.911834 -0.314105 -0.33312199
		 -0.71815002 -0.61097401 -0.94257301 -0.163072 0.29148501 -0.810233 -0.58321702 0.058139
		 -0.095522001 -0.247179 -0.96425003 0.865107 -0.014376 -0.50138199 0.56749803 -0.81992298
		 0.075315997 0.83332098 0.51414597 0.203051 0.56749803 -0.81992298 0.075315997 0.865107
		 -0.014376 -0.50138199 0.78856999 0.57753003 0.211225 0.681243 0.61791801 0.392537
		 0.81298798 0.150903 0.56238598 0.013752 0.44672599 0.89456499 0.81298798 0.150903
		 0.56238598 0.681243 0.61791801 0.392537 0.285649 0.49456599 -0.82085901 -0.066552997
		 0.78864503 -0.61123598 0.165406 0.85747999 -0.48720399 0.62970799 0.61077303 -0.48002499
		 0.285649 0.49456599 -0.82085901 0.165406 0.85747999 -0.48720399 -0.83272201 0.041189998
		 0.55215698 -0.94257301 -0.163072 0.29148501 -0.918733 -0.39139399 0.052347999 -0.94257301
		 -0.163072 0.29148501 -0.33312199 -0.71815002 -0.61097401 -0.918733 -0.39139399 0.052347999
		 -0.041536 -0.41522199 -0.90877199 0.56553602 0.28396299 -0.77429497 0.560965 -0.45031899
		 -0.69464397 -0.041536 -0.41522199 -0.90877199 0.560965 -0.45031899 -0.69464397 -0.32258499
		 -0.83261597 -0.45021099 0.155899 0.14296401 0.97737199 -0.62614 0.243672 0.74065697
		 -0.33874199 0.122805 0.93283099 -0.33874199 0.122805 0.93283099 0.88051897 0.35189301
		 0.31758201 0.155899 0.14296401 0.97737199 -0.93619698 0.311582 0.162643 -0.96681303
		 -0.112155 -0.22955 -0.95252699 0.109796 0.28396699 -0.745588 0.40545201 0.52887303
		 -0.93619698 0.311582 0.162643 -0.95252699 0.109796 0.28396699 -0.28782001 0.119455
		 -0.95020503 -0.084137999 0.78693497 -0.61127299 0.32838401 0.143925 -0.93351501 -0.86857998
		 0.381028 -0.31683901 -0.084137999 0.78693497 -0.61127299 -0.28782001 0.119455 -0.95020503
		 0.060261 -0.16693901 -0.984124 0.66727102 0.21072499 -0.71438402 0.31838101 -0.71641099
		 -0.62079698 -0.74444699 -0.41721001 -0.521281 0.060261 -0.16693901 -0.984124 0.31838101
		 -0.71641099 -0.62079698 -0.78996199 0.160675 -0.59173 -0.67454499 0.39750099 -0.622078
		 -0.88815302 -0.265643 -0.374991 -0.44472101 0.81862599 -0.36342001 -0.55141002 0.70621997
		 -0.44407299 -0.78996199 0.160675 -0.59173 0.67944801 0.71369702 -0.170256 0.016960001
		 0.83885902 -0.54408401 0.000374 0.999726 -0.023419 0.016960001 0.83885902 -0.54408401
		 -0.188675 0.95245701 -0.239224 0.000374 0.999726 -0.023419 0.220752 0.36152601 0.90585202;
	setAttr ".n[3652:3817]" -type "float3"  -0.102217 0.64517701 0.757164 -0.101539
		 0.237988 0.96594602 0.189054 -0.28040299 -0.94108099 0.118583 -0.66543698 -0.736974
		 0.328392 -0.090902001 -0.940157 -0.95825797 0.168722 0.230813 0.45969099 0.641164
		 0.61448503 0.071889997 0.98770303 0.138834 0.45969099 0.641164 0.61448503 0.93722802
		 0.140377 -0.319215 0.071889997 0.98770303 0.138834 -0.41005999 0.42267099 0.80820799
		 -0.71761298 0.144426 0.68130302 0.055447999 0.73742902 0.673145 -0.41005999 0.42267099
		 0.80820799 0.055447999 0.73742902 0.673145 0.013694 0.969244 0.245719 -0.78996199
		 0.160675 -0.59173 -0.55141002 0.70621997 -0.44407299 -0.67454499 0.39750099 -0.622078
		 -0.67454499 0.39750099 -0.622078 -0.55141002 0.70621997 -0.44407299 -0.081519 0.75663102
		 -0.64873999 0.98437101 0.00078900001 -0.176108 0.81543499 -0.198916 0.54359698 0.84160203
		 -0.50304502 -0.19660001 0.56761402 0.34149501 -0.74913001 0.53238499 0.61018902 -0.58671498
		 0.83346701 0.201134 -0.51466203 -0.487795 0.309829 0.81612599 -0.61890501 -0.364999
		 0.69550902 -0.61411101 0.41225299 0.67298901 -0.487795 0.309829 0.81612599 -0.61411101
		 0.41225299 0.67298901 0.089452997 0.99439502 0.056366999 0.63095301 -0.105981 -0.76854801
		 0.29974601 0.26950699 -0.91516 0.73388201 0.178302 -0.65545797 0.63095301 -0.105981
		 -0.76854801 0.73388201 0.178302 -0.65545797 0.89121097 -0.40284199 -0.208473 0.071889997
		 0.98770303 0.138834 -0.119741 0.65114301 -0.74945003 -0.67259198 0.65831298 -0.33800101
		 -0.60161698 0.082217999 -0.79454201 -0.67259198 0.65831298 -0.33800101 -0.119741
		 0.65114301 -0.74945003 -0.53435099 0.80690902 -0.251728 -0.644373 0.62426001 0.44168201
		 -0.95079499 0.18175 -0.25091001 -0.644373 0.62426001 0.44168201 -0.97229999 0.211913
		 -0.098617002 -0.95079499 0.18175 -0.25091001 -0.94647503 -0.24011999 0.215701 -0.83816397
		 -0.32738301 -0.43623599 -0.810233 -0.58321702 0.058139 -0.89617401 -0.096988 0.43297401
		 -0.83816397 -0.32738301 -0.43623599 -0.94647503 -0.24011999 0.215701 -0.60681701
		 -0.508169 -0.61117703 0.448084 -0.46004301 -0.76653898 0.518489 -0.65394598 -0.55093002
		 0.448084 -0.46004301 -0.76653898 0.32147601 0.22695699 -0.91931701 0.518489 -0.65394598
		 -0.55093002 -0.19676501 -0.46788901 0.86160499 -0.75633502 -0.64183003 0.126535 -0.33366701
		 -0.867302 0.369396 -0.75633502 -0.64183003 0.126535 -0.23844101 -0.61598802 -0.75080299
		 -0.33366701 -0.867302 0.369396 -0.61679202 -0.77951002 0.109236 -0.242532 -0.966371
		 -0.085473999 0.110514 -0.58649099 0.80238098 0.268244 -0.268803 -0.925089 0.46195701
		 0.379509 -0.80160397 0.63575101 0.48841801 -0.59772003 0.63575101 0.48841801 -0.59772003
		 0.46195701 0.379509 -0.80160397 0.62816799 0.77472299 -0.072182 -0.845182 0.51058
		 -0.15803599 -0.697384 0.58237898 0.41771999 -0.10283 0.99446398 -0.021635 -0.697384
		 0.58237898 0.41771999 -0.845182 0.51058 -0.15803599 -0.95565403 -0.182135 -0.231416
		 0.292941 0.047602002 0.95494503 -0.66869903 0.029448999 0.74295002 -0.152744 -0.353798
		 0.92276502 -0.152744 -0.353798 0.92276502 0.34718901 -0.66821897 0.65798402 0.292941
		 0.047602002 0.95494503 0.920973 -0.018046999 -0.38920799 0.90773201 0.396249 0.137876
		 0.821311 -0.33860099 0.459126 0.920973 -0.018046999 -0.38920799 0.50556701 0.457398
		 -0.73156601 0.90773201 0.396249 0.137876 -0.133523 -0.84594399 -0.516285 0.741781
		 -0.67063999 0.00189 0.215312 -0.64880103 -0.72986197 0.215312 -0.64880103 -0.72986197
		 -0.73628199 -0.075327002 -0.67246902 -0.133523 -0.84594399 -0.516285 -0.839809 0.32659
		 0.433658 -0.77703398 0.214641 0.59173203 -0.88442898 -0.180472 0.43036699 -0.839809
		 0.32659 0.433658 -0.88442898 -0.180472 0.43036699 -0.93315202 -0.229349 0.276815
		 0.50556701 0.457398 -0.73156601 0.60904598 0.77129698 -0.184834 0.90773201 0.396249
		 0.137876 0.60904598 0.77129698 -0.184834 0.50556701 0.457398 -0.73156601 -0.068429001
		 0.997648 -0.0040899999 -0.488516 0.105441 0.86616099 -0.090682 0.77080798 0.63058001
		 -0.38985899 0.72837502 0.56345397 -0.488516 0.105441 0.86616099 -0.38985899 0.72837502
		 0.56345397 -0.98006803 0.168286 0.105579 0.81775498 0.045818001 0.57374001 0.87476099
		 -0.443813 0.194484 0.66104901 -0.53268898 0.52844697 0.42482299 -0.60601801 0.672508
		 0.303341 0.0067289998 0.95285797 -0.27743399 0.058747001 0.958947 0.42169899 0.891137
		 0.167464 -0.62193698 0.688555 -0.372942 0.038047999 0.97242802 -0.23007999 0.42169899
		 0.891137 0.167464 0.038047999 0.97242802 -0.23007999 -0.079370998 0.96711397 0.241642
		 -0.65657097 0.40683001 0.63514102 -0.602911 0.75746101 0.25050101 -0.839809 0.32659
		 0.433658 0.139432 -0.97512698 0.17229401 0.58128899 -0.74053502 -0.33721101 -0.129272
		 -0.85779202 -0.49747601 0.118583 -0.66543698 -0.736974 0.341768 0.025086001 -0.93945003
		 0.328392 -0.090902001 -0.940157 0.40814501 0.58739603 -0.69884503 -0.143093 0.91753399
		 0.37101999 0.650451 0.64988399 0.39314601 0.41563001 0.90354598 -0.104196 -0.117119
		 0.41622099 -0.90168899 -0.75637698 0.64602602 0.102686 0.52987897 -0.509938 0.67763698
		 0.970783 -0.036302999 0.237197 0.98255599 0.15549 0.102011 0.81090897 -0.40492901
		 0.42244399 -0.52039802 0.82676202 0.213662 -0.19639599 0.767304 0.61047 0.000374
		 0.999726 -0.023419 0.016960001 0.83885902 -0.54408401 0.024777001 0.554896 -0.83155
		 -0.34504101 0.37156501 -0.86190802 -0.188675 0.95245701 -0.239224 -0.34504101 0.37156501
		 -0.86190802 0.024777001 0.554896 -0.83155 -0.170992 -0.030494999 -0.98479998 0.118583
		 -0.66543698 -0.736974 -0.52559799 -0.79729199 -0.29676899 -0.112989 -0.83851302 -0.53303701;
	setAttr ".n[3818:3826]" -type "float3"  0.143666 0.72560102 0.67295098 -0.26606101
		 0.31906301 0.909621 0.25354499 0.67281598 0.69500601 0.66661501 0.055656001 0.743321
		 0.59785098 -0.29791701 0.74418998 0.63210303 -0.59561503 0.49566999 -0.65700001 -0.459939
		 0.59733403 -0.93315202 -0.229349 0.276815 -0.69235802 -0.47365001 0.54433101;
	setAttr -s 1274 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 5
		mu 0 3 3 4 5
		f 3 6 7 8
		mu 0 3 6 7 8
		f 3 9 10 -8
		mu 0 3 7 9 8
		f 3 11 12 13
		mu 0 3 10 11 12
		f 3 14 15 16
		mu 0 3 13 14 15
		f 3 17 18 19
		mu 0 3 13 16 17
		f 3 20 21 22
		mu 0 3 18 19 20
		f 3 23 24 25
		mu 0 3 21 22 23
		f 3 26 27 -16
		mu 0 3 14 24 15
		f 3 28 29 30
		mu 0 3 25 26 27
		f 3 31 32 33
		mu 0 3 28 23 29
		f 3 34 35 36
		mu 0 3 30 31 32
		f 3 37 38 39
		mu 0 3 33 34 12
		f 3 40 41 42
		mu 0 3 35 36 37
		f 3 43 44 45
		mu 0 3 38 39 40
		f 3 46 47 48
		mu 0 3 41 42 30
		f 3 49 50 51
		mu 0 3 43 44 45
		f 3 52 53 54
		mu 0 3 46 47 48
		f 3 55 56 57
		mu 0 3 49 50 51
		f 3 58 59 60
		mu 0 3 52 53 54
		f 3 61 62 63
		mu 0 3 55 56 57
		f 3 64 65 66
		mu 0 3 58 59 60
		f 3 67 68 69
		mu 0 3 61 62 63
		f 3 70 71 72
		mu 0 3 64 65 66
		f 3 73 74 75
		mu 0 3 67 68 69
		f 3 76 77 78
		mu 0 3 70 71 72
		f 3 79 80 81
		mu 0 3 73 74 75
		f 3 82 83 84
		mu 0 3 76 77 78
		f 3 85 86 87
		mu 0 3 79 80 81
		f 3 88 89 90
		mu 0 3 82 83 84
		f 3 91 92 93
		mu 0 3 85 86 87
		f 3 94 95 96
		mu 0 3 88 89 90
		f 3 97 98 99
		mu 0 3 91 87 92
		f 3 100 101 102
		mu 0 3 93 94 95
		f 3 103 104 105
		mu 0 3 96 97 98
		f 3 106 -104 107
		mu 0 3 99 97 96
		f 3 108 109 110
		mu 0 3 100 101 102
		f 3 111 112 113
		mu 0 3 103 104 105
		f 3 114 115 116
		mu 0 3 95 106 107
		f 3 117 118 119
		mu 0 3 108 109 110
		f 3 120 -118 121
		mu 0 3 111 109 108
		f 3 122 123 124
		mu 0 3 112 113 114
		f 3 125 126 127
		mu 0 3 115 116 117
		f 3 128 129 130
		mu 0 3 118 119 120
		f 3 131 132 133
		mu 0 3 121 122 117
		f 3 134 135 136
		mu 0 3 123 124 125
		f 3 137 138 139
		mu 0 3 126 127 128
		f 3 140 141 142
		mu 0 3 129 130 131
		f 3 143 144 145
		mu 0 3 132 133 134
		f 3 146 147 148
		mu 0 3 135 136 137
		f 3 149 150 151
		mu 0 3 138 129 139
		f 3 152 153 154
		mu 0 3 140 141 142
		f 3 155 156 157
		mu 0 3 133 143 144
		f 3 158 159 160
		mu 0 3 145 146 147
		f 3 161 162 163
		mu 0 3 148 149 150
		f 3 164 165 166
		mu 0 3 151 152 153
		f 3 167 168 169
		mu 0 3 145 154 155
		f 3 170 171 172
		mu 0 3 156 157 158
		f 3 173 174 175
		mu 0 3 159 160 161
		f 3 176 177 178
		mu 0 3 162 163 164
		f 3 179 -14 180
		mu 0 3 165 10 12
		f 3 181 182 183
		mu 0 3 166 167 168
		f 3 184 185 186
		mu 0 3 169 170 171
		f 3 187 188 189
		mu 0 3 172 173 174
		f 3 190 191 192
		mu 0 3 175 176 177
		f 3 -5 193 194
		mu 0 3 5 4 178
		f 3 195 196 197
		mu 0 3 179 180 181
		f 3 -187 198 199
		mu 0 3 169 171 182
		f 3 200 201 202
		mu 0 3 183 184 185
		f 3 -48 203 204
		mu 0 3 30 42 186
		f 3 205 206 207
		mu 0 3 187 188 189
		f 3 208 209 210
		mu 0 3 190 191 192
		f 3 211 212 213
		mu 0 3 183 193 194
		f 3 -193 214 215
		mu 0 3 175 177 195
		f 3 216 -21 217
		mu 0 3 41 19 18
		f 3 218 219 220
		mu 0 3 196 197 198
		f 3 221 222 223
		mu 0 3 43 199 200
		f 3 -31 224 225
		mu 0 3 25 27 196
		f 3 226 227 228
		mu 0 3 201 24 202
		f 3 229 230 231
		mu 0 3 203 204 205
		f 3 232 233 234
		mu 0 3 206 207 208
		f 3 235 236 237
		mu 0 3 209 210 4
		f 3 238 239 240
		mu 0 3 211 212 213
		f 3 241 242 243
		mu 0 3 214 215 216
		f 3 244 245 246
		mu 0 3 48 217 218
		f 3 247 -218 -215
		mu 0 3 219 41 18
		f 3 248 249 250
		mu 0 3 28 220 221
		f 3 -250 251 252
		mu 0 3 222 223 224
		f 3 253 254 255
		mu 0 3 225 128 226
		f 3 256 257 258
		mu 0 3 227 228 229
		f 3 259 260 261
		mu 0 3 226 230 231
		f 3 262 263 264
		mu 0 3 104 232 233
		f 3 265 266 267
		mu 0 3 234 235 236
		f 3 -22 268 269
		mu 0 3 20 19 210
		f 3 -241 270 271
		mu 0 3 211 213 237
		f 3 272 273 274
		mu 0 3 237 238 239
		f 3 275 -45 276
		mu 0 3 240 40 39
		f 4 277 -30 278 279
		mu 0 4 241 27 26 242
		f 3 -41 280 281
		mu 0 3 36 35 243
		f 3 282 283 -239
		mu 0 3 211 244 212
		f 3 284 285 -38
		mu 0 3 33 245 34
		f 3 286 287 288
		mu 0 3 246 247 169
		f 3 -26 -32 289
		mu 0 3 21 23 28
		f 3 -282 290 291
		mu 0 3 36 243 244
		f 3 -287 292 293
		mu 0 3 247 246 10
		f 3 294 295 296
		mu 0 3 191 248 249
		f 3 -33 297 298
		mu 0 3 29 23 250
		f 3 299 -56 300
		mu 0 3 223 50 49
		f 3 301 302 303
		mu 0 3 251 252 253
		f 3 304 305 306
		mu 0 3 254 255 256
		f 3 -243 307 308
		mu 0 3 216 215 257
		f 3 309 310 311
		mu 0 3 258 259 260
		f 3 312 313 314
		mu 0 3 261 226 262
		f 3 315 -315 316
		mu 0 3 263 261 262
		f 3 317 318 319
		mu 0 3 264 265 266
		f 3 320 321 322
		mu 0 3 267 268 269
		f 3 323 324 325
		mu 0 3 270 271 185
		f 3 326 327 328
		mu 0 3 272 273 274
		f 3 -7 329 330
		mu 0 3 7 6 275
		f 3 -317 331 332
		mu 0 3 263 262 276
		f 3 -37 333 334
		mu 0 3 30 32 19
		f 3 -335 -217 -49
		mu 0 3 30 19 41
		f 3 335 336 337
		mu 0 3 277 278 279
		f 3 338 339 340
		mu 0 3 280 281 282
		f 3 341 342 343
		mu 0 3 46 283 284
		f 3 344 345 346
		mu 0 3 283 277 285
		f 3 347 348 349
		mu 0 3 286 287 288
		f 3 -336 350 351
		mu 0 3 278 277 218
		f 3 352 353 -342
		mu 0 3 46 289 283
		f 3 354 355 356
		mu 0 3 290 291 292
		f 3 357 358 359
		mu 0 3 293 294 295
		f 3 360 361 362
		mu 0 3 296 297 285
		f 3 363 364 -325
		mu 0 3 271 297 185
		f 3 365 366 367
		mu 0 3 292 298 299
		f 4 368 -237 369 370
		mu 0 4 300 4 210 301
		f 3 371 372 373
		mu 0 3 302 180 303
		f 3 374 375 -349
		mu 0 3 287 304 288
		f 3 376 377 378
		mu 0 3 305 306 294
		f 3 379 380 381
		mu 0 3 307 283 308
		f 3 382 -364 383
		mu 0 3 283 297 271
		f 3 384 -329 385
		mu 0 3 309 272 274
		f 3 386 387 388
		mu 0 3 310 311 312
		f 3 389 390 391
		mu 0 3 313 302 11
		f 3 392 -374 393
		mu 0 3 314 302 303
		f 3 394 -338 395
		mu 0 3 315 277 279
		f 3 -340 396 397
		mu 0 3 282 281 316
		f 3 398 399 400
		mu 0 3 317 318 319
		f 3 401 -401 402
		mu 0 3 320 317 319
		f 3 403 404 405
		mu 0 3 321 322 317
		f 3 406 407 408
		mu 0 3 323 324 325
		f 3 409 410 411
		mu 0 3 324 326 204
		f 3 412 413 414
		mu 0 3 327 328 329
		f 3 415 -358 416
		mu 0 3 330 294 293
		f 3 417 418 419
		mu 0 3 331 317 332
		f 3 420 421 422
		mu 0 3 333 334 335
		f 3 423 424 425
		mu 0 3 315 336 324
		f 3 -425 426 -410
		mu 0 3 324 336 326
		f 3 427 428 429
		mu 0 3 337 338 127
		f 3 430 431 432
		mu 0 3 338 228 339
		f 3 433 434 435
		mu 0 3 340 341 342
		f 3 436 437 438
		mu 0 3 343 344 345
		f 3 439 440 441
		mu 0 3 346 347 244
		f 3 442 443 444
		mu 0 3 348 349 213
		f 3 445 446 -375
		mu 0 3 287 350 304
		f 3 447 -152 448
		mu 0 3 351 138 139
		f 3 -406 -418 449
		mu 0 3 321 317 331
		f 3 450 451 452
		mu 0 3 331 352 353
		f 3 453 -115 454
		mu 0 3 354 106 95
		f 3 455 456 457
		mu 0 3 355 308 356
		f 3 458 459 460
		mu 0 3 357 358 42
		f 3 461 462 463
		mu 0 3 359 360 361
		f 3 464 465 466
		mu 0 3 362 363 360
		f 3 467 468 -195
		mu 0 3 364 365 366
		f 3 469 470 471
		mu 0 3 367 172 368
		f 3 472 473 -103
		mu 0 3 95 369 93
		f 3 -306 474 475
		mu 0 3 256 255 370
		f 3 476 477 478
		mu 0 3 371 175 203
		f 3 -477 479 -191
		mu 0 3 175 371 176
		f 3 480 481 482
		mu 0 3 372 373 374
		f 3 483 -86 484
		mu 0 3 335 80 79
		f 3 485 486 -434
		mu 0 3 340 343 341
		f 3 487 488 489
		mu 0 3 375 376 377
		f 3 490 491 492
		mu 0 3 378 379 359
		f 3 493 494 495
		mu 0 3 380 351 381
		f 3 496 497 498
		mu 0 3 381 382 383
		f 3 499 500 501
		mu 0 3 384 42 385
		f 3 502 -343 503
		mu 0 3 386 284 283
		f 3 504 505 506
		mu 0 3 387 388 389
		f 3 507 -235 508
		mu 0 3 390 206 208
		f 3 509 510 511
		mu 0 3 3 391 392
		f 3 512 513 514
		mu 0 3 393 219 394
		f 3 515 516 517
		mu 0 3 395 396 397
		f 3 -116 518 519
		mu 0 3 107 106 398
		f 3 520 521 522
		mu 0 3 399 400 401
		f 3 523 524 525
		mu 0 3 349 402 238
		f 3 526 527 528
		mu 0 3 403 312 404
		f 3 529 530 -453
		mu 0 3 353 405 331
		f 3 531 532 -66
		mu 0 3 59 406 60
		f 3 533 534 535
		mu 0 3 407 408 288
		f 3 536 537 538
		mu 0 3 409 295 410
		f 3 539 540 541
		mu 0 3 411 83 412
		f 3 542 543 544
		mu 0 3 413 414 415
		f 3 545 546 547
		mu 0 3 416 417 418
		f 3 -76 548 549
		mu 0 3 67 69 419
		f 3 550 -268 551
		mu 0 3 420 234 236
		f 3 552 553 554
		mu 0 3 421 422 423
		f 3 -498 555 556
		mu 0 3 383 382 305
		f 3 557 558 559
		mu 0 3 424 425 330
		f 3 560 561 562
		mu 0 3 426 337 427
		f 3 563 564 565
		mu 0 3 428 429 430
		f 3 -420 566 -451
		mu 0 3 331 332 352
		f 3 -543 567 568
		mu 0 3 414 413 431
		f 3 569 570 571
		mu 0 3 432 433 434
		f 3 572 573 574
		mu 0 3 406 435 68
		f 3 575 -198 576
		mu 0 3 248 179 181
		f 3 577 -296 -577
		mu 0 3 181 249 248
		f 3 -184 578 579
		mu 0 3 166 168 32
		f 3 -579 -40 580
		mu 0 3 436 33 12
		f 3 581 -560 -417
		mu 0 3 293 424 330
		f 3 582 -539 583
		mu 0 3 329 409 410
		f 3 584 585 586
		mu 0 3 417 437 438
		f 3 587 588 589
		mu 0 3 400 439 440
		f 3 590 -522 591
		mu 0 3 441 401 400
		f 3 592 -3 593
		mu 0 3 442 0 2
		f 3 594 595 596
		mu 0 3 442 443 444
		f 3 597 598 599
		mu 0 3 445 437 60
		f 3 600 601 602
		mu 0 3 445 446 447
		f 3 603 -484 604
		mu 0 3 448 80 335
		f 3 605 606 607
		mu 0 3 449 450 451
		f 3 608 609 610
		mu 0 3 9 452 453
		f 3 611 612 -610
		mu 0 3 452 257 453
		f 3 -188 613 614
		mu 0 3 173 172 443
		f 3 615 616 -470
		mu 0 3 367 454 172
		f 3 617 618 -141
		mu 0 3 129 455 130
		f 3 619 -367 620
		mu 0 3 456 299 298
		f 3 -288 621 622
		mu 0 3 169 247 457
		f 3 623 -185 624
		mu 0 3 458 170 169
		f 3 625 -482 626
		mu 0 3 101 374 373
		f 3 627 628 629
		mu 0 3 459 460 450
		f 3 630 631 632
		mu 0 3 461 462 463
		f 3 -166 633 634
		mu 0 3 153 152 464
		f 3 635 636 637
		mu 0 3 465 98 466
		f 3 638 639 640
		mu 0 3 467 466 468
		f 3 641 -341 642
		mu 0 3 469 280 282
		f 3 643 644 -213
		mu 0 3 193 282 194
		f 3 645 646 647
		mu 0 3 470 471 468
		f 3 648 -624 649
		mu 0 3 472 170 458
		f 3 650 651 652
		mu 0 3 473 165 245
		f 3 653 654 655
		mu 0 3 474 475 476
		f 3 656 657 658
		mu 0 3 477 478 479
		f 3 659 -529 660
		mu 0 3 480 403 404
		f 3 661 662 663
		mu 0 3 481 310 482
		f 3 664 665 666
		mu 0 3 483 325 484
		f 3 -339 667 668
		mu 0 3 281 280 485
		f 3 669 670 671
		mu 0 3 486 487 488
		f 3 672 673 -634
		mu 0 3 152 489 464
		f 3 -658 674 675
		mu 0 3 479 478 88
		f 3 -676 676 677
		mu 0 3 479 88 490
		f 3 678 679 680
		mu 0 3 491 492 493
		f 3 681 682 683
		mu 0 3 493 494 495
		f 3 -638 684 685
		mu 0 3 465 466 496
		f 3 686 -639 687
		mu 0 3 497 466 467
		f 3 688 -206 689
		mu 0 3 355 188 187
		f 3 -459 690 691
		mu 0 3 358 357 498
		f 3 -316 692 693
		mu 0 3 261 263 499
		f 3 694 695 -333
		mu 0 3 276 500 263
		f 3 696 697 -476
		mu 0 3 370 105 256
		f 3 -257 698 -432
		mu 0 3 228 227 339
		f 3 699 700 701
		mu 0 3 501 502 65
		f 3 702 703 704
		mu 0 3 503 504 355
		f 3 -705 705 706
		mu 0 3 503 355 505
		f 3 -97 707 708
		mu 0 3 88 90 506
		f 3 709 710 -589
		mu 0 3 439 94 440
		f 3 711 712 713
		mu 0 3 507 508 354
		f 3 714 715 716
		mu 0 3 96 509 510
		f 3 717 718 719
		mu 0 3 511 70 502
		f 3 -487 720 721
		mu 0 3 341 343 512
		f 3 -657 722 723
		mu 0 3 478 477 513
		f 3 724 725 726
		mu 0 3 514 515 90
		f 3 727 728 729
		mu 0 3 516 517 518
		f 3 730 -220 731
		mu 0 3 519 199 520
		f 3 732 -387 733
		mu 0 3 519 311 310
		f 3 734 -728 735
		mu 0 3 521 517 516
		f 3 736 737 738
		mu 0 3 521 522 523
		f 3 739 740 741
		mu 0 3 524 525 502
		f 3 742 -700 743
		mu 0 3 526 502 501
		f 3 -689 -458 744
		mu 0 3 188 355 356
		f 3 745 746 747
		mu 0 3 184 488 188
		f 3 -545 748 749
		mu 0 3 413 415 387
		f 3 750 751 752
		mu 0 3 527 413 432
		f 3 753 -621 754
		mu 0 3 528 456 298
		f 3 755 756 -413
		mu 0 3 327 291 328
		f 3 757 -95 -675
		mu 0 3 478 89 88
		f 3 758 -724 759
		mu 0 3 514 478 513
		f 3 760 761 762
		mu 0 3 529 530 411
		f 3 763 764 765
		mu 0 3 531 130 532
		f 3 766 767 768
		mu 0 3 533 534 535
		f 3 769 770 771
		mu 0 3 533 536 446
		f 3 772 773 774
		mu 0 3 81 537 538
		f 3 775 -629 776
		mu 0 3 538 450 460
		f 3 777 778 779
		mu 0 3 539 406 540
		f 3 -164 780 781
		mu 0 3 148 150 541
		f 3 -135 782 783
		mu 0 3 124 123 542
		f 3 784 785 786
		mu 0 3 543 544 545
		f 3 787 788 789
		mu 0 3 546 125 547
		f 3 790 791 792
		mu 0 3 548 549 550
		f 3 793 794 -46
		mu 0 3 40 551 38
		f 3 -276 795 -794
		mu 0 3 40 240 551
		f 3 -443 796 797
		mu 0 3 349 348 552
		f 3 798 -327 799
		mu 0 3 553 273 272
		f 3 800 -148 801
		mu 0 3 554 137 136
		f 3 802 803 804
		mu 0 3 555 556 524
		f 3 -78 805 806
		mu 0 3 72 71 557
		f 3 807 808 809
		mu 0 3 558 559 560
		f 3 810 811 812
		mu 0 3 561 545 562
		f 3 813 814 -791
		mu 0 3 548 124 549
		f 3 -391 -393 815
		mu 0 3 11 302 314
		f 3 816 -776 -774
		mu 0 3 537 450 538
		f 3 -817 817 -607
		mu 0 3 450 537 451
		f 3 818 819 820
		mu 0 3 63 563 564
		f 3 821 822 823
		mu 0 3 565 566 567
		f 3 -781 824 825
		mu 0 3 541 150 568
		f 3 826 -35 -205
		mu 0 3 186 31 30
		f 3 827 -649 -182
		mu 0 3 166 569 167
		f 3 -429 828 -139
		mu 0 3 127 338 128
		f 3 829 -260 -255
		mu 0 3 128 230 226
		f 3 -119 830 831
		mu 0 3 110 109 570
		f 3 832 833 834
		mu 0 3 571 572 573
		f 3 835 -225 836
		mu 0 3 14 574 575
		f 3 837 -836 -15
		mu 0 3 13 574 14
		f 3 838 -121 839
		mu 0 3 576 109 111
		f 3 -150 840 -618
		mu 0 3 129 138 455
		f 3 841 842 -368
		mu 0 3 299 380 292
		f 3 843 -409 -665
		mu 0 3 483 323 325
		f 3 844 -395 845
		mu 0 3 577 277 315
		f 3 -133 846 847
		mu 0 3 117 122 578
		f 3 -128 848 849
		mu 0 3 115 117 579
		f 3 850 851 852
		mu 0 3 111 580 581
		f 3 -840 853 854
		mu 0 3 576 111 582
		f 3 855 856 857
		mu 0 3 158 583 584
		f 3 -741 858 -720
		mu 0 3 502 525 511
		f 3 859 860 861
		mu 0 3 525 585 586
		f 3 862 863 864
		mu 0 3 587 588 589
		f 3 865 866 -84
		mu 0 3 77 588 78
		f 3 867 868 869
		mu 0 3 590 591 592
		f 3 870 871 -803
		mu 0 3 555 585 556
		f 3 872 -444 -526
		mu 0 3 238 213 349
		f 3 -873 -273 -271
		mu 0 3 213 238 237
		f 3 873 874 -861
		mu 0 3 585 557 586
		f 3 875 876 877
		mu 0 3 593 594 115
		f 3 -126 -877 878
		mu 0 3 116 115 594
		f 3 879 880 881
		mu 0 3 595 78 73
		f 3 882 -881 883
		mu 0 3 591 73 78
		f 3 884 885 -189
		mu 0 3 173 269 174
		f 3 -323 -885 886
		mu 0 3 267 269 173
		f 3 -530 887 888
		mu 0 3 405 353 596
		f 3 889 890 -404
		mu 0 3 321 596 322
		f 3 891 892 -698
		mu 0 3 105 339 256
		f 3 -265 893 -113
		mu 0 3 104 233 105
		f 3 894 -770 -769
		mu 0 3 535 536 533
		f 3 895 896 897
		mu 0 3 425 383 597
		f 3 898 -757 -355
		mu 0 3 290 328 291
		f 3 899 900 901
		mu 0 3 598 599 600
		f 3 902 -171 903
		mu 0 3 600 157 156
		f 3 -552 904 905
		mu 0 3 420 236 232
		f 3 906 907 -264
		mu 0 3 232 226 233
		f 3 908 909 -645
		mu 0 3 282 601 194
		f 3 -909 910 911
		mu 0 3 601 282 268
		f 3 -821 912 913
		mu 0 3 63 564 560
		f 3 914 915 -70
		mu 0 3 63 602 61
		f 3 916 -50 917
		mu 0 3 38 44 43
		f 3 -18 -17 918
		mu 0 3 16 13 15
		f 3 -858 919 -173
		mu 0 3 158 584 156
		f 3 920 -907 -905
		mu 0 3 236 226 232
		f 3 -314 -921 921
		mu 0 3 262 226 236
		f 3 -102 922 -455
		mu 0 3 95 94 354
		f 3 -714 -923 923
		mu 0 3 507 354 94
		f 3 924 925 926
		mu 0 3 603 102 363
		f 3 927 928 929
		mu 0 3 604 605 56
		f 3 930 931 932
		mu 0 3 606 607 113
		f 3 -931 933 934
		mu 0 3 607 606 608
		f 3 935 936 -808
		mu 0 3 558 609 559
		f 3 937 -270 938
		mu 0 3 610 20 210
		f 3 939 940 941
		mu 0 3 611 203 207
		f 3 -74 942 943
		mu 0 3 68 67 540
		f 3 -779 -575 -944
		mu 0 3 540 406 68
		f 3 944 945 946
		mu 0 3 612 613 614
		f 3 -93 947 -99
		mu 0 3 87 86 92
		f 3 948 949 950
		mu 0 3 615 86 616
		f 3 951 -61 952
		mu 0 3 617 52 54
		f 3 953 -59 954
		mu 0 3 618 53 52
		f 3 955 956 957
		mu 0 3 619 620 621
		f 3 958 959 960
		mu 0 3 622 623 604
		f 3 961 962 -952
		mu 0 3 617 624 52
		f 3 963 964 -956
		mu 0 3 619 623 620
		f 3 965 -94 966
		mu 0 3 625 85 87
		f 3 967 -561 968
		mu 0 3 626 337 426
		f 3 969 970 971
		mu 0 3 603 627 628
		f 3 972 973 974
		mu 0 3 629 630 617
		f 3 -962 -974 975
		mu 0 3 624 617 630
		f 3 976 977 -124
		mu 0 3 113 631 114
		f 3 -932 978 -977
		mu 0 3 113 607 631
		f 3 -301 979 -252
		mu 0 3 223 49 224
		f 3 980 -272 981
		mu 0 3 37 211 237
		f 3 982 983 -936
		mu 0 3 558 613 609
		f 3 -946 984 985
		mu 0 3 614 613 632
		f 3 986 987 -520
		mu 0 3 398 633 107
		f 3 -988 988 -117
		mu 0 3 107 633 95
		f 3 989 990 991
		mu 0 3 634 229 252
		f 3 992 993 994
		mu 0 3 635 636 637
		f 3 995 996 997
		mu 0 3 504 638 639
		f 3 998 999 -910
		mu 0 3 601 2 194
		f 3 1000 1001 -576
		mu 0 3 248 190 179
		f 3 -985 -983 1002
		mu 0 3 632 613 558
		f 3 1003 -810 -913
		mu 0 3 564 558 560
		f 3 1004 -811 1005
		mu 0 3 640 545 561
		f 3 1006 -1006 1007
		mu 0 3 641 640 561
		f 3 1008 1009 1010
		mu 0 3 542 642 643
		f 3 1011 1012 1013
		mu 0 3 644 397 645
		f 3 1014 -1014 1015
		mu 0 3 176 644 645
		f 3 -20 1016 1017
		mu 0 3 13 17 646
		f 3 -223 -731 1018
		mu 0 3 200 199 519
		f 3 1019 1020 1021
		mu 0 3 647 518 648
		f 3 1022 1023 1024
		mu 0 3 100 649 650
		f 3 -105 1025 1026
		mu 0 3 98 97 468
		f 3 -640 -637 -1027
		mu 0 3 468 466 98
		f 3 -722 1027 1028
		mu 0 3 341 512 651
		f 3 1029 1030 -1029
		mu 0 3 651 652 341
		f 3 1031 1032 -966
		mu 0 3 625 653 85
		f 3 -92 1033 -950
		mu 0 3 86 85 616
		f 3 1034 1035 -177
		mu 0 3 162 654 163
		f 3 1036 1037 -186
		mu 0 3 170 189 171
		f 3 1038 1039 -1037
		mu 0 3 170 655 189
		f 3 1040 1041 1042
		mu 0 3 656 272 402
		f 3 1043 -1041 1044
		mu 0 3 552 272 656
		f 3 -953 1045 -975
		mu 0 3 617 54 629
		f 3 1046 1047 -423
		mu 0 3 335 657 333
		f 3 -485 1048 1049
		mu 0 3 335 79 340
		f 3 1050 -1048 1051
		mu 0 3 658 333 657
		f 3 1052 1053 1054
		mu 0 3 659 660 359
		f 3 1055 -481 1056
		mu 0 3 361 373 372
		f 3 1057 1058 -318
		mu 0 3 264 427 265
		f 3 -1058 1059 1060
		mu 0 3 427 264 661
		f 3 -384 1061 -381
		mu 0 3 283 271 308
		f 3 -1062 1062 -457
		mu 0 3 308 271 356
		f 3 1063 1064 -1053
		mu 0 3 659 662 660
		f 3 -230 -940 1065
		mu 0 3 204 203 611
		f 3 1066 -666 1067
		mu 0 3 316 484 325
		f 3 1068 1069 1070
		mu 0 3 663 81 664
		f 3 -692 1071 1072
		mu 0 3 358 498 665
		f 3 1073 1074 -1040
		mu 0 3 666 186 665
		f 3 -902 1075 1076
		mu 0 3 598 600 667
		f 3 1077 -1035 1078
		mu 0 3 667 654 162
		f 3 1079 -348 1080
		mu 0 3 294 287 286
		f 3 1081 -446 -1080
		mu 0 3 294 350 287
		f 3 1082 -137 1083
		mu 0 3 668 123 125
		f 3 1084 -566 1085
		mu 0 3 319 428 430
		f 3 1086 1087 1088
		mu 0 3 669 670 318
		f 3 1089 1090 -987
		mu 0 3 398 399 633
		f 3 -1085 1091 1092
		mu 0 3 428 319 670
		f 3 1093 1094 1095
		mu 0 3 477 671 672
		f 3 1096 -656 1097
		mu 0 3 477 474 476
		f 3 1098 -761 1099
		mu 0 3 673 530 529
		f 3 1100 1101 -569
		mu 0 3 431 674 414
		f 3 1102 -167 1103
		mu 0 3 491 151 153
		f 3 1104 -679 -1104
		mu 0 3 153 492 491
		f 3 -379 1105 1106
		mu 0 3 305 294 597
		f 3 -557 -1107 -897
		mu 0 3 383 305 597
		f 3 1107 -331 1108
		mu 0 3 216 7 275
		f 3 -10 1109 -609
		mu 0 3 9 7 452
		f 3 -795 -279 -917
		mu 0 3 38 551 44
		f 3 -1051 1110 1111
		mu 0 3 333 658 675
		f 3 1112 1113 -1030
		mu 0 3 651 676 652
		f 3 -503 1114 1115
		mu 0 3 284 386 677
		f 3 1116 -53 -344
		mu 0 3 284 47 46
		f 3 1117 1118 -785
		mu 0 3 543 678 544
		f 3 1119 -793 1120
		mu 0 3 679 548 550
		f 3 1121 -562 -430
		mu 0 3 127 427 337
		f 3 -138 1122 -1122
		mu 0 3 127 126 427
		f 3 -1069 1123 1124
		mu 0 3 81 663 680
		f 3 -88 1125 1126
		mu 0 3 79 81 344
		f 3 1127 -544 1128
		mu 0 3 412 415 414
		f 3 1129 -1100 1130
		mu 0 3 414 673 529
		f 3 1131 -918 1132
		mu 0 3 681 38 43
		f 3 -1133 -224 1133
		mu 0 3 681 43 200
		f 3 1134 1135 1136
		mu 0 3 682 234 683
		f 3 -586 -598 1137
		mu 0 3 438 437 445
		f 3 1138 -1052 1139
		mu 0 3 342 658 657
		f 3 -1111 1140 1141
		mu 0 3 675 658 652
		f 3 -131 1142 1143
		mu 0 3 118 120 606
		f 3 1144 -933 -123
		mu 0 3 112 606 113
		f 3 -501 -47 1145
		mu 0 3 385 42 41
		f 3 1146 1147 -245
		mu 0 3 684 685 686
		f 3 1148 1149 1150
		mu 0 3 687 144 688
		f 3 1151 -157 1152
		mu 0 3 689 144 143
		f 3 1153 -11 1154
		mu 0 3 197 8 9
		f 3 -732 1155 -733
		mu 0 3 519 520 311
		f 3 1156 -1137 1157
		mu 0 3 421 682 683
		f 3 1158 -906 -263
		mu 0 3 104 420 232;
	setAttr ".fc[500:999]"
		f 3 -647 1159 -641
		mu 0 3 468 471 467
		f 3 -632 1160 1161
		mu 0 3 463 462 460
		f 3 1162 -1157 -555
		mu 0 3 423 682 421
		f 3 1163 1164 -548
		mu 0 3 418 67 416
		f 3 1165 1166 -943
		mu 0 3 67 690 540
		f 3 1167 -238 1168
		mu 0 3 691 209 4
		f 3 1169 1170 1171
		mu 0 3 390 692 693
		f 3 1172 1173 1174
		mu 0 3 694 160 695
		f 3 1175 -683 1176
		mu 0 3 694 495 494
		f 3 1177 -1152 1178
		mu 0 3 696 144 689
		f 3 1179 -1127 -437
		mu 0 3 343 79 344
		f 3 -1049 -1180 -486
		mu 0 3 340 79 343
		f 3 1180 1181 -863
		mu 0 3 587 592 588
		f 3 -1175 1182 1183
		mu 0 3 694 695 697
		f 3 1184 -691 1185
		mu 0 3 698 498 357
		f 3 -208 -1072 1186
		mu 0 3 187 189 699
		f 3 1187 1188 1189
		mu 0 3 700 627 377
		f 3 -490 -1189 1190
		mu 0 3 375 377 627
		f 3 1191 1192 -511
		mu 0 3 701 174 702
		f 3 1193 1194 -472
		mu 0 3 368 703 367
		f 3 1195 1196 1197
		mu 0 3 704 602 559
		f 3 1198 -1198 1199
		mu 0 3 705 704 559
		f 3 1200 1201 -6
		mu 0 3 5 706 3
		f 3 1202 1203 -1194
		mu 0 3 368 707 703
		f 3 1204 1205 1206
		mu 0 3 57 621 708
		f 3 -929 1207 -63
		mu 0 3 56 605 57
		f 3 1208 -1151 1209
		mu 0 3 134 687 688
		f 3 -1179 1210 1211
		mu 0 3 696 689 134
		f 3 -765 -619 1212
		mu 0 3 532 130 455
		f 3 -841 1213 1214
		mu 0 3 455 138 299
		f 3 1215 -222 -52
		mu 0 3 45 199 43
		f 3 -226 -221 1216
		mu 0 3 25 196 198
		f 3 1217 -307 1218
		mu 0 3 229 254 256
		f 3 -990 1219 -1218
		mu 0 3 229 634 254
		f 3 1220 1221 -553
		mu 0 3 421 104 422
		f 3 1222 -1221 -1158
		mu 0 3 683 104 421
		f 3 1223 1224 -958
		mu 0 3 621 605 619
		f 3 -1205 -1208 -1224
		mu 0 3 621 57 605
		f 3 1225 -549 1226
		mu 0 3 709 419 69
		f 3 1227 -75 -574
		mu 0 3 435 69 68
		f 3 -976 1228 1229
		mu 0 3 624 630 710
		f 3 -963 1230 -955
		mu 0 3 52 624 618
		f 3 1231 1232 -536
		mu 0 3 288 711 407
		f 3 1233 1234 1235
		mu 0 3 712 713 714
		f 3 1236 -823 1237
		mu 0 3 714 567 566
		f 3 1238 1239 1240
		mu 0 3 74 715 716
		f 3 1241 -1181 1242
		mu 0 3 717 592 587
		f 3 -908 -262 1243
		mu 0 3 233 226 231
		f 3 -1244 1244 -894
		mu 0 3 233 231 105
		f 3 -328 1245 1246
		mu 0 3 274 273 13
		f 3 1247 -838 1248
		mu 0 3 718 574 13
		f 3 1249 1250 -822
		mu 0 3 565 563 566
		f 3 -1236 -1238 1251
		mu 0 3 712 714 566
		f 3 -538 1252 1253
		mu 0 3 410 295 719
		f 3 1254 -1083 1255
		mu 0 3 642 123 668
		f 3 -1255 -1009 -783
		mu 0 3 123 642 542
		f 3 1256 -1128 -541
		mu 0 3 83 415 412
		f 3 1257 -505 -749
		mu 0 3 415 388 387
		f 3 1258 -896 1259
		mu 0 3 290 383 425
		f 3 -499 -1259 1260
		mu 0 3 381 383 290
		f 3 1261 -800 -1044
		mu 0 3 552 553 272
		f 3 1262 -330 1263
		mu 0 3 553 720 721
		f 3 -585 -546 1264
		mu 0 3 437 417 416
		f 3 1265 -67 -599
		mu 0 3 437 58 60
		f 3 1266 -745 1267
		mu 0 3 270 188 356
		f 3 -1268 -1063 -324
		mu 0 3 270 356 271
		f 3 1268 1269 1270
		mu 0 3 722 55 723
		f 3 -440 1271 1272
		mu 0 3 347 346 724
		f 3 -1262 1273 -1263
		mu 0 3 553 552 720
		f 3 1274 1275 1276
		mu 0 3 119 725 726
		f 3 1277 -1234 1278
		mu 0 3 61 713 712
		f 3 1279 1280 1281
		mu 0 3 727 728 729
		f 3 -278 -229 1282
		mu 0 3 575 201 202
		f 3 -699 1283 -893
		mu 0 3 339 227 256
		f 3 -259 -1219 -1284
		mu 0 3 227 229 256
		f 3 1284 1285 1286
		mu 0 3 589 76 730
		f 3 1287 -85 -880
		mu 0 3 595 76 78
		f 3 -995 1288 1289
		mu 0 3 635 637 384
		f 3 -1117 -1116 1290
		mu 0 3 47 284 677
		f 3 1291 -125 1292
		mu 0 3 731 112 114
		f 3 1293 1294 1295
		mu 0 3 725 731 732
		f 3 1296 -289 -200
		mu 0 3 182 246 169
		f 3 -210 1297 1298
		mu 0 3 192 191 486
		f 3 -697 1299 -114
		mu 0 3 105 370 103
		f 3 1300 1301 1302
		mu 0 3 733 53 734
		f 3 1303 -1301 1304
		mu 0 3 735 53 733
		f 3 1305 1306 1307
		mu 0 3 485 577 323
		f 3 -1306 1308 1309
		mu 0 3 577 485 296
		f 3 -516 -515 1310
		mu 0 3 736 393 394
		f 3 1311 1312 -1016
		mu 0 3 645 737 176
		f 3 1313 -1073 -1075
		mu 0 3 186 358 665
		f 3 -1314 -204 -460
		mu 0 3 358 186 42
		f 3 1314 1315 -373
		mu 0 3 180 364 303
		f 3 1316 -394 1317
		mu 0 3 738 314 303
		f 3 -1311 -1312 1318
		mu 0 3 736 394 739
		f 3 -1013 -517 -1319
		mu 0 3 645 397 396
		f 3 1319 -1286 -1288
		mu 0 3 595 730 76
		f 3 -685 -687 1320
		mu 0 3 496 466 497
		f 3 -671 1321 -747
		mu 0 3 488 487 188
		f 3 1322 -207 -1322
		mu 0 3 487 189 188
		f 3 -1021 1323 1324
		mu 0 3 648 518 650
		f 3 -729 1325 1326
		mu 0 3 518 517 101
		f 3 1327 1328 1329
		mu 0 3 740 741 140
		f 3 1330 1331 1332
		mu 0 3 742 743 142
		f 3 1333 1334 1335
		mu 0 3 659 372 522
		f 3 1336 -738 -1335
		mu 0 3 372 523 522
		f 3 1337 1338 1339
		mu 0 3 744 745 460
		f 3 -1340 -628 1340
		mu 0 3 744 460 459
		f 3 1341 -753 -572
		mu 0 3 434 527 432
		f 3 -214 1342 1343
		mu 0 3 183 194 190
		f 3 -1343 -1000 1344
		mu 0 3 190 194 2
		f 3 -122 1345 -851
		mu 0 3 111 108 580
		f 3 -1346 1346 1347
		mu 0 3 580 108 746
		f 3 1348 -1078 1349
		mu 0 3 583 654 667
		f 3 -1349 -856 1350
		mu 0 3 654 583 158
		f 3 1351 1352 -1183
		mu 0 3 695 747 697
		f 3 -1174 -174 1353
		mu 0 3 695 160 159
		f 3 1354 1355 1356
		mu 0 3 742 741 748
		f 3 -154 1357 -1333
		mu 0 3 142 141 742
		f 3 -1164 1358 -1166
		mu 0 3 67 418 690
		f 3 1359 -98 1360
		mu 0 3 749 87 91
		f 3 -1003 -1004 1361
		mu 0 3 632 558 564
		f 3 1362 -820 -1250
		mu 0 3 565 564 563
		f 3 -297 1363 1364
		mu 0 3 191 249 750
		f 3 1365 1366 -1298
		mu 0 3 191 751 486
		f 3 1367 -1182 -869
		mu 0 3 591 588 592
		f 3 -867 -1368 -884
		mu 0 3 78 588 591
		f 3 -1361 1368 1369
		mu 0 3 749 91 752
		f 3 1370 1371 -1032
		mu 0 3 625 752 653
		f 3 1372 1373 1374
		mu 0 3 70 753 65
		f 3 -719 -1375 -701
		mu 0 3 502 70 65
		f 3 1375 1376 -782
		mu 0 3 541 137 148
		f 3 1377 -1377 -801
		mu 0 3 554 148 137
		f 3 1378 -140 -254
		mu 0 3 225 126 128
		f 3 1379 1380 1381
		mu 0 3 499 265 225
		f 3 -1046 1382 1383
		mu 0 3 629 54 754
		f 3 -149 -1376 1384
		mu 0 3 135 137 541
		f 3 -1385 1385 1386
		mu 0 3 135 541 755
		f 3 1387 -388 1388
		mu 0 3 453 756 757
		f 3 -312 1389 -613
		mu 0 3 257 758 453
		f 3 1390 -1068 1391
		mu 0 3 611 316 325
		f 3 1392 1393 1394
		mu 0 3 390 268 611
		f 3 1395 1396 1397
		mu 0 3 759 288 139
		f 3 1398 -1232 -1396
		mu 0 3 759 711 288
		f 3 1399 -772 1400
		mu 0 3 60 533 446
		f 3 -600 -1401 -601
		mu 0 3 445 60 446
		f 3 1401 -427 1402
		mu 0 3 176 326 336
		f 3 1403 -1015 1404
		mu 0 3 279 644 176
		f 3 -405 1405 1406
		mu 0 3 317 322 760
		f 3 1407 1408 -310
		mu 0 3 258 224 259
		f 3 -275 1409 1410
		mu 0 3 237 239 259
		f 3 1411 1412 -805
		mu 0 3 524 761 555
		f 3 1413 -742 -743
		mu 0 3 526 524 502
		f 3 1414 -1067 -397
		mu 0 3 281 484 316
		f 3 -1415 1415 -667
		mu 0 3 484 281 483
		f 3 1416 1417 1418
		mu 0 3 762 754 735
		f 3 -1331 -1357 1419
		mu 0 3 743 742 748
		f 3 -982 1420 1421
		mu 0 3 37 237 224
		f 3 -1421 -1411 -1409
		mu 0 3 224 237 259
		f 3 -1222 1422 1423
		mu 0 3 422 104 763
		f 3 -642 1424 1425
		mu 0 3 280 469 297
		f 4 -334 1426 1427 -269
		mu 0 4 19 32 764 210
		f 3 -106 -636 1428
		mu 0 3 96 98 465
		f 3 -1429 1429 -715
		mu 0 3 96 465 509
		f 3 1430 -1384 1431
		mu 0 3 765 629 754
		f 3 -1417 1432 1433
		mu 0 3 754 762 766
		f 3 1434 1435 -1280
		mu 0 3 727 767 728
		f 3 1436 1437 1438
		mu 0 3 767 723 768
		f 3 1439 1440 -1367
		mu 0 3 751 246 486
		f 3 1441 1442 1443
		mu 0 3 246 769 249
		f 3 1444 1445 1446
		mu 0 3 649 770 771
		f 3 -972 1447 1448
		mu 0 3 603 628 771
		f 3 1449 1450 1451
		mu 0 3 772 773 458
		f 3 -623 1452 -625
		mu 0 3 169 457 458
		f 3 -850 1453 -878
		mu 0 3 115 579 593
		f 3 1454 1455 1456
		mu 0 3 774 593 578
		f 3 -1436 -1439 1457
		mu 0 3 728 767 768
		f 3 -1281 1458 1459
		mu 0 3 729 728 775
		f 3 1460 -293 1461
		mu 0 3 313 10 246
		f 3 -1461 -392 -12
		mu 0 3 10 313 11
		f 3 1462 1463 1464
		mu 0 3 106 776 777
		f 3 1465 -454 -713
		mu 0 3 508 106 354
		f 3 1466 -1449 -1446
		mu 0 3 770 603 771
		f 3 -925 -1467 1467
		mu 0 3 102 603 770
		f 3 1468 -1034 -1033
		mu 0 3 653 616 85
		f 3 -631 1469 1470
		mu 0 3 462 461 663
		f 3 -710 1471 -924
		mu 0 3 94 439 507
		f 3 -1143 1472 -934
		mu 0 3 606 120 608
		f 3 -130 -1277 1473
		mu 0 3 120 119 726
		f 3 1474 -1039 -828
		mu 0 3 166 666 569
		f 3 -1074 1475 -827
		mu 0 3 186 666 31
		f 3 -1430 -686 1476
		mu 0 3 509 465 496
		f 3 1477 -1477 -1321
		mu 0 3 497 509 496
		f 3 1478 1479 1480
		mu 0 3 1 778 179
		f 3 -1195 1481 1482
		mu 0 3 367 703 778
		f 3 -993 -1115 1483
		mu 0 3 779 677 386
		f 3 1484 -382 1485
		mu 0 3 780 307 308
		f 3 1486 -1356 1487
		mu 0 3 781 748 741
		f 3 -1156 -1155 1488
		mu 0 3 757 197 9
		f 3 -1489 -611 -1389
		mu 0 3 757 9 453
		f 3 1489 -62 -1269
		mu 0 3 722 56 55
		f 3 1490 -961 -930
		mu 0 3 56 622 604
		f 3 -91 1491 1492
		mu 0 3 82 84 782
		f 3 1493 1494 -506
		mu 0 3 388 82 389
		f 3 1495 1496 -447
		mu 0 3 350 783 304
		f 3 -556 1497 -377
		mu 0 3 305 382 306
		f 3 1498 -1483 -1479
		mu 0 3 1 367 778
		f 3 1499 -616 -1499
		mu 0 3 1 454 367
		f 3 1500 -353 1501
		mu 0 3 218 289 46
		f 3 -55 -247 -1502
		mu 0 3 46 48 218
		f 3 1502 -1420 1503
		mu 0 3 784 743 748
		f 3 -1504 -1487 1504
		mu 0 3 784 748 781
		f 3 -136 -814 1505
		mu 0 3 125 124 548
		f 3 -1506 -1120 1506
		mu 0 3 125 548 679
		f 3 1507 1508 -1402
		mu 0 3 176 785 326
		f 3 -232 1509 -479
		mu 0 3 203 205 371
		f 3 -253 -1408 1510
		mu 0 3 222 224 258
		f 3 1511 -1511 -308
		mu 0 3 215 221 257
		f 3 -1476 -1475 1512
		mu 0 3 31 666 166
		f 3 -1513 -580 -36
		mu 0 3 31 166 32
		f 3 1513 -1495 -1493
		mu 0 3 782 389 82
		f 3 1514 1515 1516
		mu 0 3 433 786 787
		f 3 -65 1517 1518
		mu 0 3 59 58 709
		f 3 -1227 -1228 1519
		mu 0 3 709 69 435
		f 3 -1081 1520 -359
		mu 0 3 294 286 295
		f 3 -1253 1521 1522
		mu 0 3 719 295 408
		f 3 1523 1524 -64
		mu 0 3 57 729 55
		f 3 -1207 1525 -1524
		mu 0 3 57 708 729
		f 3 1526 -832 1527
		mu 0 3 788 110 570
		f 3 1528 1529 -132
		mu 0 3 121 572 122
		f 3 1530 -1457 -847
		mu 0 3 122 774 578
		f 3 1531 -433 1532
		mu 0 3 230 338 339
		f 3 -1532 -830 -829
		mu 0 3 338 230 128
		f 3 -1347 -120 1533
		mu 0 3 746 108 110
		f 3 -1534 -1527 1534
		mu 0 3 746 110 788
		f 3 1535 -165 1536
		mu 0 3 160 152 151
		f 3 -1536 1537 -673
		mu 0 3 152 160 489
		f 3 -1323 1538 -1038
		mu 0 3 189 487 171
		f 3 1539 -199 -1539
		mu 0 3 487 182 171
		f 3 1540 1541 -1498
		mu 0 3 382 351 306
		f 3 -1541 -497 -495
		mu 0 3 351 382 381
		f 3 1542 1543 1544
		mu 0 3 789 790 765
		f 3 1545 1546 1547
		mu 0 3 766 791 789
		f 3 -752 -750 1548
		mu 0 3 432 413 387
		f 3 -507 1549 -1549
		mu 0 3 387 389 432
		f 3 -870 1550 1551
		mu 0 3 590 592 74
		f 3 -1551 -1242 1552
		mu 0 3 74 592 717
		f 3 -1042 -385 1553
		mu 0 3 402 272 309
		f 3 1554 -664 1555
		mu 0 3 309 481 482
		f 3 -1055 -464 1556
		mu 0 3 659 359 361
		f 3 -1057 -1334 -1557
		mu 0 3 361 372 659
		f 3 1557 1558 -965
		mu 0 3 623 792 620
		f 3 -1559 1559 -957
		mu 0 3 620 792 621
		f 3 -989 1560 -473
		mu 0 3 95 633 369
		f 3 -1091 -523 1561
		mu 0 3 633 399 401
		f 3 1562 -1105 -635
		mu 0 3 464 492 153
		f 3 -682 -680 1563
		mu 0 3 494 493 492
		f 3 1564 -72 -1374
		mu 0 3 753 66 65
		f 3 1565 -1519 -1520
		mu 0 3 435 59 709
		f 3 -532 -1566 -573
		mu 0 3 406 59 435
		f 3 1566 1567 1568
		mu 0 3 291 793 528
		f 3 1569 -1554 -1556
		mu 0 3 482 402 309
		f 3 1570 1571 -525
		mu 0 3 402 480 238
		f 3 -789 -1507 1572
		mu 0 3 547 125 679
		f 3 -365 -1425 1573
		mu 0 3 185 297 469
		f 3 -643 -644 1574
		mu 0 3 469 282 193
		f 3 -1 1575 -1500
		mu 0 3 1 0 454
		f 3 -596 1576 1577
		mu 0 3 444 443 454
		f 3 1578 1579 -622
		mu 0 3 247 473 457
		f 3 -294 -180 1580
		mu 0 3 247 10 165
		f 3 1581 1582 1583
		mu 0 3 794 795 154
		f 3 1584 1585 -654
		mu 0 3 474 490 475
		f 3 1586 -44 1587
		mu 0 3 15 39 38
		f 3 1588 -1588 -1132
		mu 0 3 681 15 38
		f 3 -366 -356 1589
		mu 0 3 298 292 291
		f 3 -755 -1590 -1569
		mu 0 3 528 298 291
		f 3 1590 1591 -792
		mu 0 3 549 544 550
		f 3 -1119 1592 -1592
		mu 0 3 544 678 550
		f 3 -1399 1593 1594
		mu 0 3 711 759 796
		f 3 1595 -1586 1596
		mu 0 3 506 475 490
		f 3 -709 -1597 -677
		mu 0 3 88 506 490
		f 3 1597 1598 -160
		mu 0 3 146 797 147
		f 3 -170 1599 -159
		mu 0 3 145 155 146
		f 3 1600 1601 -1598
		mu 0 3 146 798 797
		f 3 -1567 -756 1602
		mu 0 3 793 291 327
		f 3 -1187 -1185 1603
		mu 0 3 187 699 505
		f 3 -690 -1604 -706
		mu 0 3 355 187 505
		f 3 -1169 -4 -1171
		mu 0 3 691 4 3
		f 3 -1528 1604 1605
		mu 0 3 788 570 799
		f 3 1606 -855 1607
		mu 0 3 799 576 582
		f 3 1608 -570 -1550
		mu 0 3 389 433 432
		f 3 -1609 -1514 1609
		mu 0 3 433 389 782
		f 3 -1172 -512 1610
		mu 0 3 390 693 702
		f 3 1611 -322 -1393
		mu 0 3 390 269 268
		f 3 -831 -839 1612
		mu 0 3 570 109 576
		f 3 -1605 -1613 -1607
		mu 0 3 799 570 576
		f 3 -563 -1061 1613
		mu 0 3 426 427 661
		f 3 -1614 1614 -969
		mu 0 3 426 661 626
		f 3 -542 1615 -763
		mu 0 3 411 412 529
		f 3 -1129 -1131 -1616
		mu 0 3 412 414 529
		f 3 -659 1616 -1097
		mu 0 3 477 479 474
		f 3 -1617 -678 -1585
		mu 0 3 474 479 490
		f 3 -101 1617 -711
		mu 0 3 94 93 440
		f 3 -474 1618 1619
		mu 0 3 93 369 441
		f 3 1620 -707 -1186
		mu 0 3 800 503 505
		f 3 1621 -461 -997
		mu 0 3 801 357 42
		f 3 1622 -778 1623
		mu 0 3 534 406 539
		f 3 1624 -1342 1625
		mu 0 3 787 527 434
		f 3 -1517 -1626 -571
		mu 0 3 433 787 434
		f 3 1626 1627 -978
		mu 0 3 631 732 114
		f 3 -1295 -1293 -1628
		mu 0 3 732 731 114
		f 3 1628 1629 -583
		mu 0 3 329 424 409
		f 3 1630 -558 -1629
		mu 0 3 329 425 424
		f 3 -1621 -1622 1631
		mu 0 3 503 800 638
		f 3 -996 -703 -1632
		mu 0 3 638 504 503
		f 3 -702 -71 1632
		mu 0 3 501 65 64
		f 3 1633 -1531 -1530
		mu 0 3 572 774 122
		f 3 -1474 1634 -1473
		mu 0 3 120 726 608
		f 3 1635 -251 -1512
		mu 0 3 215 28 221
		f 3 -291 -290 1636
		mu 0 3 802 21 28
		f 3 -1426 -361 1637
		mu 0 3 280 297 296
		f 3 -1252 1638 1639
		mu 0 3 712 566 62
		f 3 -1640 -68 -1279
		mu 0 3 712 62 61
		f 3 -854 -853 1640
		mu 0 3 582 111 581
		f 3 1641 -1608 -1641
		mu 0 3 581 799 582
		f 3 -183 1642 -285
		mu 0 3 168 167 803
		f 3 -650 -1451 1643
		mu 0 3 472 458 773
		f 3 -984 -945 1644
		mu 0 3 609 613 612
		f 3 -1526 1645 -1282
		mu 0 3 729 708 727
		f 3 1646 1647 1648
		mu 0 3 531 456 804
		f 3 1649 -620 -1647
		mu 0 3 531 299 456
		f 3 1650 1651 1652
		mu 0 3 149 805 806
		f 3 1653 -899 -1260
		mu 0 3 425 328 290
		f 3 -1654 -1631 -414
		mu 0 3 328 425 329
		f 3 1654 -694 -1382
		mu 0 3 225 261 499
		f 3 -1655 -256 -313
		mu 0 3 261 225 226
		f 3 -439 1655 -721
		mu 0 3 343 345 512
		f 3 1656 1657 1658
		mu 0 3 634 807 808
		f 3 1659 1660 -1497
		mu 0 3 783 139 304
		f 3 -1661 -1397 -376
		mu 0 3 304 139 288
		f 3 1661 -1355 -1358
		mu 0 3 141 741 742
		f 3 -153 -1329 -1662
		mu 0 3 141 140 741
		f 3 1662 -727 -96
		mu 0 3 89 514 90
		f 3 -1663 -758 -759
		mu 0 3 514 89 478
		f 3 -1018 1663 -1247
		mu 0 3 13 646 274
		f 3 -1664 1664 -386
		mu 0 3 274 646 309
		f 3 1665 -1398 -151
		mu 0 3 129 759 139
		f 3 -1594 -1666 1666
		mu 0 3 796 759 129
		f 3 1667 -1462 -1444
		mu 0 3 249 313 246
		f 3 -390 -1668 1668
		mu 0 3 302 313 249
		f 3 -1146 1669 1670
		mu 0 3 385 41 685
		f 3 1671 1672 -303
		mu 0 3 252 626 253
		f 3 -244 -1109 1673
		mu 0 3 214 216 275
		f 3 -1674 1674 -1272
		mu 0 3 346 720 724
		f 3 1675 -211 1676
		mu 0 3 809 190 192
		f 3 -672 1677 -1299
		mu 0 3 486 488 192
		f 3 1678 -1599 1679
		mu 0 3 794 147 797
		f 3 -1680 1680 -1582
		mu 0 3 794 797 795
		f 3 -1644 1681 -1643
		mu 0 3 167 810 803
		f 3 1682 1683 -1682
		mu 0 3 810 811 803
		f 3 -1336 1684 -1064
		mu 0 3 659 522 662
		f 3 -1239 -1553 1685
		mu 0 3 715 74 717
		f 3 -1230 1686 -1231
		mu 0 3 624 710 618
		f 3 1687 -436 -1140
		mu 0 3 657 340 342
		f 3 -1050 -1688 -1047
		mu 0 3 335 340 657
		f 3 1688 1689 1690
		mu 0 3 267 442 601
		f 3 -1691 -912 -321
		mu 0 3 267 601 268
		f 3 1691 -1546 -1433
		mu 0 3 762 791 766
		f 3 1692 -1249 -1246
		mu 0 3 273 718 13
		f 3 -799 1693 -1693
		mu 0 3 273 553 718
		f 3 -1289 1694 -500
		mu 0 3 384 637 42
		f 3 1695 1696 -1695
		mu 0 3 812 780 639
		f 3 1697 -693 -696
		mu 0 3 500 499 263
		f 3 1698 -227 1699
		mu 0 3 240 24 201
		f 3 1700 -1587 -28
		mu 0 3 24 39 15
		f 3 -2 -1481 1701
		mu 0 3 2 1 179
		f 3 -1702 -1002 -1345
		mu 0 3 2 179 190
		f 3 -550 1702 -1165
		mu 0 3 67 419 416
		f 3 -1703 -1226 1703
		mu 0 3 416 419 709
		f 3 -412 1704 -408
		mu 0 3 324 204 325
		f 3 -1705 -1066 -1392
		mu 0 3 325 204 611
		f 3 -1026 1705 -648
		mu 0 3 468 97 470
		f 3 -463 1706 1707
		mu 0 3 361 360 102
		f 3 -926 -1707 -466
		mu 0 3 363 102 360
		f 3 -887 -615 1708
		mu 0 3 267 173 443
		f 3 1709 1710 -663
		mu 0 3 310 480 482
		f 3 -1570 -1711 -1571
		mu 0 3 402 482 480
		f 3 -630 -606 1711
		mu 0 3 459 450 449
		f 3 -1341 1712 1713
		mu 0 3 744 459 813
		f 3 1714 1715 -1191
		mu 0 3 627 362 375
		f 3 -467 -462 1716
		mu 0 3 362 360 359
		f 3 -1677 -1678 1717
		mu 0 3 809 192 488
		f 3 -746 1718 -1718
		mu 0 3 488 184 809
		f 3 -813 1719 1720
		mu 0 3 561 562 542
		f 3 -1011 1721 -1721
		mu 0 3 542 643 561
		f 3 -492 1722 1723
		mu 0 3 359 379 375
		f 3 -1717 -1724 -1716
		mu 0 3 362 359 375
		f 3 1724 -445 1725
		mu 0 3 347 348 213
		f 3 -1273 1726 -1725
		mu 0 3 347 724 348
		f 3 1727 1728 -1168
		mu 0 3 692 208 814
		f 3 -509 -1728 -1170
		mu 0 3 390 208 692
		f 3 -1025 1729 -109
		mu 0 3 100 650 101
		f 3 -1327 -1730 -1324
		mu 0 3 518 101 650
		f 3 1730 1731 -1706
		mu 0 3 97 815 470
		f 3 1732 -403 -1086
		mu 0 3 430 320 319
		f 3 -419 -402 1733
		mu 0 3 332 317 320
		f 3 1734 1735 1736
		mu 0 3 816 817 818
		f 3 -43 1737 1738
		mu 0 3 35 37 816
		f 3 1739 1740 -1065
		mu 0 3 662 378 660
		f 3 -1741 -493 -1054
		mu 0 3 660 378 359
		f 3 -1734 -1733 1741
		mu 0 3 332 320 430
		f 3 1742 -1742 -565
		mu 0 3 429 332 430
		f 3 -1709 -595 -1689
		mu 0 3 267 443 442
		f 3 -202 1743 -326
		mu 0 3 185 184 270
		f 3 -1267 -1744 -748
		mu 0 3 188 270 184
		f 3 -627 1744 -110
		mu 0 3 101 373 102
		f 3 -1745 -1056 -1708
		mu 0 3 102 373 361
		f 3 -1070 -775 1745
		mu 0 3 664 81 538
		f 3 -1746 -777 1746
		mu 0 3 664 538 460
		f 3 -1544 1747 -1431
		mu 0 3 765 790 629
		f 3 1748 -1748 1749
		mu 0 3 819 629 790
		f 3 1750 -1364 -1443
		mu 0 3 769 750 249
		f 3 -1365 1751 -1366
		mu 0 3 191 750 751
		f 3 -1533 1752 -261
		mu 0 3 230 339 231
		f 3 -1753 -892 -1245
		mu 0 3 231 339 105
		f 3 1753 -882 -82
		mu 0 3 75 595 73
		f 3 -1320 1754 1755
		mu 0 3 730 595 716
		f 3 1756 -1752 -1751
		mu 0 3 769 751 750
		f 3 -1757 -1442 -1440
		mu 0 3 751 769 246
		f 3 -1482 1757 1758
		mu 0 3 778 703 366
		f 3 -1758 -1204 -1201
		mu 0 3 366 703 707
		f 3 -730 -1020 1759
		mu 0 3 516 518 647
		f 3 -369 1760 -194
		mu 0 3 4 300 178
		f 3 -1761 -1318 -1316
		mu 0 3 364 738 303
		f 3 -1619 1761 -591
		mu 0 3 441 369 401
		f 3 -1562 -1762 -1561
		mu 0 3 633 401 369
		f 3 -281 1762 -24
		mu 0 3 243 35 818
		f 3 -1737 -1763 -1739
		mu 0 3 816 818 35
		f 3 1763 -915 -914
		mu 0 3 560 602 63
		f 3 -1764 -809 -1197
		mu 0 3 602 560 559
		f 3 1764 -633 1765
		mu 0 3 745 461 463
		f 3 -1339 -1766 -1162
		mu 0 3 460 745 463
		f 3 1766 -465 -1715
		mu 0 3 627 363 362
		f 3 -970 -927 -1767
		mu 0 3 627 603 363
		f 3 1767 -1719 -201
		mu 0 3 183 809 184
		f 3 -1768 -1344 -1676
		mu 0 3 809 183 190
		f 3 -1045 1768 -798
		mu 0 3 552 656 349
		f 3 -1769 -1043 -524
		mu 0 3 349 656 402
		f 3 -1248 1769 1770
		mu 0 3 196 820 8
		f 3 -1771 -1154 -219
		mu 0 3 196 8 197
		f 3 -1383 1771 -1418
		mu 0 3 754 54 735
		f 3 -1772 -60 -1304
		mu 0 3 735 54 53
		f 3 -1501 -351 1772
		mu 0 3 289 218 277
		f 3 -354 -1773 -345
		mu 0 3 283 289 277
		f 3 1773 -981 -42
		mu 0 3 36 211 37
		f 3 -292 -283 -1774
		mu 0 3 36 244 211
		f 3 -1494 1774 -89
		mu 0 3 82 388 83
		f 3 -1257 -1775 -1258
		mu 0 3 415 83 388
		f 3 1775 1776 -1496
		mu 0 3 350 306 783
		f 3 -378 -1776 -1082
		mu 0 3 294 306 350
		f 3 -787 -1005 1777
		mu 0 3 543 545 640
		f 3 -1007 1778 -1778
		mu 0 3 640 641 543
		f 3 -1307 -846 1779
		mu 0 3 323 577 315
		f 3 -426 -407 -1780
		mu 0 3 315 324 323
		f 3 1780 -960 -964
		mu 0 3 619 604 623
		f 3 -1781 -1225 -928
		mu 0 3 604 619 605
		f 3 1781 -468 -1315
		mu 0 3 180 365 364
		f 3 -1759 -469 1782
		mu 0 3 778 366 365
		f 3 1783 -175 -1537
		mu 0 3 151 161 160
		f 3 -973 -1749 1784
		mu 0 3 630 629 819
		f 3 -1785 1785 -1229
		mu 0 3 630 819 710
		f 3 1786 -1142 -1114
		mu 0 3 676 675 652
		f 3 -1675 -1274 1787
		mu 0 3 724 720 552
		f 3 -1788 -797 -1727
		mu 0 3 724 552 348
		f 3 -967 -1360 1788
		mu 0 3 625 87 749
		f 3 -1371 -1789 -1370
		mu 0 3 752 625 749
		f 3 -1488 -1328 1789
		mu 0 3 781 741 740
		f 3 -1505 -1790 1790
		mu 0 3 784 781 740
		f 3 -396 1791 -424
		mu 0 3 315 279 336
		f 3 -1405 -1403 -1792
		mu 0 3 279 176 336
		f 3 -57 1792 1793
		mu 0 3 51 50 817
		f 3 -1783 -1782 1794
		mu 0 3 778 365 180
		f 3 -1480 -1795 -196
		mu 0 3 179 778 180
		f 3 1795 -883 -868
		mu 0 3 590 73 591
		f 3 -1796 -1552 -80
		mu 0 3 73 590 74
		f 3 1796 -1522 -1521
		mu 0 3 286 408 295
		f 3 -1797 -350 -535
		mu 0 3 408 286 288
		f 3 1797 -25 -1736
		mu 0 3 821 23 22
		f 3 -1726 -240 1798
		mu 0 3 347 213 212
		f 3 -1799 -284 -441
		mu 0 3 347 212 244
		f 3 1799 1800 -528
		mu 0 3 312 239 404
		f 3 1801 -311 -1410
		mu 0 3 239 260 259
		f 3 -1285 1802 -83
		mu 0 3 76 589 77
		f 3 -864 -866 -1803
		mu 0 3 589 588 77
		f 3 -1465 1803 -519
		mu 0 3 106 777 398
		f 3 -1804 1804 -1090
		mu 0 3 398 777 399
		f 3 -1173 1805 -1538
		mu 0 3 160 694 489
		f 3 1806 -1806 -1177
		mu 0 3 494 489 694
		f 3 1807 -1801 -274
		mu 0 3 238 404 239
		f 3 -661 -1808 -1572
		mu 0 3 480 404 238;
	setAttr ".fc[1000:1273]"
		f 3 -1612 -1611 1808
		mu 0 3 269 390 702
		f 3 -1809 -1193 -886
		mu 0 3 269 702 174
		f 3 1809 -1509 1810
		mu 0 3 205 326 785
		f 3 -231 -411 -1810
		mu 0 3 205 204 326
		f 3 -169 -1583 1811
		mu 0 3 155 154 795
		f 3 1812 -1601 -1600
		mu 0 3 155 798 146
		f 3 -1463 -1466 1813
		mu 0 3 776 106 508
		f 3 1814 -1814 1815
		mu 0 3 822 776 508
		f 3 1816 -1308 -844
		mu 0 3 483 485 323
		f 3 -1817 -1416 -669
		mu 0 3 485 483 281
		f 3 -1024 1817 -1325
		mu 0 3 650 649 648
		f 3 -504 -380 1818
		mu 0 3 386 283 307
		f 3 -1819 1819 -1484
		mu 0 3 386 307 779
		f 3 -1212 -1210 1820
		mu 0 3 696 134 688
		f 3 -1178 -1821 -1150
		mu 0 3 144 696 688
		f 3 1821 -1008 -1722
		mu 0 3 643 641 561
		f 3 -568 -751 1822
		mu 0 3 431 413 527
		f 3 1823 -1823 -1625
		mu 0 3 787 431 527
		f 3 -826 1824 -1386
		mu 0 3 541 568 755
		f 3 1825 -1292 1826
		mu 0 3 118 112 731
		f 3 -1826 -1144 -1145
		mu 0 3 112 118 606
		f 3 -144 1827 -156
		mu 0 3 133 132 143
		f 3 1828 -879 1829
		mu 0 3 573 116 594
		f 3 -1529 1830 -834
		mu 0 3 572 121 573
		f 3 -1441 -1297 1831
		mu 0 3 486 246 182
		f 3 -670 -1832 -1540
		mu 0 3 487 486 182
		f 3 1832 -1574 -1575
		mu 0 3 193 185 469
		f 3 -203 -1833 -212
		mu 0 3 183 185 193
		f 3 -1650 -766 1833
		mu 0 3 299 531 532
		f 3 -1834 -1213 -1215
		mu 0 3 299 532 455
		f 3 -1828 1834 1835
		mu 0 3 143 132 823
		f 3 -1836 1836 -1153
		mu 0 3 143 823 689
		f 3 -578 1837 -1669
		mu 0 3 249 181 302
		f 3 -197 -372 -1838
		mu 0 3 181 180 302
		f 3 1838 -134 -127
		mu 0 3 116 121 117
		f 3 -1829 -1831 -1839
		mu 0 3 116 573 121
		f 3 -79 1839 -1373
		mu 0 3 70 72 753
		f 3 -360 -537 1840
		mu 0 3 293 295 409
		f 3 -1630 -582 -1841
		mu 0 3 409 424 293
		f 3 1841 -1379 -1381
		mu 0 3 265 126 225
		f 3 -1842 -1059 -1123
		mu 0 3 126 265 427
		f 3 -1139 1842 -1141
		mu 0 3 658 342 652
		f 3 -1031 -1843 -435
		mu 0 3 341 652 342
		f 3 -1108 1843 -1110
		mu 0 3 7 216 452
		f 3 -309 -612 -1844
		mu 0 3 216 257 452
		f 3 -848 1844 -849
		mu 0 3 117 578 579
		f 3 -1454 -1845 -1456
		mu 0 3 593 579 578
		f 3 1845 -735 -739
		mu 0 3 523 517 521
		f 3 -626 -1326 1846
		mu 0 3 374 101 517
		f 3 1847 -249 -34
		mu 0 3 29 220 28
		f 3 -299 -300 -1848
		mu 0 3 824 50 223
		f 3 -319 -1380 1848
		mu 0 3 266 265 499
		f 3 -1202 1849 -510
		mu 0 3 3 706 391
		f 3 1850 -1850 -1203
		mu 0 3 368 701 707
		f 3 -1743 1851 -567
		mu 0 3 332 429 352
		f 3 -452 -1852 1852
		mu 0 3 353 352 429
		f 3 -190 1853 -471
		mu 0 3 172 174 368
		f 3 -1854 -1192 -1851
		mu 0 3 368 174 701
		f 3 1854 -1136 -551
		mu 0 3 420 683 234
		f 3 -1855 -1159 -1223
		mu 0 3 683 420 104
		f 3 -1084 -788 1855
		mu 0 3 668 125 546
		f 3 -1256 -1856 1856
		mu 0 3 642 668 546
		f 3 -875 -806 1857
		mu 0 3 586 557 71
		f 3 -859 -862 1858
		mu 0 3 511 525 586
		f 3 -1124 1859 1860
		mu 0 3 680 663 825
		f 3 1861 1862 -438
		mu 0 3 344 825 345
		f 3 1863 -939 -236
		mu 0 3 209 610 210
		f 3 -234 -1864 -1729
		mu 0 3 208 207 814
		f 3 -496 1864 -843
		mu 0 3 380 381 292
		f 3 -1865 -1261 -357
		mu 0 3 292 381 290
		f 3 -1784 1865 1866
		mu 0 3 161 151 826
		f 3 -176 -1867 1867
		mu 0 3 159 161 826
		f 3 1868 1869 -23
		mu 0 3 827 203 195
		f 3 -1869 -938 -941
		mu 0 3 203 827 207
		f 3 1870 -1471 -1071
		mu 0 3 664 462 663
		f 3 -1871 -1747 -1161
		mu 0 3 462 664 460
		f 3 -112 1871 -1423
		mu 0 3 104 103 763
		f 3 -1872 -1300 1872
		mu 0 3 763 103 370
		f 3 -655 1873 1874
		mu 0 3 476 475 671
		f 3 -1094 -1098 -1875
		mu 0 3 671 477 476
		f 3 -890 1875 -889
		mu 0 3 596 321 405
		f 3 -1876 -450 -531
		mu 0 3 405 321 331
		f 3 1876 1877 -502
		mu 0 3 385 828 384
		f 3 -1290 -1878 -1291
		mu 0 3 635 384 828
		f 3 1878 -725 -760
		mu 0 3 513 515 514
		f 3 1879 -1019 1880
		mu 0 3 17 200 519
		f 3 -1134 -1880 1881
		mu 0 3 681 200 17
		f 3 -534 1882 -1523
		mu 0 3 408 407 719
		f 3 1883 -1671 -1147
		mu 0 3 684 385 685
		f 3 -1877 -1884 -54
		mu 0 3 828 385 684
		f 3 -1508 -480 1884
		mu 0 3 785 176 371
		f 3 -1811 -1885 -1510
		mu 0 3 205 785 371
		f 3 1885 -723 -1096
		mu 0 3 672 513 477
		f 3 1886 -1879 -1886
		mu 0 3 672 515 513
		f 3 -1712 1887 -1713
		mu 0 3 459 449 813
		f 3 1888 -1217 -1216
		mu 0 3 829 25 198
		f 3 -51 -29 -1889
		mu 0 3 829 26 25
		f 3 1889 -1126 -1125
		mu 0 3 680 344 81
		f 3 -1862 -1890 -1861
		mu 0 3 825 344 680
		f 3 -216 -1870 -478
		mu 0 3 175 195 203
		f 3 1890 -948 -949
		mu 0 3 615 92 86
		f 3 1891 -1891 1892
		mu 0 3 830 92 615
		f 3 1893 -1432 -1434
		mu 0 3 766 765 754
		f 3 -1548 -1545 -1894
		mu 0 3 766 789 765
		f 3 -1573 1894 1895
		mu 0 3 547 679 678
		f 3 -1593 -1895 -1121
		mu 0 3 550 678 679
		f 3 1896 -998 -1697
		mu 0 3 780 504 639
		f 3 -1610 1897 -1515
		mu 0 3 433 782 786
		f 3 -986 1898 1899
		mu 0 3 614 632 567
		f 3 -158 -1149 1900
		mu 0 3 133 144 687
		f 3 -1901 -1209 -145
		mu 0 3 133 687 134
		f 3 1901 1902 -684
		mu 0 3 495 697 493
		f 3 -1176 -1184 -1902
		mu 0 3 495 694 697
		f 3 -108 -717 1903
		mu 0 3 99 96 510
		f 3 -581 -13 -1427
		mu 0 3 436 12 11
		f 3 1904 1905 -1369
		mu 0 3 91 830 752
		f 3 -100 -1892 -1905
		mu 0 3 91 92 830
		f 3 1906 -942 -233
		mu 0 3 206 611 207
		f 3 -1907 -508 -1395
		mu 0 3 611 206 390
		f 3 1907 -1302 -954
		mu 0 3 618 734 53
		f 3 1908 -1908 -1687
		mu 0 3 710 734 618
		f 3 -900 1909 1910
		mu 0 3 599 598 164
		f 3 -901 1911 -903
		mu 0 3 600 599 157
		f 3 -1858 1912 -1859
		mu 0 3 586 71 511
		f 3 -1913 -77 -718
		mu 0 3 511 71 70
		f 3 1913 1914 -178
		mu 0 3 163 157 164
		f 3 -1912 -1911 -1915
		mu 0 3 157 599 164
		f 3 -992 -302 1915
		mu 0 3 634 252 251
		f 3 -1657 -1916 1916
		mu 0 3 807 634 251
		f 3 -1820 -1485 1917
		mu 0 3 779 307 780
		f 3 -1918 -1696 -994
		mu 0 3 779 780 812
		f 3 1918 -449 -1660
		mu 0 3 783 351 139
		f 3 -1777 -1542 -1919
		mu 0 3 783 306 351
		f 3 -371 1919 -1317
		mu 0 3 738 831 314
		f 3 1920 -816 -1920
		mu 0 3 831 11 314
		f 3 1921 -1422 -980
		mu 0 3 49 37 224
		f 3 -58 1922 -1922
		mu 0 3 49 51 37
		f 3 1923 -1445 -1023
		mu 0 3 100 770 649
		f 3 -1468 -1924 -111
		mu 0 3 102 770 100
		f 3 -1701 -1699 -277
		mu 0 3 39 24 240
		f 3 -1704 -1518 1924
		mu 0 3 416 709 58
		f 3 -1265 -1925 -1266
		mu 0 3 437 416 58
		f 3 -143 1925 -1667
		mu 0 3 129 131 796
		f 3 1926 -1595 -1926
		mu 0 3 131 711 796
		f 3 1927 -1012 1928
		mu 0 3 278 397 644
		f 3 -337 -1929 -1404
		mu 0 3 279 278 644
		f 3 1929 -90 -540
		mu 0 3 411 84 83
		f 3 1930 -1391 -1394
		mu 0 3 268 316 611
		f 3 -911 -398 -1931
		mu 0 3 268 282 316
		f 3 -1525 -1460 1931
		mu 0 3 55 729 775
		f 3 -1458 1932 -1459
		mu 0 3 728 768 775
		f 3 1933 1934 -246
		mu 0 3 217 395 218
		f 3 1935 -513 -1934
		mu 0 3 686 219 393
		f 3 1936 -605 -422
		mu 0 3 334 448 335
		f 3 -1362 -1363 1937
		mu 0 3 632 564 565
		f 3 -824 -1899 -1938
		mu 0 3 565 567 632
		f 3 1938 -1337 -483
		mu 0 3 374 523 372
		f 3 -1847 -1846 -1939
		mu 0 3 374 517 523
		f 3 1939 -740 -804
		mu 0 3 556 525 524
		f 3 -872 -860 -1940
		mu 0 3 556 585 525
		f 3 -1438 -1270 1940
		mu 0 3 768 723 55
		f 3 -1932 -1933 -1941
		mu 0 3 55 775 768
		f 3 -352 1941 -1928
		mu 0 3 278 218 397
		f 3 -518 -1942 -1935
		mu 0 3 395 397 218
		f 3 -818 1942 1943
		mu 0 3 451 537 448
		f 3 -1937 1944 -1944
		mu 0 3 448 334 451
		f 3 -1414 1945 -1412
		mu 0 3 524 526 761
		f 3 -1378 1946 -162
		mu 0 3 148 554 149
		f 3 1947 -1651 -1947
		mu 0 3 554 805 149
		f 3 -286 -652 1948
		mu 0 3 34 245 165
		f 3 -181 -39 -1949
		mu 0 3 165 12 34
		f 3 1949 1950 -888
		mu 0 3 353 832 596
		f 3 -1950 -1853 1951
		mu 0 3 832 353 429
		f 3 1952 -1645 1953
		mu 0 3 705 609 612
		f 3 -1953 -1200 -937
		mu 0 3 609 705 559
		f 3 -1794 -1735 1954
		mu 0 3 51 817 816
		f 3 -1923 -1955 -1738
		mu 0 3 37 51 816
		f 3 -1251 1955 -1639
		mu 0 3 566 563 62
		f 3 -69 -1956 -819
		mu 0 3 63 62 563
		f 3 -674 -1807 1956
		mu 0 3 464 489 494
		f 3 -1957 -1564 -1563
		mu 0 3 464 494 492
		f 3 1957 -9 -1770
		mu 0 3 820 6 8
		f 3 -1958 -1694 -1264
		mu 0 3 721 718 553
		f 3 -1452 -1453 1958
		mu 0 3 772 458 457
		f 3 -653 -1684 1959
		mu 0 3 473 245 833
		f 3 1960 -1681 -1602
		mu 0 3 798 795 797
		f 3 -1813 -1812 -1961
		mu 0 3 798 155 795
		f 3 -1580 -1960 1961
		mu 0 3 457 473 833
		f 3 -389 -527 1962
		mu 0 3 310 312 403
		f 3 -660 -1710 -1963
		mu 0 3 403 480 310
		f 3 -1578 -1576 1963
		mu 0 3 444 454 0
		f 3 -597 -1964 -593
		mu 0 3 442 444 0
		f 3 1964 -734 -662
		mu 0 3 481 519 310
		f 3 1965 -1017 -1881
		mu 0 3 519 646 17
		f 3 -1450 1966 -1683
		mu 0 3 810 834 811
		f 3 -1962 -1967 -1959
		mu 0 3 457 833 772
		f 3 -754 1967 -1648
		mu 0 3 456 528 804
		f 3 1968 -1968 -1568
		mu 0 3 793 804 528
		f 3 -448 -494 1969
		mu 0 3 138 351 380
		f 3 -1214 -1970 -842
		mu 0 3 299 138 380
		f 3 -1665 1970 -1555
		mu 0 3 309 646 481
		f 3 -1966 -1965 -1971
		mu 0 3 646 519 481
		f 3 -163 -1653 1971
		mu 0 3 150 149 806
		f 3 -1972 1972 -825
		mu 0 3 150 806 568
		f 3 -228 -27 1973
		mu 0 3 202 24 14
		f 3 -837 -1283 -1974
		mu 0 3 14 575 202
		f 3 -1106 -416 1974
		mu 0 3 597 294 330
		f 3 -898 -1975 -559
		mu 0 3 425 597 330
		f 3 1975 -1294 -1275
		mu 0 3 119 731 725
		f 3 -1827 -1976 -129
		mu 0 3 118 731 119
		f 3 -1036 -1351 1976
		mu 0 3 163 654 158
		f 3 -1914 -1977 -172
		mu 0 3 157 163 158
		f 3 1977 -968 -1672
		mu 0 3 252 337 626
		f 3 -258 1978 -991
		mu 0 3 229 228 252
		f 3 -1407 1979 -399
		mu 0 3 317 760 318
		f 3 1980 -1089 -1980
		mu 0 3 760 669 318
		f 3 -1130 -1102 1981
		mu 0 3 673 414 674
		f 3 -248 1982 -1670
		mu 0 3 41 219 685
		f 3 1983 1984 -1076
		mu 0 3 600 835 667
		f 3 1985 -1350 -1985
		mu 0 3 835 583 667
		f 3 -895 1986 1987
		mu 0 3 536 535 447
		f 3 -1988 -602 -771
		mu 0 3 536 447 446
		f 3 -1979 1988 -1978
		mu 0 3 252 228 337
		f 3 -1989 -431 -428
		mu 0 3 337 228 338
		f 3 -1723 1989 -488
		mu 0 3 375 379 376
		f 3 1990 -1491 -1490
		mu 0 3 722 622 56
		f 3 -1623 -767 1991
		mu 0 3 406 534 533
		f 3 -1992 -1400 -533
		mu 0 3 406 533 60
		f 3 -1755 -1754 1992
		mu 0 3 716 595 75
		f 3 -1993 -81 -1241
		mu 0 3 716 75 74
		f 3 -1079 1993 -1077
		mu 0 3 667 162 598
		f 3 -1910 -1994 -179
		mu 0 3 164 598 162
		f 3 -442 1994 -242
		mu 0 3 214 802 215
		f 3 -1637 -1636 -1995
		mu 0 3 802 28 215
		f 3 1995 -1882 -19
		mu 0 3 16 681 17
		f 3 -1589 -1996 -919
		mu 0 3 15 681 16
		f 3 -1448 1996 1997
		mu 0 3 771 628 700
		f 3 -971 -1188 -1997
		mu 0 3 628 627 700
		f 3 -780 1998 1999
		mu 0 3 539 540 836
		f 3 -1167 2000 -1999
		mu 0 3 540 690 836
		f 3 -835 -1830 2001
		mu 0 3 571 573 594
		f 3 -1943 2002 -604
		mu 0 3 448 537 80
		f 3 -2003 -773 -87
		mu 0 3 80 537 81
		f 3 2003 -1352 -1354
		mu 0 3 159 747 695
		f 3 -2004 -1868 2004
		mu 0 3 747 159 826
		f 3 -1618 -1620 2005
		mu 0 3 440 93 441
		f 3 -592 -590 -2006
		mu 0 3 441 400 440
		f 3 2006 -786 -1591
		mu 0 3 549 545 544
		f 3 -815 2007 -2007
		mu 0 3 549 124 545
		f 3 -1802 -1800 2008
		mu 0 3 260 239 312
		f 3 -1388 -1390 -2009
		mu 0 3 756 453 758
		f 3 -346 -845 2009
		mu 0 3 285 277 577
		f 3 -2010 -1310 -363
		mu 0 3 285 577 296
		f 3 2010 -812 -2008
		mu 0 3 124 562 545
		f 3 -2011 -784 -1720
		mu 0 3 562 124 542
		f 3 2011 -305 2012
		mu 0 3 808 255 254
		f 3 -2013 -1220 -1659
		mu 0 3 808 254 634
		f 3 -1581 -651 -1579
		mu 0 3 247 165 473
		f 3 -594 -999 -1690
		mu 0 3 442 2 601
		f 3 -704 -1897 2013
		mu 0 3 355 504 780
		f 3 -2014 -1486 -456
		mu 0 3 355 780 308
		f 3 -383 -347 -362
		mu 0 3 297 283 285
		f 3 -1921 -370 -1428
		mu 0 3 764 301 210
		f 3 -1936 -1148 -1983
		mu 0 3 219 686 685
		f 3 -796 -1700 -280
		mu 0 3 551 240 201
		f 3 -1793 -298 -1798
		mu 0 3 821 250 23
		f 4 -332 -922 -267 2014
		mu 0 4 276 262 236 235
		f 3 -1092 -400 -1088
		mu 0 3 670 319 318
		f 4 -1406 2015 2016 -1981
		mu 0 4 760 322 837 669
		f 3 -2016 -891 2017
		mu 0 3 837 322 596
		f 3 -192 -1313 -514
		mu 0 3 177 176 737
		f 3 -617 -1577 -614
		mu 0 3 172 454 443
		f 3 -1001 -295 -209
		mu 0 3 190 248 191
		f 3 -1638 -1309 -668
		mu 0 3 280 296 485;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode vsVmtToTex -n "forge_spirit_vmt";
	setAttr ".mp" -type "string" "models/heroes/invoker/forge_spirit_color";
	setAttr ".bme" yes;
createNode file -n "forge_spirit_file";
	setAttr ".mv" yes;
createNode shadingEngine -n "forge_spiritSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode lambert -n "forge_spirit_mat";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -joints 0\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n"
		+ "            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n"
		+ "                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"right3\\\" -ps 1 29 100 -ps 2 71 68 -ps 3 71 32 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Graph Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"graphEditor\\\" -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode dagPose -n "bindPose1";
	setAttr -s 43 ".wm";
	setAttr -s 49 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.0028634668238146e-014
		 85.389330673256239 -19.166137420564944 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.5 -0.5 -0.49999999999999989 0.50000000000000011 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.6888974477789986 5.3440838412891572e-015
		 25.699502291003895 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.69664732757065351 0 0.71741375857218304 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 23.9169756638763 2.9510212436541159e-015
		 -1.0658141036401503e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.43797177869929582 0 0.89898872132133845 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 21.617874031189373 -1.0188351285532905e-015
		 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.20688362973497285 0 0.97836555731877783 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 24.759675754866826 -4.1788063918913284e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.19679367098177603 0 0.98044492505266023 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -1.2377060843917274e-015 7.2164496600634337e-016
		 -1.3853965339188155e-014 0 3.717047653438609 -3.6184719355657566e-014 -5.7377768568256045 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.08898506851810406 0 0.9960329600875808 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.91092994350941581 8.3992003410982488
		 11.142110991353192 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.33565118574431207 0.62236507092576865 0.071717063636474454 0.70346049127393218 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 21.781592148142238 0 -4.2632564145606011e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.89013581789873475 -0.0075187193711464539 0.45428957436460676 0.034966801060331967 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 45.685822762609405 1.4210854715202004e-014
		 -1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.42821610700804652 0 0.90367636114865446 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 47.512144857071902 1.4210854715202004e-014
		 5.3290705182007514e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.13067875710685389 0.0032275015693461226 0.024478596345325513 0.99111727055661292 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -5.5511151231257778e-017 -2.7755575615628918e-016
		 -5.5511151231257837e-016 0 5.4154598001018144 0.89946757492798213 -5.1990763064587853 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.86399761055708435 0.29703264480016334 -0.24177632221964684 0.32683932885840133 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 2.3869795029440929e-015 -2.2482016248659377e-015
		 -1.8526846723432363e-015 0 11.147689821797854 -5.623466206368839 -1.2352972601029535 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 -2.7755575615628909e-016 -6.6613381477509392e-016
		 -1.6653345369377348e-016 0 22.565190454168938 12.792817336307202 -4.6448997642390299 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.67963917799068474 0.24696971775455567 0.10696870449625877 0.68238863011540096 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 5.4123372450476125e-016 -5.5511151231254585e-017
		 -3.3306690738754696e-015 0 10.651173873920055 -5.733489025711541 -6.2725927720423309 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 2.7755575615628938e-016 -7.2442052356791401e-015
		 -1.0547118733938979e-015 0 15.005533276807681 11.118663850668804 4.1954863758342631 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.5159348921760355 -0.020263389524945524 0.424632454078755 0.74369877035216136 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 1.0269562977782615e-015 -3.1918911957973203e-015
		 -1.9706458687096552e-015 0 9.8080298137970328 1.6050723010104939 -8.7697140455024361 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.91092994350938739 -8.3992003410982168
		 11.142110991353178 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.07171706363647562 -0.70346049127393184 0.33565118574431141 0.62236507092576931 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -21.781592148142224 0
		 2.1316282072803006e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.89013581789873519 -0.007518719371147245 0.45428957436460571 0.034966801060332411 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -45.685822762609405 0
		 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.42821610700804624 0 0.90367636114865457 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -47.512144857071881 2.8421709430404007e-014
		 -2.3092638912203256e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.13067875710685395 0.0032275015693461681 0.024478596345325402 0.99111727055661292 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 7.2164496600635136e-016 3.8857805861880499e-016
		 5.5511151231257847e-016 0 -5.4154598001018242 -0.89946757492799634 5.1990763064587924 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.86399761055708424 0.29703264480016411 -0.24177632221964679 0.32683932885840106 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 1.5191840840866886e-015 2.4980018054065968e-016
		 6.5919492087118709e-016 0 -11.147689821797851 5.6234662063688532 1.2352972601029535 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 4.649058915617845e-016 7.0776717819853779e-016
		 1.3877787807814469e-016 0 -23.805570399579448 -10.056580216730376 4.7057081179165801 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.67963917799068463 0.24696971775455578 0.10696870449625899 0.68238863011540085 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 -4.0245584642661994e-016 -5.2735593669694995e-016
		 -4.9960036108132015e-016 0 -12.173709377719616 3.7818481628496228 5.324095213362348 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 -4.4408920985006281e-016 6.9388939039072284e-015
		 1.0547118733938987e-015 0 -15.787899343977697 -7.2117308307002146 -5.416863533899515 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.5159348921760375 -0.020263389524947772 0.42463245407875333 0.74369877035216103 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 1.9428902930940414e-016 -1.5777218104420236e-030
		 2.7755575615628661e-017 0 -10.894789076941253 -0.21161896416511322 4.306288597244162 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.758980985890361 -3.0928831108783959e-014
		 -22.050053242414727 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.88995860644872704 0 0.45604131261086411 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 29.243932839665032 -2.9900030355669373e-014
		 -7.1054273576010019e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.1304381175713433 0 0.99145645264148863 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 -47.512177110806419 -3.5541611936196205e-005
		 2.122254377567856e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.13067875710684454 0.0032275015693465541 0.02447859634532595 0.99111727055661414 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 -15.005474945558747 -11.118658457019578
		 -4.1954145485703194 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.026545859558197542 -0.10893492931583701 0.65296775826433706 0.74904045630561 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.25449104281526 6.5201509531931379e-005
		 -4.0979684897024526e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 -22.565121143208518 -12.792801098389148
		 4.6449147095912409 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.21409952769059537 0.19766091557615595 0.52694573684307511 0.79838571199588004 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.625918456365472 -2.0157689235134058e-005
		 -8.5266060381172792e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.4154043048106528 -0.8994138594753025
		 5.1990756952387258 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.078733080160571539 0.36549716676524968 0.4380943130311693 0.8174877956671599 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 -12.546723418463156 -2.4024377651699069e-005
		 -3.3398607968138094e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 47.512144857071917 2.8421709430404007e-014
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.13067875710685387 0.0032275015693461625 0.024478596345325475 0.99111727055661292 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 15.005533276807697 11.11866385066881
		 4.1954863758342498 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.026545859558189812 -0.10893492931584219 0.65296775826433617 0.74904045630561011 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.254493213989178 1.0658141036401503e-014
		 1.0658141036401503e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.565190454168938 12.792817336307209
		 -4.6448997642390211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.21409952769058788 0.19766091557615112 0.52694573684307688 0.79838571199588204 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.625924606583908 1.4210854715202004e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.4154598001018099 0.89946757492799634
		 -5.1990763064587853 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.078733080160563212 0.36549716676524613 0.4380943130311723 0.81748779566716057 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.546725463562396 -1.4210854715202004e-014
		 -4.2632564145606011e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 -47.512144857071874 2.8421709430404007e-014
		 -7.1054273576010019e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.13067875710685395 0.0032275015693461672 0.024478596345325409 0.99111727055661292 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.4154598001018046 -0.89946757492798213
		 5.1990763064587853 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.35999944937864586 -0.088932583020549696 -0.81644117341889078 0.44262309301565977 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.546725463562442 2.8421709430404007e-014
		 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 -15.787899343977681 -7.2117308307001906
		 -5.4168635338995159 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.12333343277224172 0.066897233538355069 -0.84352058003087482 0.51844638639873453 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.716882396772121 -2.8421709430404007e-014
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 -23.805570399579434 -10.056580216730367
		 4.7057081179165792 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.18642800003378479 -0.10704632443432749 -0.86393259108977061 0.45541866813012732 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.814758969340581 2.8421709430404007e-014
		 -2.8421709430404007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 31 ".m";
	setAttr -s 40 ".p";
	setAttr -s 32 ".g";
	setAttr ".g[9:10]" yes yes;
	setAttr ".g[12]" yes;
	setAttr ".g[14]" yes;
	setAttr ".g[16:20]" no no no yes yes;
	setAttr ".g[22]" yes;
	setAttr ".g[24]" yes;
	setAttr ".g[28:41]" yes yes no yes no yes no no no no no no no no;
	setAttr ".g[49:55]" no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	setAttr -s 774 ".wl";
	setAttr ".wl[0].w[5]"  1;
	setAttr ".wl[1].w[5]"  1;
	setAttr ".wl[2].w[5]"  1;
	setAttr ".wl[3].w[4]"  1;
	setAttr ".wl[4].w[4]"  1;
	setAttr ".wl[5].w[5]"  1;
	setAttr ".wl[6].w[5]"  1;
	setAttr ".wl[7].w[5]"  1;
	setAttr ".wl[8].w[5]"  0.99999999999999989;
	setAttr -s 3 ".wl[9].w[3:5]"  0.04201347259363105 0.94385949461389451 
		0.014127032792474474;
	setAttr -s 3 ".wl[10].w[3:5]"  0.029452137578251485 0.96032259730674829 
		0.010225265115000211;
	setAttr -s 3 ".wl[11].w[3:5]"  0.16797461153630983 0.75637131398463808 
		0.075654074479052022;
	setAttr -s 3 ".wl[12].w[3:5]"  0.36420852262744491 0.47175562430671181 
		0.16403585306584326;
	setAttr -s 3 ".wl[13].w[3:5]"  0.40730908220054773 0.40924300648141487 
		0.18344791131803737;
	setAttr -s 3 ".wl[14].w[3:5]"  0.3783940705761486 0.47518943584977547 
		0.14641649357407574;
	setAttr -s 3 ".wl[15].w[3:5]"  0.45245102307929624 0.35586028007672871 
		0.19168869684397505;
	setAttr -s 4 ".wl[16].w[2:5]"  0.094481356580631948 0.43816255044687102 
		0.38437692910513543 0.082979163867361566;
	setAttr -s 4 ".wl[17].w[2:5]"  0.19267248188291111 0.59190432318162589 
		0.2056498123887987 0.0097733825466643654;
	setAttr -s 4 ".wl[18].w[2:5]"  0.04607745583220843 0.46025222707893332 
		0.28245684168965318 0.2112134753992051;
	setAttr -s 4 ".wl[19].w[2:5]"  0.14991755734123299 0.47599527646211148 
		0.33210499552015843 0.041982170676497073;
	setAttr -s 4 ".wl[20].w[2:5]"  0.17257910373012381 0.4425152150363787 
		0.37869370493840615 0.0062119762950913768;
	setAttr -s 4 ".wl[21].w[2:5]"  0.2217787220214259 0.49240138264591216 
		0.27872358582281742 0.007096309509844515;
	setAttr -s 4 ".wl[22].w[2:5]"  0.057438311893529971 0.49780010646863315 
		0.31981002739251174 0.12495155424532504;
	setAttr -s 3 ".wl[23].w[2:4]"  0.2563085193856286 0.48731433334062402 
		0.25637714727374739;
	setAttr -s 4 ".wl[24].w[2:5]"  0.24522363954595566 0.50594599851257749 
		0.23870951636570242 0.010120845575764488;
	setAttr -s 3 ".wl[25].w[2:4]"  0.28273184254283196 0.52491664938320237 
		0.19235150807396567;
	setAttr -s 3 ".wl[26].w[2:4]"  0.37873439606067749 0.44808749919060087 
		0.17317810474872164;
	setAttr -s 3 ".wl[27].w[2:4]"  0.39679063823798838 0.44923032449811467 
		0.153979037263897;
	setAttr -s 3 ".wl[28].w[2:4]"  0.4288578471488575 0.45522736024669552 
		0.11591479260444695;
	setAttr -s 3 ".wl[29].w[2:4]"  0.44457224291121655 0.46277954478614325 
		0.09264821230264024;
	setAttr -s 3 ".wl[30].w[2:4]"  0.44458710931843498 0.46022509826037128 
		0.095187792421193837;
	setAttr -s 3 ".wl[31].w[2:4]"  0.43841294683015858 0.49477122309170074 
		0.066815830078140764;
	setAttr -s 2 ".wl[32].w";
	setAttr ".wl[32].w[2]" 0.15806511224462289;
	setAttr ".wl[32].w[16]" 0.84193488775537717;
	setAttr ".wl[33].w[6]"  1;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[2:4]" 0.24256697306933384 0.19810846677854618 0.032036820264406095;
	setAttr ".wl[34].w[16:17]" 0.28146375124286943 0.24582398864484448;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[2:4]" 0.44964202301385742 0.37076296681161897 0.057995519774131157;
	setAttr ".wl[35].w[6]" 0.017261421911703091;
	setAttr ".wl[35].w[16]" 0.10433806848868939;
	setAttr -s 4 ".wl[36].w";
	setAttr ".wl[36].w[2:4]" 0.43999019393602018 0.44052250664333659 0.11791122937505936;
	setAttr ".wl[36].w[6]" 0.0015760700455838183;
	setAttr -s 4 ".wl[37].w";
	setAttr ".wl[37].w[2:4]" 0.43380614892433322 0.45872036031471847 0.07166931313115954;
	setAttr ".wl[37].w[6]" 0.035804177629788825;
	setAttr -s 4 ".wl[38].w";
	setAttr ".wl[38].w[2]" 0.076831651457028388;
	setAttr ".wl[38].w[5:7]" 0.00016413849931803349 0.49370286794239249 0.42930134210126114;
	setAttr ".wl[39].w[6]"  1;
	setAttr -s 4 ".wl[40].w";
	setAttr ".wl[40].w[2:4]" 0.44660172761446593 0.124090820318336 0.033583822687367898;
	setAttr ".wl[40].w[6]" 0.39572362937983008;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[2:4]" 0.42502315063251722 0.29370915894054866 0.046225537844954624;
	setAttr ".wl[41].w[6:7]" 0.19513458633072303 0.039907566251256577;
	setAttr -s 4 ".wl[42].w";
	setAttr ".wl[42].w[2:4]" 0.44565732014006643 0.44376083848440961 0.018962732601244273;
	setAttr ".wl[42].w[6]" 0.091619108774279645;
	setAttr ".wl[43].w[16]"  1;
	setAttr -s 3 ".wl[44].w";
	setAttr ".wl[44].w[2:3]" 0.45098124501099879 0.45071665498263952;
	setAttr ".wl[44].w[6]" 0.098302100006361609;
	setAttr -s 3 ".wl[45].w";
	setAttr ".wl[45].w[2:3]" 0.45483552961199425 0.45293932747247878;
	setAttr ".wl[45].w[6]" 0.092225142915527122;
	setAttr -s 4 ".wl[46].w";
	setAttr ".wl[46].w[2:4]" 0.44407914456949821 0.43585859548890821 0.0050785294902266596;
	setAttr ".wl[46].w[6]" 0.11498373045136698;
	setAttr ".wl[47].w[16]"  1;
	setAttr -s 4 ".wl[48].w";
	setAttr ".wl[48].w[2:3]" 0.45737845599030613 0.029311872264562451;
	setAttr ".wl[48].w[6]" 0.005833996488033062;
	setAttr ".wl[48].w[16]" 0.50747567525709825;
	setAttr ".wl[49].w[16]"  1;
	setAttr ".wl[50].w[16]"  1;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[2]" 0.020454973215134894;
	setAttr ".wl[51].w[5:8]" 0.00050948199270396427 0.48228940547234378 0.49642031944970827 
		0.00032581987010908789;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[2:3]" 0.18052745695292233 0.001029456978054286;
	setAttr ".wl[52].w[6]" 0.0014745991749384516;
	setAttr ".wl[52].w[16:17]" 0.54322793454892027 0.27374055234516453;
	setAttr -s 6 ".wl[53].w";
	setAttr ".wl[53].w[2:4]" 0.37241951928464434 0.066424704246929603 0.0083401819740311061;
	setAttr ".wl[53].w[6]" 0.021272502780605815;
	setAttr ".wl[53].w[16:17]" 0.34897772642677638 0.18256536528701278;
	setAttr ".wl[54].w[6]"  1;
	setAttr ".wl[55].w[6]"  1;
	setAttr ".wl[56].w[2]"  1;
	setAttr ".wl[57].w[6]"  1;
	setAttr ".wl[58].w[6]"  1;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[2:3]" 0.52994780540275843 0.063520919233626294;
	setAttr ".wl[59].w[6]" 0.40653127536361533;
	setAttr ".wl[60].w[2]"  1;
	setAttr -s 3 ".wl[61].w";
	setAttr ".wl[61].w[2]" 0.98637172111520932;
	setAttr ".wl[61].w[16:17]" 0.0094068641478812602 0.0042214147369093354;
	setAttr ".wl[62].w[2]"  1;
	setAttr ".wl[63].w[2]"  1;
	setAttr -s 3 ".wl[64].w";
	setAttr ".wl[64].w[2:3]" 0.99755144720687206 0.00072703527805096551;
	setAttr ".wl[64].w[6]" 0.0017215175150769794;
	setAttr ".wl[65].w[2]"  1;
	setAttr ".wl[66].w[2]"  0.99999999999999989;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[2:3]" 0.4911496582263622 0.02699410429341453;
	setAttr ".wl[67].w[6]" 0.44823514453622537;
	setAttr ".wl[67].w[16:17]" 0.032705984229796106 0.00091510871420181204;
	setAttr -s 3 ".wl[68].w";
	setAttr ".wl[68].w[2:3]" 0.9987981324801698 0.0003407770671380125;
	setAttr ".wl[68].w[6]" 0.0008610904526922035;
	setAttr ".wl[69].w[2]"  1;
	setAttr ".wl[70].w[2]"  1;
	setAttr -s 6 ".wl[71].w";
	setAttr ".wl[71].w[0:3]" 0.0002389180890053663 0.066052693699618498 0.47244693638713253 
		0.0386354296146591;
	setAttr ".wl[71].w[6:7]" 0.39105112961378802 0.031574892595796357;
	setAttr ".wl[72].w[2]"  1;
	setAttr ".wl[73].w[2]"  1;
	setAttr ".wl[74].w[2]"  1;
	setAttr ".wl[75].w[2]"  1;
	setAttr ".wl[76].w[2]"  1;
	setAttr -s 4 ".wl[77].w";
	setAttr ".wl[77].w[2:3]" 0.5092022395868826 0.039587001086231102;
	setAttr ".wl[77].w[6:7]" 0.42453973773055914 0.02667102159632714;
	setAttr ".wl[78].w[2]"  1;
	setAttr ".wl[79].w[2]"  1;
	setAttr ".wl[80].w[2]"  1;
	setAttr ".wl[81].w[2]"  1;
	setAttr ".wl[82].w[4]"  1;
	setAttr ".wl[83].w[4]"  1;
	setAttr ".wl[84].w[4]"  1;
	setAttr ".wl[85].w[4]"  1;
	setAttr ".wl[86].w[4]"  1;
	setAttr -s 3 ".wl[87].w[3:5]"  0.42740809223943727 0.44714554921944955 
		0.12544635854111325;
	setAttr ".wl[88].w[4]"  1;
	setAttr ".wl[89].w[4]"  1;
	setAttr ".wl[90].w[5]"  1;
	setAttr ".wl[91].w[5]"  1;
	setAttr ".wl[92].w[4]"  1;
	setAttr ".wl[93].w[4]"  1;
	setAttr ".wl[94].w[5]"  1;
	setAttr ".wl[95].w[4]"  1;
	setAttr ".wl[96].w[5]"  1;
	setAttr -s 4 ".wl[97].w";
	setAttr ".wl[97].w[2:4]" 0.46845468010357694 0.33626171962460849 0.050388085201857426;
	setAttr ".wl[97].w[6]" 0.14489551506995726;
	setAttr ".wl[98].w[2]"  1;
	setAttr ".wl[99].w[2]"  1;
	setAttr ".wl[100].w[5]"  1;
	setAttr ".wl[101].w[5]"  1;
	setAttr ".wl[102].w[5]"  1;
	setAttr ".wl[103].w[4]"  1;
	setAttr ".wl[104].w[5]"  1;
	setAttr ".wl[105].w[4]"  1;
	setAttr ".wl[106].w[2]"  1;
	setAttr ".wl[107].w[5]"  0.99999999999999989;
	setAttr ".wl[108].w[2]"  1;
	setAttr ".wl[109].w[2]"  1;
	setAttr ".wl[110].w[4]"  1;
	setAttr ".wl[111].w[5]"  1;
	setAttr ".wl[112].w[4]"  1;
	setAttr -s 2 ".wl[113].w";
	setAttr ".wl[113].w[2]" 0.4129347275789757;
	setAttr ".wl[113].w[6]" 0.58706527242102424;
	setAttr ".wl[114].w[4]"  1;
	setAttr -s 5 ".wl[115].w";
	setAttr ".wl[115].w[2:3]" 0.46760840901151118 0.0048098103059132672;
	setAttr ".wl[115].w[6]" 0.037667009074974368;
	setAttr ".wl[115].w[16:17]" 0.43863726135432679 0.051277510253274289;
	setAttr ".wl[116].w[4]"  1;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[2:3]" 0.98641640799610819 0.0014111574729092316;
	setAttr ".wl[117].w[6]" 0.0023993850095653563;
	setAttr ".wl[117].w[16:17]" 0.0073021347306020988 0.0024709147908151211;
	setAttr ".wl[118].w[4]"  0.99999999999999989;
	setAttr -s 5 ".wl[119].w";
	setAttr ".wl[119].w[2:3]" 0.95837726857075778 0.0025660089756185086;
	setAttr ".wl[119].w[6]" 0.0042057849213483402;
	setAttr ".wl[119].w[16:17]" 0.028803970313449435 0.0060469672188258484;
	setAttr ".wl[120].w[4]"  1;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[2:3]" 0.96697036465295838 8.2960000375956094e-005;
	setAttr ".wl[121].w[6]" 0.00021688480624341988;
	setAttr ".wl[121].w[16:17]" 0.024438591304255065 0.0082911992361671769;
	setAttr ".wl[122].w[4]"  1;
	setAttr ".wl[123].w[5]"  1;
	setAttr ".wl[124].w[4]"  1;
	setAttr ".wl[125].w[4]"  1;
	setAttr -s 2 ".wl[126].w";
	setAttr ".wl[126].w[2]" 0.31115287089115445;
	setAttr ".wl[126].w[6]" 0.68884712910884549;
	setAttr ".wl[127].w[4]"  1;
	setAttr -s 3 ".wl[128].w";
	setAttr ".wl[128].w[2]" 0.11721584734385851;
	setAttr ".wl[128].w[16:17]" 0.61239902640058907 0.2703851262555525;
	setAttr -s 2 ".wl[129].w";
	setAttr ".wl[129].w[2]" 0.12145831002761363;
	setAttr ".wl[129].w[6]" 0.87854168997238646;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[2:4]" 0.29739402416945659 0.38248208983115473 0.11621134864983981;
	setAttr ".wl[130].w[6:7]" 0.10195626867477446 0.10195626867477443;
	setAttr ".wl[131].w[4]"  1;
	setAttr ".wl[132].w[2]"  1;
	setAttr -s 3 ".wl[133].w[2:4]"  0.30205620601111122 0.46232960058878569 
		0.2356141934001032;
	setAttr ".wl[134].w[5]"  1;
	setAttr -s 5 ".wl[135].w";
	setAttr ".wl[135].w[2:3]" 0.97734767856196925 0.0016616706105499104;
	setAttr ".wl[135].w[6]" 0.0028960775223605224;
	setAttr ".wl[135].w[16:17]" 0.013510806959872907 0.0045837663452474127;
	setAttr -s 2 ".wl[136].w";
	setAttr ".wl[136].w[2]" 0.13464304763277193;
	setAttr ".wl[136].w[6]" 0.8653569523672282;
	setAttr -s 5 ".wl[137].w";
	setAttr ".wl[137].w[2:4]" 0.14925094513199047 0.063480254258674193 0.010265616251007107;
	setAttr ".wl[137].w[16:17]" 0.43985008403758508 0.33715310032074314;
	setAttr -s 3 ".wl[138].w[3:5]"  0.044770266921665962 0.94017572802029725 
		0.015054005058036784;
	setAttr -s 3 ".wl[139].w[2:4]"  0.44007845595322603 0.45594158751544123 
		0.10397995653133266;
	setAttr ".wl[140].w[4]"  1;
	setAttr -s 4 ".wl[141].w";
	setAttr ".wl[141].w[2]" 0.043834405836838106;
	setAttr ".wl[141].w[5]" 0.00059450763901874296;
	setAttr ".wl[141].w[16:17]" 0.4744530823776581 0.48111800414648509;
	setAttr -s 4 ".wl[142].w";
	setAttr ".wl[142].w[2:4]" 0.52419849722723211 0.29763298750160794 0.022668995947198164;
	setAttr ".wl[142].w[6]" 0.1554995193239618;
	setAttr ".wl[143].w[4]"  0.99999999999999989;
	setAttr -s 3 ".wl[144].w[2:4]"  0.3863546023667459 0.47850877983013407 
		0.13513661780312008;
	setAttr -s 3 ".wl[145].w[2:4]"  0.34073531160700221 0.45174671757111479 
		0.20751797082188306;
	setAttr ".wl[146].w[2]"  1;
	setAttr ".wl[147].w[2]"  1;
	setAttr -s 5 ".wl[148].w";
	setAttr ".wl[148].w[2:3]" 0.9596149709166788 0.010598339294894902;
	setAttr ".wl[148].w[6]" 0.016256755223092535;
	setAttr ".wl[148].w[16:17]" 0.011182362976659446 0.002347571588674287;
	setAttr ".wl[149].w[4]"  1;
	setAttr -s 3 ".wl[150].w[2:4]"  0.34843989026580796 0.44112760482562896 
		0.21043250490856311;
	setAttr ".wl[151].w[4]"  1;
	setAttr ".wl[152].w[4]"  0.99999999999999989;
	setAttr ".wl[153].w[16]"  1;
	setAttr ".wl[154].w[5]"  1;
	setAttr -s 4 ".wl[155].w";
	setAttr ".wl[155].w[2]" 0.072787946228505554;
	setAttr ".wl[155].w[5:7]" 0.00014596932723221737 0.62822367746614782 0.29884240697811443;
	setAttr -s 3 ".wl[156].w[3:5]"  0.46686017945508379 0.36045365088661713 
		0.17268616965829908;
	setAttr -s 3 ".wl[157].w";
	setAttr ".wl[157].w[2]" 0.95513784982334116;
	setAttr ".wl[157].w[16:17]" 0.031714128129572958 0.013148022047085883;
	setAttr -s 3 ".wl[158].w[2:4]"  0.35869332649188085 0.46784245510370776 
		0.17346421840441137;
	setAttr -s 3 ".wl[159].w[2:4]"  0.20599314383441308 0.46963672804086276 
		0.3243701281247241;
	setAttr ".wl[160].w[2]"  1;
	setAttr -s 5 ".wl[161].w";
	setAttr ".wl[161].w[2:3]" 0.94961145410596259 0.0081236889772601691;
	setAttr ".wl[161].w[6]" 0.012234728142037033;
	setAttr ".wl[161].w[16:17]" 0.022985140463924695 0.0070449883108155108;
	setAttr ".wl[162].w[2]"  1;
	setAttr -s 2 ".wl[163].w";
	setAttr ".wl[163].w[2]" 0.3653461353898006;
	setAttr ".wl[163].w[6]" 0.63465386461019935;
	setAttr -s 3 ".wl[164].w[2:4]"  0.27734780442492152 0.48049265502210387 
		0.24215954055297467;
	setAttr -s 3 ".wl[165].w[3:5]"  0.42661443938190358 0.42425799506664524 
		0.1491275655514511;
	setAttr ".wl[166].w[4]"  1;
	setAttr ".wl[167].w[4]"  1;
	setAttr -s 3 ".wl[168].w";
	setAttr ".wl[168].w[2]" 0.82347236023456905;
	setAttr ".wl[168].w[16:17]" 0.12041889344291963 0.056108746322511366;
	setAttr -s 3 ".wl[169].w[3:5]"  0.40592276053397758 0.46048310728867725 
		0.13359413217734509;
	setAttr ".wl[170].w[16]"  1;
	setAttr ".wl[171].w[4]"  1;
	setAttr -s 3 ".wl[172].w[3:5]"  0.33858529164635137 0.55379928984313165 
		0.10761541851051709;
	setAttr -s 3 ".wl[173].w[2:4]"  0.42740454726746674 0.46004877644732073 
		0.11254667628521255;
	setAttr ".wl[174].w[5]"  1;
	setAttr ".wl[175].w[4]"  1;
	setAttr -s 5 ".wl[176].w";
	setAttr ".wl[176].w[2:3]" 0.63832900727109476 0.033709040677999826;
	setAttr ".wl[176].w[6]" 0.21463597154463609;
	setAttr ".wl[176].w[16:17]" 0.11024144091442765 0.0030845395918417179;
	setAttr ".wl[177].w[4]"  1;
	setAttr -s 3 ".wl[178].w[2:4]"  0.42487305113317464 0.4791396309288406 
		0.095987317937984776;
	setAttr -s 3 ".wl[179].w[2:4]"  0.37885124127942471 0.48137543567229912 
		0.13977332304827611;
	setAttr -s 4 ".wl[180].w";
	setAttr ".wl[180].w[2:4]" 0.33503869103179695 0.50089558386576516 0.16391592754157125;
	setAttr ".wl[180].w[6]" 0.0001497975608668961;
	setAttr ".wl[181].w[2]"  1;
	setAttr -s 5 ".wl[182].w";
	setAttr ".wl[182].w[2:4]" 0.30331238977942648 0.2672518373092696 0.043218239427285553;
	setAttr ".wl[182].w[6:7]" 0.21103894998150707 0.17517858350251136;
	setAttr ".wl[183].w[4]"  1;
	setAttr -s 5 ".wl[184].w";
	setAttr ".wl[184].w[2:4]" 0.29241852094156906 0.35171616686888907 0.098470323604704341;
	setAttr ".wl[184].w[6:7]" 0.12869749429241881 0.12869749429241878;
	setAttr ".wl[185].w[4]"  1;
	setAttr -s 4 ".wl[186].w";
	setAttr ".wl[186].w[2:4]" 0.30946798157630589 0.099985269580426195 0.029591922035811385;
	setAttr ".wl[186].w[16]" 0.56095482680745656;
	setAttr ".wl[187].w[5]"  1;
	setAttr ".wl[188].w[4]"  1;
	setAttr ".wl[189].w[4]"  1;
	setAttr ".wl[190].w[2]"  1;
	setAttr -s 2 ".wl[191].w";
	setAttr ".wl[191].w[2]" 0.23892292388682651;
	setAttr ".wl[191].w[16]" 0.76107707611317355;
	setAttr -s 4 ".wl[192].w";
	setAttr ".wl[192].w[2:3]" 0.44502651661964021 0.011911668496055327;
	setAttr ".wl[192].w[6:7]" 0.44816779176677124 0.094894023117533297;
	setAttr -s 4 ".wl[193].w";
	setAttr ".wl[193].w[2:4]" 0.47425976217121696 0.029059051969266954 0.008586422677129224;
	setAttr ".wl[193].w[6]" 0.48809476318238687;
	setAttr ".wl[194].w[4]"  1;
	setAttr -s 4 ".wl[195].w";
	setAttr ".wl[195].w[2:3]" 0.46310492362073358 0.015122355582030339;
	setAttr ".wl[195].w[6:7]" 0.49542462115435076 0.026348099642885318;
	setAttr ".wl[196].w[2]"  1;
	setAttr -s 3 ".wl[197].w[3:5]"  0.38720496001935312 0.31948040484465273 
		0.2933146351359941;
	setAttr ".wl[198].w[4]"  1;
	setAttr -s 5 ".wl[199].w";
	setAttr ".wl[199].w[2:4]" 0.11261471452857015 0.069022771475706096 0.013200247651231572;
	setAttr ".wl[199].w[16:17]" 0.40258113317224609 0.40258113317224609;
	setAttr ".wl[200].w[16]"  1;
	setAttr -s 5 ".wl[201].w";
	setAttr ".wl[201].w[2:4]" 0.1704286459862587 0.21672968894358724 0.078703982789846291;
	setAttr ".wl[201].w[6:7]" 0.26706884114015389 0.26706884114015383;
	setAttr -s 4 ".wl[202].w[2:5]"  0.054485447177983877 0.49233952356891508 
		0.32508474112067914 0.12809028813242188;
	setAttr -s 3 ".wl[203].w[2:4]"  0.2638799726663324 0.48711097803757691 
		0.24900904929609077;
	setAttr -s 4 ".wl[204].w";
	setAttr ".wl[204].w[2:3]" 0.44244059605229941 0.0077449766691299344;
	setAttr ".wl[204].w[6]" 0.0013069335826690848;
	setAttr ".wl[204].w[16]" 0.54850749369590157;
	setAttr -s 3 ".wl[205].w[2:4]"  0.33308429011814711 0.49100894650443833 
		0.17590676337741457;
	setAttr ".wl[206].w[5]"  1;
	setAttr -s 3 ".wl[207].w[2:4]"  0.25887216115296652 0.50303752435557325 
		0.23809031449146026;
	setAttr -s 3 ".wl[208].w[3:5]"  0.44956099123493487 0.34427508584415523 
		0.2061639229209099;
	setAttr ".wl[209].w[4]"  1;
	setAttr -s 3 ".wl[210].w[2:4]"  0.33542463567458619 0.44520549399453441 
		0.2193698703308794;
	setAttr -s 6 ".wl[211].w";
	setAttr ".wl[211].w[2:4]" 0.7642851469555979 0.10889946954041341 0.010208271519923725;
	setAttr ".wl[211].w[6]" 0.065566645160091516;
	setAttr ".wl[211].w[16:17]" 0.033509956851405238 0.017530509972568348;
	setAttr -s 4 ".wl[212].w";
	setAttr ".wl[212].w[2:3]" 0.4097904866042682 0.1217074023099472;
	setAttr ".wl[212].w[6]" 0.020537633376261161;
	setAttr ".wl[212].w[16]" 0.44796447770952341;
	setAttr -s 3 ".wl[213].w";
	setAttr ".wl[213].w[2:3]" 0.66026838453321168 0.059945682302186817;
	setAttr ".wl[213].w[6]" 0.27978593316460149;
	setAttr -s 3 ".wl[214].w[3:5]"  0.17198432563862243 0.77018593408761715 
		0.057829740273760359;
	setAttr -s 3 ".wl[215].w[2:4]"  0.32833500984580255 0.49043535193181975 
		0.1812296382223777;
	setAttr -s 3 ".wl[216].w[3:5]"  0.44020897553791621 0.39891471372313542 
		0.16087631073894829;
	setAttr ".wl[217].w[2]"  1;
	setAttr ".wl[218].w[6]"  1;
	setAttr -s 4 ".wl[219].w";
	setAttr ".wl[219].w[2]" 0.27926687665018934;
	setAttr ".wl[219].w[6:8]" 0.57235471116883307 0.14783733590972301 0.00054107627125445058;
	setAttr -s 3 ".wl[220].w[3:5]"  0.60603104490670789 0.31260284875635647 
		0.08136610633693564;
	setAttr ".wl[221].w[5]"  1;
	setAttr -s 5 ".wl[222].w";
	setAttr ".wl[222].w[2:3]" 0.50861249281811449 0.014525208788936534;
	setAttr ".wl[222].w[6]" 0.19646091112106845;
	setAttr ".wl[222].w[16:17]" 0.27276934052687474 0.0076320467450057463;
	setAttr -s 4 ".wl[223].w[2:5]"  0.23736523997675288 0.45498899327202924 
		0.30202366021927041 0.005622106531947499;
	setAttr -s 3 ".wl[224].w[2:4]"  0.2457924726151105 0.55906544043108974 
		0.19514208695379964;
	setAttr ".wl[225].w[6]"  1;
	setAttr ".wl[226].w[4]"  1;
	setAttr -s 3 ".wl[227].w[2:4]"  0.45200739531166556 0.47208181945056032 
		0.075910785237774017;
	setAttr -s 3 ".wl[228].w[2:4]"  0.32177629624327408 0.48609704391007175 
		0.19212665984665411;
	setAttr -s 5 ".wl[229].w";
	setAttr ".wl[229].w[2:3]" 0.50887950668523874 0.024403823574141132;
	setAttr ".wl[229].w[6]" 0.20546522577507839;
	setAttr ".wl[229].w[16:17]" 0.25414062596301906 0.0071108180025228332;
	setAttr ".wl[230].w[4]"  1;
	setAttr ".wl[231].w[2]"  1;
	setAttr -s 4 ".wl[232].w";
	setAttr ".wl[232].w[2:3]" 0.44187672192906285 0.02681552204864324;
	setAttr ".wl[232].w[6]" 0.0059118712869707466;
	setAttr ".wl[232].w[16]" 0.52539588473532317;
	setAttr -s 4 ".wl[233].w";
	setAttr ".wl[233].w[2]" 0.032201626331016156;
	setAttr ".wl[233].w[5:7]" 0.0009562965180381055 0.47199115397770847 0.49485092317323731;
	setAttr ".wl[234].w[5]"  1;
	setAttr -s 4 ".wl[235].w";
	setAttr ".wl[235].w[2:4]" 0.45327747041471045 0.45430449693861902 0.034928868791032762;
	setAttr ".wl[235].w[6]" 0.057489163855637813;
	setAttr -s 3 ".wl[236].w";
	setAttr ".wl[236].w[2:3]" 0.97717826829545573 0.0029334247903340369;
	setAttr ".wl[236].w[6]" 0.019888306914210237;
	setAttr ".wl[237].w[4]"  1;
	setAttr ".wl[238].w[6]"  1;
	setAttr -s 6 ".wl[239].w";
	setAttr ".wl[239].w[2:4]" 0.37059139593242341 0.30994319968954559 0.049975347996466399;
	setAttr ".wl[239].w[6]" 0.0012990846287633132;
	setAttr ".wl[239].w[16:17]" 0.17607730592212398 0.092113665830677469;
	setAttr -s 7 ".wl[240].w";
	setAttr ".wl[240].w[0:3]" 0.00080122321777459707 0.22151086177279566 0.40561566269443111 
		0.036682340472756474;
	setAttr ".wl[240].w[6]" 0.28726996775318009;
	setAttr ".wl[240].w[16:17]" 0.035464844182542796 0.012655099906519274;
	setAttr -s 4 ".wl[241].w[2:5]"  0.18369669201861968 0.48324766312645806 
		0.28947345580438777 0.04358218905053457;
	setAttr -s 4 ".wl[242].w[2:5]"  0.16035312887209208 0.4752696935974739 
		0.33006502688700445 0.034312150643429566;
	setAttr -s 3 ".wl[243].w[3:5]"  0.42483312618777491 0.42058820755565779 
		0.1545786662565673;
	setAttr -s 4 ".wl[244].w[2:5]"  0.23656451376562904 0.50320470051721999 
		0.23169679362645423 0.028533992090696614;
	setAttr ".wl[245].w[5]"  1;
	setAttr -s 3 ".wl[246].w[2:4]"  0.32064784448138894 0.49034320823052396 
		0.18900894728808706;
	setAttr ".wl[247].w[6]"  1;
	setAttr -s 4 ".wl[248].w[2:5]"  0.1708186809701211 0.45275144990998006 
		0.36101878452095487 0.015411084598944004;
	setAttr ".wl[249].w[4]"  1;
	setAttr -s 2 ".wl[250].w";
	setAttr ".wl[250].w[2]" 0.19865299859422023;
	setAttr ".wl[250].w[6]" 0.80134700140577986;
	setAttr ".wl[251].w[2]"  1;
	setAttr ".wl[252].w[4]"  1;
	setAttr -s 3 ".wl[253].w";
	setAttr ".wl[253].w[2]" 0.87969824661288731;
	setAttr ".wl[253].w[16:17]" 0.083266144457654179 0.037035608929458515;
	setAttr -s 7 ".wl[254].w";
	setAttr ".wl[254].w[0:3]" 4.7715837587014543e-005 0.013191799825106687 
		0.45978859777302061 0.026085494931877513;
	setAttr ".wl[254].w[6]" 0.20428301987632402;
	setAttr ".wl[254].w[16:17]" 0.21859943028772894 0.078003941468355167;
	setAttr ".wl[255].w[2]"  1;
	setAttr ".wl[256].w[4]"  1;
	setAttr -s 3 ".wl[257].w[3:5]"  0.42701965952899679 0.33012970482932008 
		0.2428506356416831;
	setAttr ".wl[258].w[5]"  1;
	setAttr -s 7 ".wl[259].w";
	setAttr ".wl[259].w[0:3]" 0.00079029190197724001 0.21848872620699339 0.36528465254765974 
		0.02117326236080978;
	setAttr ".wl[259].w[6]" 0.16581391255928185;
	setAttr ".wl[259].w[16:17]" 0.16836914129118496 0.060080013132093053;
	setAttr ".wl[260].w[16]"  1;
	setAttr ".wl[261].w[2]"  1;
	setAttr ".wl[262].w[16]"  1;
	setAttr ".wl[263].w[2]"  1;
	setAttr -s 3 ".wl[264].w[3:5]"  0.089688954104814228 0.87939236873234228 
		0.03091867716284347;
	setAttr -s 5 ".wl[265].w";
	setAttr ".wl[265].w[2:4]" 0.19870418181116067 0.11587830158306493 0.018739089654916864;
	setAttr ".wl[265].w[16:17]" 0.38939372846949039 0.27728469848136722;
	setAttr -s 4 ".wl[266].w[2:5]"  0.025261519485050246 0.50167610863766676 
		0.32446204396199985 0.14860032791528305;
	setAttr ".wl[267].w[4]"  1;
	setAttr -s 3 ".wl[268].w[3:5]"  0.44389814811966921 0.37959858199533397 
		0.17650326988499676;
	setAttr -s 3 ".wl[269].w[2:4]"  0.27704537392932355 0.51963926913100678 
		0.20331535693966968;
	setAttr ".wl[270].w[6]"  1;
	setAttr ".wl[271].w[4]"  1;
	setAttr -s 3 ".wl[272].w[3:5]"  0.0021930590530079065 0.99706952470298538 
		0.00073741624400674608;
	setAttr ".wl[273].w[6]"  1;
	setAttr -s 3 ".wl[274].w";
	setAttr ".wl[274].w[2:3]" 0.58783597246527053 0.084400480004358333;
	setAttr ".wl[274].w[6]" 0.32776354753037112;
	setAttr ".wl[275].w[2]"  1;
	setAttr ".wl[276].w[4]"  1;
	setAttr -s 6 ".wl[277].w";
	setAttr ".wl[277].w[2:4]" 0.33993398121974755 0.25224608357855233 0.040538288529770948;
	setAttr ".wl[277].w[6]" 0.0022437985659351897;
	setAttr ".wl[277].w[16:17]" 0.23966086715758939 0.12537698094840474;
	setAttr ".wl[278].w[5]"  1;
	setAttr -s 4 ".wl[279].w[2:5]"  0.2428024771932927 0.45670365267058366 
		0.29843826322234901 0.0020556069137748433;
	setAttr ".wl[280].w[16]"  1;
	setAttr ".wl[281].w[2]"  1;
	setAttr ".wl[282].w[4]"  1;
	setAttr ".wl[283].w[4]"  1;
	setAttr -s 3 ".wl[284].w[2:4]"  0.2404111916632031 0.48485113087253451 
		0.27473767746426236;
	setAttr ".wl[285].w[6]"  1;
	setAttr ".wl[286].w[6]"  1;
	setAttr ".wl[287].w[4]"  1;
	setAttr ".wl[288].w[5]"  1.0000000000000002;
	setAttr -s 4 ".wl[289].w";
	setAttr ".wl[289].w[2:4]" 0.45959687434615693 0.47058406023939042 0.025561408530993146;
	setAttr ".wl[289].w[6]" 0.044257656883459694;
	setAttr -s 4 ".wl[290].w";
	setAttr ".wl[290].w[2:4]" 0.43575694304256329 0.44249660927093232 0.096225933055964191;
	setAttr ".wl[290].w[6]" 0.02552051463054027;
	setAttr -s 3 ".wl[291].w[2:4]"  0.28692072719244427 0.46659164705220191 
		0.24648762575535382;
	setAttr -s 5 ".wl[292].w";
	setAttr ".wl[292].w[2:4]" 0.11571933534722681 0.071915319819204113 0.013339375394381649;
	setAttr ".wl[292].w[6:7]" 0.39951298471959379 0.39951298471959368;
	setAttr ".wl[293].w[2]"  1;
	setAttr ".wl[294].w[4]"  1;
	setAttr ".wl[295].w[5]"  1;
	setAttr -s 3 ".wl[296].w[2:4]"  0.37128178681055041 0.44639726920834988 
		0.18232094398109977;
	setAttr -s 5 ".wl[297].w";
	setAttr ".wl[297].w[2:4]" 0.2996488449803254 0.050793254426997524 0.023977891437084422;
	setAttr ".wl[297].w[6:7]" 0.31279000457779627 0.31279000457779627;
	setAttr -s 4 ".wl[298].w";
	setAttr ".wl[298].w[2:4]" 0.3801698530463829 0.48473741715322793 0.13267440224487209;
	setAttr ".wl[298].w[6]" 0.0024183275555170205;
	setAttr -s 4 ".wl[299].w";
	setAttr ".wl[299].w[2:3]" 0.48921191362001959 0.028780675292107854;
	setAttr ".wl[299].w[6:7]" 0.48153646463906502 0.0004709464488075691;
	setAttr ".wl[300].w[4]"  1;
	setAttr -s 3 ".wl[301].w[2:4]"  0.2484249242651165 0.48128506014203493 
		0.27029001559284849;
	setAttr ".wl[302].w[4]"  1;
	setAttr -s 3 ".wl[303].w[2:4]"  0.2900209331099195 0.48604741059262851 
		0.22393165629745185;
	setAttr ".wl[304].w[4]"  1;
	setAttr -s 5 ".wl[305].w";
	setAttr ".wl[305].w[2:3]" 0.52164625334550463 0.041658839239061871;
	setAttr ".wl[305].w[6]" 0.37374619984270252;
	setAttr ".wl[305].w[16:17]" 0.06123535128941502 0.0017133562833159296;
	setAttr -s 5 ".wl[306].w";
	setAttr ".wl[306].w[2:3]" 0.96555540088605973 3.7537193475385245e-005;
	setAttr ".wl[306].w[6]" 6.3824329357314104e-005;
	setAttr ".wl[306].w[16:17]" 0.025645716093821866 0.0086975214972857297;
	setAttr -s 4 ".wl[307].w";
	setAttr ".wl[307].w[2:3]" 0.47140011675031634 0.0017504231898647343;
	setAttr ".wl[307].w[6:7]" 0.50020101403358797 0.026648446026230978;
	setAttr -s 2 ".wl[308].w";
	setAttr ".wl[308].w[2]" 0.48139839816992769;
	setAttr ".wl[308].w[6]" 0.51860160183007231;
	setAttr -s 4 ".wl[309].w";
	setAttr ".wl[309].w[2]" 0.02700990668430673;
	setAttr ".wl[309].w[5]" 0.00095630664816415112;
	setAttr ".wl[309].w[16:17]" 0.50422531173488805 0.46780847493264099;
	setAttr -s 4 ".wl[310].w";
	setAttr ".wl[310].w[2:4]" 0.4277591155433117 0.38653630036708875 0.10567399536840448;
	setAttr ".wl[310].w[16]" 0.080030588721195103;
	setAttr -s 4 ".wl[311].w[2:5]"  0.2651048990683918 0.50741710732987555 
		0.21429774608156366 0.013180247520168919;
	setAttr -s 6 ".wl[312].w";
	setAttr ".wl[312].w[0:3]" 0.00018441538507036714 0.050984557068328801 
		0.43540275742130613 0.022571213322035127;
	setAttr ".wl[312].w[6:7]" 0.40825287700560692 0.082604179797652777;
	setAttr -s 3 ".wl[313].w";
	setAttr ".wl[313].w[2]" 0.94949570967758812;
	setAttr ".wl[313].w[16:17]" 0.034646278414768111 0.015858011907643708;
	setAttr ".wl[314].w[5]"  1;
	setAttr ".wl[315].w[5]"  1;
	setAttr -s 5 ".wl[316].w";
	setAttr ".wl[316].w[2:4]" 0.21857456661695071 0.29985278911873309 0.11561255751253099;
	setAttr ".wl[316].w[6:7]" 0.1829800433758926 0.18298004337589255;
	setAttr ".wl[317].w[4]"  1;
	setAttr ".wl[318].w[6]"  1;
	setAttr ".wl[319].w[2]"  1;
	setAttr -s 3 ".wl[320].w[2:4]"  0.30762306864452232 0.51803505046719855 
		0.17434188088827923;
	setAttr -s 3 ".wl[321].w[2:4]"  0.27772218681306837 0.49203317930960572 
		0.23024463387732585;
	setAttr ".wl[322].w[5]"  1;
	setAttr -s 4 ".wl[323].w";
	setAttr ".wl[323].w[2:4]" 0.46659073121259242 0.46098904188702017 0.0625520107761698;
	setAttr ".wl[323].w[6]" 0.0098682161242176908;
	setAttr -s 3 ".wl[324].w[3:5]"  0.14722395616073375 0.80327197935410877 
		0.049504064485157519;
	setAttr -s 3 ".wl[325].w[2:4]"  0.35089679243644384 0.43976296486136407 
		0.20934024270219215;
	setAttr ".wl[326].w[16]"  1;
	setAttr ".wl[327].w[4]"  1;
	setAttr -s 3 ".wl[328].w";
	setAttr ".wl[328].w[2:3]" 0.62737245580108714 0.044223466211254024;
	setAttr ".wl[328].w[6]" 0.32840407798765886;
	setAttr ".wl[329].w[5]"  1;
	setAttr ".wl[330].w[2]"  1;
	setAttr -s 5 ".wl[331].w";
	setAttr ".wl[331].w[2:4]" 0.44356425919245357 0.45094945609677473 0.07736261877862298;
	setAttr ".wl[331].w[6:7]" 0.01406183296607451 0.014061832966074507;
	setAttr -s 3 ".wl[332].w[2:4]"  0.24571752748718986 0.48095060465532297 
		0.2733318678574872;
	setAttr ".wl[333].w[2]"  1;
	setAttr -s 3 ".wl[334].w[2:4]"  0.2366748260820164 0.47882239537400184 
		0.2845027785439817;
	setAttr ".wl[335].w[2]"  0.99999999999999989;
	setAttr -s 5 ".wl[336].w";
	setAttr ".wl[336].w[2:3]" 0.53949775088706253 0.020072248914489308;
	setAttr ".wl[336].w[6]" 0.21733062039017498;
	setAttr ".wl[336].w[16:17]" 0.21702699581600857 0.0060723839922645186;
	setAttr -s 3 ".wl[337].w[2:4]"  0.29665706273759446 0.47671802082076742 
		0.22662491644163807;
	setAttr -s 3 ".wl[338].w[3:5]"  0.43142386935195337 0.42170681712619051 
		0.14686931352185612;
	setAttr -s 4 ".wl[339].w";
	setAttr ".wl[339].w[2:3]" 0.50700411867464734 0.021395271260360147;
	setAttr ".wl[339].w[6:7]" 0.46267339217842512 0.0089272178865672479;
	setAttr ".wl[340].w[4]"  1;
	setAttr -s 4 ".wl[341].w";
	setAttr ".wl[341].w[2:4]" 0.44450313203193215 0.43966757087906327 0.041972207949707276;
	setAttr ".wl[341].w[6]" 0.073857089139297546;
	setAttr ".wl[342].w[4]"  1;
	setAttr -s 4 ".wl[343].w[2:5]"  0.12736488918113337 0.48573200026131597 
		0.30530803438230225 0.081595076175248346;
	setAttr ".wl[344].w[4]"  1;
	setAttr ".wl[345].w[4]"  1;
	setAttr ".wl[346].w[2]"  1;
	setAttr -s 3 ".wl[347].w";
	setAttr ".wl[347].w[2:3]" 0.95444597800095288 0.0057016076169144336;
	setAttr ".wl[347].w[6]" 0.039852414382132689;
	setAttr ".wl[348].w[5]"  0.99999999999999989;
	setAttr ".wl[349].w[2]"  0.99999999999999989;
	setAttr ".wl[350].w[2]"  1;
	setAttr ".wl[351].w[4]"  1;
	setAttr -s 4 ".wl[352].w[2:5]"  0.13976906769427522 0.45529302534786797 
		0.36381376858186198 0.041124138375994893;
	setAttr -s 3 ".wl[353].w[3:5]"  0.14022557360554808 0.81262356848204442 
		0.047150857912407522;
	setAttr -s 4 ".wl[354].w";
	setAttr ".wl[354].w[2]" 0.22487569575838046;
	setAttr ".wl[354].w[16:18]" 0.47616323043053688 0.29549380807812325 0.0034672657329594433;
	setAttr -s 3 ".wl[355].w[3:5]"  0.40260467862105553 0.3026786510349434 
		0.29471667034400101;
	setAttr -s 3 ".wl[356].w[3:5]"  0.48359199036859724 0.3482513402156221 
		0.16815666941578061;
	setAttr ".wl[357].w[2]"  1;
	setAttr ".wl[358].w[5]"  1;
	setAttr -s 3 ".wl[359].w[3:5]"  0.45111803603464101 0.28220881489237676 
		0.26667314907298234;
	setAttr ".wl[360].w[4]"  1;
	setAttr -s 4 ".wl[361].w";
	setAttr ".wl[361].w[2]" 0.14100568131758998;
	setAttr ".wl[361].w[16:18]" 0.57756926027663769 0.27925975771494699 0.002165300690825385;
	setAttr -s 4 ".wl[362].w";
	setAttr ".wl[362].w[2:3]" 0.486990931908793 0.013744496028674898;
	setAttr ".wl[362].w[6:7]" 0.49146109855161579 0.0078034735109163665;
	setAttr -s 3 ".wl[363].w[2:4]"  0.34023739117656199 0.45160526088533481 
		0.20815734793810337;
	setAttr -s 5 ".wl[364].w";
	setAttr ".wl[364].w[2:3]" 0.97476474357958409 0.0045951536276589051;
	setAttr ".wl[364].w[6]" 0.0069205573431816835;
	setAttr ".wl[364].w[16:17]" 0.010199212890926363 0.003520332558648958;
	setAttr ".wl[365].w[5]"  1;
	setAttr -s 4 ".wl[366].w[2:5]"  0.0995672141546185 0.46349767041398432 
		0.36215815930444123 0.074776956126955854;
	setAttr ".wl[367].w[4]"  0.99999999999999989;
	setAttr ".wl[368].w[5]"  1;
	setAttr ".wl[369].w[16]"  1;
	setAttr -s 4 ".wl[370].w[2:5]"  0.15217635409879979 0.57437588876296153 
		0.23459282991243874 0.038854927225800161;
	setAttr -s 3 ".wl[371].w[3:5]"  0.39141028443444426 0.32225329078568599 
		0.28633642477986976;
	setAttr -s 4 ".wl[372].w[2:5]"  0.033850622989100618 0.60642477507972314 
		0.27821195714270991 0.081512644788466454;
	setAttr ".wl[373].w[5]"  1;
	setAttr ".wl[374].w[2]"  1;
	setAttr -s 3 ".wl[375].w[2:4]"  0.22517625952771864 0.47524070603928648 
		0.29958303443299483;
	setAttr -s 3 ".wl[376].w[3:5]"  0.1431874370529149 0.80866577826488883 
		0.048146784682196263;
	setAttr ".wl[377].w[16]"  1;
	setAttr ".wl[378].w[4]"  1;
	setAttr ".wl[379].w[2]"  1;
	setAttr -s 3 ".wl[380].w[3:5]"  0.35015062175967765 0.52560423300878856 
		0.12424514523153384;
	setAttr ".wl[381].w[4]"  1;
	setAttr ".wl[382].w[4]"  1;
	setAttr ".wl[383].w[4]"  1;
	setAttr ".wl[384].w[4]"  1;
	setAttr ".wl[385].w[4]"  1;
	setAttr -s 2 ".wl[386].w";
	setAttr ".wl[386].w[2]" 0.37229816275293176;
	setAttr ".wl[386].w[6]" 0.62770183724706818;
	setAttr -s 3 ".wl[387].w[2:4]"  0.2776036822558815 0.48555849257044248 
		0.23683782517367608;
	setAttr -s 2 ".wl[388].w";
	setAttr ".wl[388].w[2]" 0.30342965218802986;
	setAttr ".wl[388].w[6]" 0.69657034781197025;
	setAttr ".wl[389].w[4]"  1;
	setAttr -s 4 ".wl[390].w";
	setAttr ".wl[390].w[2:4]" 0.42693038803202371 0.47209948845909983 0.086342313041801802;
	setAttr ".wl[390].w[6]" 0.014627810467074669;
	setAttr ".wl[391].w[2]"  1;
	setAttr -s 3 ".wl[392].w[2:4]"  0.29560721932170242 0.48667621170245923 
		0.21771656897583827;
	setAttr -s 3 ".wl[393].w[2:4]"  0.32790978074609978 0.48956851981017324 
		0.18252169944372704;
	setAttr ".wl[394].w[4]"  0.99999999999999989;
	setAttr -s 6 ".wl[395].w";
	setAttr ".wl[395].w[2:4]" 0.57115362464461517 0.24098198376323315 0.035433480518717538;
	setAttr ".wl[395].w[6]" 0.031325743804202881;
	setAttr ".wl[395].w[16:17]" 0.079510027674120271 0.041595139595111116;
	setAttr -s 4 ".wl[396].w";
	setAttr ".wl[396].w[2:3]" 0.52762395514482308 0.047194545124089819;
	setAttr ".wl[396].w[6:7]" 0.41848605048130355 0.0066954492497835853;
	setAttr -s 4 ".wl[397].w";
	setAttr ".wl[397].w[2:3]" 0.49688989974435965 0.031105133973557117;
	setAttr ".wl[397].w[6:7]" 0.47163608455570588 0.00036888172637746235;
	setAttr ".wl[398].w[2]"  1;
	setAttr -s 4 ".wl[399].w[2:5]"  0.16858960264047065 0.49986427767048952 
		0.28497817966621719 0.046567940022822718;
	setAttr -s 5 ".wl[400].w";
	setAttr ".wl[400].w[2:4]" 0.23855259188060571 0.19688515039883259 0.031838993719497007;
	setAttr ".wl[400].w[6:7]" 0.28020556158254084 0.25251770241852389;
	setAttr -s 4 ".wl[401].w[2:5]"  0.10178570016631251 0.48055727962150419 
		0.3040614312116609 0.11359558900052244;
	setAttr ".wl[402].w[4]"  1;
	setAttr -s 4 ".wl[403].w[2:5]"  0.015681825551178856 0.42212038968825161 
		0.40464449945551667 0.15755328530505278;
	setAttr ".wl[404].w[6]"  1;
	setAttr -s 3 ".wl[405].w[3:5]"  0.40439515577143897 0.30021249204643718 
		0.29539235218212379;
	setAttr ".wl[406].w[2]"  1;
	setAttr ".wl[407].w[2]"  1;
	setAttr -s 3 ".wl[408].w[3:5]"  0.041741496652397667 0.93945855335679695 
		0.018799949990805542;
	setAttr -s 5 ".wl[409].w";
	setAttr ".wl[409].w[2:3]" 0.49725674733505554 0.01337231123251781;
	setAttr ".wl[409].w[6]" 0.10472241866365881;
	setAttr ".wl[409].w[16:17]" 0.36980701843908509 0.014841504329682698;
	setAttr ".wl[410].w[5]"  1;
	setAttr -s 3 ".wl[411].w[2:4]"  0.27558986585608664 0.47541903620743042 
		0.248991097936483;
	setAttr ".wl[412].w[4]"  1;
	setAttr -s 3 ".wl[413].w";
	setAttr ".wl[413].w[2:3]" 0.99988132025705023 1.9480505702115613e-005;
	setAttr ".wl[413].w[6]" 9.9199237247781937e-005;
	setAttr -s 3 ".wl[414].w[3:5]"  0.11052862025346134 0.8539955378300732 
		0.035475841916465467;
	setAttr ".wl[415].w[4]"  1;
	setAttr -s 2 ".wl[416].w";
	setAttr ".wl[416].w[2]" 0.43597926801049375;
	setAttr ".wl[416].w[6]" 0.56402073198950631;
	setAttr ".wl[417].w[5]"  1;
	setAttr -s 4 ".wl[418].w[2:5]"  0.010742767187435368 0.50268519804496359 
		0.32879484553422206 0.15777718923337886;
	setAttr ".wl[419].w[4]"  1;
	setAttr -s 3 ".wl[420].w[3:5]"  0.26044255483233764 0.5686527458465872 
		0.1709046993210751;
	setAttr -s 4 ".wl[421].w";
	setAttr ".wl[421].w[2:3]" 0.48633892046508276 0.011241621726921926;
	setAttr ".wl[421].w[6:7]" 0.47297001325075932 0.029449444557235822;
	setAttr ".wl[422].w[5]"  1;
	setAttr ".wl[423].w[2]"  1;
	setAttr ".wl[424].w[4]"  1;
	setAttr ".wl[425].w[4]"  1;
	setAttr -s 4 ".wl[426].w";
	setAttr ".wl[426].w[2:4]" 0.42369403318840287 0.008508859995199158 0.0023028298516951772;
	setAttr ".wl[426].w[6]" 0.56549427696470278;
	setAttr -s 3 ".wl[427].w[3:5]"  0.18193095110372837 0.63172658349713373 
		0.18634246539913796;
	setAttr -s 3 ".wl[428].w[3:5]"  0.30188975788903355 0.36466640567605768 
		0.33344383643490871;
	setAttr ".wl[429].w[4]"  1;
	setAttr ".wl[430].w[2]"  1;
	setAttr ".wl[431].w[4]"  1;
	setAttr -s 4 ".wl[432].w";
	setAttr ".wl[432].w[2]" 0.065865279325519999;
	setAttr ".wl[432].w[5:7]" 0.00059104268680262981 0.49314906131570435 0.44039461667197305;
	setAttr ".wl[433].w[4]"  1;
	setAttr -s 3 ".wl[434].w[3:5]"  0.36452835203862066 0.33124342848172705 
		0.30422821947965234;
	setAttr ".wl[435].w[4]"  1;
	setAttr -s 4 ".wl[436].w";
	setAttr ".wl[436].w[2]" 0.1291049144506084;
	setAttr ".wl[436].w[5]" 0.00015703430155410733;
	setAttr ".wl[436].w[16:17]" 0.55207960813643242 0.31865844311140495;
	setAttr -s 3 ".wl[437].w[3:5]"  0.37239661595716284 0.32756137124268836 
		0.30004201280014875;
	setAttr -s 4 ".wl[438].w";
	setAttr ".wl[438].w[2:4]" 0.44662005622680045 0.43979566149012156 0.010171657948876429;
	setAttr ".wl[438].w[6]" 0.10341262433420172;
	setAttr -s 4 ".wl[439].w";
	setAttr ".wl[439].w[2]" 0.052560659724909913;
	setAttr ".wl[439].w[5:7]" 0.00018909323332911494 0.47354099165862379 0.47370925538313724;
	setAttr -s 3 ".wl[440].w[2:4]"  0.28379174145324781 0.49910296638460794 
		0.21710529216214425;
	setAttr ".wl[441].w[16]"  1;
	setAttr ".wl[442].w[16]"  1;
	setAttr ".wl[443].w[4]"  1;
	setAttr -s 2 ".wl[444].w";
	setAttr ".wl[444].w[2]" 0.32951407807580874;
	setAttr ".wl[444].w[6]" 0.67048592192419121;
	setAttr ".wl[445].w[4]"  1;
	setAttr ".wl[446].w[4]"  0.99999999999999989;
	setAttr ".wl[447].w[2]"  1;
	setAttr ".wl[448].w[5]"  1;
	setAttr -s 3 ".wl[449].w[3:5]"  0.43433293146258217 0.38806551585284493 
		0.17760155268457287;
	setAttr -s 5 ".wl[450].w";
	setAttr ".wl[450].w[2:4]" 0.27717555436165642 0.37672592617200923 0.12407509488595474;
	setAttr ".wl[450].w[16:17]" 0.1110117122901898 0.1110117122901898;
	setAttr -s 3 ".wl[451].w";
	setAttr ".wl[451].w[2:3]" 0.99107844061615769 0.0032428704098785392;
	setAttr ".wl[451].w[6]" 0.0056786889739637424;
	setAttr ".wl[452].w[4]"  1;
	setAttr ".wl[453].w[4]"  1;
	setAttr -s 4 ".wl[454].w";
	setAttr ".wl[454].w[2:3]" 0.48479315152737806 0.00104654137762914;
	setAttr ".wl[454].w[6:7]" 0.49416359848014457 0.019996708614848251;
	setAttr ".wl[455].w[6]"  1;
	setAttr ".wl[456].w[4]"  1;
	setAttr ".wl[457].w[5]"  1;
	setAttr ".wl[458].w[4]"  1;
	setAttr -s 3 ".wl[459].w[2:4]"  0.39475973034943429 0.44820905257903043 
		0.15703121707153533;
	setAttr -s 3 ".wl[460].w[3:5]"  0.40665775415119798 0.46628780799341085 
		0.12705443785539122;
	setAttr -s 3 ".wl[461].w";
	setAttr ".wl[461].w[2]" 0.90831011400683259;
	setAttr ".wl[461].w[16:17]" 0.062670183989299161 0.029019702003868289;
	setAttr -s 3 ".wl[462].w[3:5]"  0.125710582702134 0.79459532995371607 
		0.079694087344150052;
	setAttr -s 4 ".wl[463].w";
	setAttr ".wl[463].w[2:4]" 0.46018678627034681 0.461009333610295 0.047089036702109115;
	setAttr ".wl[463].w[6]" 0.031714843417249075;
	setAttr -s 5 ".wl[464].w";
	setAttr ".wl[464].w[2]" 0.033984505451424056;
	setAttr ".wl[464].w[5:8]" 0.00026255482566918387 0.59090598701267727 0.37469476627280984 
		0.00015218643741968298;
	setAttr ".wl[465].w[2]"  1;
	setAttr -s 4 ".wl[466].w";
	setAttr ".wl[466].w[2:3]" 0.45713880464517009 0.36338548766469858;
	setAttr ".wl[466].w[6]" 0.070980981315781649;
	setAttr ".wl[466].w[16]" 0.10849472637434977;
	setAttr ".wl[467].w[2]"  1;
	setAttr ".wl[468].w[4]"  1;
	setAttr -s 5 ".wl[469].w";
	setAttr ".wl[469].w[2:3]" 0.98215114712228058 0.0067840455859851795;
	setAttr ".wl[469].w[6]" 0.010867297700159791;
	setAttr ".wl[469].w[16:17]" 0.0001481957730509114 4.9313818523513278e-005;
	setAttr -s 3 ".wl[470].w[3:5]"  0.13816589995334014 0.72164296509566861 
		0.14019113495099125;
	setAttr -s 3 ".wl[471].w[2:4]"  0.34513376841542692 0.4418391869640913 
		0.21302704462048183;
	setAttr -s 3 ".wl[472].w[3:5]"  0.4412818726994131 0.38328495440737265 
		0.1754331728932142;
	setAttr ".wl[473].w[5]"  1;
	setAttr -s 3 ".wl[474].w[2:4]"  0.32467107196559825 0.48933552800462576 
		0.18599340002977607;
	setAttr ".wl[475].w[4]"  1;
	setAttr ".wl[476].w[16]"  1;
	setAttr ".wl[477].w[2]"  1;
	setAttr -s 4 ".wl[478].w[2:5]"  0.22187567891744062 0.47895050195544703 
		0.24672432749424564 0.052449491632866878;
	setAttr -s 3 ".wl[479].w[3:5]"  0.4216131119684447 0.41051222351194205 
		0.16787466451961333;
	setAttr -s 6 ".wl[480].w";
	setAttr ".wl[480].w[2:4]" 0.59787769578193961 0.14415784733815781 0.018521580315445249;
	setAttr ".wl[480].w[6]" 0.042434384278765766;
	setAttr ".wl[480].w[16:17]" 0.12934337177247573 0.067665120513215951;
	setAttr ".wl[481].w[5]"  1;
	setAttr -s 4 ".wl[482].w";
	setAttr ".wl[482].w[2]" 0.16590387237991883;
	setAttr ".wl[482].w[6:8]" 0.55146295427930958 0.28003557461866097 0.002597598722110672;
	setAttr ".wl[483].w[4]"  1;
	setAttr ".wl[484].w[4]"  1;
	setAttr ".wl[485].w[4]"  1;
	setAttr -s 3 ".wl[486].w[3:5]"  0.56396859842295455 0.35602572045538616 
		0.080005681121659317;
	setAttr -s 6 ".wl[487].w";
	setAttr ".wl[487].w[0:3]" 0.0014932137998056806 0.41282262953473037 0.29552706329354345 
		0.023880339036822112;
	setAttr ".wl[487].w[6:7]" 0.24543133342758577 0.020845420907512662;
	setAttr -s 5 ".wl[488].w";
	setAttr ".wl[488].w[2:4]" 0.14043579565354891 0.13242738063351223 0.051059282138820786;
	setAttr ".wl[488].w[16:17]" 0.33803877078705896 0.33803877078705896;
	setAttr ".wl[489].w[5]"  1;
	setAttr -s 5 ".wl[490].w";
	setAttr ".wl[490].w[2:3]" 0.95128947904898942 0.00039897970547888407;
	setAttr ".wl[490].w[6]" 0.00060088566221432006;
	setAttr ".wl[490].w[16:17]" 0.038742976576889285 0.0089676790064280726;
	setAttr ".wl[491].w[6]"  1;
	setAttr -s 5 ".wl[492].w";
	setAttr ".wl[492].w[2:3]" 0.51245078759498675 0.0099207511137053388;
	setAttr ".wl[492].w[6]" 0.10964134755210825;
	setAttr ".wl[492].w[16:17]" 0.35797113314458795 0.010015980594611564;
	setAttr -s 2 ".wl[493].w";
	setAttr ".wl[493].w[2]" 0.19120334254935309;
	setAttr ".wl[493].w[16]" 0.80879665745064688;
	setAttr -s 6 ".wl[494].w";
	setAttr ".wl[494].w[0:3]" 0.00071081911851461686 0.1965172151951384 0.37872576131446889 
		0.022941473749058149;
	setAttr ".wl[494].w[6:7]" 0.34286715404713081 0.058237576575689232;
	setAttr ".wl[495].w[2]"  1;
	setAttr -s 6 ".wl[496].w";
	setAttr ".wl[496].w[2:4]" 0.42936305566480609 0.044610353685493383 0.0038295817496344811;
	setAttr ".wl[496].w[6]" 0.02997892208820448;
	setAttr ".wl[496].w[16:17]" 0.32315940423176981 0.16905868258009174;
	setAttr ".wl[497].w[4]"  1;
	setAttr ".wl[498].w[4]"  1;
	setAttr -s 3 ".wl[499].w[2:4]"  0.4468332081689701 0.46884299584568095 
		0.084323795985348907;
	setAttr -s 5 ".wl[500].w";
	setAttr ".wl[500].w[2:4]" 0.30691480889331024 0.10280930448178267 0.048533026075920763;
	setAttr ".wl[500].w[16:17]" 0.27087143027449317 0.27087143027449317;
	setAttr ".wl[501].w[4]"  1;
	setAttr -s 4 ".wl[502].w";
	setAttr ".wl[502].w[2:4]" 0.45758253506292235 0.4593672245549647 0.045763489230826952;
	setAttr ".wl[502].w[6]" 0.03728675115128588;
	setAttr ".wl[503].w[2]"  1;
	setAttr -s 3 ".wl[504].w[2:4]"  0.31713094155779087 0.48984657484372945 
		0.19302248359847965;
	setAttr -s 2 ".wl[505].w";
	setAttr ".wl[505].w[2]" 0.23372863282229714;
	setAttr ".wl[505].w[16]" 0.76627136717770283;
	setAttr -s 4 ".wl[506].w";
	setAttr ".wl[506].w[2]" 0.067730511219626727;
	setAttr ".wl[506].w[5]" 0.00011541761932673684;
	setAttr ".wl[506].w[16:17]" 0.48494698940250552 0.44720708175854101;
	setAttr -s 3 ".wl[507].w[3:5]"  0.012810807747319712 0.98288155734482674 
		0.0043076349078535036;
	setAttr -s 3 ".wl[508].w[3:5]"  0.43101627321551989 0.42219264670072443 
		0.14679108008375563;
	setAttr -s 5 ".wl[509].w";
	setAttr ".wl[509].w[2:4]" 0.25815810274846546 0.33410442598090678 0.12881876896137048;
	setAttr ".wl[509].w[16:17]" 0.13945935115462862 0.13945935115462862;
	setAttr -s 6 ".wl[510].w";
	setAttr ".wl[510].w[2:4]" 0.40565386401195591 0.17614441963634173 0.026630904535607267;
	setAttr ".wl[510].w[6]" 0.016422401033966371;
	setAttr ".wl[510].w[16:17]" 0.24629882601852923 0.12884958476359959;
	setAttr -s 3 ".wl[511].w";
	setAttr ".wl[511].w[2]" 0.77069504723048377;
	setAttr ".wl[511].w[16:17]" 0.15567705083354647 0.0736279019359697;
	setAttr ".wl[512].w[4]"  1;
	setAttr -s 3 ".wl[513].w[3:5]"  0.41005911862341965 0.33271759505144721 
		0.25722328632513314;
	setAttr -s 4 ".wl[514].w";
	setAttr ".wl[514].w[2]" 0.054804584978523446;
	setAttr ".wl[514].w[5:7]" 0.00039083509456091039 0.59618056113317497 0.34862401879374061;
	setAttr ".wl[515].w[16]"  1;
	setAttr ".wl[516].w[5]"  0.99999999999999989;
	setAttr ".wl[517].w[4]"  0.99999999999999989;
	setAttr -s 4 ".wl[518].w[2:5]"  0.030316394486007019 0.44682433460944793 
		0.3117130049950258 0.21114626590951921;
	setAttr -s 5 ".wl[519].w";
	setAttr ".wl[519].w[2:4]" 0.4478188928441581 0.32947272609186729 0.046984337165344163;
	setAttr ".wl[519].w[6]" 0.020400477193311256;
	setAttr ".wl[519].w[16]" 0.15532356670531924;
	setAttr ".wl[520].w[4]"  1;
	setAttr -s 4 ".wl[521].w[2:5]"  0.2435499378220882 0.50724013215959174 
		0.234933188730339 0.014276741287980997;
	setAttr -s 3 ".wl[522].w";
	setAttr ".wl[522].w[2:3]" 0.99422647829581356 0.0011103374433257907;
	setAttr ".wl[522].w[6]" 0.0046631842608605293;
	setAttr -s 5 ".wl[523].w";
	setAttr ".wl[523].w[2:3]" 0.50459913625338881 0.032024672354717038;
	setAttr ".wl[523].w[6]" 0.38960224661643839;
	setAttr ".wl[523].w[16:17]" 0.071765944028498604 0.0020080007469571262;
	setAttr -s 5 ".wl[524].w";
	setAttr ".wl[524].w[2:3]" 0.93967582118381587 0.0018057871476966103;
	setAttr ".wl[524].w[6]" 0.0027196160385135506;
	setAttr ".wl[524].w[16:17]" 0.041471515602198715 0.014327260027775299;
	setAttr ".wl[525].w[2]"  1;
	setAttr -s 3 ".wl[526].w[2:4]"  0.288227004163089 0.49346886630211578 
		0.21830412953479519;
	setAttr -s 4 ".wl[527].w";
	setAttr ".wl[527].w[2:4]" 0.67906832114460958 0.22902418123331372 0.029689936315741558;
	setAttr ".wl[527].w[6]" 0.062217561306335122;
	setAttr -s 5 ".wl[528].w";
	setAttr ".wl[528].w[2:3]" 0.98929981885526752 0.00021290433964305574;
	setAttr ".wl[528].w[6]" 0.00055660217264476167;
	setAttr ".wl[528].w[16:17]" 0.0074150092228093285 0.002515665409635332;
	setAttr ".wl[529].w[2]"  1;
	setAttr -s 5 ".wl[530].w";
	setAttr ".wl[530].w[2:4]" 0.46058925607302181 0.45847433608944743 0.0022307155631012118;
	setAttr ".wl[530].w[6]" 0.07570663855875065;
	setAttr ".wl[530].w[16]" 0.0029990537156788497;
	setAttr ".wl[531].w[5]"  1;
	setAttr -s 3 ".wl[532].w";
	setAttr ".wl[532].w[2:3]" 0.98742864787610074 0.0015987210815572863;
	setAttr ".wl[532].w[6]" 0.010972631042341974;
	setAttr ".wl[533].w[4]"  1;
	setAttr ".wl[534].w[4]"  1;
	setAttr -s 4 ".wl[535].w";
	setAttr ".wl[535].w[2:4]" 0.71884378689438799 0.10694395048107487 0.0044216576733527762;
	setAttr ".wl[535].w[6]" 0.16979060495118437;
	setAttr ".wl[536].w[5]"  1;
	setAttr ".wl[537].w[4]"  1;
	setAttr -s 6 ".wl[538].w";
	setAttr ".wl[538].w[0:3]" 0.0011055046059583711 0.30563427585110814 0.32490813843617811 
		0.01899063118668173;
	setAttr ".wl[538].w[6:7]" 0.29659489485700441 0.052766555063069279;
	setAttr ".wl[539].w[4]"  1;
	setAttr -s 3 ".wl[540].w[2:4]"  0.23530056732382226 0.47844149822492232 
		0.28625793445125536;
	setAttr -s 3 ".wl[541].w[3:5]"  0.45319673316387071 0.37341125598356639 
		0.17339201085256287;
	setAttr -s 3 ".wl[542].w[3:5]"  0.30288080462022055 0.59527550584554279 
		0.1018436895342366;
	setAttr -s 3 ".wl[543].w[2:4]"  0.34335006394695705 0.44398675692675754 
		0.21266317912628543;
	setAttr ".wl[544].w[4]"  1;
	setAttr -s 3 ".wl[545].w[3:5]"  0.33059835344969435 0.37592347070012389 
		0.29347817585018182;
	setAttr ".wl[546].w[5]"  1;
	setAttr ".wl[547].w[4]"  1;
	setAttr -s 4 ".wl[548].w";
	setAttr ".wl[548].w[2:3]" 0.358416434862464 0.0076162598880292441;
	setAttr ".wl[548].w[6:7]" 0.51692235235203277 0.11704495289747403;
	setAttr ".wl[549].w[4]"  1;
	setAttr ".wl[550].w[4]"  1;
	setAttr -s 4 ".wl[551].w[2:5]"  0.063367459606191529 0.48275270188327923 
		0.32422067518230291 0.12965916332822627;
	setAttr -s 3 ".wl[552].w[2:4]"  0.19587696507084426 0.46395831340003391 
		0.34016472152912169;
	setAttr ".wl[553].w[4]"  1;
	setAttr -s 3 ".wl[554].w";
	setAttr ".wl[554].w[2:3]" 0.39843148444192955 0.39648794375132335;
	setAttr ".wl[554].w[6]" 0.20508057180674702;
	setAttr -s 4 ".wl[555].w";
	setAttr ".wl[555].w[2:4]" 0.44924755379531101 0.4494157310923596 0.058943649643944954;
	setAttr ".wl[555].w[6]" 0.042393065468384436;
	setAttr ".wl[556].w[4]"  1;
	setAttr ".wl[557].w[5]"  1;
	setAttr -s 3 ".wl[558].w[2:4]"  0.44134681085746391 0.47459956972795247 
		0.084053619414583558;
	setAttr -s 5 ".wl[559].w";
	setAttr ".wl[559].w[2:4]" 0.36910101894611891 0.16794140598934088 0.025421463613892935;
	setAttr ".wl[559].w[6:7]" 0.34303464669354161 0.094501464757105857;
	setAttr -s 4 ".wl[560].w";
	setAttr ".wl[560].w[2:4]" 0.44776183947139714 0.44768915366810602 0.0077100604035205368;
	setAttr ".wl[560].w[6]" 0.096838946456976271;
	setAttr ".wl[561].w[4]"  1;
	setAttr ".wl[562].w[6]"  1;
	setAttr -s 4 ".wl[563].w";
	setAttr ".wl[563].w[2:4]" 0.42867325079104762 0.4569862123571638 0.035753762220002705;
	setAttr ".wl[563].w[6]" 0.078586774631785872;
	setAttr ".wl[564].w[5]"  1;
	setAttr ".wl[565].w[4]"  1;
	setAttr -s 4 ".wl[566].w";
	setAttr ".wl[566].w[2:4]" 0.43689754480640514 0.46039858324357619 0.09778561806910302;
	setAttr ".wl[566].w[6]" 0.004918253880915633;
	setAttr -s 4 ".wl[567].w";
	setAttr ".wl[567].w[2:4]" 0.40653154704459937 0.21076287536263175 0.0026147035157211515;
	setAttr ".wl[567].w[6]" 0.38009087407704767;
	setAttr -s 2 ".wl[568].w";
	setAttr ".wl[568].w[2]" 0.21546192774639719;
	setAttr ".wl[568].w[6]" 0.78453807225360295;
	setAttr -s 3 ".wl[569].w[2:4]"  0.3395103870026504 0.49937159315208834 
		0.16111801984526133;
	setAttr -s 2 ".wl[570].w";
	setAttr ".wl[570].w[2]" 0.14939304260236722;
	setAttr ".wl[570].w[6]" 0.85060695739763292;
	setAttr ".wl[571].w[4]"  1;
	setAttr ".wl[572].w[4]"  1;
	setAttr -s 4 ".wl[573].w";
	setAttr ".wl[573].w[2:4]" 0.45021788097193882 0.45024692389891324 0.096304472611425287;
	setAttr ".wl[573].w[6]" 0.0032307225177224935;
	setAttr -s 3 ".wl[574].w[2:4]"  0.38651281236276058 0.48159234108052384 
		0.13189484655671557;
	setAttr -s 3 ".wl[575].w[3:5]"  0.048873180306998477 0.92911483115999294 
		0.022011988533008581;
	setAttr ".wl[576].w[4]"  1;
	setAttr ".wl[577].w[2]"  1;
	setAttr -s 4 ".wl[578].w[2:5]"  0.21535825710637285 0.49059565087704027 
		0.28227258897130836 0.011773503045278549;
	setAttr ".wl[579].w[4]"  1;
	setAttr ".wl[580].w[4]"  1;
	setAttr ".wl[581].w[4]"  1;
	setAttr ".wl[582].w[16]"  1;
	setAttr ".wl[583].w[5]"  1;
	setAttr -s 3 ".wl[584].w[3:5]"  0.4633929496438991 0.34528383086423448 
		0.1913232194918664;
	setAttr -s 5 ".wl[585].w";
	setAttr ".wl[585].w[2:4]" 0.29824362572119162 0.22761066388488418 0.036807725129301284;
	setAttr ".wl[585].w[6:7]" 0.27676430920573547 0.16057367605888745;
	setAttr -s 3 ".wl[586].w[2:4]"  0.235866692328531 0.47978184308616417 
		0.28435146458530475;
	setAttr -s 4 ".wl[587].w";
	setAttr ".wl[587].w[2:4]" 0.43927603902854012 0.43252341771635189 0.014979205098662539;
	setAttr ".wl[587].w[6]" 0.11322133815644547;
	setAttr -s 4 ".wl[588].w";
	setAttr ".wl[588].w[2:4]" 0.34959987993092873 0.48814129830106412 0.16143517471280638;
	setAttr ".wl[588].w[6]" 0.00082364705520071146;
	setAttr ".wl[589].w[4]"  1;
	setAttr ".wl[590].w[5]"  1;
	setAttr ".wl[591].w[5]"  1;
	setAttr -s 3 ".wl[592].w[3:5]"  0.16910306765853217 0.76154858773963652 
		0.06934834460183123;
	setAttr ".wl[593].w[4]"  1;
	setAttr ".wl[594].w[5]"  1;
	setAttr -s 3 ".wl[595].w[2:4]"  0.39305395834976081 0.45441946949925227 
		0.15252657215098686;
	setAttr -s 5 ".wl[596].w";
	setAttr ".wl[596].w[2:3]" 0.98162116734108906 0.0034577817486208112;
	setAttr ".wl[596].w[6]" 0.0058792515032963363;
	setAttr ".wl[596].w[16:17]" 0.0067518625712540033 0.0022899368357397853;
	setAttr -s 3 ".wl[597].w";
	setAttr ".wl[597].w[2]" 0.12448024815505576;
	setAttr ".wl[597].w[6:7]" 0.64805147376626016 0.22746827807868406;
	setAttr ".wl[598].w[4]"  1;
	setAttr ".wl[599].w[4]"  1;
	setAttr ".wl[600].w[4]"  1;
	setAttr ".wl[601].w[2]"  1;
	setAttr ".wl[602].w[4]"  1;
	setAttr -s 5 ".wl[603].w";
	setAttr ".wl[603].w[2:4]" 0.25949062188355893 0.35979381519239295 0.1387236826238504;
	setAttr ".wl[603].w[6:7]" 0.12099594015009882 0.12099594015009882;
	setAttr ".wl[604].w[5]"  1;
	setAttr ".wl[605].w[6]"  1;
	setAttr ".wl[606].w[2]"  1;
	setAttr ".wl[607].w[4]"  1;
	setAttr ".wl[608].w[4]"  1;
	setAttr -s 3 ".wl[609].w[2:4]"  0.18709497181484211 0.4513343151552825 
		0.36157071302987542;
	setAttr -s 3 ".wl[610].w";
	setAttr ".wl[610].w[2]" 0.95825330944790199;
	setAttr ".wl[610].w[16:17]" 0.028787397468947939 0.012959293083150074;
	setAttr -s 3 ".wl[611].w[3:5]"  0.63955479649316183 0.28664321368826345 
		0.073801989818574665;
	setAttr ".wl[612].w[5]"  1;
	setAttr ".wl[613].w[5]"  1;
	setAttr -s 4 ".wl[614].w[2:5]"  0.19074922368053679 0.46925053081328849 
		0.33154114474234808 0.0084591007638265651;
	setAttr -s 4 ".wl[615].w";
	setAttr ".wl[615].w[2]" 0.078558238516424003;
	setAttr ".wl[615].w[5]" 0.00040244784915410099;
	setAttr ".wl[615].w[16:17]" 0.56248826277240327 0.35855105086201872;
	setAttr ".wl[616].w[2]"  1;
	setAttr ".wl[617].w[5]"  0.99999999999999989;
	setAttr -s 4 ".wl[618].w";
	setAttr ".wl[618].w[2]" 0.1195430413707142;
	setAttr ".wl[618].w[5]" 5.9093786588435064e-005;
	setAttr ".wl[618].w[16:17]" 0.52792475965769703 0.35247310518500036;
	setAttr ".wl[619].w[4]"  1;
	setAttr ".wl[620].w[4]"  1;
	setAttr ".wl[621].w[2]"  1;
	setAttr ".wl[622].w[16]"  1;
	setAttr ".wl[623].w[4]"  1;
	setAttr -s 4 ".wl[624].w";
	setAttr ".wl[624].w[2:4]" 0.43899655330970122 0.450155177850254 0.040859081774764827;
	setAttr ".wl[624].w[6]" 0.069989187065279984;
	setAttr ".wl[625].w[4]"  1;
	setAttr -s 3 ".wl[626].w";
	setAttr ".wl[626].w[2:3]" 0.96157752054402224 0.0048090133832503568;
	setAttr ".wl[626].w[6]" 0.033613466072727409;
	setAttr -s 3 ".wl[627].w";
	setAttr ".wl[627].w[2]" 0.32194842291797282;
	setAttr ".wl[627].w[6:7]" 0.5326763486420818 0.14537522843994533;
	setAttr -s 3 ".wl[628].w[2:4]"  0.29310411045608276 0.46354678294717222 
		0.24334910659674502;
	setAttr -s 5 ".wl[629].w";
	setAttr ".wl[629].w[2:3]" 0.51439006094090345 0.031315500557692638;
	setAttr ".wl[629].w[6]" 0.26847999705829273;
	setAttr ".wl[629].w[16:17]" 0.18075688977837615 0.0050575516647351996;
	setAttr ".wl[630].w[16]"  1;
	setAttr -s 4 ".wl[631].w";
	setAttr ".wl[631].w[2:3]" 0.49030886943048529 0.028203492467809885;
	setAttr ".wl[631].w[6:7]" 0.4809645493297503 0.00052308877195446802;
	setAttr ".wl[632].w[6]"  1;
	setAttr ".wl[633].w[4]"  1;
	setAttr ".wl[634].w[4]"  1;
	setAttr -s 3 ".wl[635].w";
	setAttr ".wl[635].w[2:3]" 0.96742070345761177 0.004198950789167568;
	setAttr ".wl[635].w[6]" 0.028380345753220591;
	setAttr -s 5 ".wl[636].w";
	setAttr ".wl[636].w[2:3]" 0.50485017280920652 0.026551628785504856;
	setAttr ".wl[636].w[6]" 0.40845902164754977;
	setAttr ".wl[636].w[16:17]" 0.058502291103617078 0.001636885654121924;
	setAttr ".wl[637].w[4]"  1;
	setAttr ".wl[638].w[6]"  1;
	setAttr -s 4 ".wl[639].w[2:5]"  0.041510410595411613 0.46256505011920079 
		0.28069730531395642 0.2152272339714312;
	setAttr -s 3 ".wl[640].w";
	setAttr ".wl[640].w[2]" 0.82069358100069367;
	setAttr ".wl[640].w[16:17]" 0.12168152062092337 0.057624898378382965;
	setAttr ".wl[641].w[2]"  1;
	setAttr -s 3 ".wl[642].w[2:4]"  0.35034731140245984 0.44034550403553863 
		0.20930718456200165;
	setAttr ".wl[643].w[5]"  1;
	setAttr ".wl[644].w[6]"  1;
	setAttr -s 3 ".wl[645].w[2:4]"  0.26714887135763349 0.49777358537081362 
		0.23507754327155286;
	setAttr ".wl[646].w[5]"  1;
	setAttr -s 4 ".wl[647].w";
	setAttr ".wl[647].w[2:3]" 0.48702596900150985 0.020509131148658939;
	setAttr ".wl[647].w[6:7]" 0.48777323237516368 0.0046916674746676516;
	setAttr ".wl[648].w[4]"  1;
	setAttr -s 4 ".wl[649].w";
	setAttr ".wl[649].w[2]" 0.097196707351107581;
	setAttr ".wl[649].w[5:7]" 0.00023022350082269464 0.51241151982637267 0.390161549321697;
	setAttr ".wl[650].w[4]"  1;
	setAttr ".wl[651].w[2]"  1;
	setAttr ".wl[652].w[6]"  1;
	setAttr -s 4 ".wl[653].w[2:5]"  0.1819753730415106 0.48328234632929956 
		0.28701518548527005 0.047727095143919859;
	setAttr -s 3 ".wl[654].w[2:4]"  0.31612861205745035 0.49565859778633903 
		0.18821279015621059;
	setAttr -s 3 ".wl[655].w[2:4]"  0.31108008252840719 0.50943747332108835 
		0.17948244415050432;
	setAttr ".wl[656].w[4]"  1;
	setAttr -s 3 ".wl[657].w";
	setAttr ".wl[657].w[2:3]" 0.96048221412343771 0.015690180798458738;
	setAttr ".wl[657].w[6]" 0.023827605078103577;
	setAttr -s 5 ".wl[658].w";
	setAttr ".wl[658].w[2:3]" 0.50916100411887 0.037558540615196728;
	setAttr ".wl[658].w[6]" 0.43839670356763588;
	setAttr ".wl[658].w[16:17]" 0.01447864140334615 0.00040511029495129844;
	setAttr ".wl[659].w[4]"  1;
	setAttr -s 3 ".wl[660].w[2:4]"  0.29596656701255647 0.48663156474857266 
		0.21740186823887081;
	setAttr ".wl[661].w[2]"  1;
	setAttr -s 5 ".wl[662].w";
	setAttr ".wl[662].w[2:4]" 0.23638294462556267 0.28388793187026601 0.08548711100391336;
	setAttr ".wl[662].w[16:17]" 0.19712100625012896 0.19712100625012896;
	setAttr -s 2 ".wl[663].w";
	setAttr ".wl[663].w[2]" 0.21502025501767003;
	setAttr ".wl[663].w[6]" 0.78497974498233003;
	setAttr ".wl[664].w[4]"  1;
	setAttr -s 5 ".wl[665].w";
	setAttr ".wl[665].w[2:4]" 0.38828880595847537 0.39738215184439185 0.073499381436552699;
	setAttr ".wl[665].w[16:17]" 0.070414830380290075 0.070414830380290075;
	setAttr ".wl[666].w[5]"  1;
	setAttr -s 4 ".wl[667].w";
	setAttr ".wl[667].w[2]" 0.3435615958554149;
	setAttr ".wl[667].w[16:18]" 0.47363764490506499 0.18123922361417266 0.0015615356253474825;
	setAttr ".wl[668].w[4]"  1;
	setAttr ".wl[669].w[4]"  0.99999999999999989;
	setAttr -s 3 ".wl[670].w[2:4]"  0.45407777298254748 0.45622679405752281 
		0.089695432959929738;
	setAttr -s 3 ".wl[671].w[2:4]"  0.41782761508960548 0.47815962476284912 
		0.10401276014754537;
	setAttr ".wl[672].w[5]"  1;
	setAttr -s 3 ".wl[673].w[2:4]"  0.3265545505263272 0.49126459408065326 
		0.1821808553930194;
	setAttr ".wl[674].w[4]"  1;
	setAttr ".wl[675].w[6]"  1;
	setAttr -s 3 ".wl[676].w[3:5]"  0.29469799310207656 0.38321835872944576 
		0.3220836481684779;
	setAttr -s 4 ".wl[677].w";
	setAttr ".wl[677].w[2]" 0.098710341860480291;
	setAttr ".wl[677].w[6:8]" 0.57355289745616878 0.32491298896107929 0.0028237717222717043;
	setAttr ".wl[678].w[4]"  1;
	setAttr -s 5 ".wl[679].w";
	setAttr ".wl[679].w[2:4]" 0.21276901512718011 0.31652707510319694 0.12204156840492517;
	setAttr ".wl[679].w[16:17]" 0.17433117068234888 0.17433117068234888;
	setAttr ".wl[680].w[2]"  1;
	setAttr -s 4 ".wl[681].w";
	setAttr ".wl[681].w[2:3]" 0.49388335780730525 0.024066253106076435;
	setAttr ".wl[681].w[6:7]" 0.47887625258225747 0.0031741365043609113;
	setAttr -s 5 ".wl[682].w";
	setAttr ".wl[682].w[2:4]" 0.25350969901898363 0.22690993868457876 0.037358227666877394;
	setAttr ".wl[682].w[6:7]" 0.24111106731478019 0.24111106731478013;
	setAttr ".wl[683].w[4]"  1;
	setAttr -s 5 ".wl[684].w";
	setAttr ".wl[684].w[2:4]" 0.21222509851689153 0.14899664313238262 0.024094773909095153;
	setAttr ".wl[684].w[6:7]" 0.34239385358729435 0.2722896308543365;
	setAttr ".wl[685].w[4]"  1;
	setAttr -s 3 ".wl[686].w[3:5]"  0.34096843271655264 0.54346303307442223 
		0.11556853420902501;
	setAttr ".wl[687].w[2]"  1;
	setAttr -s 4 ".wl[688].w[2:5]"  0.013352106526560737 0.46480512406089719 
		0.32082562579253426 0.2010171436200078;
	setAttr ".wl[689].w[2]"  1;
	setAttr -s 4 ".wl[690].w";
	setAttr ".wl[690].w[2:4]" 0.71774160042824553 0.20306113863017092 0.026937825560881409;
	setAttr ".wl[690].w[6]" 0.052259435380702095;
	setAttr ".wl[691].w[4]"  1;
	setAttr -s 3 ".wl[692].w";
	setAttr ".wl[692].w[2:3]" 0.99339816305526751 0.0023886268009673038;
	setAttr ".wl[692].w[6]" 0.0042132101437651328;
	setAttr ".wl[693].w[4]"  1;
	setAttr ".wl[694].w[5]"  1;
	setAttr -s 4 ".wl[695].w";
	setAttr ".wl[695].w[2:4]" 0.44213611406609554 0.44764230928693644 0.03972189869000952;
	setAttr ".wl[695].w[6]" 0.070499677956958301;
	setAttr ".wl[696].w[5]"  1;
	setAttr -s 4 ".wl[697].w[2:5]"  0.05718904525072304 0.4719667919836501 
		0.37012823225786784 0.10071593050775905;
	setAttr -s 3 ".wl[698].w[3:5]"  0.34119685346847362 0.54407568317090615 
		0.11472746336062037;
	setAttr -s 3 ".wl[699].w[2:4]"  0.26673270751421313 0.49193685436672668 
		0.24133043811906019;
	setAttr -s 5 ".wl[700].w";
	setAttr ".wl[700].w[2:3]" 0.49198486558185528 0.0086786909143367705;
	setAttr ".wl[700].w[6]" 0.11033701801847912;
	setAttr ".wl[700].w[16:17]" 0.3784115256608328 0.01058789982449611;
	setAttr ".wl[701].w[4]"  1;
	setAttr -s 3 ".wl[702].w[2:4]"  0.41132155347714722 0.47135323442650329 
		0.11732521209634951;
	setAttr ".wl[703].w[4]"  1.0000000000000002;
	setAttr -s 3 ".wl[704].w[3:5]"  0.32480461800236893 0.3807426868537046 
		0.29445269514392658;
	setAttr ".wl[705].w[4]"  1;
	setAttr -s 5 ".wl[706].w";
	setAttr ".wl[706].w[2:4]" 0.39349941960528062 0.45641214258737339 0.11005265639338174;
	setAttr ".wl[706].w[6:7]" 0.020017890706982115 0.020017890706982112;
	setAttr -s 4 ".wl[707].w[2:5]"  0.20407855807591668 0.48828245183137686 
		0.28214245935118942 0.025496530741516945;
	setAttr -s 4 ".wl[708].w";
	setAttr ".wl[708].w[2:4]" 0.35569505065924761 0.48680473036763194 0.14752848733473056;
	setAttr ".wl[708].w[6]" 0.0099717316383900103;
	setAttr -s 4 ".wl[709].w[2:5]"  0.2435332031686987 0.46817052226067085 
		0.28277500644509845 0.0055212681255320216;
	setAttr -s 3 ".wl[710].w[3:5]"  0.37753325644074937 0.37478907538875905 
		0.24767766817049164;
	setAttr ".wl[711].w[4]"  1;
	setAttr -s 3 ".wl[712].w[2:4]"  0.42779405697062095 0.47926833879243697 
		0.092937604236942098;
	setAttr -s 3 ".wl[713].w[3:5]"  0.14976465095531502 0.79987697577563122 
		0.050358373269053666;
	setAttr ".wl[714].w[2]"  1;
	setAttr ".wl[715].w[4]"  1;
	setAttr -s 4 ".wl[716].w";
	setAttr ".wl[716].w[2]" 0.08078866671450885;
	setAttr ".wl[716].w[5:7]" 0.00015343753173894541 0.61606843825099833 0.30298945750275386;
	setAttr -s 3 ".wl[717].w[2:4]"  0.2736468156195741 0.50427442394853139 
		0.22207876043189448;
	setAttr ".wl[718].w[5]"  1;
	setAttr -s 3 ".wl[719].w[3:5]"  0.40987277447185722 0.30294365191312356 
		0.28718357361501923;
	setAttr ".wl[720].w[2]"  1;
	setAttr ".wl[721].w[5]"  1;
	setAttr ".wl[722].w[4]"  1;
	setAttr -s 3 ".wl[723].w[3:5]"  0.46238684209706066 0.36001039371207821 
		0.17760276419086107;
	setAttr ".wl[724].w[2]"  1;
	setAttr ".wl[725].w[4]"  1;
	setAttr -s 3 ".wl[726].w[3:5]"  0.083289502695773621 0.83246751746483505 
		0.084242979839391274;
	setAttr ".wl[727].w[5]"  1;
	setAttr -s 5 ".wl[728].w";
	setAttr ".wl[728].w[2:4]" 0.40168492325623911 0.14744592718631411 0.021332837063356216;
	setAttr ".wl[728].w[6:7]" 0.36264435442929999 0.066891958064790605;
	setAttr ".wl[729].w[4]"  1;
	setAttr -s 4 ".wl[730].w";
	setAttr ".wl[730].w[2:3]" 0.41403676136609102 0.0068926055331276518;
	setAttr ".wl[730].w[6:7]" 0.50768667590285443 0.071383957197926978;
	setAttr ".wl[731].w[5]"  1;
	setAttr ".wl[732].w[4]"  1;
	setAttr -s 5 ".wl[733].w";
	setAttr ".wl[733].w[2:3]" 0.96393589965133586 0.00092181265707960052;
	setAttr ".wl[733].w[6]" 0.0021788196994234413;
	setAttr ".wl[733].w[16:17]" 0.027243994586809647 0.0057194734053514521;
	setAttr -s 3 ".wl[734].w";
	setAttr ".wl[734].w[2:3]" 0.99354007552239443 0.0023098025067888796;
	setAttr ".wl[734].w[6]" 0.0041501219708166941;
	setAttr ".wl[735].w[5]"  1;
	setAttr ".wl[736].w[2]"  1;
	setAttr ".wl[737].w[5]"  1;
	setAttr -s 3 ".wl[738].w";
	setAttr ".wl[738].w[2]" 0.85389303752297618;
	setAttr ".wl[738].w[16:17]" 0.099235505674860947 0.046871456802162877;
	setAttr ".wl[739].w[16]"  0.99999999999999989;
	setAttr ".wl[740].w[2]"  1;
	setAttr ".wl[741].w[2]"  1;
	setAttr -s 2 ".wl[742].w";
	setAttr ".wl[742].w[2]" 0.45029501294338764;
	setAttr ".wl[742].w[6]" 0.54970498705661242;
	setAttr -s 4 ".wl[743].w[2:5]"  0.25935771234950972 0.4931848212872203 
		0.22148145362153715 0.025976012741732796;
	setAttr ".wl[744].w[2]"  1;
	setAttr -s 3 ".wl[745].w[3:5]"  0.047527208825363841 0.93649176422871117 
		0.015981026945924987;
	setAttr ".wl[746].w[2]"  1;
	setAttr -s 3 ".wl[747].w[2:4]"  0.45690815762688769 0.47239112014163748 
		0.070700722231474694;
	setAttr -s 3 ".wl[748].w[3:5]"  0.3696639709594059 0.49823256562616947 
		0.13210346341442464;
	setAttr -s 3 ".wl[749].w[3:5]"  0.42354379648111662 0.41793432702684313 
		0.15852187649204025;
	setAttr -s 4 ".wl[750].w[2:5]"  0.22803166188524879 0.50126502727221733 
		0.26021517284475987 0.010488137997773934;
	setAttr ".wl[751].w[2]"  1;
	setAttr ".wl[752].w[5]"  1;
	setAttr ".wl[753].w[5]"  1;
	setAttr ".wl[754].w[4]"  1;
	setAttr -s 4 ".wl[755].w";
	setAttr ".wl[755].w[2:4]" 0.43771778349993845 0.4294703319217924 0.0031514966860215462;
	setAttr ".wl[755].w[6]" 0.12966038789224762;
	setAttr -s 3 ".wl[756].w[3:5]"  0.4677867826677522 0.35990529469483024 
		0.17230792263741757;
	setAttr -s 4 ".wl[757].w";
	setAttr ".wl[757].w[2]" 0.033529132309516547;
	setAttr ".wl[757].w[5:7]" 0.00094989973714098186 0.4971551452636751 0.46836582268966731;
	setAttr -s 3 ".wl[758].w[2:4]"  0.4480782534787503 0.46959670649619267 
		0.082325040025056986;
	setAttr ".wl[759].w[2]"  1;
	setAttr ".wl[760].w[16]"  1;
	setAttr ".wl[761].w[6]"  1;
	setAttr ".wl[762].w[5]"  1;
	setAttr ".wl[763].w[4]"  1;
	setAttr ".wl[764].w[6]"  1;
	setAttr ".wl[765].w[2]"  1;
	setAttr ".wl[766].w[5]"  1;
	setAttr ".wl[767].w[5]"  1;
	setAttr ".wl[768].w[5]"  1;
	setAttr ".wl[769].w[5]"  1;
	setAttr ".wl[770].w[4]"  1;
	setAttr -s 4 ".wl[771].w";
	setAttr ".wl[771].w[2:3]" 0.32476563025729172 0.014582471452314992;
	setAttr ".wl[771].w[6:7]" 0.51948119108923074 0.14117070720116254;
	setAttr -s 2 ".wl[772].w";
	setAttr ".wl[772].w[2]" 0.46166340112137233;
	setAttr ".wl[772].w[6]" 0.53833659887862761;
	setAttr -s 4 ".wl[773].w";
	setAttr ".wl[773].w[2:3]" 0.27993618032358925 0.00024422100429767916;
	setAttr ".wl[773].w[6:7]" 0.53384784903846449 0.18597174963364854;
	setAttr -s 28 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.22044604925e-016 1 -2.22044604925e-016 0 4.9303806576300002e-032 2.22044604925e-016 1 0
		 1 -2.22044604925e-016 4.9303806576300002e-032 0 19.166137420599998 -1.31873429374e-014 -85.389330673299995 1;
	setAttr ".pm[1]" -type "matrix" -2.15428509113e-016 1 -2.28469189638e-016 0 0.99956875534300005 2.22044604925e-016 0.0293650019773 0
		 0.0293650019773 -2.22044604925e-016 -0.99956875534300005 0 -110.586437316 -1.8531426778700001e-014 -18.7326892954 1;
	setAttr ".pm[2]" -type "matrix" 4.7129293430199997e-017 1 -3.10461660843e-016 0 0.59297177587700001 2.22044604925e-016 0.80522324420799996 0
		 0.80522324420799996 -2.22044604925e-016 -0.59297177587700001 0 -68.151410792199997 -2.1482448022300001e-014 -117.46261941 1;
	setAttr ".pm[3]" -type "matrix" 1.68774681594e-016 1 -2.6480694856000001e-016 0 0.21624544086200001 2.22044604925e-016 0.97633903399699995 0
		 0.97633903399699995 -2.22044604925e-016 -0.21624544086200001 0 -34.534178989499999 -2.04636128938e-014 -143.74763280799999 1;
	setAttr ".pm[4]" -type "matrix" 2.57888696522e-016 1 -1.7916761247099999e-016 0 -0.177264122399 2.22044604925e-016 0.98416331516199995 0
		 0.98416331516199995 -2.22044604925e-016 0.177264122399 0 0.76965666734399996 -1.62848065019e-014 -155.49453616400001 1;
	setAttr ".pm[5]" -type "matrix" 2.22044604925e-016 1 -2.22044604925e-016 0 -1.94289029309e-016 2.22044604925e-016 1 0
		 1 -2.22044604925e-016 1.94289029309e-016 0 -29.4472145959 1.98999128538e-014 -146.86264203100001 1;
	setAttr ".pm[6]" -type "matrix" 0.51869538968100004 0.76438988858400003 -0.38296630524699998 0
		 -0.53879108492000005 0.64004507263199995 0.54776497862700002 0 0.66382170764000004 -0.077784337950499993 0.74383488573400003 0
		 87.209584613299995 -100.51772091799999 -60.580576827500003 1;
	setAttr ".pm[7]" -type "matrix" 0.64858345742300005 -0.74551435770800001 -0.15345305864600001 0
		 -0.730160032869 -0.66634260124300004 0.15117494557300001 0 -0.214955402717 0.0139957214688 -0.97652357607100004 0
		 82.838963913800001 103.242690462 -23.093151132599999 1;
	setAttr ".pm[8]" -type "matrix" 0.52948629666699998 -0.74551435770800001 0.40478710959300002 0
		 -0.57938251914899996 -0.66634260124300004 -0.46936492654799999 0 0.61964518730200002 0.0139957214688 -0.78475726287400005 0
		 41.400326656799997 103.242690462 14.130197427600001 1;
	setAttr ".pm[9]" -type "matrix" 0.48811612215 -0.85008771988300003 0.19772081276799999 0
		 -0.60444084261999997 -0.49267593719300001 -0.62603649149600005 0 0.62959822035199997 0.18606796987999999 -0.75431080564599995 0
		 -1.3626806979199999 96.236544869300005 40.407183369099997 1;
	setAttr ".pm[10]" -type "matrix" -0.078051482463300001 0.92941350953599999 0.36069168881199998 0
		 -0.21902437426900001 -0.368942149966 0.90327737348699999 0 0.97259256092199997 -0.0084981333699200006 0.232360694112 0
		 1.16780018083 -43.489016685899998 -96.552442163099997 1;
	setAttr ".pm[11]" -type "matrix" -0.078051482463300001 0.92941350953599999 0.36069168881199998 0
		 -0.21902437426900001 -0.368942149966 0.90327737348699999 0 0.97259256092199997 -0.0084981333699200006 0.232360694112 0
		 -9.9798896409700006 -37.865550479600003 -95.317144902999999 1;
	setAttr ".pm[12]" -type "matrix" -0.029971374294399999 0.241138728488 0.97002774720399998 0
		 -0.63420531583799999 -0.75468896634500005 0.16801244430100001 0 0.77258354505299998 -0.61016118993299995 0.175550528948 0
		 11.0979429247 44.076565692300001 -86.597811154400006 1;
	setAttr ".pm[13]" -type "matrix" -0.029971374294399999 0.241138728488 0.97002774720399998 0
		 -0.63420531583799999 -0.75468896634500005 0.16801244430100001 0 0.77258354505299998 -0.61016118993299995 0.175550528948 0
		 0.44676905081200002 49.810054718000004 -80.325218382399996 1;
	setAttr ".pm[14]" -type "matrix" -0.11485659285499999 -0.26112726025900002 0.95844692968800005 0
		 -0.98001514092399999 -0.127960398916 -0.152303840622 0 0.16241393609099999 -0.95678560307899996 -0.24121157332199999 0
		 58.486621133299998 46.953417465199998 -56.559268327200002 1;
	setAttr ".pm[15]" -type "matrix" -0.11485659285499999 -0.26112726025900002 0.95844692968800005 0
		 -0.98001514092399999 -0.127960398916 -0.152303840622 0 0.16241393609099999 -0.95678560307899996 -0.24121157332199999 0
		 48.678591319500001 45.348345164199998 -47.789554281699999 1;
	setAttr ".pm[16]" -type "matrix" 0.51869538968100004 0.76438988858400003 -0.38296630524699998 0
		 0.53879108492000005 -0.64004507263199995 -0.54776497862700002 0 -0.66382170764000004 0.077784337950499993 -0.74383488573400003 0
		 -87.209584613299995 100.51772091799999 60.580576827500003 1;
	setAttr ".pm[17]" -type "matrix" 0.64858345742300005 -0.74551435770800001 -0.15345305864600001 0
		 0.730160032869 0.66634260124300004 -0.15117494557300001 0 0.214955402717 -0.0139957214688 0.97652357607100004 0
		 -82.838963913800001 -103.242690462 23.093151132599999 1;
	setAttr ".pm[18]" -type "matrix" 0.52948629666699998 -0.74551435770800001 0.40478710959300002 0
		 0.57938251914899996 0.66634260124300004 0.46936492654799999 0 -0.61964518730200002 -0.0139957214688 0.78475726287400005 0
		 -41.400326656799997 -103.242690462 -14.130197427600001 1;
	setAttr ".pm[19]" -type "matrix" 0.48811612215 -0.85008771988300003 0.19772081276799999 0
		 0.60444084261999997 0.49267593719300001 0.62603649149600005 0 -0.62959822035199997 -0.18606796987999999 0.75431080564599995 0
		 1.3626806979199999 -96.236544869300005 -40.407183369099997 1;
	setAttr ".pm[20]" -type "matrix" -0.078051482463300001 0.92941350953599999 0.36069168881199998 0
		 0.21902437426900001 0.368942149966 -0.90327737348699999 0 -0.97259256092199997 0.0084981333699200006 -0.232360694112 0
		 -1.16780018083 43.489016685899998 96.552442163099997 1;
	setAttr ".pm[21]" -type "matrix" -0.078051482463300001 0.92941350953599999 0.36069168881199998 0
		 0.21902437426900001 0.368942149966 -0.90327737348699999 0 -0.97259256092199997 0.0084981333699200006 -0.232360694112 0
		 9.9798896409700006 37.865550479600003 95.317144902999999 1;
	setAttr ".pm[22]" -type "matrix" -0.029971374294399999 0.241138728488 0.97002774720399998 0
		 0.63420531583799999 0.75468896634500005 -0.16801244430100001 0 -0.77258354505299998 0.61016118993299995 -0.175550528948 0
		 -11.343621178399999 -44.046698643500001 89.592470366200004 1;
	setAttr ".pm[23]" -type "matrix" -0.029971374294399999 0.241138728488 0.97002774720399998 0
		 0.63420531583799999 0.75468896634500005 -0.16801244430100001 0 -0.77258354505299998 0.61016118993299995 -0.175550528948 0
		 0.83008819936099998 -47.828546806399999 84.268375152800004 1;
	setAttr ".pm[24]" -type "matrix" -0.11485659285499999 -0.26112726025900002 0.95844692968800005 0
		 0.98001514092399999 0.127960398916 0.152303840622 0 -0.16241393609099999 0.95678560307899996 0.24121157332199999 0
		 -59.800978949700003 -46.965679691600002 60.514049941400003 1;
	setAttr ".pm[25]" -type "matrix" -0.11485659285499999 -0.26112726025900002 0.95844692968800005 0
		 0.98001514092399999 0.127960398916 0.152303840622 0 -0.16241393609099999 0.95678560307899996 0.24121157332199999 0
		 -48.906189872799999 -46.754060727400002 56.2077613441 1;
	setAttr ".pm[26]" -type "matrix" 5.0551371916e-017 1 3.0992284838300001e-016 0 -0.81171578210799999 2.22044604925e-016 -0.58405264238400001 0
		 -0.58405264238400001 -2.22044604925e-016 0.81171578210799999 0 33.935646638999998 1.7741488171400002e-014 61.284163242200002 1;
	setAttr ".pm[27]" -type "matrix" -3.1329547733699997e-017 1 3.1245171241599999e-016 0
		 -0.63303083805399996 2.22044604925e-016 -0.77412657755299996 0 -0.77412657755299996 -2.22044604925e-016 0.63303083805399996 0
		 -11.3189279182 4.7641518527000002e-014 60.412272871100001 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 14 ".ma";
	setAttr -s 28 ".dpf[0:27]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4;
	setAttr -s 14 ".lw";
	setAttr ".ucm" yes;
createNode tweak -n "tweak2";
createNode objectSet -n "skinCluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	setAttr -s 261 ".wl";
	setAttr -s 3 ".wl[0].w";
	setAttr ".wl[0].w[2:3]" 0.49137906626759109 0.028890828089388854;
	setAttr ".wl[0].w[6]" 0.47973010564302004;
	setAttr -s 6 ".wl[1].w";
	setAttr ".wl[1].w[0:2]" 0.05870570777517934 0.93082589627121648 0.010468339612251057;
	setAttr ".wl[1].w[5:7]" 7.8355537879159896e-010 2.6824401994817374e-008 
		2.873339572668292e-008;
	setAttr -s 3 ".wl[2].w";
	setAttr ".wl[2].w[0:1]" 0.82011822066713314 0.014232625790923955;
	setAttr ".wl[2].w[26]" 0.16564915354194296;
	setAttr -s 3 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.45680722363430659;
	setAttr ".wl[3].w[26:27]" 0.5309556696350809 0.012237106730612556;
	setAttr -s 3 ".wl[4].w";
	setAttr ".wl[4].w[2:3]" 0.53588816463157374 0.052553131834908361;
	setAttr ".wl[4].w[6]" 0.41155870353351792;
	setAttr -s 3 ".wl[5].w";
	setAttr ".wl[5].w[0:1]" 0.89033264910014243 0.080544875604396049;
	setAttr ".wl[5].w[26]" 0.029122475295461549;
	setAttr -s 3 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.017134347229227642;
	setAttr ".wl[6].w[26:27]" 0.88281108737111058 0.10005456539966184;
	setAttr -s 3 ".wl[7].w[16:18]"  0.048969726506855313 0.90440911809792879 
		0.046621155395216059;
	setAttr -s 3 ".wl[8].w[16:18]"  0.0057824435581432746 0.97518715221412988 
		0.019030404227726838;
	setAttr -s 4 ".wl[9].w";
	setAttr ".wl[9].w[16:18]" 0.00058571191425478596 0.50105783507920898 0.49835645279734497;
	setAttr ".wl[9].w[49]" 2.0919121990203848e-010;
	setAttr -s 4 ".wl[10].w";
	setAttr ".wl[10].w[16:18]" 0.00035620457904769509 0.50232306754660605 0.49732072756216233;
	setAttr ".wl[10].w[49]" 3.1218383433895269e-010;
	setAttr -s 3 ".wl[11].w";
	setAttr ".wl[11].w[0:1]" 0.88461466762760277 0.010815624028797544;
	setAttr ".wl[11].w[26]" 0.10456970834359969;
	setAttr -s 3 ".wl[12].w";
	setAttr ".wl[12].w[17:18]" 0.018829610552307207 0.97034376159587399;
	setAttr ".wl[12].w[49]" 0.01082662785181876;
	setAttr -s 4 ".wl[13].w";
	setAttr ".wl[13].w[18]" 0.60628907410519384;
	setAttr ".wl[13].w[35]" 1.1102230246251565e-016;
	setAttr ".wl[13].w[49]" 0.38244692054712548;
	setAttr ".wl[13].w[51]" 0.011264005347680572;
	setAttr ".wl[14].w[51]"  1;
	setAttr -s 2 ".wl[15].w";
	setAttr ".wl[15].w[43]" 1;
	setAttr ".wl[15].w[51]" 1;
	setAttr ".wl[16].w[53]"  1;
	setAttr -s 3 ".wl[17].w";
	setAttr ".wl[17].w[49]" 0.052401985672262619;
	setAttr ".wl[17].w[52:53]" 0.47436427571562767 0.47323373861210971;
	setAttr -s 2 ".wl[18].w[54:55]"  0.87065685411455718 0.12934314588544282;
	setAttr ".wl[19].w[55]"  1;
	setAttr ".wl[20].w[55]"  1;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[43]" 0.48287467141013773;
	setAttr ".wl[21].w[49:51]" 0.0070574148070606801 0.49606377752100306 0.48287467141013773;
	setAttr ".wl[21].w[55]" 0.014004136261798528;
	setAttr -s 2 ".wl[22].w[54:55]"  0.84166193149485657 0.15833806850514343;
	setAttr ".wl[23].w[53]"  1;
	setAttr ".wl[24].w[53]"  1;
	setAttr -s 3 ".wl[25].w";
	setAttr ".wl[25].w[49]" 0.053077958206664944;
	setAttr ".wl[25].w[52:53]" 0.47397208586066131 0.47294995593267375;
	setAttr ".wl[26].w[49]"  1;
	setAttr -s 3 ".wl[27].w";
	setAttr ".wl[27].w[18]" 0.54314883395221647;
	setAttr ".wl[27].w[49]" 0.44797275806759351;
	setAttr ".wl[27].w[51]" 0.0088784079801900173;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[18]" 0.45498770311865172;
	setAttr ".wl[28].w[49:51]" 0.52586278124562935 0.0090134242562593947 0.0081017993624867835;
	setAttr ".wl[28].w[54]" 0.0020342920169726941;
	setAttr -s 6 ".wl[29].w";
	setAttr ".wl[29].w[0]" -2.2204460492503131e-016;
	setAttr ".wl[29].w[18]" 0.0037712043606839244;
	setAttr ".wl[29].w[42]" 0.015375536015339142;
	setAttr ".wl[29].w[49:51]" 0.87941844873457797 0.10143481088939921 0.015375536015339142;
	setAttr -s 6 ".wl[30].w";
	setAttr ".wl[30].w[0]" 1.1102230246251565e-016;
	setAttr ".wl[30].w[42]" 0.007121105098246483;
	setAttr ".wl[30].w[49:51]" 0.94417513520419893 0.046709004157444611 0.007121105098246483;
	setAttr ".wl[30].w[54]" 0.0019947555401098604;
	setAttr -s 4 ".wl[31].w";
	setAttr ".wl[31].w[49]" 0.29633057056932521;
	setAttr ".wl[31].w[52:54]" 0.19999999999999996 0.23994903593036032 0.26372039350031451;
	setAttr -s 2 ".wl[32].w";
	setAttr ".wl[32].w[49]" 0.6;
	setAttr ".wl[32].w[54]" 0.4;
	setAttr ".wl[33].w[54]"  1;
	setAttr -s 3 ".wl[34].w";
	setAttr ".wl[34].w[49]" 0.71122993915114363;
	setAttr ".wl[34].w[52:53]" 0.24453256879309682 0.044237492055759553;
	setAttr -s 3 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.4693121565829082;
	setAttr ".wl[35].w[26:27]" 0.50570145535199407 0.024986388065097741;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[17:18]" 9.748708170962313e-007 0.95572048457484216;
	setAttr ".wl[36].w[35]" 1.1102230246251565e-016;
	setAttr ".wl[36].w[49]" 0.041444180467122838;
	setAttr ".wl[36].w[51]" 0.0028343600872178243;
	setAttr -s 3 ".wl[37].w[16:18]"  0.0069075560062336365 0.98891311327967102 
		0.0041793307140953846;
	setAttr -s 3 ".wl[38].w[16:18]"  0.058650310317187399 0.93962561681874801 
		0.0017240728640646138;
	setAttr -s 3 ".wl[39].w";
	setAttr ".wl[39].w[0:1]" 0.7996552662596601 0.16162763970799918;
	setAttr ".wl[39].w[26]" 0.038717094032340756;
	setAttr -s 3 ".wl[40].w";
	setAttr ".wl[40].w[0]" 0.013480538353249596;
	setAttr ".wl[40].w[26:27]" 0.89302455999306463 0.093494901653686777;
	setAttr -s 3 ".wl[41].w[16:18]"  0.47524160275049715 0.51783655243719684 
		0.0069218448123061294;
	setAttr -s 3 ".wl[42].w";
	setAttr ".wl[42].w[49]" 0.8;
	setAttr ".wl[42].w[52:53]" 0.1857885593511801 0.014211440648819851;
	setAttr ".wl[43].w[49]"  1;
	setAttr -s 3 ".wl[44].w";
	setAttr ".wl[44].w[49]" 0.5452321450679144;
	setAttr ".wl[44].w[52:53]" 0.38510069722662421 0.069667157705461391;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[42]" 0.00034183003047516536;
	setAttr ".wl[45].w[49:51]" 0.84571556790714619 0.12116072736674821 0.00034183003047516536;
	setAttr ".wl[45].w[54]" 0.032781874695630431;
	setAttr -s 3 ".wl[46].w";
	setAttr ".wl[46].w[49]" 0.6344332731795006;
	setAttr ".wl[46].w[52:53]" 0.3095645390381716 0.056002187782327795;
	setAttr -s 3 ".wl[47].w";
	setAttr ".wl[47].w[0:1]" 0.72214716055083161 0.043304217837021645;
	setAttr ".wl[47].w[26]" 0.23454862161214671;
	setAttr -s 3 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.40165439594403207;
	setAttr ".wl[48].w[26:27]" 0.59275779093619085 0.0055878131197771653;
	setAttr -s 3 ".wl[49].w";
	setAttr ".wl[49].w[0:1]" 0.92080874924715428 0.067689506048802875;
	setAttr ".wl[49].w[26]" 0.011501744704042961;
	setAttr -s 3 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.014959584502545628;
	setAttr ".wl[50].w[26:27]" 0.88337826421695453 0.10166215128049984;
	setAttr -s 3 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.0040904156356254369;
	setAttr ".wl[51].w[26:27]" 0.4979547921821873 0.4979547921821873;
	setAttr -s 3 ".wl[52].w";
	setAttr ".wl[52].w[18]" 0.57032693571315862;
	setAttr ".wl[52].w[49]" 0.42905876671963106;
	setAttr ".wl[52].w[54]" 0.00061429756721032014;
	setAttr -s 3 ".wl[53].w";
	setAttr ".wl[53].w[18]" 0.71422735111237756;
	setAttr ".wl[53].w[49]" 0.28572714739818716;
	setAttr ".wl[53].w[54]" 4.5501489435273434e-005;
	setAttr -s 3 ".wl[54].w";
	setAttr ".wl[54].w[17:18]" 0.33246461231863444 0.65667090414297524;
	setAttr ".wl[54].w[49]" 0.010864483538390313;
	setAttr -s 3 ".wl[55].w";
	setAttr ".wl[55].w[17:18]" 0.0059920180978231949 0.9900310711740764;
	setAttr ".wl[55].w[49]" 0.003976910728100358;
	setAttr -s 4 ".wl[56].w";
	setAttr ".wl[56].w[16:18]" 0.00037640811645220585 0.49981148449497204 0.49981210662663011;
	setAttr ".wl[56].w[49]" 7.6194561771103508e-010;
	setAttr -s 4 ".wl[57].w";
	setAttr ".wl[57].w[17:18]" 0.35050550543378578 0.64911753889821344;
	setAttr ".wl[57].w[35]" 1.1102230246251565e-016;
	setAttr ".wl[57].w[49]" 0.00037695566800066693;
	setAttr -s 3 ".wl[58].w";
	setAttr ".wl[58].w[2]" 0.15358194799183028;
	setAttr ".wl[58].w[16:17]" 0.55570479985739485 0.29071325215077498;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[2]" 0.1535819479918302;
	setAttr ".wl[59].w[6:7]" 0.55570479985739485 0.29071325215077493;
	setAttr -s 3 ".wl[60].w";
	setAttr ".wl[60].w[2]" 0.047477086552828771;
	setAttr ".wl[60].w[16:17]" 0.69443534062930412 0.25808757281786709;
	setAttr -s 3 ".wl[61].w[16:18]"  0.12872730231871016 0.86343284287087152 
		0.007839854810418356;
	setAttr -s 3 ".wl[62].w[16:18]"  0.00045120231463461875 0.99929902724362929 
		0.00024977044173611737;
	setAttr -s 3 ".wl[63].w[16:18]"  0.00091825088937215146 0.99652947526655 
		0.0025522738440778925;
	setAttr -s 4 ".wl[64].w";
	setAttr ".wl[64].w[16:18]" 0.0011405014431245786 0.73171244797051926 0.26714705058635591;
	setAttr ".wl[64].w[35]" 2.2204460492503131e-016;
	setAttr -s 3 ".wl[65].w";
	setAttr ".wl[65].w[17:18]" 0.23161926749989795 0.76795463755868543;
	setAttr ".wl[65].w[49]" 0.00042609494141665483;
	setAttr -s 3 ".wl[66].w[16:18]"  0.0007343447841340917 0.97364381067459105 
		0.025621844541274939;
	setAttr -s 3 ".wl[67].w";
	setAttr ".wl[67].w[17:18]" 0.011061153309002503 0.98242828052442466;
	setAttr ".wl[67].w[49]" 0.006510566166572862;
	setAttr -s 3 ".wl[68].w";
	setAttr ".wl[68].w[18]" 0.90099502227117589;
	setAttr ".wl[68].w[49]" 0.092762781652483084;
	setAttr ".wl[68].w[51]" 0.0062421960763410222;
	setAttr -s 5 ".wl[69].w";
	setAttr ".wl[69].w[18]" 0.48126525628781336;
	setAttr ".wl[69].w[42]" 0.011534646538892024;
	setAttr ".wl[69].w[49:51]" 0.47765570709197203 0.029544390081322591 0.011534646538892024;
	setAttr -s 3 ".wl[70].w[0:2]"  0.28717247936704521 0.43659925286000362 
		0.27622826777295117;
	setAttr -s 4 ".wl[71].w";
	setAttr ".wl[71].w[2]" 6.9975523325504031e-011;
	setAttr ".wl[71].w[5]" 0.013907287198121376;
	setAttr ".wl[71].w[16:17]" 0.47610503688949818 0.50998767584240501;
	setAttr -s 3 ".wl[72].w[0:2]"  0.00011401337347623 0.99986797571182251 
		1.8010914701260233e-005;
	setAttr ".wl[73].w[1]"  1;
	setAttr -s 3 ".wl[74].w";
	setAttr ".wl[74].w[0:1]" 0.0022608037864811689 0.99771463871002197;
	setAttr ".wl[74].w[26]" 2.4557503496858595e-005;
	setAttr -s 3 ".wl[75].w";
	setAttr ".wl[75].w[2]" 0.39516699508037306;
	setAttr ".wl[75].w[6:7]" 0.44576752284318399 0.15906548207644305;
	setAttr -s 3 ".wl[76].w";
	setAttr ".wl[76].w[2]" 0.48788473130140619;
	setAttr ".wl[76].w[6:7]" 0.49817636594363301 0.013938902754960828;
	setAttr -s 4 ".wl[77].w";
	setAttr ".wl[77].w[2]" 0.48788473130140592;
	setAttr ".wl[77].w[16:17]" 0.49817636594363318 0.013938902754960805;
	setAttr ".wl[77].w[35]" 1.1102230246251565e-016;
	setAttr -s 3 ".wl[78].w";
	setAttr ".wl[78].w[2]" 0.39516699508037284;
	setAttr ".wl[78].w[16:17]" 0.44576752284318411 0.15906548207644308;
	setAttr -s 3 ".wl[79].w";
	setAttr ".wl[79].w[2:3]" 0.48399410703215323 0.032011785935693517;
	setAttr ".wl[79].w[6]" 0.48399410703215323;
	setAttr -s 3 ".wl[80].w";
	setAttr ".wl[80].w[2:3]" 0.86141447885673128 0.056974693489887408;
	setAttr ".wl[80].w[6]" 0.08161082765338136;
	setAttr -s 3 ".wl[81].w";
	setAttr ".wl[81].w[17:18]" 0.0021261927410414511 0.996448224103478;
	setAttr ".wl[81].w[49]" 0.0014255831554805809;
	setAttr ".wl[82].w[53]"  1;
	setAttr -s 3 ".wl[83].w";
	setAttr ".wl[83].w[49]" 0.03723281045302862;
	setAttr ".wl[83].w[52:53]" 0.48138359477348569 0.48138359477348569;
	setAttr ".wl[84].w[52]"  1;
	setAttr -s 2 ".wl[85].w";
	setAttr ".wl[85].w[49]" 0.99915822178850022;
	setAttr ".wl[85].w[54]" 0.00084177821149977738;
	setAttr ".wl[86].w[53]"  1;
	setAttr ".wl[87].w[54]"  1;
	setAttr -s 2 ".wl[88].w";
	setAttr ".wl[88].w[49]" 0.6;
	setAttr ".wl[88].w[54]" 0.4;
	setAttr -s 3 ".wl[89].w[16:18]"  0.027596611064288401 0.95259962277281818 
		0.019803766162893508;
	setAttr -s 3 ".wl[90].w[16:18]"  0.0013928337001124348 0.95088004474326449 
		0.047727121556623023;
	setAttr -s 4 ".wl[91].w";
	setAttr ".wl[91].w[16:18]" 0.012100114302682119 0.89873899653963296 0.089160889157684844;
	setAttr ".wl[91].w[35]" 1.1102230246251565e-016;
	setAttr -s 3 ".wl[92].w[16:18]"  0.00084883685883463574 0.6641712438326447 
		0.33497991930852067;
	setAttr -s 3 ".wl[93].w[16:18]"  0.00046705998339923599 0.98569923357983213 
		0.01383370643676874;
	setAttr -s 3 ".wl[94].w[16:18]"  0.0013036947694532763 0.65297546479400959 
		0.34572084043653722;
	setAttr -s 3 ".wl[95].w[16:18]"  0.021342807435906799 0.87386399050931418 
		0.10479320205477909;
	setAttr -s 3 ".wl[96].w[16:18]"  0.091378384491610024 0.90411934605144884 
		0.0045022694569411313;
	setAttr -s 3 ".wl[97].w[16:18]"  0.0058214514358299217 0.91943633322982987 
		0.074742215334340251;
	setAttr -s 3 ".wl[98].w";
	setAttr ".wl[98].w[17:18]" 0.09041988581773866 0.90899829084612171;
	setAttr ".wl[98].w[49]" 0.00058182333613965298;
	setAttr -s 3 ".wl[99].w";
	setAttr ".wl[99].w[17:18]" 0.17709398318721309 0.82139717863538197;
	setAttr ".wl[99].w[49]" 0.0015088381774048809;
	setAttr -s 3 ".wl[100].w";
	setAttr ".wl[100].w[17:18]" 0.42518014343345373 0.57277379474799395;
	setAttr ".wl[100].w[49]" 0.0020460618185522694;
	setAttr -s 4 ".wl[101].w";
	setAttr ".wl[101].w[17:18]" 0.29720018172100865 0.69720194311462758;
	setAttr ".wl[101].w[35]" 1.1102230246251565e-016;
	setAttr ".wl[101].w[49]" 0.0055978751643636082;
	setAttr -s 3 ".wl[102].w";
	setAttr ".wl[102].w[17:18]" 0.24339835230150783 0.75576124350023699;
	setAttr ".wl[102].w[49]" 0.00084040419825515134;
	setAttr -s 3 ".wl[103].w";
	setAttr ".wl[103].w[17:18]" 0.0045255393206093258 0.65817353527132239;
	setAttr ".wl[103].w[49]" 0.33730092540806833;
	setAttr -s 3 ".wl[104].w";
	setAttr ".wl[104].w[17:18]" 0.37558987712424124 0.62328124770435933;
	setAttr ".wl[104].w[49]" 0.0011288751713993683;
	setAttr -s 9 ".wl[105].w";
	setAttr ".wl[105].w[0]" 1.1102230246251565e-016;
	setAttr ".wl[105].w[42]" 0.31587447322927187;
	setAttr ".wl[105].w[49:55]" 0.0674812540459514 0.51343003295161349 0.31587447322927187 
		0.01417930322237293 0.0025651258511362185 0.078733201030244726 0.0077366096694092557;
	setAttr -s 4 ".wl[106].w";
	setAttr ".wl[106].w[43]" 0.4131586874806632;
	setAttr ".wl[106].w[49:51]" 0.1242711511096779 0.4625701614096589 0.4131586874806632;
	setAttr ".wl[107].w[49]"  1;
	setAttr -s 4 ".wl[108].w";
	setAttr ".wl[108].w[43]" 0.37310117023588996;
	setAttr ".wl[108].w[49:51]" 0.18308743336537114 0.4438113963987389 0.37310117023588996;
	setAttr -s 5 ".wl[109].w";
	setAttr ".wl[109].w[0]" -1.1102230246251565e-016;
	setAttr ".wl[109].w[18]" 0.16015759211239597;
	setAttr ".wl[109].w[49:51]" 0.61791354388816 0.20994818922705316 0.011980674772390953;
	setAttr -s 5 ".wl[110].w";
	setAttr ".wl[110].w[18]" 0.15525258025279426;
	setAttr ".wl[110].w[42]" 0.0085792905965433874;
	setAttr ".wl[110].w[49:51]" 0.53053826148427885 0.30562986766638356 0.0085792905965433874;
	setAttr -s 3 ".wl[111].w[49:51]"  0.51318028969957297 0.45834318661465101 
		0.028476523685776023;
	setAttr -s 3 ".wl[112].w[49:51]"  0.066697346662299095 0.49422310008780812 
		0.43907955324989278;
	setAttr -s 3 ".wl[113].w";
	setAttr ".wl[113].w[17:18]" 0.049224993628647969 0.95018564293687668;
	setAttr ".wl[113].w[49]" 0.000589363434475354;
	setAttr -s 4 ".wl[114].w";
	setAttr ".wl[114].w[18]" 0.72034170501508654;
	setAttr ".wl[114].w[49:51]" 0.2750315801634039 0.0017628977666567236 0.0028638170548528352;
	setAttr -s 2 ".wl[115].w";
	setAttr ".wl[115].w[18]" 0.98188956258526083;
	setAttr ".wl[115].w[49]" 0.018110437414739167;
	setAttr -s 4 ".wl[116].w";
	setAttr ".wl[116].w[2]" 1.0925980334581727e-009;
	setAttr ".wl[116].w[5]" 0.0013401132755163235;
	setAttr ".wl[116].w[16:17]" 0.45246082311169478 0.5461990625201909;
	setAttr -s 4 ".wl[117].w";
	setAttr ".wl[117].w[16:18]" 0.050132108945226503 0.83166250485653803 0.11820538619823542;
	setAttr ".wl[117].w[35]" 1.1102230246251565e-016;
	setAttr -s 3 ".wl[118].w[16:18]"  0.061902290028938281 0.75065276459378338 
		0.18744494537727835;
	setAttr -s 3 ".wl[119].w";
	setAttr ".wl[119].w[0:1]" 0.7813159779832306 0.19069291317901685;
	setAttr ".wl[119].w[26]" 0.027991108837752646;
	setAttr -s 3 ".wl[120].w";
	setAttr ".wl[120].w[0]" 0.36922402586507957;
	setAttr ".wl[120].w[26:27]" 0.62650874235582954 0.0042672317790908741;
	setAttr -s 3 ".wl[121].w";
	setAttr ".wl[121].w[0:1]" 0.93280519848472343 0.0087147911062567304;
	setAttr ".wl[121].w[26]" 0.058480010409019928;
	setAttr -s 3 ".wl[122].w";
	setAttr ".wl[122].w[0]" 2.9881096299082971e-006;
	setAttr ".wl[122].w[26:27]" 0.99996285195944656 3.4159930923581632e-005;
	setAttr -s 3 ".wl[123].w[0:2]"  0.0036020380976318081 0.99584042977289577 
		0.00055753212947242943;
	setAttr -s 3 ".wl[124].w[0:2]"  0.01538655429760063 0.98159772157669067 
		0.0030157241257086943;
	setAttr -s 3 ".wl[125].w[0:2]"  1.501241580604255e-007 0.99999982118606567 
		2.8689776265746389e-008;
	setAttr -s 3 ".wl[126].w[16:18]"  0.0072684522374736925 0.84999378507475309 
		0.14273776268777316;
	setAttr -s 3 ".wl[127].w[16:18]"  0.26211984245909653 0.72789362570860972 
		0.009986531832293831;
	setAttr -s 3 ".wl[128].w[6:8]"  0.41540402999094289 0.56518584187127541 
		0.019410128137781674;
	setAttr -s 3 ".wl[129].w[16:18]"  0.4154040299909425 0.56518584187127596 
		0.019410128137781636;
	setAttr -s 3 ".wl[130].w";
	setAttr ".wl[130].w[1]" 0.99520617723464966;
	setAttr ".wl[130].w[6:7]" 0.0017826446098934321 0.0030111781554569101;
	setAttr -s 3 ".wl[131].w";
	setAttr ".wl[131].w[1]" 0.95406383275985718;
	setAttr ".wl[131].w[16:17]" 0.017337497266439496 0.028598669973703326;
	setAttr -s 4 ".wl[132].w";
	setAttr ".wl[132].w[0:1]" 0.7949161545746799 0.16607353905194117;
	setAttr ".wl[132].w[26]" 0.039010306373378809;
	setAttr ".wl[132].w[35]" 1.1102230246251565e-016;
	setAttr -s 3 ".wl[133].w";
	setAttr ".wl[133].w[0:1]" 0.87576873700810232 0.10525646865270828;
	setAttr ".wl[133].w[26]" 0.018974794339189454;
	setAttr -s 3 ".wl[134].w[53:55]"  0.036109146032930028 0.69158285856246948 
		0.27230799540460049;
	setAttr ".wl[135].w[55]"  1;
	setAttr ".wl[136].w[55]"  1;
	setAttr -s 2 ".wl[137].w";
	setAttr ".wl[137].w[43]" 1;
	setAttr ".wl[137].w[51]" 1;
	setAttr ".wl[138].w[51]"  1;
	setAttr -s 2 ".wl[139].w[3:4]"  0.8 0.2;
	setAttr -s 2 ".wl[140].w[3:4]"  0.8 0.2;
	setAttr -s 3 ".wl[141].w[2:4]"  0.26693687528989474 0.52450682424412454 
		0.20855630046598073;
	setAttr -s 3 ".wl[142].w[2:4]"  0.26693687528989501 0.52450682424412409 
		0.20855630046598098;
	setAttr -s 2 ".wl[143].w[3:4]"  0.8 0.2;
	setAttr -s 2 ".wl[144].w[3:4]"  0.8 0.2;
	setAttr -s 2 ".wl[145].w[3:4]"  0.8 0.2;
	setAttr -s 3 ".wl[146].w[2:4]"  4.1152586467004118e-009 0.79999999596607663 
		0.19999999991866488;
	setAttr -s 3 ".wl[147].w[3:5]"  0.40935468851001744 0.39211790458615681 
		0.19852740690382575;
	setAttr -s 3 ".wl[148].w[3:5]"  0.40935468851001694 0.39211790458615603 
		0.19852740690382695;
	setAttr -s 3 ".wl[149].w[2:4]"  0.30278520098638134 0.50319913271765127 
		0.19401566629596728;
	setAttr -s 3 ".wl[150].w[2:4]"  0.30278520098638106 0.50319913271765193 
		0.19401566629596698;
	setAttr -s 3 ".wl[151].w[2:4]"  0.4619355571605312 0.46316447772084274 
		0.074899965118626149;
	setAttr -s 3 ".wl[152].w[2:4]"  0.46193555543319259 0.46316447817965611 
		0.074899966387151254;
	setAttr -s 4 ".wl[153].w";
	setAttr ".wl[153].w[2:3]" 0.3997143769108954 0.37241796737129756;
	setAttr ".wl[153].w[6]" 0.2278676557178069;
	setAttr ".wl[153].w[35]" 1.1102230246251565e-016;
	setAttr -s 5 ".wl[154].w";
	setAttr ".wl[154].w[2:3]" 0.21734459593849215 2.8828893447430429e-008;
	setAttr ".wl[154].w[5:7]" -2.4762488313395572e-010 0.39132769686139002 
		0.39132767861884926;
	setAttr -s 3 ".wl[155].w";
	setAttr ".wl[155].w[2]" 0.21734457795132839;
	setAttr ".wl[155].w[16:17]" 0.39132771102433578 0.39132771102433578;
	setAttr -s 6 ".wl[156].w";
	setAttr ".wl[156].w[2:4]" 0.05557225288737682 5.6193113981317108e-010 
		9.0871870445049367e-011;
	setAttr ".wl[156].w[16:17]" 0.47221387322990999 0.47221387322990999;
	setAttr ".wl[156].w[35]" 2.2204460492503131e-016;
	setAttr -s 4 ".wl[157].w";
	setAttr ".wl[157].w[2]" 0.055572250700391929;
	setAttr ".wl[157].w[5:7]" 6.9505287148891425e-011 0.4722138737905941 0.47221387543950866;
	setAttr -s 3 ".wl[158].w[3:5]"  0.41799448158629682 0.45252015549708879 
		0.12948536291661444;
	setAttr -s 3 ".wl[159].w[2:4]"  0.19460621936720757 0.61532434790321378 
		0.19006943272957869;
	setAttr -s 3 ".wl[160].w[3:5]"  0.45884739538117797 0.45884739538117797 
		0.082305209237644048;
	setAttr -s 4 ".wl[161].w";
	setAttr ".wl[161].w[2:4]" 0.43343261570154251 0.13313476868854948 4.5637375209014289e-015;
	setAttr ".wl[161].w[6]" 0.43343261566141772;
	setAttr -s 3 ".wl[162].w[2:4]"  0.48065572214914376 0.48980486591157663 
		0.029539411939279631;
	setAttr -s 3 ".wl[163].w[6:8]"  0.048969742999082952 0.90440909697233596 
		0.046621160028581174;
	setAttr -s 3 ".wl[164].w[6:8]"  0.0057824435581431514 0.97518715221413033 
		0.01903040422772655;
	setAttr -s 4 ".wl[165].w";
	setAttr ".wl[165].w[6:8]" 0.00058571191315093826 0.50105783422720984 0.49835645364933978;
	setAttr ".wl[165].w[35]" 2.1029944452521931e-010;
	setAttr -s 4 ".wl[166].w";
	setAttr ".wl[166].w[6:8]" 0.00035620456794294901 0.50232306516870306 0.49732072992996051;
	setAttr ".wl[166].w[35]" 3.3339353500139168e-010;
	setAttr -s 5 ".wl[167].w";
	setAttr ".wl[167].w[0]" -2.2204460492503131e-016;
	setAttr ".wl[167].w[7:8]" 0.018687495802622661 0.97047976375603473;
	setAttr ".wl[167].w[35]" 0.01082864732368749;
	setAttr ".wl[167].w[41]" 4.0931176553682391e-006;
	setAttr -s 3 ".wl[168].w";
	setAttr ".wl[168].w[8]" 0.59277440421439531;
	setAttr ".wl[168].w[35]" 0.3958309662410221;
	setAttr ".wl[168].w[41]" 0.011394629544582591;
	setAttr ".wl[169].w[41]"  1;
	setAttr ".wl[170].w[41]"  1;
	setAttr ".wl[171].w[37]"  1;
	setAttr -s 3 ".wl[172].w[37:39]"  0.015474160319563834 0.80000001192092896 
		0.18452582775950721;
	setAttr -s 2 ".wl[173].w[38:39]"  0.20000000298023224 0.79999999701976776;
	setAttr -s 2 ".wl[174].w[38:39]"  0.20000000298023224 0.79999999701976776;
	setAttr -s 3 ".wl[175].w";
	setAttr ".wl[175].w[35]" 0.0074154241371126028;
	setAttr ".wl[175].w[40:41]" 0.48123165457057282 0.51135292129231458;
	setAttr -s 2 ".wl[176].w[38:39]"  0.85532582899143517 0.14467417100856483;
	setAttr ".wl[177].w[37]"  1;
	setAttr -s 4 ".wl[178].w[35:38]"  0.9119475730013793 0.083435943126684564 
		0.0042975899978883181 0.00031889387404782088;
	setAttr -s 3 ".wl[179].w";
	setAttr ".wl[179].w[8]" 0.54557468879810589;
	setAttr ".wl[179].w[35]" 0.44575962333862962;
	setAttr ".wl[179].w[41]" 0.0086656878632644929;
	setAttr -s 4 ".wl[180].w";
	setAttr ".wl[180].w[8]" 0.51744466062917771;
	setAttr ".wl[180].w[35]" 0.47232900288012925;
	setAttr ".wl[180].w[38]" 0.0013853678246960044;
	setAttr ".wl[180].w[41]" 0.0088409686659970399;
	setAttr -s 3 ".wl[181].w";
	setAttr ".wl[181].w[8]" 0.12435254428368366;
	setAttr ".wl[181].w[35]" 0.87549509122147884;
	setAttr ".wl[181].w[38]" 0.00015236449483746473;
	setAttr -s 2 ".wl[182].w";
	setAttr ".wl[182].w[35]" 0.99963806111400455;
	setAttr ".wl[182].w[38]" 0.00036193888599544977;
	setAttr -s 4 ".wl[183].w[35:38]"  0.66080284447116888 0.28709927860113638 
		0.051938079737257281 0.00015979719043746066;
	setAttr ".wl[184].w[38]"  1;
	setAttr ".wl[185].w[38]"  1;
	setAttr -s 4 ".wl[186].w[35:38]"  0.95612869505016429 0.037060055871264597 
		0.0067043990715945911 0.00010685000697652214;
	setAttr -s 3 ".wl[187].w";
	setAttr ".wl[187].w[8]" 0.95439163792504611;
	setAttr ".wl[187].w[35]" 0.04268369422043361;
	setAttr ".wl[187].w[41]" 0.0029246678545202798;
	setAttr -s 3 ".wl[188].w[6:8]"  0.0069075571519653847 0.9889131120995116 
		0.0041793307485230233;
	setAttr -s 3 ".wl[189].w[6:8]"  0.058650289432609456 0.93962563952597156 
		0.0017240710414189963;
	setAttr -s 4 ".wl[190].w[35:38]"  0.9 0.067545749253687393 0.0090276633484701607 
		0.023426587397842424;
	setAttr -s 5 ".wl[191].w";
	setAttr ".wl[191].w[8]" 0.097192243662730507;
	setAttr ".wl[191].w[35]" 0.82075465123327529;
	setAttr ".wl[191].w[38]" 0.0016968895215541124;
	setAttr ".wl[191].w[40:41]" 0.075346361883847912 0.0050098536985921927;
	setAttr -s 5 ".wl[192].w";
	setAttr ".wl[192].w[0]" 2.2204460492503131e-016;
	setAttr ".wl[192].w[35:38]" 0.42707150365698876 0.17661548010928518 0.031950860111683022 
		0.36436215612204281;
	setAttr -s 2 ".wl[193].w";
	setAttr ".wl[193].w[35]" 0.98373888518710439;
	setAttr ".wl[193].w[38]" 0.016261114812895605;
	setAttr -s 4 ".wl[194].w[35:38]"  0.63243701832761234 0.092093162210709512 
		0.01666023692383134 0.25880958253784681;
	setAttr -s 5 ".wl[195].w";
	setAttr ".wl[195].w[8]" 0.59293932485081569;
	setAttr ".wl[195].w[35]" 0.4060475703805273;
	setAttr ".wl[195].w[38]" 0.0001375052088405937;
	setAttr ".wl[195].w[40:41]" 0.00087384686249836196 1.7526973180581606e-006;
	setAttr -s 5 ".wl[196].w";
	setAttr ".wl[196].w[8]" 0.59579217455580791;
	setAttr ".wl[196].w[35]" 0.40369553491882271;
	setAttr ".wl[196].w[38]" 4.8909012548392639e-005;
	setAttr ".wl[196].w[40:41]" 0.00021937054775889031 0.00024401096506210251;
	setAttr -s 4 ".wl[197].w";
	setAttr ".wl[197].w[7:8]" 0.33221684009098862 0.65661798133590354;
	setAttr ".wl[197].w[35]" 0.011126171756884573;
	setAttr ".wl[197].w[38]" 3.9006816223263741e-005;
	setAttr -s 4 ".wl[198].w";
	setAttr ".wl[198].w[7:8]" 0.0059811745132934144 0.99004230524174419;
	setAttr ".wl[198].w[35]" 0.0039760348211612673;
	setAttr ".wl[198].w[41]" 4.8542380115534911e-007;
	setAttr -s 4 ".wl[199].w";
	setAttr ".wl[199].w[6:8]" 0.00037640811996749975 0.49981148519097296 0.49981210594622355;
	setAttr ".wl[199].w[35]" 7.4283601492197704e-010;
	setAttr -s 4 ".wl[200].w";
	setAttr ".wl[200].w[0]" -2.2204460492503131e-016;
	setAttr ".wl[200].w[7:8]" 0.35045147451187475 0.64917154828598922;
	setAttr ".wl[200].w[35]" 0.00037697720213625274;
	setAttr -s 3 ".wl[201].w[6:8]"  0.12872730231871066 0.86343284287087096 
		0.007839854810418382;
	setAttr -s 3 ".wl[202].w[6:8]"  0.00045120084245276674 0.99929902873950294 
		0.00024977041804439106;
	setAttr -s 3 ".wl[203].w[6:8]"  0.00091825088937218626 0.99652947526654989 
		0.0025522738440779957;
	setAttr -s 3 ".wl[204].w[6:8]"  0.0011405015525102384 0.73171245008187136 
		0.26714704836561848;
	setAttr -s 5 ".wl[205].w";
	setAttr ".wl[205].w[0]" -2.2204460492503131e-016;
	setAttr ".wl[205].w[6:8]" 9.3598704240772283e-007 0.23153966536815154 
		0.76803533539691027;
	setAttr ".wl[205].w[35]" 0.00042406324789601157;
	setAttr -s 3 ".wl[206].w[6:8]"  0.00073434474148520652 0.97364381112905107 
		0.025621844129463729;
	setAttr -s 4 ".wl[207].w";
	setAttr ".wl[207].w[7:8]" 0.011012004862281108 0.98241435276415767;
	setAttr ".wl[207].w[35]" 0.0065643056432412861;
	setAttr ".wl[207].w[41]" 9.336730319886577e-006;
	setAttr -s 3 ".wl[208].w";
	setAttr ".wl[208].w[8]" 0.8945964055635317;
	setAttr ".wl[208].w[35]" 0.099103802906553629;
	setAttr ".wl[208].w[41]" 0.0062997915299146667;
	setAttr -s 4 ".wl[209].w";
	setAttr ".wl[209].w[8]" 0.44411308344329414;
	setAttr ".wl[209].w[35]" 0.47714973769442814;
	setAttr ".wl[209].w[40:41]" 0.068214433864800972 0.010522744997476741;
	setAttr -s 4 ".wl[210].w";
	setAttr ".wl[210].w[7:8]" 0.0021257744321415886 0.99644151289710747;
	setAttr ".wl[210].w[35]" 0.0014317147913514017;
	setAttr ".wl[210].w[41]" 9.9787939955575666e-007;
	setAttr -s 2 ".wl[211].w[37:38]"  0.99998087108906475 1.9128910935251042e-005;
	setAttr -s 2 ".wl[212].w";
	setAttr ".wl[212].w[35]" 0.99965209341739902;
	setAttr ".wl[212].w[38]" 0.00034792738225941644;
	setAttr -s 4 ".wl[213].w";
	setAttr ".wl[213].w[35]" 0.7348080232028853;
	setAttr ".wl[213].w[38]" 0.00020001173834316432;
	setAttr ".wl[213].w[40:41]" 0.19434668463408533 0.070645280424686208;
	setAttr ".wl[214].w[38]"  1;
	setAttr ".wl[215].w[38]"  1;
	setAttr -s 4 ".wl[216].w";
	setAttr ".wl[216].w[6:8]" 0.027596612104466976 0.95259962169393397 0.019803766201598932;
	setAttr ".wl[216].w[35]" 1.1102230246251565e-016;
	setAttr -s 3 ".wl[217].w[6:8]"  0.0013928337023111691 0.95088004472765164 
		0.047727121570037209;
	setAttr -s 3 ".wl[218].w[6:8]"  0.012100114243424703 0.89873899631583121 
		0.089160889440744046;
	setAttr -s 3 ".wl[219].w[6:8]"  0.00084883693109314557 0.66417124259194071 
		0.33497992047696612;
	setAttr -s 4 ".wl[220].w";
	setAttr ".wl[220].w[6:8]" 0.00046705998262569319 0.98569923317214991 0.013833706845224348;
	setAttr ".wl[220].w[35]" 1.1102230246251565e-016;
	setAttr -s 4 ".wl[221].w";
	setAttr ".wl[221].w[6:8]" 0.0013036947562729878 0.65297547177321202 0.34572083347051485;
	setAttr ".wl[221].w[35]" 1.1102230246251565e-016;
	setAttr -s 3 ".wl[222].w[6:8]"  0.021342807405651382 0.87386399071755005 
		0.10479320187679858;
	setAttr -s 4 ".wl[223].w";
	setAttr ".wl[223].w[6:8]" 0.091378380494262099 0.90411935069662153 0.004502268809116282;
	setAttr ".wl[223].w[35]" 1.1102230246251565e-016;
	setAttr -s 3 ".wl[224].w[6:8]"  0.0058214514358300509 0.9194363332298281 
		0.07474221533434186;
	setAttr -s 3 ".wl[225].w";
	setAttr ".wl[225].w[7:8]" 0.090517540749741845 0.90889994356118486;
	setAttr ".wl[225].w[35]" 0.00058251568907330409;
	setAttr -s 4 ".wl[226].w";
	setAttr ".wl[226].w[0]" -2.2204460492503131e-016;
	setAttr ".wl[226].w[7:8]" 0.17692200151665533 0.82156853150157161;
	setAttr ".wl[226].w[35]" 0.0015094669817732331;
	setAttr -s 3 ".wl[227].w";
	setAttr ".wl[227].w[7:8]" 0.42505007115465238 0.57290406065054944;
	setAttr ".wl[227].w[35]" 0.0020458681947981283;
	setAttr -s 3 ".wl[228].w";
	setAttr ".wl[228].w[7:8]" 0.29743326677758469 0.69695670352939709;
	setAttr ".wl[228].w[35]" 0.0056100296930181592;
	setAttr -s 3 ".wl[229].w";
	setAttr ".wl[229].w[7:8]" 0.2434848222202031 0.75567459079004862;
	setAttr ".wl[229].w[35]" 0.00084058698974831536;
	setAttr -s 4 ".wl[230].w";
	setAttr ".wl[230].w[7:8]" 0.0027352926823971217 0.60210066472290846;
	setAttr ".wl[230].w[35]" 0.39512328508484373;
	setAttr ".wl[230].w[38]" 4.0757509850664064e-005;
	setAttr -s 3 ".wl[231].w";
	setAttr ".wl[231].w[7:8]" 0.37556993242620051 0.62329689262332788;
	setAttr ".wl[231].w[35]" 0.0011331749504716049;
	setAttr -s 5 ".wl[232].w";
	setAttr ".wl[232].w[35]" 0.5;
	setAttr ".wl[232].w[38:41]" 0.094099373595750269 0.0033214062437636471 0.24924049095609591 
		0.15333872920439018;
	setAttr -s 4 ".wl[233].w";
	setAttr ".wl[233].w[35]" 0.35234287833680955;
	setAttr ".wl[233].w[38]" 0.0019857869968177289;
	setAttr ".wl[233].w[40:41]" 0.045671334666372743 0.6;
	setAttr -s 4 ".wl[234].w";
	setAttr ".wl[234].w[35]" 0.44025568002898097;
	setAttr ".wl[234].w[38]" 4.5759657950839028e-005;
	setAttr ".wl[234].w[40:41]" 0.3864541049871687 0.17324445532589949;
	setAttr -s 4 ".wl[235].w";
	setAttr ".wl[235].w[35]" 0.35091203726989095;
	setAttr ".wl[235].w[38]" 0.0020804806141021537;
	setAttr ".wl[235].w[40:41]" 0.047007482116006916 0.6;
	setAttr -s 5 ".wl[236].w";
	setAttr ".wl[236].w[8]" 0.26360014529565862;
	setAttr ".wl[236].w[35]" 0.53582947909278289;
	setAttr ".wl[236].w[38]" 5.2296749345259741e-005;
	setAttr ".wl[236].w[40:41]" 0.19035869646663905 0.010159382395574124;
	setAttr -s 4 ".wl[237].w";
	setAttr ".wl[237].w[8]" 0.17816941729599883;
	setAttr ".wl[237].w[35]" 0.52035242310554686;
	setAttr ".wl[237].w[40:41]" 0.29289218722406118 0.0085859723743931804;
	setAttr -s 4 ".wl[238].w";
	setAttr ".wl[238].w[35]" 0.50599357668586165;
	setAttr ".wl[238].w[38]" 0.0090060373768210411;
	setAttr ".wl[238].w[40:41]" 0.45693776402372555 0.028062621913591768;
	setAttr -s 3 ".wl[239].w";
	setAttr ".wl[239].w[35]" 0.066285827509402373;
	setAttr ".wl[239].w[40:41]" 0.49428695983352822 0.43942721265706941;
	setAttr -s 4 ".wl[240].w";
	setAttr ".wl[240].w[7:8]" 0.049299428762145193 0.95010579539375539;
	setAttr ".wl[240].w[35]" 0.00058982474593682888;
	setAttr ".wl[240].w[38]" 4.951098162564449e-006;
	setAttr -s 5 ".wl[241].w";
	setAttr ".wl[241].w[8]" 0.72315890589744936;
	setAttr ".wl[241].w[35]" 0.27167023523758682;
	setAttr ".wl[241].w[38]" 0.00097746436949819326;
	setAttr ".wl[241].w[40:41]" 0.001362154263423565 0.0028312402320420649;
	setAttr -s 3 ".wl[242].w";
	setAttr ".wl[242].w[8]" 0.98071549482997844;
	setAttr ".wl[242].w[35]" 0.018532799930659816;
	setAttr ".wl[242].w[41]" 0.00075170523936174405;
	setAttr -s 3 ".wl[243].w[6:8]"  0.050132109373311202 0.8316625032991688 
		0.11820538732751991;
	setAttr -s 3 ".wl[244].w[6:8]"  0.061902290011104075 0.75065276571006134 
		0.18744494427887715;
	setAttr -s 3 ".wl[245].w[6:8]"  0.0072684522374738105 0.84999378507475098 
		0.14273776268777519;
	setAttr -s 2 ".wl[246].w[38:39]"  0.73366345958431434 0.26633654041568566;
	setAttr -s 2 ".wl[247].w[38:39]"  0.3333333432674408 0.6666666567325592;
	setAttr ".wl[248].w[39]"  1;
	setAttr ".wl[249].w[41]"  1;
	setAttr ".wl[250].w[41]"  1;
	setAttr -s 4 ".wl[251].w";
	setAttr ".wl[251].w[6:8]" 0.26211984514093667 0.7278936229836106 0.0099865318754525315;
	setAttr ".wl[251].w[35]" 2.2204460492503131e-016;
	setAttr -s 3 ".wl[252].w[6:8]"  0.47524160275049709 0.51783655243719684 
		0.0069218448123061251;
	setAttr -s 3 ".wl[253].w";
	setAttr ".wl[253].w[2]" 0.047477086552828451;
	setAttr ".wl[253].w[6:7]" 0.69443534062930501 0.25808757281786654;
	setAttr -s 3 ".wl[254].w[5:7]"  0.001340113301864089 0.45246082272333416 
		0.54619906397480178;
	setAttr -s 3 ".wl[255].w[5:7]"  0.013907287199808832 0.47610503686462591 
		0.50998767593556538;
	setAttr ".wl[256].w[37]"  1;
	setAttr ".wl[257].w[37]"  1;
	setAttr ".wl[258].w[37]"  1;
	setAttr ".wl[259].w[37]"  1;
	setAttr ".wl[260].w[37]"  1;
	setAttr -s 49 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.22044604925e-016 1 -2.22044604925e-016 0 4.9303806576300002e-032 2.22044604925e-016 1 0
		 1 -2.22044604925e-016 4.9303806576300002e-032 0 19.166137420599998 -1.31873429374e-014 -85.389330673299995 1;
	setAttr ".pm[1]" -type "matrix" -2.15428509113e-016 1 -2.28469189638e-016 0 0.99956875534300005 2.22044604925e-016 0.0293650019773 0
		 0.0293650019773 -2.22044604925e-016 -0.99956875534300005 0 -110.586437316 -1.8531426778700001e-014 -18.7326892954 1;
	setAttr ".pm[2]" -type "matrix" 4.7129293430199997e-017 1 -3.10461660843e-016 0 0.59297177587700001 2.22044604925e-016 0.80522324420799996 0
		 0.80522324420799996 -2.22044604925e-016 -0.59297177587700001 0 -68.151410792199997 -2.1482448022300001e-014 -117.46261941 1;
	setAttr ".pm[3]" -type "matrix" 1.68774681594e-016 1 -2.6480694856000001e-016 0 0.21624544086200001 2.22044604925e-016 0.97633903399699995 0
		 0.97633903399699995 -2.22044604925e-016 -0.21624544086200001 0 -34.534178989499999 -2.04636128938e-014 -143.74763280799999 1;
	setAttr ".pm[4]" -type "matrix" 2.57888696522e-016 1 -1.7916761247099999e-016 0 -0.177264122399 2.22044604925e-016 0.98416331516199995 0
		 0.98416331516199995 -2.22044604925e-016 0.177264122399 0 0.76965666734399996 -1.62848065019e-014 -155.49453616400001 1;
	setAttr ".pm[5]" -type "matrix" 2.22044604925e-016 1 -2.22044604925e-016 0 -1.94289029309e-016 2.22044604925e-016 1 0
		 1 -2.22044604925e-016 1.94289029309e-016 0 -29.4472145959 1.98999128538e-014 -146.86264203100001 1;
	setAttr ".pm[6]" -type "matrix" 0.51869538968100004 0.76438988858400003 -0.38296630524699998 0
		 -0.53879108492000005 0.64004507263199995 0.54776497862700002 0 0.66382170764000004 -0.077784337950499993 0.74383488573400003 0
		 87.209584613299995 -100.51772091799999 -60.580576827500003 1;
	setAttr ".pm[7]" -type "matrix" 0.64858345742300005 -0.74551435770800001 -0.15345305864600001 0
		 -0.730160032869 -0.66634260124300004 0.15117494557300001 0 -0.214955402717 0.0139957214688 -0.97652357607100004 0
		 82.838963913800001 103.242690462 -23.093151132599999 1;
	setAttr ".pm[8]" -type "matrix" 0.52948629666699998 -0.74551435770800001 0.40478710959300002 0
		 -0.57938251914899996 -0.66634260124300004 -0.46936492654799999 0 0.61964518730200002 0.0139957214688 -0.78475726287400005 0
		 41.400326656799997 103.242690462 14.130197427600001 1;
	setAttr ".pm[9]" -type "matrix" 0.48811612215 -0.85008771988300003 0.19772081276799999 0
		 -0.60444084261999997 -0.49267593719300001 -0.62603649149600005 0 0.62959822035199997 0.18606796987999999 -0.75431080564599995 0
		 -1.3626806979199999 96.236544869300005 40.407183369099997 1;
	setAttr ".pm[10]" -type "matrix" -0.078051482463300001 0.92941350953599999 0.36069168881199998 0
		 -0.21902437426900001 -0.368942149966 0.90327737348699999 0 0.97259256092199997 -0.0084981333699200006 0.232360694112 0
		 1.16780018083 -43.489016685899998 -96.552442163099997 1;
	setAttr ".pm[11]" -type "matrix" -0.078051482463300001 0.92941350953599999 0.36069168881199998 0
		 -0.21902437426900001 -0.368942149966 0.90327737348699999 0 0.97259256092199997 -0.0084981333699200006 0.232360694112 0
		 -9.9798896409700006 -37.865550479600003 -95.317144902999999 1;
	setAttr ".pm[12]" -type "matrix" -0.029971374294399999 0.241138728488 0.97002774720399998 0
		 -0.63420531583799999 -0.75468896634500005 0.16801244430100001 0 0.77258354505299998 -0.61016118993299995 0.175550528948 0
		 11.0979429247 44.076565692300001 -86.597811154400006 1;
	setAttr ".pm[13]" -type "matrix" -0.029971374294399999 0.241138728488 0.97002774720399998 0
		 -0.63420531583799999 -0.75468896634500005 0.16801244430100001 0 0.77258354505299998 -0.61016118993299995 0.175550528948 0
		 0.44676905081200002 49.810054718000004 -80.325218382399996 1;
	setAttr ".pm[14]" -type "matrix" -0.11485659285499999 -0.26112726025900002 0.95844692968800005 0
		 -0.98001514092399999 -0.127960398916 -0.152303840622 0 0.16241393609099999 -0.95678560307899996 -0.24121157332199999 0
		 58.486621133299998 46.953417465199998 -56.559268327200002 1;
	setAttr ".pm[15]" -type "matrix" -0.11485659285499999 -0.26112726025900002 0.95844692968800005 0
		 -0.98001514092399999 -0.127960398916 -0.152303840622 0 0.16241393609099999 -0.95678560307899996 -0.24121157332199999 0
		 48.678591319500001 45.348345164199998 -47.789554281699999 1;
	setAttr ".pm[16]" -type "matrix" 0.51869538968100004 0.76438988858400003 -0.38296630524699998 0
		 0.53879108492000005 -0.64004507263199995 -0.54776497862700002 0 -0.66382170764000004 0.077784337950499993 -0.74383488573400003 0
		 -87.209584613299995 100.51772091799999 60.580576827500003 1;
	setAttr ".pm[17]" -type "matrix" 0.64858345742300005 -0.74551435770800001 -0.15345305864600001 0
		 0.730160032869 0.66634260124300004 -0.15117494557300001 0 0.214955402717 -0.0139957214688 0.97652357607100004 0
		 -82.838963913800001 -103.242690462 23.093151132599999 1;
	setAttr ".pm[18]" -type "matrix" 0.52948629666699998 -0.74551435770800001 0.40478710959300002 0
		 0.57938251914899996 0.66634260124300004 0.46936492654799999 0 -0.61964518730200002 -0.0139957214688 0.78475726287400005 0
		 -41.400326656799997 -103.242690462 -14.130197427600001 1;
	setAttr ".pm[19]" -type "matrix" 0.48811612215 -0.85008771988300003 0.19772081276799999 0
		 0.60444084261999997 0.49267593719300001 0.62603649149600005 0 -0.62959822035199997 -0.18606796987999999 0.75431080564599995 0
		 1.3626806979199999 -96.236544869300005 -40.407183369099997 1;
	setAttr ".pm[20]" -type "matrix" -0.078051482463300001 0.92941350953599999 0.36069168881199998 0
		 0.21902437426900001 0.368942149966 -0.90327737348699999 0 -0.97259256092199997 0.0084981333699200006 -0.232360694112 0
		 -1.16780018083 43.489016685899998 96.552442163099997 1;
	setAttr ".pm[21]" -type "matrix" -0.078051482463300001 0.92941350953599999 0.36069168881199998 0
		 0.21902437426900001 0.368942149966 -0.90327737348699999 0 -0.97259256092199997 0.0084981333699200006 -0.232360694112 0
		 9.9798896409700006 37.865550479600003 95.317144902999999 1;
	setAttr ".pm[22]" -type "matrix" -0.029971374294399999 0.241138728488 0.97002774720399998 0
		 0.63420531583799999 0.75468896634500005 -0.16801244430100001 0 -0.77258354505299998 0.61016118993299995 -0.175550528948 0
		 -11.343621178399999 -44.046698643500001 89.592470366200004 1;
	setAttr ".pm[23]" -type "matrix" -0.029971374294399999 0.241138728488 0.97002774720399998 0
		 0.63420531583799999 0.75468896634500005 -0.16801244430100001 0 -0.77258354505299998 0.61016118993299995 -0.175550528948 0
		 0.83008819936099998 -47.828546806399999 84.268375152800004 1;
	setAttr ".pm[24]" -type "matrix" -0.11485659285499999 -0.26112726025900002 0.95844692968800005 0
		 0.98001514092399999 0.127960398916 0.152303840622 0 -0.16241393609099999 0.95678560307899996 0.24121157332199999 0
		 -59.800978949700003 -46.965679691600002 60.514049941400003 1;
	setAttr ".pm[25]" -type "matrix" -0.11485659285499999 -0.26112726025900002 0.95844692968800005 0
		 0.98001514092399999 0.127960398916 0.152303840622 0 -0.16241393609099999 0.95678560307899996 0.24121157332199999 0
		 -48.906189872799999 -46.754060727400002 56.2077613441 1;
	setAttr ".pm[26]" -type "matrix" 5.0551371916e-017 1 3.0992284838300001e-016 0 -0.81171578210799999 2.22044604925e-016 -0.58405264238400001 0
		 -0.58405264238400001 -2.22044604925e-016 0.81171578210799999 0 33.935646638999998 1.7741488171400002e-014 61.284163242200002 1;
	setAttr ".pm[27]" -type "matrix" -3.1329547733699997e-017 1 3.1245171241599999e-016 0
		 -0.63303083805399996 2.22044604925e-016 -0.77412657755299996 0 -0.77412657755299996 -2.22044604925e-016 0.63303083805399996 0
		 -11.3189279182 4.7641518527000002e-014 60.412272871100001 1;
	setAttr ".pm[28]" -type "matrix" 0.48811612214983063 -0.85008771988292686 0.19772081276804868 0
		 0.60444084261974973 0.49267593719291564 0.62603649149566998 0 -0.62959822035210478 -0.18606796988017085 0.75431080564587771 0
		 1.362714634068281 -96.236511626978867 -40.407176206664744 1;
	setAttr ".pm[29]" -type "matrix" -0.7507605428596289 -0.63463363829129837 0.1832996247521089 0
		 0.63991449124955979 -0.6298644997388162 0.44020467496107629 0 -0.16391476801658658 0.44778438686260519 0.87898867552895588 0
		 -86.386595991034383 -21.740073587543776 -29.815825902529966 1;
	setAttr ".pm[30]" -type "matrix" -0.7507605428596289 -0.63463363829129837 0.1832996247521089 0
		 0.63991449124955979 -0.6298644997388162 0.44020467496107629 0 -0.16391476801658658 0.44778438686260519 0.87898867552895588 0
		 -73.132104948219137 -21.740138789053308 -29.815784922845065 1;
	setAttr ".pm[31]" -type "matrix" -0.57143906435095448 -0.77848981767145142 -0.25963628312617587 0
		 0.25553523365596326 -0.46944838115125814 0.84517451558530454 0 -0.77984558734027409 0.41661951612512438 0.46719272114360771 0
		 -29.993293966446995 -45.595340864874899 -81.157576702044011 1;
	setAttr ".pm[32]" -type "matrix" -0.57143906435095448 -0.77848981767145142 -0.25963628312617587 0
		 0.25553523365596326 -0.46944838115125814 0.84517451558530454 0 -0.77984558734027409 0.41661951612512438 0.46719272114360771 0
		 -16.367375510081526 -45.595320707185671 -81.157568175437987 1;
	setAttr ".pm[33]" -type "matrix" -0.52142534346348024 -0.85308992105299641 0.018793557188136703 0
		 0.11817411197967574 -0.050382901184568153 0.99171389146569877 0 -0.84507425144291659 0.51932566840665417 0.12708406541409947 0
		 -30.035612625791789 -71.539172585267352 -72.07665419280157 1;
	setAttr ".pm[34]" -type "matrix" -0.52142534346348024 -0.85308992105299641 0.018793557188136703 0
		 0.11817411197967574 -0.050382901184568153 0.99171389146569877 0 -0.84507425144291659 0.51932566840665417 0.12708406541409947 0
		 -17.488889207328636 -71.5391485608897 -72.076650852940773 1;
	setAttr ".pm[35]" -type "matrix" 0.4881161221498313 -0.85008771988293041 0.19772081276803299 0
		 -0.6044408426197504 -0.49267593719290459 -0.62603649149567897 0 0.62959822035210433 0.18606796988018462 -0.75431080564587449 0
		 -1.3626806979228057 96.236544869284813 40.407183369110527 1;
	setAttr ".pm[36]" -type "matrix" -0.75076054285962901 -0.63463363829129815 0.18329962475211029 0
		 -0.63991449124955979 0.62986449973881553 -0.44020467496107729 0 0.16391476801658628 -0.4477843868626068 -0.87898867552895454 0
		 86.386612068903361 21.740113142552254 29.815764836081364 1;
	setAttr ".pm[37]" -type "matrix" -0.75076054285962901 -0.63463363829129815 0.18329962475211029 0
		 -0.63991449124955979 0.62986449973881553 -0.44020467496107729 0 0.16391476801658628 -0.4477843868626068 -0.87898867552895454 0
		 73.132118854914182 21.740113142552246 29.81576483608135 1;
	setAttr ".pm[38]" -type "matrix" -0.57143906435095404 -0.77848981767145198 -0.25963628312617548 0
		 -0.25553523365596398 0.46944838115125809 -0.84517451558530465 0 0.77984558734027387 -0.41661951612512421 -0.46719272114360783 0
		 29.993298082013318 45.595380665366349 81.157576413215907 1;
	setAttr ".pm[39]" -type "matrix" -0.57143906435095404 -0.77848981767145198 -0.25963628312617548 0
		 -0.25553523365596398 0.46944838115125809 -0.84517451558530465 0 0.77984558734027387 -0.41661951612512421 -0.46719272114360783 0
		 16.367373475429414 45.595380665366335 81.157576413215907 1;
	setAttr ".pm[40]" -type "matrix" -0.52142534346348024 -0.8530899210529963 0.018793557188138497 0
		 -0.11817411197967619 0.050382901184566453 -0.99171389146569933 0 0.84507425144291604 -0.51932566840665417 -0.1270840654140987 0
		 30.035586434571751 71.539178396469936 72.07663920526538 1;
	setAttr ".pm[41]" -type "matrix" -0.52142534346348024 -0.8530899210529963 0.018793557188138497 0
		 -0.11817411197967619 0.050382901184566453 -0.99171389146569933 0 0.84507425144291604 -0.51932566840665417 -0.1270840654140987 0
		 17.488860971009359 71.53917839646995 72.076639205265408 1;
	setAttr ".pm[49]" -type "matrix" 0.48811612214983158 -0.85008771988292997 0.19772081276803233 0
		 0.60444084261974929 0.49267593719290431 0.62603649149567919 0 -0.62959822035210444 -0.18606796988018598 0.75431080564587416 0
		 1.3626806979229005 -96.236544869284828 -40.407183369110591 1;
	setAttr ".pm[50]" -type "matrix" 0.52142534346348068 0.85329321271425673 -0.0025108424428330295 0
		 -0.11817411197967463 0.0751266725277248 0.99014688927084271 0 0.84507425144291637 -0.51599096524134325 0.14001011869682833 0
		 30.035586434571766 69.717388470096466 -73.840244512580213 1;
	setAttr ".pm[51]" -type "matrix" 0.52142534346348068 0.85329321271425673 -0.0025108424428330295 0
		 -0.11817411197967463 0.0751266725277248 0.99014688927084271 0 0.84507425144291637 -0.51599096524134325 0.14001011869682833 0
		 17.488860971009306 69.717388470096424 -73.840244512580227 1;
	setAttr ".pm[52]" -type "matrix" 0.46377071425228289 0.82344598585971929 0.32688443366645992 0
		 -0.85758928588676964 0.32463193582285316 0.39894200452713247 0 0.22239006572719719 -0.46535020642030606 0.85673323972542936 0
		 78.694042728400291 55.12849755208542 -14.559491380505332 1;
	setAttr ".pm[53]" -type "matrix" 0.46377071425228289 0.82344598585971929 0.32688443366645992 0
		 -0.85758928588676964 0.32463193582285316 0.39894200452713247 0 0.22239006572719719 -0.46535020642030606 0.85673323972542936 0
		 66.97716033162817 55.128497552085463 -14.559491380505328 1;
	setAttr ".pm[54]" -type "matrix" 0.46626459119905461 0.88455704613123909 -0.012496524859134227 0
		 -0.41701968041507925 0.23223211834395593 0.8787279609503631 0 0.78018710393115476 -0.4045084366846447 0.47715931040949117 0
		 32.466354628186956 68.582148246757043 -65.863684289291029 1;
	setAttr ".pm[55]" -type "matrix" 0.46626459119905461 0.88455704613123909 -0.012496524859134227 0
		 -0.41701968041507925 0.23223211834395593 0.8787279609503631 0 0.78018710393115476 -0.4045084366846447 0.47715931040949117 0
		 18.651595658846372 68.582148246757015 -65.863684289290987 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 28 ".ma";
	setAttr -s 49 ".dpf";
	setAttr ".dpf[0:41]" 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr ".dpf[49:55]" 4 4 4 4 4 4 4;
	setAttr -s 28 ".lw";
	setAttr ".ptw" -type "doubleArray" 261 0 0 0 0.012237106730612556 0 0 0.10005456539966184
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.024986388065097741 0 0
		 0 0 0.093494901653686777 0 0 0 0 0 0 0 0.0055878131197771653 0 0.10166215128049984
		 0.4979547921821873 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0042672317790908741
		 0 3.4159930923581632e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".ucm" yes;
createNode tweak -n "tweak3";
createNode objectSet -n "skinCluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:436]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode vsVmtToTex -n "forge_spirit_rocks_color_vmt";
	setAttr ".mp" -type "string" "models/heroes/invoker/forge_spirit_rocks_color";
	setAttr ".bme" yes;
createNode file -n "forge_spirit_rocks_colorFile";
createNode lambert -n "forge_spirit_rocks_color";
createNode shadingEngine -n "forge_spirit_rocks_colorSG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1273]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode polyNormalPerVertex -n "polyNormalPerVertex1";
	setAttr ".uopa" yes;
	setAttr -s 774 ".vn";
	setAttr ".vn[0].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[1].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[2].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[3].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[4].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[5].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[6].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[7].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[8].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[9].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[10].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[11].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[12].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[13].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[14].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[15].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[16].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[17].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[18].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[19].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[20].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[21].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[22].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[23].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[24].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[25].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[26].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[27].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[28].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[29].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[30].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[31].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[32].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[33].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[34].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[35].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[36].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[37].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[38].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[39].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[40].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[41].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[42].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[43].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[44].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[45].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[46].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[47].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[48].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[49].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[50].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[51].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[52].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[53].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[54].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[55].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[56].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[57].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[58].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[59].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[60].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[61].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[62].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[63].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[64].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[65].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[66].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[67].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[68].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[69].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[70].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[71].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[72].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[73].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[74].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[75].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[76].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[77].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[78].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[79].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[80].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[81].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[82].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[83].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[84].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[85].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[86].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[87].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[88].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[89].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[90].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[91].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[92].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[93].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[94].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[95].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[96].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[97].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[98].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[99].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[100].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[101].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[102].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[103].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[104].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[105].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[106].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[107].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[108].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[109].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[110].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[111].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[112].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[113].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[114].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[115].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[116].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[117].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[118].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[119].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[120].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[121].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[122].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[123].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[124].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[125].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[126].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[127].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[128].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[129].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[130].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[131].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[132].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[133].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[134].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[135].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[136].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[137].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[138].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[139].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[140].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[141].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[142].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[143].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[144].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[145].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[146].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[147].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[148].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[149].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[150].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[151].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[152].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[153].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[154].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[155].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[156].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[157].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[158].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[159].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[160].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[161].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[162].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[163].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[164].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[165].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[166].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[167].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[168].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[169].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[170].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[171].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[172].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[173].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[174].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[175].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[176].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[177].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[178].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[179].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[180].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[181].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[182].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[183].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[184].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[185].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[186].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[187].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[188].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[189].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[190].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[191].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[192].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[193].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[194].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[195].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[196].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[197].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[198].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[199].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[200].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[201].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[202].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[203].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[204].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[205].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[206].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[207].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[208].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[209].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[210].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[211].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[212].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[213].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[214].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[215].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[216].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[217].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[218].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[219].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[220].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[221].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[222].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[223].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[224].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[225].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[226].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[227].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[228].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[229].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[230].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[231].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[232].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[233].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[234].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[235].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[236].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[237].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[238].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[239].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[240].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[241].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[242].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[243].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[244].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[245].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[246].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[247].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[248].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[249].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[250].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[251].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[252].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[253].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[254].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[255].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[256].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[257].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[258].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[259].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[260].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[261].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[262].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[263].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[264].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[265].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[266].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[267].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[268].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[269].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[270].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[271].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[272].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[273].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[274].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[275].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[276].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[277].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[278].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[279].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[280].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[281].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[282].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[283].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[284].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[285].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[286].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[287].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[288].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[289].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[290].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[291].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[292].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[293].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[294].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[295].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[296].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[297].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[298].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[299].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[300].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[301].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[302].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[303].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[304].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[305].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[306].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[307].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[308].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[309].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[310].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[311].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[312].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[313].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[314].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[315].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[316].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[317].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[318].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[319].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[320].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[321].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[322].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[323].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[324].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[325].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[326].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[327].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[328].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[329].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[330].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[331].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[332].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[333].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[334].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[335].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[336].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[337].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[338].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[339].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[340].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[341].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[342].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[343].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[344].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[345].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[346].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[347].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[348].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[349].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[350].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[351].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[352].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[353].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[354].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[355].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[356].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[357].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[358].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[359].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[360].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[361].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[362].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[363].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[364].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[365].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[366].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[367].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[368].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[369].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[370].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[371].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[372].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[373].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[374].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[375].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[376].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[377].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[378].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[379].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[380].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[381].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[382].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[383].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[384].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[385].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[386].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[387].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[388].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[389].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[390].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[391].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[392].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[393].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[394].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[395].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[396].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[397].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[398].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[399].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[400].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[401].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[402].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[403].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[404].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[405].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[406].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[407].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[408].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[409].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[410].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[411].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[412].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[413].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[414].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[415].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[416].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[417].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[418].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[419].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[420].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[421].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[422].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[423].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[424].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[425].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[426].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[427].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[428].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[429].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[430].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[431].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[432].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[433].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[434].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[435].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[436].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[437].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[438].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[439].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[440].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[441].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[442].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[443].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[444].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[445].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[446].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[447].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[448].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[449].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[450].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[451].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[452].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[453].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[454].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[455].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[456].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[457].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[458].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[459].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[460].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[461].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[462].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[463].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[464].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[465].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[466].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[467].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[468].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[469].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[470].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[471].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[472].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[473].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[474].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[475].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[476].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[477].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[478].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[479].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[480].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[481].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[482].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[483].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[484].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[485].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[486].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[487].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[488].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[489].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[490].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[491].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[492].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[493].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[494].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[495].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[496].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[497].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[498].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[499].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[500].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[501].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[502].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[503].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[504].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[505].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[506].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[507].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[508].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[509].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[510].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[511].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[512].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[513].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[514].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[515].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[516].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[517].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[518].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[519].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[520].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[521].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[522].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[523].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[524].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[525].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[526].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[527].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[528].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[529].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[530].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[531].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[532].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[533].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[534].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[535].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[536].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[537].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[538].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[539].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[540].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[541].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[542].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[543].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[544].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[545].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[546].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[547].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[548].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[549].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[550].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[551].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[552].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[553].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[554].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[555].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[556].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[557].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[558].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[559].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[560].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[561].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[562].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[563].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[564].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[565].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[566].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[567].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[568].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[569].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[570].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[571].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[572].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[573].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[574].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[575].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[576].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[577].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[578].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[579].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[580].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[581].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[582].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[583].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[584].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[585].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[586].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[587].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[588].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[589].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[590].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[591].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[592].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[593].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[594].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[595].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[596].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[597].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[598].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[599].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[600].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[601].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[602].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[603].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[604].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[605].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[606].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[607].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[608].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[609].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[610].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[611].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[612].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[613].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[614].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[615].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[616].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[617].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[618].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[619].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[620].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[621].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[622].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[623].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[624].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[625].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[626].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[627].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[628].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[629].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[630].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[631].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[632].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[633].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[634].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[635].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[636].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[637].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[638].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[639].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[640].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[641].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[642].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[643].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[644].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[645].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[646].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[647].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[648].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[649].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[650].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[651].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[652].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[653].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[654].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[655].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[656].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[657].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[658].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[659].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[660].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[661].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[662].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[663].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[664].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[665].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[666].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[667].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[668].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[669].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[670].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[671].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[672].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[673].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[674].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[675].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[676].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[677].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[678].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[679].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[680].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[681].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[682].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[683].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[684].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[685].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[686].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[687].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[688].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[689].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[690].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[691].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[692].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[693].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[694].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[695].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[696].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[697].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[698].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[699].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[700].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[701].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[702].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[703].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[704].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[705].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[706].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[707].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[708].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[709].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[710].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[711].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[712].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[713].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[714].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[715].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[716].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[717].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[718].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[719].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[720].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[721].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[722].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[723].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[724].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[725].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[726].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[727].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[728].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[729].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[730].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[731].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[732].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[733].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[734].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[735].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[736].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[737].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[738].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[739].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[740].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[741].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[742].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[743].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[744].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[745].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[746].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[747].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[748].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[749].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[750].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[751].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[752].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[753].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[754].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[755].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[756].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[757].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[758].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[759].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[760].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[761].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[762].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[763].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[764].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[765].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[766].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[767].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[768].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[769].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[770].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[771].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[772].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
	setAttr ".vn[773].nxyz" -type "float3" 1e+020 1e+020 1e+020 ;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode displayLayer -n "JOINTS";
	setAttr ".do" 1;
createNode displayLayer -n "GEOM";
	setAttr ".dt" 2;
	setAttr ".do" 2;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 16;
	setAttr ".unw" 16;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
connectAttr "JOINTS.di" "root.do";
connectAttr "root.s" "spine1.is";
connectAttr "spine1.s" "spine2.is";
connectAttr "spine2.s" "clavicle_R.is";
connectAttr "clavicle_R.s" "bicep_R.is";
connectAttr "bicep_R.s" "elbow_R.is";
connectAttr "elbow_R.s" "wrist_R.is";
connectAttr "wrist_R.s" "Thumb_0_R.is";
connectAttr "Thumb_0_R.s" "Thumb_1_R.is";
connectAttr "wrist_R.s" "Mid_0_R.is";
connectAttr "Mid_0_R.s" "Mid_1_R.is";
connectAttr "wrist_R.s" "Index_0_R.is";
connectAttr "Index_0_R.s" "Index_1_R.is";
connectAttr "spine2.s" "clavicle_L.is";
connectAttr "clavicle_L.s" "bicep_L.is";
connectAttr "bicep_L.s" "elbow_L.is";
connectAttr "elbow_L.s" "wrist_L.is";
connectAttr "wrist_L.s" "Mid_0_L.is";
connectAttr "Mid_0_L.s" "Mid_1_L.is";
connectAttr "wrist_L.s" "Index_0_L.is";
connectAttr "Index_0_L.s" "Index_1_L.is";
connectAttr "wrist_L.s" "Thumb_0_L.is";
connectAttr "Thumb_0_L.s" "Thumb_1_L.is";
connectAttr "spine2.s" "neck1.is";
connectAttr "neck1.s" "head.is";
connectAttr "head.s" "jaw1_0.is";
connectAttr "root.s" "tail0_0.is";
connectAttr "tail0_0.s" "tail0_1.is";
connectAttr "GEOM.di" "forge_spirit_low:forge_spirit_fire.do";
connectAttr "skinCluster3GroupId.id" "forge_spirit_low:forge_spirit_fireShape.iog.og[0].gid"
		;
connectAttr "skinCluster3Set.mwc" "forge_spirit_low:forge_spirit_fireShape.iog.og[0].gco"
		;
connectAttr "groupId6.id" "forge_spirit_low:forge_spirit_fireShape.iog.og[1].gid"
		;
connectAttr "tweakSet3.mwc" "forge_spirit_low:forge_spirit_fireShape.iog.og[1].gco"
		;
connectAttr "groupId7.id" "forge_spirit_low:forge_spirit_fireShape.iog.og[2].gid"
		;
connectAttr "forge_spiritSG.mwc" "forge_spirit_low:forge_spirit_fireShape.iog.og[2].gco"
		;
connectAttr "groupParts7.og" "forge_spirit_low:forge_spirit_fireShape.i";
connectAttr "tweak3.vl[0].vt[0]" "forge_spirit_low:forge_spirit_fireShape.twl";
connectAttr "groupId8.id" "forge_spirit_low:forge_spirit_fireShape.ciog.cog[0].cgid"
		;
connectAttr "GEOM.di" "forge_spirit_low:forge_spirit_solid.do";
connectAttr "skinCluster2GroupId.id" "forge_spirit_low:forge_spirit_solidShape.iog.og[0].gid"
		;
connectAttr "skinCluster2Set.mwc" "forge_spirit_low:forge_spirit_solidShape.iog.og[0].gco"
		;
connectAttr "groupId4.id" "forge_spirit_low:forge_spirit_solidShape.iog.og[1].gid"
		;
connectAttr "tweakSet2.mwc" "forge_spirit_low:forge_spirit_solidShape.iog.og[1].gco"
		;
connectAttr "groupId9.id" "forge_spirit_low:forge_spirit_solidShape.iog.og[2].gid"
		;
connectAttr "forge_spirit_rocks_colorSG.mwc" "forge_spirit_low:forge_spirit_solidShape.iog.og[2].gco"
		;
connectAttr "polySoftEdge1.out" "forge_spirit_low:forge_spirit_solidShape.i";
connectAttr "tweak2.vl[0].vt[0]" "forge_spirit_low:forge_spirit_solidShape.twl";
connectAttr "groupId10.id" "forge_spirit_low:forge_spirit_solidShape.ciog.cog[0].cgid"
		;
connectAttr "forge_spirit_vmt.tp" "forge_spirit_file.ftn";
connectAttr "forge_spirit_mat.oc" "forge_spiritSG.ss";
connectAttr "forge_spirit_low:forge_spirit_fireShape.iog.og[2]" "forge_spiritSG.dsm"
		 -na;
connectAttr "forge_spiritSG.msg" "materialInfo1.sg";
connectAttr "forge_spirit_mat.msg" "materialInfo1.m";
connectAttr "forge_spirit_file.msg" "materialInfo1.t" -na;
connectAttr "forge_spirit_file.oc" "forge_spirit_mat.c";
relationship "link" ":lightLinker1" "forge_spiritSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "forge_spirit_rocks_colorSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "forge_spiritSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "forge_spirit_rocks_colorSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "root.msg" "bindPose1.m[0]";
connectAttr "spine1.msg" "bindPose1.m[1]";
connectAttr "spine2.msg" "bindPose1.m[2]";
connectAttr "neck1.msg" "bindPose1.m[3]";
connectAttr "head.msg" "bindPose1.m[4]";
connectAttr "jaw1_0.msg" "bindPose1.m[5]";
connectAttr "clavicle_L.msg" "bindPose1.m[6]";
connectAttr "bicep_L.msg" "bindPose1.m[7]";
connectAttr "elbow_L.msg" "bindPose1.m[8]";
connectAttr "clavicle_R.msg" "bindPose1.m[16]";
connectAttr "bicep_R.msg" "bindPose1.m[17]";
connectAttr "elbow_R.msg" "bindPose1.m[18]";
connectAttr "tail0_0.msg" "bindPose1.m[26]";
connectAttr "tail0_1.msg" "bindPose1.m[27]";
connectAttr "wrist_L.msg" "bindPose1.m[35]";
connectAttr "Mid_0_L.msg" "bindPose1.m[36]";
connectAttr "Mid_1_L.msg" "bindPose1.m[37]";
connectAttr "Index_0_L.msg" "bindPose1.m[38]";
connectAttr "Index_1_L.msg" "bindPose1.m[39]";
connectAttr "Thumb_0_L.msg" "bindPose1.m[40]";
connectAttr "Thumb_1_L.msg" "bindPose1.m[41]";
connectAttr "wrist_R.msg" "bindPose1.m[49]";
connectAttr "Thumb_0_R.msg" "bindPose1.m[50]";
connectAttr "Thumb_1_R.msg" "bindPose1.m[51]";
connectAttr "Mid_0_R.msg" "bindPose1.m[52]";
connectAttr "Mid_1_R.msg" "bindPose1.m[53]";
connectAttr "Index_0_R.msg" "bindPose1.m[54]";
connectAttr "Index_1_R.msg" "bindPose1.m[55]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[2]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[9]" "bindPose1.p[12]";
connectAttr "bindPose1.m[9]" "bindPose1.p[14]";
connectAttr "bindPose1.m[2]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[19]" "bindPose1.p[22]";
connectAttr "bindPose1.m[19]" "bindPose1.p[24]";
connectAttr "bindPose1.m[0]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[18]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[28]" "bindPose1.p[31]";
connectAttr "bindPose1.m[28]" "bindPose1.p[33]";
connectAttr "bindPose1.m[8]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[35]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[35]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[18]" "bindPose1.p[49]";
connectAttr "bindPose1.m[49]" "bindPose1.p[50]";
connectAttr "bindPose1.m[50]" "bindPose1.p[51]";
connectAttr "bindPose1.m[49]" "bindPose1.p[52]";
connectAttr "bindPose1.m[52]" "bindPose1.p[53]";
connectAttr "bindPose1.m[49]" "bindPose1.p[54]";
connectAttr "bindPose1.m[54]" "bindPose1.p[55]";
connectAttr "root.bps" "bindPose1.wm[0]";
connectAttr "spine1.bps" "bindPose1.wm[1]";
connectAttr "spine2.bps" "bindPose1.wm[2]";
connectAttr "neck1.bps" "bindPose1.wm[3]";
connectAttr "head.bps" "bindPose1.wm[4]";
connectAttr "jaw1_0.bps" "bindPose1.wm[5]";
connectAttr "clavicle_L.bps" "bindPose1.wm[6]";
connectAttr "bicep_L.bps" "bindPose1.wm[7]";
connectAttr "elbow_L.bps" "bindPose1.wm[8]";
connectAttr "clavicle_R.bps" "bindPose1.wm[16]";
connectAttr "bicep_R.bps" "bindPose1.wm[17]";
connectAttr "elbow_R.bps" "bindPose1.wm[18]";
connectAttr "tail0_0.bps" "bindPose1.wm[26]";
connectAttr "tail0_1.bps" "bindPose1.wm[27]";
connectAttr "wrist_L.bps" "bindPose1.wm[35]";
connectAttr "Mid_0_L.bps" "bindPose1.wm[36]";
connectAttr "Mid_1_L.bps" "bindPose1.wm[37]";
connectAttr "Index_0_L.bps" "bindPose1.wm[38]";
connectAttr "Index_1_L.bps" "bindPose1.wm[39]";
connectAttr "Thumb_0_L.bps" "bindPose1.wm[40]";
connectAttr "Thumb_1_L.bps" "bindPose1.wm[41]";
connectAttr "wrist_R.bps" "bindPose1.wm[49]";
connectAttr "Thumb_0_R.bps" "bindPose1.wm[50]";
connectAttr "Thumb_1_R.bps" "bindPose1.wm[51]";
connectAttr "Mid_0_R.bps" "bindPose1.wm[52]";
connectAttr "Mid_1_R.bps" "bindPose1.wm[53]";
connectAttr "Index_0_R.bps" "bindPose1.wm[54]";
connectAttr "Index_1_R.bps" "bindPose1.wm[55]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "root.wm" "skinCluster2.ma[0]";
connectAttr "spine1.wm" "skinCluster2.ma[1]";
connectAttr "spine2.wm" "skinCluster2.ma[2]";
connectAttr "neck1.wm" "skinCluster2.ma[3]";
connectAttr "head.wm" "skinCluster2.ma[4]";
connectAttr "jaw1_0.wm" "skinCluster2.ma[5]";
connectAttr "clavicle_L.wm" "skinCluster2.ma[6]";
connectAttr "bicep_L.wm" "skinCluster2.ma[7]";
connectAttr "elbow_L.wm" "skinCluster2.ma[8]";
connectAttr "clavicle_R.wm" "skinCluster2.ma[16]";
connectAttr "bicep_R.wm" "skinCluster2.ma[17]";
connectAttr "elbow_R.wm" "skinCluster2.ma[18]";
connectAttr "tail0_0.wm" "skinCluster2.ma[26]";
connectAttr "tail0_1.wm" "skinCluster2.ma[27]";
connectAttr "root.liw" "skinCluster2.lw[0]";
connectAttr "spine1.liw" "skinCluster2.lw[1]";
connectAttr "spine2.liw" "skinCluster2.lw[2]";
connectAttr "neck1.liw" "skinCluster2.lw[3]";
connectAttr "head.liw" "skinCluster2.lw[4]";
connectAttr "jaw1_0.liw" "skinCluster2.lw[5]";
connectAttr "clavicle_L.liw" "skinCluster2.lw[6]";
connectAttr "bicep_L.liw" "skinCluster2.lw[7]";
connectAttr "elbow_L.liw" "skinCluster2.lw[8]";
connectAttr "clavicle_R.liw" "skinCluster2.lw[16]";
connectAttr "bicep_R.liw" "skinCluster2.lw[17]";
connectAttr "elbow_R.liw" "skinCluster2.lw[18]";
connectAttr "tail0_0.liw" "skinCluster2.lw[26]";
connectAttr "tail0_1.liw" "skinCluster2.lw[27]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "forge_spirit_low:forge_spirit_solidShape.iog.og[0]" "skinCluster2Set.dsm"
		 -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "forge_spirit_low:forge_spirit_solidShape.iog.og[1]" "tweakSet2.dsm"
		 -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "forge_spirit_solidShapeOrig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "root.wm" "skinCluster3.ma[0]";
connectAttr "spine1.wm" "skinCluster3.ma[1]";
connectAttr "spine2.wm" "skinCluster3.ma[2]";
connectAttr "neck1.wm" "skinCluster3.ma[3]";
connectAttr "head.wm" "skinCluster3.ma[4]";
connectAttr "jaw1_0.wm" "skinCluster3.ma[5]";
connectAttr "clavicle_L.wm" "skinCluster3.ma[6]";
connectAttr "bicep_L.wm" "skinCluster3.ma[7]";
connectAttr "elbow_L.wm" "skinCluster3.ma[8]";
connectAttr "clavicle_R.wm" "skinCluster3.ma[16]";
connectAttr "bicep_R.wm" "skinCluster3.ma[17]";
connectAttr "elbow_R.wm" "skinCluster3.ma[18]";
connectAttr "tail0_0.wm" "skinCluster3.ma[26]";
connectAttr "tail0_1.wm" "skinCluster3.ma[27]";
connectAttr "wrist_L.wm" "skinCluster3.ma[35]";
connectAttr "Mid_0_L.wm" "skinCluster3.ma[36]";
connectAttr "Mid_1_L.wm" "skinCluster3.ma[37]";
connectAttr "Index_0_L.wm" "skinCluster3.ma[38]";
connectAttr "Index_1_L.wm" "skinCluster3.ma[39]";
connectAttr "Thumb_0_L.wm" "skinCluster3.ma[40]";
connectAttr "Thumb_1_L.wm" "skinCluster3.ma[41]";
connectAttr "wrist_R.wm" "skinCluster3.ma[49]";
connectAttr "Thumb_0_R.wm" "skinCluster3.ma[50]";
connectAttr "Thumb_1_R.wm" "skinCluster3.ma[51]";
connectAttr "Mid_0_R.wm" "skinCluster3.ma[52]";
connectAttr "Mid_1_R.wm" "skinCluster3.ma[53]";
connectAttr "Index_0_R.wm" "skinCluster3.ma[54]";
connectAttr "Index_1_R.wm" "skinCluster3.ma[55]";
connectAttr "root.liw" "skinCluster3.lw[0]";
connectAttr "spine1.liw" "skinCluster3.lw[1]";
connectAttr "spine2.liw" "skinCluster3.lw[2]";
connectAttr "neck1.liw" "skinCluster3.lw[3]";
connectAttr "head.liw" "skinCluster3.lw[4]";
connectAttr "jaw1_0.liw" "skinCluster3.lw[5]";
connectAttr "clavicle_L.liw" "skinCluster3.lw[6]";
connectAttr "bicep_L.liw" "skinCluster3.lw[7]";
connectAttr "elbow_L.liw" "skinCluster3.lw[8]";
connectAttr "clavicle_R.liw" "skinCluster3.lw[16]";
connectAttr "bicep_R.liw" "skinCluster3.lw[17]";
connectAttr "elbow_R.liw" "skinCluster3.lw[18]";
connectAttr "tail0_0.liw" "skinCluster3.lw[26]";
connectAttr "tail0_1.liw" "skinCluster3.lw[27]";
connectAttr "wrist_L.liw" "skinCluster3.lw[35]";
connectAttr "Mid_0_L.liw" "skinCluster3.lw[36]";
connectAttr "Mid_1_L.liw" "skinCluster3.lw[37]";
connectAttr "Index_0_L.liw" "skinCluster3.lw[38]";
connectAttr "Index_1_L.liw" "skinCluster3.lw[39]";
connectAttr "Thumb_0_L.liw" "skinCluster3.lw[40]";
connectAttr "Thumb_1_L.liw" "skinCluster3.lw[41]";
connectAttr "wrist_R.liw" "skinCluster3.lw[49]";
connectAttr "Thumb_0_R.liw" "skinCluster3.lw[50]";
connectAttr "Thumb_1_R.liw" "skinCluster3.lw[51]";
connectAttr "Mid_0_R.liw" "skinCluster3.lw[52]";
connectAttr "Mid_1_R.liw" "skinCluster3.lw[53]";
connectAttr "Index_0_R.liw" "skinCluster3.lw[54]";
connectAttr "Index_1_R.liw" "skinCluster3.lw[55]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "tail0_1.msg" "skinCluster3.ptt";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "forge_spirit_low:forge_spirit_fireShape.iog.og[0]" "skinCluster3Set.dsm"
		 -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "forge_spirit_low:forge_spirit_fireShape.iog.og[1]" "tweakSet3.dsm" 
		-na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "forge_spirit_fireShapeOrig.w" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "skinCluster3.og[0]" "groupParts7.ig";
connectAttr "groupId7.id" "groupParts7.gi";
connectAttr "forge_spirit_rocks_color_vmt.tp" "forge_spirit_rocks_colorFile.ftn"
		;
connectAttr "forge_spirit_rocks_colorFile.oc" "forge_spirit_rocks_color.c";
connectAttr "forge_spirit_rocks_color.oc" "forge_spirit_rocks_colorSG.ss";
connectAttr "forge_spirit_low:forge_spirit_solidShape.ciog.cog[0]" "forge_spirit_rocks_colorSG.dsm"
		 -na;
connectAttr "forge_spirit_low:forge_spirit_solidShape.iog.og[2]" "forge_spirit_rocks_colorSG.dsm"
		 -na;
connectAttr "groupId9.msg" "forge_spirit_rocks_colorSG.gn" -na;
connectAttr "groupId10.msg" "forge_spirit_rocks_colorSG.gn" -na;
connectAttr "forge_spirit_rocks_colorSG.msg" "materialInfo2.sg";
connectAttr "forge_spirit_rocks_color.msg" "materialInfo2.m";
connectAttr "forge_spirit_rocks_colorFile.msg" "materialInfo2.t" -na;
connectAttr "skinCluster2.og[0]" "groupParts8.ig";
connectAttr "groupId9.id" "groupParts8.gi";
connectAttr "groupParts8.og" "polyNormalPerVertex1.ip";
connectAttr "polyNormalPerVertex1.out" "polySoftEdge1.ip";
connectAttr "forge_spirit_low:forge_spirit_solidShape.wm" "polySoftEdge1.mp";
connectAttr "layerManager.dli[1]" "JOINTS.id";
connectAttr "layerManager.dli[2]" "GEOM.id";
connectAttr "forge_spiritSG.pa" ":renderPartition.st" -na;
connectAttr "forge_spirit_rocks_colorSG.pa" ":renderPartition.st" -na;
connectAttr "forge_spirit_low:forge_spirit_fireShape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "forge_spirit_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "forge_spirit_rocks_color.msg" ":defaultShaderList1.s" -na;
connectAttr "forge_spirit_file.msg" ":defaultTextureList1.tx" -na;
connectAttr "forge_spirit_rocks_colorFile.msg" ":defaultTextureList1.tx" -na;
connectAttr "forge_spirit_vmt.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "forge_spirit_rocks_color_vmt.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of forge_spirit_model.ma
