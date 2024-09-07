//Maya ASCII 2024 scene
//Name: Basic RIg.ma
//Last modified: Fri, Sep 06, 2024 02:52:45 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22631)";
fileInfo "UUID" "8E306DA9-49D8-F133-5C2A-7F854AB84CC6";
createNode transform -s -n "persp";
	rename -uid "4EBB72F9-421B-3619-05CD-18AA7F111835";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 41.047279158416494 -0.74484533655666496 -1.0907923879072847 ;
	setAttr ".r" -type "double3" 7.4616472703208485 1528.1999999999048 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B0622FE1-4A59-938C-24D1-5A8F9BCBA2B1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 46.425965961049066;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CB6ADDCC-4E82-2743-9A07-1FB193B5F2E3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B95593FF-4459-1F7A-0916-15B1D851C7A4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "58E0300C-4420-F4B6-100E-D09A0A9628B7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E46D3CF4-4FED-D66B-A2FF-5497C52B0B58";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "2754B164-4473-17F0-AF1A-BF93D9AAA9C1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4D314AC3-462E-56CB-F453-F09AC3A05F60";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pDisc1";
	rename -uid "54A4103D-40D4-692B-E244-E1810C2E7DE8";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0.11029887384780129 0 ;
	setAttr ".r" -type "double3" 5 15.000000000000002 -90.000000000000028 ;
	setAttr ".rp" -type "double3" 0.4999999962747097 8.8437254184943405e-18 -0.35355339199304581 ;
	setAttr ".rpt" -type "double3" -0.49999999627470992 -0.4999999962747097 0 ;
	setAttr ".sp" -type "double3" 0.4999999962747097 8.8437254184943405e-18 -0.35355339199304581 ;
createNode mesh -n "pDiscShape1" -p "pDisc1";
	rename -uid "F4F981EF-4D05-1174-9CB5-ADBC0A905247";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.6767766922712326 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 1 0.5 0.60607308
		 0.60607308 0.92198873 0.75113273 0.85355335 0.85355341 0.5 0.49999997 0.97596872
		 0.62081349 0.74517697 0.74517697 0.85355335 0.85355341 1 0.5 0.97596872 0.62081343
		 0.60607302 0.60607308 0.5 0.49999997 0.92198867 0.75113273 0.74517691 0.74517697
		 0.96193975 0.69134176 0.96193975 0.69134176 0.67677665 0.67677671 0.67677665 0.67677671
		 0.96193975 0.69134176 0.67677665 0.67677671;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  1 3.7252903e-09 -6.7055225e-08 0.70710665 1.8626451e-09 -0.70710683
		 -7.4505806e-09 3.7252903e-09 2.2351742e-08 1 0.039494678 -5.2154064e-08 -7.4505806e-09 0.039494678 2.2351742e-08
		 0.70710665 0.039494693 -0.70710689 0.95193744 0 -0.24162695 0.91079277 5.5879354e-09 -0.37726277
		 0.84397733 3.7252903e-09 -0.50226545 0.52791989 1.8626451e-09 -0.44534943 0.40150493 5.5879354e-09 -0.29355267
		 0.24891374 1.8626451e-09 -0.16809802 0.95193756 0.039494682 -0.24162689 0.91079289 0.039494686 -0.37726271
		 0.84397751 0.039494686 -0.50226533 0.24891376 0.039494682 -0.16809803 0.40150496 0.039494678 -0.2935527
		 0.52791989 0.039494678 -0.44534931;
	setAttr -s 33 ".ed[0:32]"  0 2 0 0 3 0 2 4 0 3 4 0 1 5 0 13 12 0 12 6 1
		 8 14 1 14 13 0 8 7 0 7 10 1 10 9 0 9 8 1 7 6 0 6 11 1 11 10 0 17 9 1 11 15 1 16 15 0
		 15 12 1 14 17 1 17 16 0 3 12 0 15 4 0 14 5 0 5 17 0 2 11 0 6 0 0 9 1 0 1 8 0 7 13 1
		 13 16 1 10 16 1;
	setAttr -s 17 -ch 66 ".fc[0:16]" -type "polyFaces" 
		f 4 -1 1 3 -3
		mu 0 4 4 8 0 11
		f 4 9 10 11 12
		mu 0 4 12 15 17 6
		f 4 13 14 15 -11
		mu 0 4 15 5 10 17
		f 4 22 -20 23 -4
		mu 0 4 0 9 1 11
		f 3 -21 24 25
		mu 0 3 13 2 3
		f 4 0 26 -15 27
		mu 0 4 8 4 10 5
		f 3 28 29 -13
		mu 0 3 6 7 12
		f 4 -28 -7 -23 -2
		mu 0 4 8 5 9 0
		f 4 -27 2 -24 -18
		mu 0 4 10 4 11 1
		f 4 -30 4 -25 -8
		mu 0 4 12 7 3 2
		f 4 -29 -17 -26 -5
		mu 0 4 7 6 13 3
		f 4 -14 30 5 6
		mu 0 4 5 14 18 9
		f 4 -10 7 8 -31
		mu 0 4 14 12 2 18
		f 4 -6 31 18 19
		mu 0 4 9 18 19 1
		f 4 -9 20 21 -32
		mu 0 4 18 2 13 19
		f 4 -12 32 -22 16
		mu 0 4 6 16 19 13
		f 4 -16 17 -19 -33
		mu 0 4 16 10 1 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "MASH1_ReproMesh";
	rename -uid "002D2381-47E4-246A-D1B4-91A5E17577AE";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 10.980028207599762 10.980028207599762 10.980028207599762 ;
createNode transform -n "polySurface1" -p "MASH1_ReproMesh";
	rename -uid "B0CF8881-4112-DF68-AEE4-84B6C24AD52A";
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	rename -uid "1CD633AB-48A9-2A2F-B7AF-4984B56ABBC2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode parentConstraint -n "polySurface1_parentConstraint1" -p "polySurface1";
	rename -uid "AE4F251C-49BD-5B08-A37C-9FA0F5057E79";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint8W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8830292511525144 6.453897977264579 -3.2823547519289048e-08 ;
	setAttr ".tg[0].tor" -type "double3" -69.000004842157935 -89.999998279444398 0 ;
	setAttr ".lr" -type "double3" 17.599290401740536 -1.6184945602608758e-06 1.7175258672123315e-06 ;
	setAttr ".rst" -type "double3" 0 0 8.0890358650024025e-17 ;
	setAttr ".rsrr" -type "double3" -2.5016378528495659e-14 -1.103963745812851e-06 1.6062770765290951e-06 ;
	setAttr -k on ".w0";
createNode transform -n "polySurface2" -p "MASH1_ReproMesh";
	rename -uid "B964B525-4E9C-8FA8-BEC3-59A20C3DDC30";
createNode mesh -n "polySurfaceShape2" -p "polySurface2";
	rename -uid "365C4948-4D0D-E220-8566-C5A903E1210F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode parentConstraint -n "polySurface2_parentConstraint1" -p "polySurface2";
	rename -uid "B1EAFC13-4EE7-2262-EA14-D88EBC834BC4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint9W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.3930149650740811 10.442625906508857 1.380808426912392e-07 ;
	setAttr ".tg[0].tor" -type "double3" -69.000004842157935 -89.999998279444398 0 ;
	setAttr ".lr" -type "double3" 17.599290401740536 -1.6184945602608758e-06 1.7175258672123315e-06 ;
	setAttr ".rst" -type "double3" 2.4107205465443142e-24 0 0 ;
	setAttr ".rsrr" -type "double3" -2.5016378528495659e-14 -1.103963745812851e-06 1.6062770765290951e-06 ;
	setAttr -k on ".w0";
createNode transform -n "polySurface3" -p "MASH1_ReproMesh";
	rename -uid "C79730B5-4D6E-46BA-CF01-668DB6DE5268";
createNode mesh -n "polySurfaceShape3" -p "polySurface3";
	rename -uid "9D9E0598-4AD0-0B60-A718-14BAAD253E58";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode parentConstraint -n "polySurface3_parentConstraint1" -p "polySurface3";
	rename -uid "5F8A838E-4B04-D039-9D26-7FB9E6E5209B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint10W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.3930146907406842 10.442627204539006 2.1110912990989479e-07 ;
	setAttr ".tg[0].tor" -type "double3" -69.000004842157935 -89.999998279444398 0 ;
	setAttr ".lr" -type "double3" 17.599290401740536 -1.6184945602608758e-06 1.7175258672123315e-06 ;
	setAttr ".rst" -type "double3" -2.4107205465443142e-24 0 1.6178071730004805e-16 ;
	setAttr ".rsrr" -type "double3" -2.5016378528495659e-14 -1.103963745812851e-06 1.6062770765290951e-06 ;
	setAttr -k on ".w0";
createNode transform -n "polySurface4" -p "MASH1_ReproMesh";
	rename -uid "F2F56981-476A-B4AE-56C0-BCB231D97125";
createNode mesh -n "polySurfaceShape4" -p "polySurface4";
	rename -uid "FC8C504D-4D6A-E193-08B8-3A9FB01D1A9D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode parentConstraint -n "polySurface4_parentConstraint1" -p "polySurface4";
	rename -uid "FA25F41F-4C60-E90A-3D62-B4BE14FEF591";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint11W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8830287744639715 6.4538986895851798 1.5836693396264185e-07 ;
	setAttr ".tg[0].tor" -type "double3" -69.000004842157935 -89.999998279444398 0 ;
	setAttr ".lr" -type "double3" 17.599290401740536 -1.6184945602608758e-06 1.7175258672123315e-06 ;
	setAttr ".rst" -type "double3" -2.4107205465443142e-24 0 1.6178071730004805e-16 ;
	setAttr ".rsrr" -type "double3" -2.5016378528495659e-14 -1.103963745812851e-06 1.6062770765290951e-06 ;
	setAttr -k on ".w0";
createNode transform -n "polySurface5" -p "MASH1_ReproMesh";
	rename -uid "FB6AE131-45F7-1F01-4622-B2866E47571D";
createNode mesh -n "polySurfaceShape5" -p "polySurface5";
	rename -uid "9291F764-4656-299E-7C73-4DB128A976FB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode parentConstraint -n "polySurface5_parentConstraint1" -p "polySurface5";
	rename -uid "150F51F7-4832-BFE5-00E3-CBA29AA7E75A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -10.335843925728177 4.0223976081528727 0.094182961295667653 ;
	setAttr ".tg[0].tor" -type "double3" -90.725962249679313 -89.999997646186543 0 ;
	setAttr ".lr" -type "double3" 16.873328152061163 -2.4322501328881716e-06 3.8499189849881931e-06 ;
	setAttr ".rst" -type "double3" 0.0085776872928458245 -0.0077508749416189031 0.0079697912597614419 ;
	setAttr ".rsrr" -type "double3" -0.72596224967936485 -1.7205555901618463e-06 3.9600905990210021e-06 ;
	setAttr -k on ".w0";
createNode transform -n "polySurface6" -p "MASH1_ReproMesh";
	rename -uid "3203AF6C-4E5E-85EB-FA79-D18C9C61A9FE";
createNode mesh -n "polySurfaceShape6" -p "polySurface6";
	rename -uid "EF49C56C-4F7A-1FAE-0392-57900C5ABA79";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode parentConstraint -n "polySurface6_parentConstraint1" -p "polySurface6";
	rename -uid "81D3C7CC-4CAC-2360-E36A-2187E40C933B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8830273355221134 -6.4539003064934466 -2.035009437248e-07 ;
	setAttr ".tg[0].tor" -type "double3" -69.000004842157935 -89.999998279444398 0 ;
	setAttr ".lr" -type "double3" 17.599290401740536 -1.6184945602608758e-06 1.7175258672123315e-06 ;
	setAttr ".rst" -type "double3" 0 0 8.0890358650024025e-17 ;
	setAttr ".rsrr" -type "double3" -2.5016378528495659e-14 -1.103963745812851e-06 1.6062770765290951e-06 ;
	setAttr -k on ".w0";
createNode transform -n "polySurface7" -p "MASH1_ReproMesh";
	rename -uid "3B56A58E-4792-B38B-E633-2C86243ADEB4";
createNode mesh -n "polySurfaceShape7" -p "polySurface7";
	rename -uid "75F16CA9-4FD0-94C0-EC78-7A91F3343EA7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode parentConstraint -n "polySurface7_parentConstraint1" -p "polySurface7";
	rename -uid "FD63DADA-405F-C038-0D8E-B2958A3BF183";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint4W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.3930149650740851 -10.442625906508843 -3.7440525339855056e-07 ;
	setAttr ".tg[0].tor" -type "double3" -69.000004842157935 -89.999998279444398 0 ;
	setAttr ".lr" -type "double3" 17.599290401740536 -1.6184945602608758e-06 1.7175258672123315e-06 ;
	setAttr ".rst" -type "double3" 0 0 1.6178071730004805e-16 ;
	setAttr ".rsrr" -type "double3" -2.5016378528495659e-14 -1.103963745812851e-06 1.6062770765290951e-06 ;
	setAttr -k on ".w0";
createNode transform -n "polySurface8" -p "MASH1_ReproMesh";
	rename -uid "0EE31BED-437F-1BC4-E137-AD84427EE7C6";
createNode mesh -n "polySurfaceShape8" -p "polySurface8";
	rename -uid "9681EF33-4A0C-13D8-87AC-F8AD45496830";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode parentConstraint -n "polySurface8_parentConstraint1" -p "polySurface8";
	rename -uid "D34C4505-4BFA-F263-0D8E-66816A9ACD56";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.3930146907406784 -10.442627204538988 -4.4743354061720597e-07 ;
	setAttr ".tg[0].tor" -type "double3" -69.000004842157892 -89.999997646186571 0 ;
	setAttr ".lr" -type "double3" 17.599290401740539 -1.5809305557396833e-06 2.3496685862692823e-06 ;
	setAttr ".rst" -type "double3" 1.9285764372354513e-23 0 0 ;
	setAttr ".rsrr" -type "double3" -9.1555680800962447e-16 -8.7702448376448928e-07 
		2.1974742042762926e-06 ;
	setAttr -k on ".w0";
createNode transform -n "polySurface9" -p "MASH1_ReproMesh";
	rename -uid "F4B21C4A-433B-AC4A-1943-D88C1D780DC1";
createNode mesh -n "polySurfaceShape9" -p "polySurface9";
	rename -uid "001CDA84-42B7-C9C7-6869-3C9C06E8BCB1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode parentConstraint -n "polySurface9_parentConstraint1" -p "polySurface9";
	rename -uid "D2E4583E-493D-0271-8F05-43A9FBD08DBC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint6W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8830287744639698 -6.4538986895851664 -3.9469134466995298e-07 ;
	setAttr ".tg[0].tor" -type "double3" -69.000004842157935 -89.999998279444398 0 ;
	setAttr ".lr" -type "double3" 17.599290401740536 -1.6184945602608758e-06 1.7175258672123315e-06 ;
	setAttr ".rst" -type "double3" -4.8214410930886283e-24 0 -1.6178071730004805e-16 ;
	setAttr ".rsrr" -type "double3" -2.5016378528495659e-14 -1.103963745812851e-06 1.6062770765290951e-06 ;
	setAttr -k on ".w0";
createNode transform -n "polySurface10" -p "MASH1_ReproMesh";
	rename -uid "262F258F-45C4-F06A-C44D-20BB80F18127";
createNode mesh -n "polySurfaceShape10" -p "polySurface10";
	rename -uid "BEC06F2D-4DF8-995B-16AD-7CA68998EBC4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode parentConstraint -n "polySurface10_parentConstraint1" -p "polySurface10";
	rename -uid "A06812E2-4E34-77CB-C1F4-048BB7CA3E1A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint7W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 10.980027509265843 2.2761213131151014e-15 -2.3632440677648808e-07 ;
	setAttr ".tg[0].tor" -type "double3" -69.000004842157935 -89.999998279444398 0 ;
	setAttr ".lr" -type "double3" 17.599290401740536 -1.6184945602608758e-06 1.7175258672123315e-06 ;
	setAttr ".rst" -type "double3" -1.2053602732721571e-24 0 4.0445179325012012e-17 ;
	setAttr ".rsrr" -type "double3" -2.5016378528495659e-14 -1.103963745812851e-06 1.6062770765290951e-06 ;
	setAttr -k on ".w0";
createNode transform -n "transform1" -p "MASH1_ReproMesh";
	rename -uid "2C24590D-4911-6A0C-35F1-3AA37217A295";
	setAttr ".v" no;
createNode mesh -n "MASH1_ReproMeshShape" -p "transform1";
	rename -uid "16E955A3-47EC-D2A7-549B-B98F66503F81";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:169]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.6767766922712326 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 200 ".uvst[0].uvsp[0:199]" -type "float2" 1 0.5 0.60607308
		 0.60607308 0.92198873 0.75113273 0.85355335 0.85355341 0.5 0.49999997 0.97596872
		 0.62081349 0.74517697 0.74517697 0.85355335 0.85355341 1 0.5 0.97596872 0.62081343
		 0.60607302 0.60607308 0.5 0.49999997 0.92198867 0.75113273 0.74517691 0.74517697
		 0.96193975 0.69134176 0.96193975 0.69134176 0.67677665 0.67677671 0.67677665 0.67677671
		 0.96193975 0.69134176 0.67677665 0.67677671 1 0.5 0.60607308 0.60607308 0.92198873
		 0.75113273 0.85355335 0.85355341 0.5 0.49999997 0.97596872 0.62081349 0.74517697
		 0.74517697 0.85355335 0.85355341 1 0.5 0.97596872 0.62081343 0.60607302 0.60607308
		 0.5 0.49999997 0.92198867 0.75113273 0.74517691 0.74517697 0.96193975 0.69134176
		 0.96193975 0.69134176 0.67677665 0.67677671 0.67677665 0.67677671 0.96193975 0.69134176
		 0.67677665 0.67677671 1 0.5 0.60607308 0.60607308 0.92198873 0.75113273 0.85355335
		 0.85355341 0.5 0.49999997 0.97596872 0.62081349 0.74517697 0.74517697 0.85355335
		 0.85355341 1 0.5 0.97596872 0.62081343 0.60607302 0.60607308 0.5 0.49999997 0.92198867
		 0.75113273 0.74517691 0.74517697 0.96193975 0.69134176 0.96193975 0.69134176 0.67677665
		 0.67677671 0.67677665 0.67677671 0.96193975 0.69134176 0.67677665 0.67677671 1 0.5
		 0.60607308 0.60607308 0.92198873 0.75113273 0.85355335 0.85355341 0.5 0.49999997
		 0.97596872 0.62081349 0.74517697 0.74517697 0.85355335 0.85355341 1 0.5 0.97596872
		 0.62081343 0.60607302 0.60607308 0.5 0.49999997 0.92198867 0.75113273 0.74517691
		 0.74517697 0.96193975 0.69134176 0.96193975 0.69134176 0.67677665 0.67677671 0.67677665
		 0.67677671 0.96193975 0.69134176 0.67677665 0.67677671 1 0.5 0.60607308 0.60607308
		 0.92198873 0.75113273 0.85355335 0.85355341 0.5 0.49999997 0.97596872 0.62081349
		 0.74517697 0.74517697 0.85355335 0.85355341 1 0.5 0.97596872 0.62081343 0.60607302
		 0.60607308 0.5 0.49999997 0.92198867 0.75113273 0.74517691 0.74517697 0.96193975
		 0.69134176 0.96193975 0.69134176 0.67677665 0.67677671 0.67677665 0.67677671 0.96193975
		 0.69134176 0.67677665 0.67677671 1 0.5 0.60607308 0.60607308 0.92198873 0.75113273
		 0.85355335 0.85355341 0.5 0.49999997 0.97596872 0.62081349 0.74517697 0.74517697
		 0.85355335 0.85355341 1 0.5 0.97596872 0.62081343 0.60607302 0.60607308 0.5 0.49999997
		 0.92198867 0.75113273 0.74517691 0.74517697 0.96193975 0.69134176 0.96193975 0.69134176
		 0.67677665 0.67677671 0.67677665 0.67677671 0.96193975 0.69134176 0.67677665 0.67677671
		 1 0.5 0.60607308 0.60607308 0.92198873 0.75113273 0.85355335 0.85355341 0.5 0.49999997
		 0.97596872 0.62081349 0.74517697 0.74517697 0.85355335 0.85355341 1 0.5 0.97596872
		 0.62081343 0.60607302 0.60607308 0.5 0.49999997 0.92198867 0.75113273 0.74517691
		 0.74517697 0.96193975 0.69134176 0.96193975 0.69134176 0.67677665 0.67677671 0.67677665
		 0.67677671 0.96193975 0.69134176 0.67677665 0.67677671 1 0.5 0.60607308 0.60607308
		 0.92198873 0.75113273 0.85355335 0.85355341 0.5 0.49999997 0.97596872 0.62081349
		 0.74517697 0.74517697 0.85355335 0.85355341 1 0.5 0.97596872 0.62081343 0.60607302
		 0.60607308 0.5 0.49999997 0.92198867 0.75113273 0.74517691 0.74517697 0.96193975
		 0.69134176 0.96193975 0.69134176 0.67677665 0.67677671 0.67677665 0.67677671 0.96193975
		 0.69134176 0.67677665 0.67677671 1 0.5 0.60607308 0.60607308 0.92198873 0.75113273
		 0.85355335 0.85355341 0.5 0.49999997 0.97596872 0.62081349 0.74517697 0.74517697
		 0.85355335 0.85355341 1 0.5 0.97596872 0.62081343 0.60607302 0.60607308 0.5 0.49999997
		 0.92198867 0.75113273 0.74517691 0.74517697 0.96193975 0.69134176 0.96193975 0.69134176
		 0.67677665 0.67677671 0.67677665 0.67677671 0.96193975 0.69134176 0.67677665 0.67677671
		 1 0.5 0.60607308 0.60607308 0.92198873 0.75113273 0.85355335 0.85355341 0.5 0.49999997
		 0.97596872 0.62081349 0.74517697 0.74517697 0.85355335 0.85355341 1 0.5 0.97596872
		 0.62081343 0.60607302 0.60607308 0.5 0.49999997 0.92198867 0.75113273 0.74517691
		 0.74517697 0.96193975 0.69134176 0.96193975 0.69134176 0.67677665 0.67677671 0.67677665
		 0.67677671 0.96193975 0.69134176 0.67677665 0.67677671;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 180 ".vt";
	setAttr ".vt[0:165]"  1.0761558e-08 -0.96592575 -0.25881907 0.061628427 -0.5006963 -0.86342627
		 2.412393e-09 3.2706462e-09 1.6580611e-08 0.039344393 -0.96681666 -0.25549418 0.039344385 -0.0008909005 0.0033249143
		 0.10097283 -0.50158715 -0.8601014 0.021059176 -0.85720122 -0.47888505 0.032880627 -0.78248698 -0.5987516
		 0.043775324 -0.6857183 -0.70174235 0.038814764 -0.39510515 -0.56517327 0.025584808 -0.31213605 -0.38638821
		 0.014650711 -0.19709077 -0.22617595 0.060403563 -0.85809225 -0.47556013 0.072225004 -0.78337801 -0.59542668
		 0.083119705 -0.68660939 -0.69841743 0.053995103 -0.19798172 -0.22285107 0.064929195 -0.31302699 -0.38306335
		 0.078159139 -0.39599609 -0.56184822 1.0761558e-08 -0.62932026 -0.77714592 0.061628427 0.10243741 -0.99282837
		 2.412393e-09 -7.0998296e-09 1.5336434e-08 0.039344393 -0.63199544 -0.77497971 0.039344385 -0.0026750891 0.002166254
		 0.10097283 0.09976238 -0.99066222 0.021059176 -0.41200882 -0.89127636 0.032880627 -0.2811079 -0.94433451
		 0.043775324 -0.14228398 -0.97077656 0.038814764 0.012553722 -0.68947172 0.025584808 -0.025410071 -0.49606359
		 0.014650711 -0.026506901 -0.29882723 0.060403563 -0.41468403 -0.88911021 0.072225004 -0.28378311 -0.94216835
		 0.083119705 -0.14495924 -0.96861047 0.053995103 -0.029182002 -0.29666102 0.064929195 -0.028085172 -0.49389741
		 0.078159139 0.0098785162 -0.68730545 1.0761558e-08 -0.052335918 -0.99862951 0.061628427 0.66644347 -0.74300385
		 2.412393e-09 -1.4758413e-08 8.2342604e-09 0.039344393 -0.055773392 -0.99844933 0.039344385 -0.0034374848 0.00018015836
		 0.10097283 0.66300613 -0.74282372 0.021059176 0.190557 -0.96323043 0.032880627 0.32764482 -0.92921382
		 0.043775324 0.45549804 -0.86900723 0.038814764 0.41541749 -0.55041552 0.025584808 0.27102166 -0.41625956
		 0.014650711 0.15420172 -0.25733668 0.060403563 0.18711948 -0.96305037 0.072225004 0.32420731 -0.92903376
		 0.083119705 0.45206049 -0.86882722 0.053995103 0.15076426 -0.25715658 0.064929195 0.26758426 -0.41607946
		 0.078159139 0.41197991 -0.55023533 1.0761558e-08 0.54463905 -0.83867055 0.061628427 0.97589087 -0.20937708
		 2.412393e-09 -1.6779783e-08 -2.0131214e-09 0.039344393 0.54175222 -0.8405453 0.039344385 -0.0028868781 -0.0018747519
		 0.10097283 0.97300404 -0.21125177 0.021059176 0.7203365 -0.66726321 0.032880627 0.81124842 -0.55916494
		 0.043775324 0.87929529 -0.43530658 0.038814764 0.65960592 -0.2011192 0.025584808 0.46393239 -0.17745849
		 0.014650711 0.27601051 -0.11755225 0.060403563 0.71744967 -0.66913807 0.072225004 0.80836153 -0.56103981
		 0.083119705 0.87640846 -0.43718147 0.053995103 0.27312368 -0.11942703 0.064929195 0.46104556 -0.17933327
		 0.078159139 0.65671897 -0.202994 1.0761558e-08 0.9335804 -0.35836786 0.061628427 0.91258109 0.4042246
		 2.412393e-09 -1.2391846e-08 -1.1491559e-08 0.039344393 0.93234682 -0.36158144 0.039344385 -0.0012335819 -0.0032135705
		 0.10097283 0.91134745 0.40101114 0.021059176 0.97497195 -0.11642408 0.032880627 0.98498261 0.024465948
		 0.043775324 0.96723157 0.16466638 0.038814764 0.65184724 0.22499779 0.025584808 0.47963667 0.12912565
		 0.014650711 0.29239267 0.067133144 0.060403563 0.97373843 -0.11963773 0.072225004 0.98374915 0.021252275
		 0.083119705 0.96599817 0.16145271 0.053995103 0.29115915 0.063919567 0.064929195 0.47840315 0.1259121
		 0.078159139 0.65061367 0.22178409 1.0761558e-08 0.96592569 0.25881934 0.061628427 0.50069606 0.86342639
		 2.412393e-09 -3.2706418e-09 -1.6580611e-08 0.039344393 0.9668166 0.25549445 0.039344385 0.00089090137 -0.003324914
		 0.10097283 0.50158691 0.86010152 0.021059176 0.8572011 0.47888529 0.032880627 0.7824868 0.59875178
		 0.043775324 0.68571812 0.70174253 0.038814764 0.395105 0.56517339 0.025584808 0.31213596 0.3863883
		 0.014650711 0.19709072 0.22617601 0.060403563 0.85809213 0.47556037 0.072225004 0.78337783 0.59542692
		 0.083119705 0.68660921 0.6984176 0.053995103 0.19798166 0.22285113 0.064929195 0.31302691 0.38306344
		 0.078159139 0.39599594 0.56184834 1.0761558e-08 0.62932026 0.77714592 0.061628427 -0.10243741 0.99282837
		 2.412393e-09 7.0998296e-09 -1.5336434e-08 0.039344393 0.63199544 0.77497971 0.039344385 0.0026750891 -0.002166254
		 0.10097283 -0.09976238 0.99066222 0.021059176 0.41200882 0.89127636 0.032880627 0.2811079 0.94433451
		 0.043775324 0.14228398 0.97077656 0.038814764 -0.012553722 0.68947172 0.025584808 0.025410071 0.49606359
		 0.014650711 0.026506901 0.29882723 0.060403563 0.41468403 0.88911021 0.072225004 0.28378311 0.94216835
		 0.083119705 0.14495924 0.96861047 0.053995103 0.029182002 0.29666102 0.064929195 0.028085172 0.49389741
		 0.078159139 -0.0098785162 0.68730545 1.0761558e-08 0.052335918 0.99862951 0.061628427 -0.66644347 0.74300385
		 2.412393e-09 1.4758413e-08 -8.2342604e-09 0.039344393 0.055773392 0.99844933 0.039344385 0.0034374848 -0.00018015836
		 0.10097283 -0.66300613 0.74282372 0.021059176 -0.190557 0.96323043 0.032880627 -0.32764482 0.92921382
		 0.043775324 -0.45549804 0.86900723 0.038814764 -0.41541749 0.55041552 0.025584808 -0.27102166 0.41625956
		 0.014650711 -0.15420172 0.25733668 0.060403563 -0.18711948 0.96305037 0.072225004 -0.32420731 0.92903376
		 0.083119705 -0.45206049 0.86882722 0.053995103 -0.15076426 0.25715658 0.064929195 -0.26758426 0.41607946
		 0.078159139 -0.41197991 0.55023533 1.0761558e-08 -0.54463905 0.83867055 0.061628427 -0.97589087 0.20937708
		 2.412393e-09 1.6779783e-08 2.0131214e-09 0.039344393 -0.54175222 0.8405453 0.039344385 0.0028868781 0.0018747519
		 0.10097283 -0.97300404 0.21125177 0.021059176 -0.7203365 0.66726321 0.032880627 -0.81124842 0.55916494
		 0.043775324 -0.87929529 0.43530658 0.038814764 -0.65960592 0.2011192 0.025584808 -0.46393239 0.17745849
		 0.014650711 -0.27601051 0.11755225 0.060403563 -0.71744967 0.66913807 0.072225004 -0.80836153 0.56103981
		 0.083119705 -0.87640846 0.43718147 0.053995103 -0.27312368 0.11942703 0.064929195 -0.46104556 0.17933327
		 0.078159139 -0.65671897 0.202994 1.0761558e-08 -0.9335804 0.35836786 0.061628427 -0.91258109 -0.4042246
		 2.412393e-09 1.2391846e-08 1.1491559e-08 0.039344393 -0.93234682 0.36158144;
	setAttr ".vt[166:179]" 0.039344385 0.0012335819 0.0032135705 0.10097283 -0.91134745 -0.40101114
		 0.021059176 -0.97497195 0.11642408 0.032880627 -0.98498261 -0.024465948 0.043775324 -0.96723157 -0.16466638
		 0.038814764 -0.65184724 -0.22499779 0.025584808 -0.47963667 -0.12912565 0.014650711 -0.29239267 -0.067133144
		 0.060403563 -0.97373843 0.11963773 0.072225004 -0.98374915 -0.021252275 0.083119705 -0.96599817 -0.16145271
		 0.053995103 -0.29115915 -0.063919567 0.064929195 -0.47840315 -0.1259121 0.078159139 -0.65061367 -0.22178409;
	setAttr -s 330 ".ed";
	setAttr ".ed[0:165]"  2 0 0 0 3 0 3 4 0 4 2 0 8 7 0 7 10 1 10 9 0 9 8 1 7 6 0
		 6 11 1 11 10 0 3 12 0 12 15 1 15 4 0 17 14 1 14 5 0 5 17 0 2 11 0 6 0 0 9 1 0 1 8 0
		 6 12 1 15 11 1 1 5 0 14 8 1 9 17 1 7 13 1 13 12 0 14 13 0 13 16 1 16 15 0 17 16 0
		 10 16 1 20 18 0 18 21 0 21 22 0 22 20 0 26 25 0 25 28 1 28 27 0 27 26 1 25 24 0 24 29 1
		 29 28 0 21 30 0 30 33 1 33 22 0 35 32 1 32 23 0 23 35 0 20 29 0 24 18 0 27 19 0 19 26 0
		 24 30 1 33 29 1 19 23 0 32 26 1 27 35 1 25 31 1 31 30 0 32 31 0 31 34 1 34 33 0 35 34 0
		 28 34 1 38 36 0 36 39 0 39 40 0 40 38 0 44 43 0 43 46 1 46 45 0 45 44 1 43 42 0 42 47 1
		 47 46 0 39 48 0 48 51 1 51 40 0 53 50 1 50 41 0 41 53 0 38 47 0 42 36 0 45 37 0 37 44 0
		 42 48 1 51 47 1 37 41 0 50 44 1 45 53 1 43 49 1 49 48 0 50 49 0 49 52 1 52 51 0 53 52 0
		 46 52 1 56 54 0 54 57 0 57 58 0 58 56 0 62 61 0 61 64 1 64 63 0 63 62 1 61 60 0 60 65 1
		 65 64 0 57 66 0 66 69 1 69 58 0 71 68 1 68 59 0 59 71 0 56 65 0 60 54 0 63 55 0 55 62 0
		 60 66 1 69 65 1 55 59 0 68 62 1 63 71 1 61 67 1 67 66 0 68 67 0 67 70 1 70 69 0 71 70 0
		 64 70 1 74 72 0 72 75 0 75 76 0 76 74 0 80 79 0 79 82 1 82 81 0 81 80 1 79 78 0 78 83 1
		 83 82 0 75 84 0 84 87 1 87 76 0 89 86 1 86 77 0 77 89 0 74 83 0 78 72 0 81 73 0 73 80 0
		 78 84 1 87 83 1 73 77 0 86 80 1 81 89 1 79 85 1 85 84 0 86 85 0 85 88 1 88 87 0 89 88 0
		 82 88 1 92 90 0;
	setAttr ".ed[166:329]" 90 93 0 93 94 0 94 92 0 98 97 0 97 100 1 100 99 0 99 98 1
		 97 96 0 96 101 1 101 100 0 93 102 0 102 105 1 105 94 0 107 104 1 104 95 0 95 107 0
		 92 101 0 96 90 0 99 91 0 91 98 0 96 102 1 105 101 1 91 95 0 104 98 1 99 107 1 97 103 1
		 103 102 0 104 103 0 103 106 1 106 105 0 107 106 0 100 106 1 110 108 0 108 111 0 111 112 0
		 112 110 0 116 115 0 115 118 1 118 117 0 117 116 1 115 114 0 114 119 1 119 118 0 111 120 0
		 120 123 1 123 112 0 125 122 1 122 113 0 113 125 0 110 119 0 114 108 0 117 109 0 109 116 0
		 114 120 1 123 119 1 109 113 0 122 116 1 117 125 1 115 121 1 121 120 0 122 121 0 121 124 1
		 124 123 0 125 124 0 118 124 1 128 126 0 126 129 0 129 130 0 130 128 0 134 133 0 133 136 1
		 136 135 0 135 134 1 133 132 0 132 137 1 137 136 0 129 138 0 138 141 1 141 130 0 143 140 1
		 140 131 0 131 143 0 128 137 0 132 126 0 135 127 0 127 134 0 132 138 1 141 137 1 127 131 0
		 140 134 1 135 143 1 133 139 1 139 138 0 140 139 0 139 142 1 142 141 0 143 142 0 136 142 1
		 146 144 0 144 147 0 147 148 0 148 146 0 152 151 0 151 154 1 154 153 0 153 152 1 151 150 0
		 150 155 1 155 154 0 147 156 0 156 159 1 159 148 0 161 158 1 158 149 0 149 161 0 146 155 0
		 150 144 0 153 145 0 145 152 0 150 156 1 159 155 1 145 149 0 158 152 1 153 161 1 151 157 1
		 157 156 0 158 157 0 157 160 1 160 159 0 161 160 0 154 160 1 164 162 0 162 165 0 165 166 0
		 166 164 0 170 169 0 169 172 1 172 171 0 171 170 1 169 168 0 168 173 1 173 172 0 165 174 0
		 174 177 1 177 166 0 179 176 1 176 167 0 167 179 0 164 173 0 168 162 0 171 163 0 163 170 0
		 168 174 1 177 173 1 163 167 0 176 170 1 171 179 1 169 175 1 175 174 0 176 175 0 175 178 1
		 178 177 0 179 178 0 172 178 1;
	setAttr -s 170 -ch 660 ".fc[0:169]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 4 8 0 11
		f 4 4 5 6 7
		mu 0 4 12 15 17 6
		f 4 8 9 10 -6
		mu 0 4 15 5 10 17
		f 4 11 12 13 -3
		mu 0 4 0 9 1 11
		f 3 14 15 16
		mu 0 3 13 2 3
		f 4 -1 17 -10 18
		mu 0 4 8 4 10 5
		f 3 19 20 -8
		mu 0 3 6 7 12
		f 4 -19 21 -12 -2
		mu 0 4 8 5 9 0
		f 4 -18 -4 -14 22
		mu 0 4 10 4 11 1
		f 4 -21 23 -16 24
		mu 0 4 12 7 3 2
		f 4 -20 25 -17 -24
		mu 0 4 7 6 13 3
		f 4 -9 26 27 -22
		mu 0 4 5 14 18 9
		f 4 -5 -25 28 -27
		mu 0 4 14 12 2 18
		f 4 -28 29 30 -13
		mu 0 4 9 18 19 1
		f 4 -29 -15 31 -30
		mu 0 4 18 2 13 19
		f 4 -7 32 -32 -26
		mu 0 4 6 16 19 13
		f 4 -11 -23 -31 -33
		mu 0 4 16 10 1 19
		f 4 33 34 35 36
		mu 0 4 24 28 20 31
		f 4 37 38 39 40
		mu 0 4 32 35 37 26
		f 4 41 42 43 -39
		mu 0 4 35 25 30 37
		f 4 44 45 46 -36
		mu 0 4 20 29 21 31
		f 3 47 48 49
		mu 0 3 33 22 23
		f 4 -34 50 -43 51
		mu 0 4 28 24 30 25
		f 3 52 53 -41
		mu 0 3 26 27 32
		f 4 -52 54 -45 -35
		mu 0 4 28 25 29 20
		f 4 -51 -37 -47 55
		mu 0 4 30 24 31 21
		f 4 -54 56 -49 57
		mu 0 4 32 27 23 22
		f 4 -53 58 -50 -57
		mu 0 4 27 26 33 23
		f 4 -42 59 60 -55
		mu 0 4 25 34 38 29
		f 4 -38 -58 61 -60
		mu 0 4 34 32 22 38
		f 4 -61 62 63 -46
		mu 0 4 29 38 39 21
		f 4 -62 -48 64 -63
		mu 0 4 38 22 33 39
		f 4 -40 65 -65 -59
		mu 0 4 26 36 39 33
		f 4 -44 -56 -64 -66
		mu 0 4 36 30 21 39
		f 4 66 67 68 69
		mu 0 4 44 48 40 51
		f 4 70 71 72 73
		mu 0 4 52 55 57 46
		f 4 74 75 76 -72
		mu 0 4 55 45 50 57
		f 4 77 78 79 -69
		mu 0 4 40 49 41 51
		f 3 80 81 82
		mu 0 3 53 42 43
		f 4 -67 83 -76 84
		mu 0 4 48 44 50 45
		f 3 85 86 -74
		mu 0 3 46 47 52
		f 4 -85 87 -78 -68
		mu 0 4 48 45 49 40
		f 4 -84 -70 -80 88
		mu 0 4 50 44 51 41
		f 4 -87 89 -82 90
		mu 0 4 52 47 43 42
		f 4 -86 91 -83 -90
		mu 0 4 47 46 53 43
		f 4 -75 92 93 -88
		mu 0 4 45 54 58 49
		f 4 -71 -91 94 -93
		mu 0 4 54 52 42 58
		f 4 -94 95 96 -79
		mu 0 4 49 58 59 41
		f 4 -95 -81 97 -96
		mu 0 4 58 42 53 59
		f 4 -73 98 -98 -92
		mu 0 4 46 56 59 53
		f 4 -77 -89 -97 -99
		mu 0 4 56 50 41 59
		f 4 99 100 101 102
		mu 0 4 64 68 60 71
		f 4 103 104 105 106
		mu 0 4 72 75 77 66
		f 4 107 108 109 -105
		mu 0 4 75 65 70 77
		f 4 110 111 112 -102
		mu 0 4 60 69 61 71
		f 3 113 114 115
		mu 0 3 73 62 63
		f 4 -100 116 -109 117
		mu 0 4 68 64 70 65
		f 3 118 119 -107
		mu 0 3 66 67 72
		f 4 -118 120 -111 -101
		mu 0 4 68 65 69 60
		f 4 -117 -103 -113 121
		mu 0 4 70 64 71 61
		f 4 -120 122 -115 123
		mu 0 4 72 67 63 62
		f 4 -119 124 -116 -123
		mu 0 4 67 66 73 63
		f 4 -108 125 126 -121
		mu 0 4 65 74 78 69
		f 4 -104 -124 127 -126
		mu 0 4 74 72 62 78
		f 4 -127 128 129 -112
		mu 0 4 69 78 79 61
		f 4 -128 -114 130 -129
		mu 0 4 78 62 73 79
		f 4 -106 131 -131 -125
		mu 0 4 66 76 79 73
		f 4 -110 -122 -130 -132
		mu 0 4 76 70 61 79
		f 4 132 133 134 135
		mu 0 4 84 88 80 91
		f 4 136 137 138 139
		mu 0 4 92 95 97 86
		f 4 140 141 142 -138
		mu 0 4 95 85 90 97
		f 4 143 144 145 -135
		mu 0 4 80 89 81 91
		f 3 146 147 148
		mu 0 3 93 82 83
		f 4 -133 149 -142 150
		mu 0 4 88 84 90 85
		f 3 151 152 -140
		mu 0 3 86 87 92
		f 4 -151 153 -144 -134
		mu 0 4 88 85 89 80
		f 4 -150 -136 -146 154
		mu 0 4 90 84 91 81
		f 4 -153 155 -148 156
		mu 0 4 92 87 83 82
		f 4 -152 157 -149 -156
		mu 0 4 87 86 93 83
		f 4 -141 158 159 -154
		mu 0 4 85 94 98 89
		f 4 -137 -157 160 -159
		mu 0 4 94 92 82 98
		f 4 -160 161 162 -145
		mu 0 4 89 98 99 81
		f 4 -161 -147 163 -162
		mu 0 4 98 82 93 99
		f 4 -139 164 -164 -158
		mu 0 4 86 96 99 93
		f 4 -143 -155 -163 -165
		mu 0 4 96 90 81 99
		f 4 165 166 167 168
		mu 0 4 104 108 100 111
		f 4 169 170 171 172
		mu 0 4 112 115 117 106
		f 4 173 174 175 -171
		mu 0 4 115 105 110 117
		f 4 176 177 178 -168
		mu 0 4 100 109 101 111
		f 3 179 180 181
		mu 0 3 113 102 103
		f 4 -166 182 -175 183
		mu 0 4 108 104 110 105
		f 3 184 185 -173
		mu 0 3 106 107 112
		f 4 -184 186 -177 -167
		mu 0 4 108 105 109 100
		f 4 -183 -169 -179 187
		mu 0 4 110 104 111 101
		f 4 -186 188 -181 189
		mu 0 4 112 107 103 102
		f 4 -185 190 -182 -189
		mu 0 4 107 106 113 103
		f 4 -174 191 192 -187
		mu 0 4 105 114 118 109
		f 4 -170 -190 193 -192
		mu 0 4 114 112 102 118
		f 4 -193 194 195 -178
		mu 0 4 109 118 119 101
		f 4 -194 -180 196 -195
		mu 0 4 118 102 113 119
		f 4 -172 197 -197 -191
		mu 0 4 106 116 119 113
		f 4 -176 -188 -196 -198
		mu 0 4 116 110 101 119
		f 4 198 199 200 201
		mu 0 4 124 128 120 131
		f 4 202 203 204 205
		mu 0 4 132 135 137 126
		f 4 206 207 208 -204
		mu 0 4 135 125 130 137
		f 4 209 210 211 -201
		mu 0 4 120 129 121 131
		f 3 212 213 214
		mu 0 3 133 122 123
		f 4 -199 215 -208 216
		mu 0 4 128 124 130 125
		f 3 217 218 -206
		mu 0 3 126 127 132
		f 4 -217 219 -210 -200
		mu 0 4 128 125 129 120
		f 4 -216 -202 -212 220
		mu 0 4 130 124 131 121
		f 4 -219 221 -214 222
		mu 0 4 132 127 123 122
		f 4 -218 223 -215 -222
		mu 0 4 127 126 133 123
		f 4 -207 224 225 -220
		mu 0 4 125 134 138 129
		f 4 -203 -223 226 -225
		mu 0 4 134 132 122 138
		f 4 -226 227 228 -211
		mu 0 4 129 138 139 121
		f 4 -227 -213 229 -228
		mu 0 4 138 122 133 139
		f 4 -205 230 -230 -224
		mu 0 4 126 136 139 133
		f 4 -209 -221 -229 -231
		mu 0 4 136 130 121 139
		f 4 231 232 233 234
		mu 0 4 144 148 140 151
		f 4 235 236 237 238
		mu 0 4 152 155 157 146
		f 4 239 240 241 -237
		mu 0 4 155 145 150 157
		f 4 242 243 244 -234
		mu 0 4 140 149 141 151
		f 3 245 246 247
		mu 0 3 153 142 143
		f 4 -232 248 -241 249
		mu 0 4 148 144 150 145
		f 3 250 251 -239
		mu 0 3 146 147 152
		f 4 -250 252 -243 -233
		mu 0 4 148 145 149 140
		f 4 -249 -235 -245 253
		mu 0 4 150 144 151 141
		f 4 -252 254 -247 255
		mu 0 4 152 147 143 142
		f 4 -251 256 -248 -255
		mu 0 4 147 146 153 143
		f 4 -240 257 258 -253
		mu 0 4 145 154 158 149
		f 4 -236 -256 259 -258
		mu 0 4 154 152 142 158
		f 4 -259 260 261 -244
		mu 0 4 149 158 159 141
		f 4 -260 -246 262 -261
		mu 0 4 158 142 153 159
		f 4 -238 263 -263 -257
		mu 0 4 146 156 159 153
		f 4 -242 -254 -262 -264
		mu 0 4 156 150 141 159
		f 4 264 265 266 267
		mu 0 4 164 168 160 171
		f 4 268 269 270 271
		mu 0 4 172 175 177 166
		f 4 272 273 274 -270
		mu 0 4 175 165 170 177
		f 4 275 276 277 -267
		mu 0 4 160 169 161 171
		f 3 278 279 280
		mu 0 3 173 162 163
		f 4 -265 281 -274 282
		mu 0 4 168 164 170 165
		f 3 283 284 -272
		mu 0 3 166 167 172
		f 4 -283 285 -276 -266
		mu 0 4 168 165 169 160
		f 4 -282 -268 -278 286
		mu 0 4 170 164 171 161
		f 4 -285 287 -280 288
		mu 0 4 172 167 163 162
		f 4 -284 289 -281 -288
		mu 0 4 167 166 173 163
		f 4 -273 290 291 -286
		mu 0 4 165 174 178 169
		f 4 -269 -289 292 -291
		mu 0 4 174 172 162 178
		f 4 -292 293 294 -277
		mu 0 4 169 178 179 161
		f 4 -293 -279 295 -294
		mu 0 4 178 162 173 179
		f 4 -271 296 -296 -290
		mu 0 4 166 176 179 173
		f 4 -275 -287 -295 -297
		mu 0 4 176 170 161 179
		f 4 297 298 299 300
		mu 0 4 184 188 180 191
		f 4 301 302 303 304
		mu 0 4 192 195 197 186
		f 4 305 306 307 -303
		mu 0 4 195 185 190 197
		f 4 308 309 310 -300
		mu 0 4 180 189 181 191
		f 3 311 312 313
		mu 0 3 193 182 183
		f 4 -298 314 -307 315
		mu 0 4 188 184 190 185
		f 3 316 317 -305
		mu 0 3 186 187 192
		f 4 -316 318 -309 -299
		mu 0 4 188 185 189 180
		f 4 -315 -301 -311 319
		mu 0 4 190 184 191 181
		f 4 -318 320 -313 321
		mu 0 4 192 187 183 182
		f 4 -317 322 -314 -321
		mu 0 4 187 186 193 183
		f 4 -306 323 324 -319
		mu 0 4 185 194 198 189
		f 4 -302 -322 325 -324
		mu 0 4 194 192 182 198
		f 4 -325 326 327 -310
		mu 0 4 189 198 199 181
		f 4 -326 -312 328 -327
		mu 0 4 198 182 193 199
		f 4 -304 329 -329 -323
		mu 0 4 186 196 199 193
		f 4 -308 -320 -328 -330
		mu 0 4 196 190 181 199;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint1";
	rename -uid "483495E5-4296-299B-508F-1EA37BD11474";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999998157035549 20.999995157842072 89.999999339540764 ;
createNode joint -n "joint2" -p "joint1";
	rename -uid "68D7E512-4B1C-430B-EA04-CA86FBEB3384";
	setAttr ".t" -type "double3" 10.980027509265851 -3.9968028886505635e-15 -9.4528854414267256e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -4.7393957994334679e-23 1.6062771523276725e-06 20.999995157842136 ;
createNode parentConstraint -n "joint2_parentConstraint1" -p "joint2";
	rename -uid "FC1EBC0F-4F0C-F929-A183-888AB4CC6D38";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.9348890781402597 10.250739097595218 1.1816220047754415e-07 ;
	setAttr ".tg[0].tor" -type "double3" -1.4930235556627297e-06 1.8197028559560198e-06 
		97.599290401740546 ;
	setAttr ".lr" -type "double3" -3.3867046744829129e-07 -2.3161544442256014e-07 17.599290401740539 ;
	setAttr ".rst" -type "double3" 10.980027509265851 -3.9968028886505635e-15 -9.4528855737756236e-16 ;
	setAttr ".rsrr" -type "double3" -1.897648575846137e-22 -7.1174708110349434e-22 7.5992904017405287 ;
	setAttr -k on ".w0";
createNode joint -n "joint3" -p "joint1";
	rename -uid "B311FE93-4416-46F3-BFBD-BD9192010A7B";
	setAttr ".t" -type "double3" 8.8830273355221134 6.4539003064934475 2.0350094372480003e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
createNode parentConstraint -n "joint3_parentConstraint1" -p "joint3";
	rename -uid "061767D3-485D-1626-6445-4D95B131EA6E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.8418436050414986 10.605891227722168 1.1816219997574562e-07 ;
	setAttr ".tg[0].tor" -type "double3" -1.6737100685012322e-06 -3.9875573757123171e-07 
		76.599295243898467 ;
	setAttr ".lr" -type "double3" 4.3815790416851965e-08 1.0206103858021825e-07 17.599290401740561 ;
	setAttr ".rst" -type "double3" 8.8830273355221134 6.4539003064934466 2.0350094372480003e-07 ;
	setAttr ".rsrr" -type "double3" -3.1102284933782126e-22 3.9875573757123155e-07 7.5992904017405518 ;
	setAttr -k on ".w0";
createNode joint -n "joint4" -p "joint1";
	rename -uid "405BDDD1-460C-A189-3B09-27A99B36336B";
	setAttr ".t" -type "double3" 3.3930149650740846 10.442625906508843 3.7440525339855056e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "joint4_parentConstraint1" -p "joint4";
	rename -uid "6D4CDDDB-4BC7-4335-99A7-8B9FE8E1A896";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.533083915710435 6.9099540710449201 1.1816220535365621e-07 ;
	setAttr ".tg[0].tor" -type "double3" -1.6737100685012322e-06 -3.9875573757123171e-07 
		76.599295243898467 ;
	setAttr ".lr" -type "double3" 4.3815790416851965e-08 1.0206103858021825e-07 17.599290401740561 ;
	setAttr ".rst" -type "double3" 3.3930149650740846 10.442625906508843 3.7440525339855056e-07 ;
	setAttr ".rsrr" -type "double3" -3.1102284933782126e-22 3.9875573757123155e-07 7.5992904017405518 ;
	setAttr -k on ".w0";
createNode joint -n "joint5" -p "joint1";
	rename -uid "C174416E-4B8C-4CBB-BE3E-5687CF05FF0D";
	setAttr ".t" -type "double3" -3.3930146907406784 10.442627204538988 4.4743354061720618e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "joint5_parentConstraint1" -p "joint5";
	rename -uid "01EB2CDC-47F9-D58C-182B-3F9F1DE6794A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -10.964980125427234 0.57464987039565862 1.1816220535365611e-07 ;
	setAttr ".tg[0].tor" -type "double3" -1.6737100685012322e-06 -3.9875573757123171e-07 
		76.599295243898467 ;
	setAttr ".lr" -type "double3" 4.3815790416851965e-08 1.0206103858021825e-07 17.599290401740561 ;
	setAttr ".rst" -type "double3" -3.3930146907406789 10.44262720453899 4.4743354061720618e-07 ;
	setAttr ".rsrr" -type "double3" -3.1102284933782126e-22 3.9875573757123155e-07 7.5992904017405518 ;
	setAttr -k on ".w0";
createNode joint -n "joint6" -p "joint1";
	rename -uid "CB37F49E-4536-8B12-6645-66B695114CAC";
	setAttr ".t" -type "double3" -8.883028774463968 6.4538986895851664 3.9469134466995293e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "joint6_parentConstraint1" -p "joint6";
	rename -uid "E277AE38-4D53-6E68-74BF-50B33B1D8901";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.2086257934570259 -5.9801521301269567 1.1816220535365552e-07 ;
	setAttr ".tg[0].tor" -type "double3" -1.6737100685012322e-06 -3.9875573757123171e-07 
		76.599295243898467 ;
	setAttr ".lr" -type "double3" 4.3815790416851965e-08 1.0206103858021825e-07 17.599290401740561 ;
	setAttr ".rst" -type "double3" -8.8830287744639698 6.4538986895851655 3.9469134466995288e-07 ;
	setAttr ".rsrr" -type "double3" -3.1102284933782126e-22 3.9875573757123155e-07 7.5992904017405518 ;
	setAttr -k on ".w0";
createNode joint -n "joint7" -p "joint1";
	rename -uid "7DBCED7C-419A-8088-5527-1BA12F360F21";
	setAttr ".t" -type "double3" -10.980027509265843 -1.7763568394002495e-15 2.3632440677648808e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "joint7_parentConstraint1" -p "joint7";
	rename -uid "84240D09-41D6-1A4F-BE73-6CB157ECC3C3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.9348890781402592 -10.250739097595215 1.1816220535365547e-07 ;
	setAttr ".tg[0].tor" -type "double3" -1.6737100685012322e-06 -3.9875573757123171e-07 
		76.599295243898467 ;
	setAttr ".lr" -type "double3" 4.3815790416851965e-08 1.0206103858021825e-07 17.599290401740561 ;
	setAttr ".rst" -type "double3" -10.980027509265843 -1.3322676295501878e-15 2.3632440677648808e-07 ;
	setAttr ".rsrr" -type "double3" -3.1102284933782126e-22 3.9875573757123155e-07 7.5992904017405518 ;
	setAttr -k on ".w0";
createNode joint -n "joint8" -p "joint1";
	rename -uid "B7FF9878-45C4-E2C5-E810-F9981561BBF8";
	setAttr ".t" -type "double3" -8.8830292511525144 -6.4538979772645781 3.2823547519289061e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "joint8_parentConstraint1" -p "joint8";
	rename -uid "B27B1284-4815-82BE-77A7-5495638DCF55";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8418407440185525 -10.605892181396483 1.181622053536555e-07 ;
	setAttr ".tg[0].tor" -type "double3" -1.6737100685012322e-06 -3.9875573757123171e-07 
		76.599295243898467 ;
	setAttr ".lr" -type "double3" 4.3815790416851965e-08 1.0206103858021825e-07 17.599290401740561 ;
	setAttr ".rst" -type "double3" -8.8830292511525126 -6.4538979772645781 3.2823547519289034e-08 ;
	setAttr ".rsrr" -type "double3" -3.1102284933782126e-22 3.9875573757123155e-07 7.5992904017405518 ;
	setAttr -k on ".w0";
createNode joint -n "joint9" -p "joint1";
	rename -uid "A4587E05-416D-9F08-CC4B-0FBDE1907E43";
	setAttr ".t" -type "double3" -3.3930149650740811 -10.442625906508857 -1.3808084269123917e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "joint9_parentConstraint1" -p "joint9";
	rename -uid "F8457E5A-4100-CDE5-2529-598E8F52C971";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.5330839157104421 -6.9099540710449219 1.1816220535365542e-07 ;
	setAttr ".tg[0].tor" -type "double3" -1.6737100685012322e-06 -3.9875573757123171e-07 
		76.599295243898467 ;
	setAttr ".lr" -type "double3" 4.3815790416851965e-08 1.0206103858021825e-07 17.599290401740561 ;
	setAttr ".rst" -type "double3" -3.393014965074082 -10.442625906508855 -1.380808426912392e-07 ;
	setAttr ".rsrr" -type "double3" -3.1102284933782126e-22 3.9875573757123155e-07 7.5992904017405518 ;
	setAttr -k on ".w0";
createNode joint -n "joint10" -p "joint1";
	rename -uid "25D3A15E-4489-C6EF-BA9C-60A0B07B2ED2";
	setAttr ".t" -type "double3" 3.3930146907406833 -10.442627204539004 -2.1110912990989476e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "joint10_parentConstraint1" -p "joint10";
	rename -uid "47728C55-4ED7-A52B-B04F-B39766B70BF5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 10.964980125427243 -0.57464987039565996 1.181622053536556e-07 ;
	setAttr ".tg[0].tor" -type "double3" -1.6737100685012322e-06 -3.9875573757123171e-07 
		76.599295243898467 ;
	setAttr ".lr" -type "double3" 4.3815790416851965e-08 1.0206103858021825e-07 17.599290401740561 ;
	setAttr ".rst" -type "double3" 3.3930146907406833 -10.442627204539004 -2.1110912990989482e-07 ;
	setAttr ".rsrr" -type "double3" -3.1102284933782126e-22 3.9875573757123155e-07 7.5992904017405518 ;
	setAttr -k on ".w0";
createNode joint -n "joint11" -p "joint1";
	rename -uid "F0C45270-41C2-54DF-809C-DF8EDABE62AC";
	setAttr ".t" -type "double3" 8.8830287744639698 -6.453898689585178 -1.5836693396264183e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "joint11_parentConstraint1" -p "joint11";
	rename -uid "BB6B6B1E-4A3C-B6BC-D5B0-B88825026AC0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 9.2086257934570312 5.9801521301269531 1.1816220535365574e-07 ;
	setAttr ".tg[0].tor" -type "double3" -1.6737100685012322e-06 -3.9875573757123171e-07 
		76.599295243898467 ;
	setAttr ".lr" -type "double3" 4.3815790416851965e-08 1.0206103858021825e-07 17.599290401740561 ;
	setAttr ".rst" -type "double3" 8.8830287744639698 -6.4538986895851789 -1.5836693396264188e-07 ;
	setAttr ".rsrr" -type "double3" -3.1102284933782126e-22 3.9875573757123155e-07 7.5992904017405518 ;
	setAttr -k on ".w0";
createNode transform -n "group1";
	rename -uid "713F3664-4908-44EC-DDB3-BA9A276143A9";
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "nurbsCircle1" -p "group1";
	rename -uid "4E8BB7AD-4815-CF2A-CB38-FF8B6DF9E038";
	setAttr ".r" -type "double3" 0 0 10 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "nurbsCircle1";
	rename -uid "35ED7025-4A09-95F0-764F-98A957543ADF";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3952E5AA-4150-04C7-D964-189AAEC33403";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "44476AE6-4F92-EAF2-E5CC-13AAA132B321";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "1CAB1B59-48EB-C4E5-3B07-0C85A69D7030";
createNode displayLayerManager -n "layerManager";
	rename -uid "62DEA074-4352-55C5-61D0-EA8528B94F04";
createNode displayLayer -n "defaultLayer";
	rename -uid "87655830-46D4-195F-C35F-FEB799259977";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E081D0E8-46A0-CB80-A450-C3ADD1479512";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "447D96F6-4C23-825C-2371-5EACE7051C88";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "3C3C45F2-400D-547A-41D0-D8BB6BF19A31";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "A52FAA42-4628-EDFC-1077-3BA45C471653";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "DFC1F86D-415F-C789-3AB6-FD94F70BAC9A";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "89A2B970-459A-0F9F-F946-B6B9690DF219";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode groupId -n "groupId1";
	rename -uid "8B423BCA-4A8E-E2E0-6DE4-7FB2F34A476C";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate1";
	rename -uid "DC55C055-4B17-6952-451B-55A805116D55";
	setAttr ".ic" 10;
	setAttr -s 10 ".out";
createNode groupId -n "groupId2";
	rename -uid "F160B0E9-4A9E-64A7-69A0-98808380DC2C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "F1ED0349-43B6-1AF4-91F0-CB908C883030";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId3";
	rename -uid "179F8657-46E4-E69E-C74F-7CA9CABFA3D1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "7E4DAEC9-41BC-FAB9-8242-62B0FC9276EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId4";
	rename -uid "C2811629-43E2-C816-D39B-96AC8B833FDA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "BF10E0C6-4404-7831-7F1C-9E97A38E545D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId5";
	rename -uid "5DFD6E48-4675-659F-7200-C889E500AE6E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "8D0A5CFA-42CE-8967-58C1-C5AECDDC9C35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId6";
	rename -uid "320F9F73-4EFA-B0C0-4B0B-00990A57B6EE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "3D9CD280-4FC0-A4CE-4CBE-D1973DB19374";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId7";
	rename -uid "A0E7D50E-4493-27A0-E61B-04912CC6AF19";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "1111C10D-4F3D-178E-1A7E-449A4F4ED5DD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId8";
	rename -uid "B0CC3B81-4868-E014-668F-DDA2A01226A0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "11765C3B-4964-30D0-D21C-27B82745BBA5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId9";
	rename -uid "35CC4062-4FA6-D7E7-8617-088ACAF07E01";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "C791C4CB-4202-A2B7-4692-958E08FCBC3E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId10";
	rename -uid "3C19E715-4863-53D2-E30E-9FBFC838AE6A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "38F62DC2-4568-172D-CBDD-BEA9CB926A6A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId11";
	rename -uid "A4E78259-4D4B-0795-1F7E-B582901167C5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "C4779E1A-4EEE-B900-1E56-4590C7F3A66E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "8E226F98-4D83-6994-D751-E4A7075722BA";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "32E8796F-4EFB-744B-D1D6-A79F5B3537CC";
	setAttr ".txf" -type "matrix" 17.365992759764907 0 0 0 0 0 17.365992759764907 0
		 0 -17.365992759764907 0 0 0 0 0 1;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "AECCF7C0-477C-AADE-FB1E-B6A2FFFBEA89";
	setAttr ".sst" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9896BA1A-42F5-5657-1C42-C394EC904DDF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1278\n            -height 1068\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1043\n            -height 827\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"dagName\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1043\\n    -height 827\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1043\\n    -height 827\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "AA14D0CC-4826-BDFE-75E5-8AABDE5B584F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 11 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polySurface1_parentConstraint1.ctx" "polySurface1.tx";
connectAttr "polySurface1_parentConstraint1.cty" "polySurface1.ty";
connectAttr "polySurface1_parentConstraint1.ctz" "polySurface1.tz";
connectAttr "polySurface1_parentConstraint1.crx" "polySurface1.rx";
connectAttr "polySurface1_parentConstraint1.cry" "polySurface1.ry";
connectAttr "polySurface1_parentConstraint1.crz" "polySurface1.rz";
connectAttr "groupParts1.og" "polySurfaceShape1.i";
connectAttr "groupId2.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "polySurface1.ro" "polySurface1_parentConstraint1.cro";
connectAttr "polySurface1.pim" "polySurface1_parentConstraint1.cpim";
connectAttr "polySurface1.rp" "polySurface1_parentConstraint1.crp";
connectAttr "polySurface1.rpt" "polySurface1_parentConstraint1.crt";
connectAttr "joint8.t" "polySurface1_parentConstraint1.tg[0].tt";
connectAttr "joint8.rp" "polySurface1_parentConstraint1.tg[0].trp";
connectAttr "joint8.rpt" "polySurface1_parentConstraint1.tg[0].trt";
connectAttr "joint8.r" "polySurface1_parentConstraint1.tg[0].tr";
connectAttr "joint8.ro" "polySurface1_parentConstraint1.tg[0].tro";
connectAttr "joint8.s" "polySurface1_parentConstraint1.tg[0].ts";
connectAttr "joint8.pm" "polySurface1_parentConstraint1.tg[0].tpm";
connectAttr "joint8.jo" "polySurface1_parentConstraint1.tg[0].tjo";
connectAttr "joint8.ssc" "polySurface1_parentConstraint1.tg[0].tsc";
connectAttr "joint8.is" "polySurface1_parentConstraint1.tg[0].tis";
connectAttr "polySurface1_parentConstraint1.w0" "polySurface1_parentConstraint1.tg[0].tw"
		;
connectAttr "polySurface2_parentConstraint1.ctx" "polySurface2.tx";
connectAttr "polySurface2_parentConstraint1.cty" "polySurface2.ty";
connectAttr "polySurface2_parentConstraint1.ctz" "polySurface2.tz";
connectAttr "polySurface2_parentConstraint1.crx" "polySurface2.rx";
connectAttr "polySurface2_parentConstraint1.cry" "polySurface2.ry";
connectAttr "polySurface2_parentConstraint1.crz" "polySurface2.rz";
connectAttr "groupParts2.og" "polySurfaceShape2.i";
connectAttr "groupId3.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "polySurface2.ro" "polySurface2_parentConstraint1.cro";
connectAttr "polySurface2.pim" "polySurface2_parentConstraint1.cpim";
connectAttr "polySurface2.rp" "polySurface2_parentConstraint1.crp";
connectAttr "polySurface2.rpt" "polySurface2_parentConstraint1.crt";
connectAttr "joint9.t" "polySurface2_parentConstraint1.tg[0].tt";
connectAttr "joint9.rp" "polySurface2_parentConstraint1.tg[0].trp";
connectAttr "joint9.rpt" "polySurface2_parentConstraint1.tg[0].trt";
connectAttr "joint9.r" "polySurface2_parentConstraint1.tg[0].tr";
connectAttr "joint9.ro" "polySurface2_parentConstraint1.tg[0].tro";
connectAttr "joint9.s" "polySurface2_parentConstraint1.tg[0].ts";
connectAttr "joint9.pm" "polySurface2_parentConstraint1.tg[0].tpm";
connectAttr "joint9.jo" "polySurface2_parentConstraint1.tg[0].tjo";
connectAttr "joint9.ssc" "polySurface2_parentConstraint1.tg[0].tsc";
connectAttr "joint9.is" "polySurface2_parentConstraint1.tg[0].tis";
connectAttr "polySurface2_parentConstraint1.w0" "polySurface2_parentConstraint1.tg[0].tw"
		;
connectAttr "polySurface3_parentConstraint1.ctx" "polySurface3.tx";
connectAttr "polySurface3_parentConstraint1.cty" "polySurface3.ty";
connectAttr "polySurface3_parentConstraint1.ctz" "polySurface3.tz";
connectAttr "polySurface3_parentConstraint1.crx" "polySurface3.rx";
connectAttr "polySurface3_parentConstraint1.cry" "polySurface3.ry";
connectAttr "polySurface3_parentConstraint1.crz" "polySurface3.rz";
connectAttr "groupParts3.og" "polySurfaceShape3.i";
connectAttr "groupId4.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "polySurface3.ro" "polySurface3_parentConstraint1.cro";
connectAttr "polySurface3.pim" "polySurface3_parentConstraint1.cpim";
connectAttr "polySurface3.rp" "polySurface3_parentConstraint1.crp";
connectAttr "polySurface3.rpt" "polySurface3_parentConstraint1.crt";
connectAttr "joint10.t" "polySurface3_parentConstraint1.tg[0].tt";
connectAttr "joint10.rp" "polySurface3_parentConstraint1.tg[0].trp";
connectAttr "joint10.rpt" "polySurface3_parentConstraint1.tg[0].trt";
connectAttr "joint10.r" "polySurface3_parentConstraint1.tg[0].tr";
connectAttr "joint10.ro" "polySurface3_parentConstraint1.tg[0].tro";
connectAttr "joint10.s" "polySurface3_parentConstraint1.tg[0].ts";
connectAttr "joint10.pm" "polySurface3_parentConstraint1.tg[0].tpm";
connectAttr "joint10.jo" "polySurface3_parentConstraint1.tg[0].tjo";
connectAttr "joint10.ssc" "polySurface3_parentConstraint1.tg[0].tsc";
connectAttr "joint10.is" "polySurface3_parentConstraint1.tg[0].tis";
connectAttr "polySurface3_parentConstraint1.w0" "polySurface3_parentConstraint1.tg[0].tw"
		;
connectAttr "polySurface4_parentConstraint1.ctx" "polySurface4.tx";
connectAttr "polySurface4_parentConstraint1.cty" "polySurface4.ty";
connectAttr "polySurface4_parentConstraint1.ctz" "polySurface4.tz";
connectAttr "polySurface4_parentConstraint1.crx" "polySurface4.rx";
connectAttr "polySurface4_parentConstraint1.cry" "polySurface4.ry";
connectAttr "polySurface4_parentConstraint1.crz" "polySurface4.rz";
connectAttr "groupParts4.og" "polySurfaceShape4.i";
connectAttr "groupId5.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "polySurface4.ro" "polySurface4_parentConstraint1.cro";
connectAttr "polySurface4.pim" "polySurface4_parentConstraint1.cpim";
connectAttr "polySurface4.rp" "polySurface4_parentConstraint1.crp";
connectAttr "polySurface4.rpt" "polySurface4_parentConstraint1.crt";
connectAttr "joint11.t" "polySurface4_parentConstraint1.tg[0].tt";
connectAttr "joint11.rp" "polySurface4_parentConstraint1.tg[0].trp";
connectAttr "joint11.rpt" "polySurface4_parentConstraint1.tg[0].trt";
connectAttr "joint11.r" "polySurface4_parentConstraint1.tg[0].tr";
connectAttr "joint11.ro" "polySurface4_parentConstraint1.tg[0].tro";
connectAttr "joint11.s" "polySurface4_parentConstraint1.tg[0].ts";
connectAttr "joint11.pm" "polySurface4_parentConstraint1.tg[0].tpm";
connectAttr "joint11.jo" "polySurface4_parentConstraint1.tg[0].tjo";
connectAttr "joint11.ssc" "polySurface4_parentConstraint1.tg[0].tsc";
connectAttr "joint11.is" "polySurface4_parentConstraint1.tg[0].tis";
connectAttr "polySurface4_parentConstraint1.w0" "polySurface4_parentConstraint1.tg[0].tw"
		;
connectAttr "polySurface5_parentConstraint1.ctx" "polySurface5.tx";
connectAttr "polySurface5_parentConstraint1.cty" "polySurface5.ty";
connectAttr "polySurface5_parentConstraint1.ctz" "polySurface5.tz";
connectAttr "polySurface5_parentConstraint1.crx" "polySurface5.rx";
connectAttr "polySurface5_parentConstraint1.cry" "polySurface5.ry";
connectAttr "polySurface5_parentConstraint1.crz" "polySurface5.rz";
connectAttr "groupParts5.og" "polySurfaceShape5.i";
connectAttr "groupId6.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "polySurface5.ro" "polySurface5_parentConstraint1.cro";
connectAttr "polySurface5.pim" "polySurface5_parentConstraint1.cpim";
connectAttr "polySurface5.rp" "polySurface5_parentConstraint1.crp";
connectAttr "polySurface5.rpt" "polySurface5_parentConstraint1.crt";
connectAttr "joint2.t" "polySurface5_parentConstraint1.tg[0].tt";
connectAttr "joint2.rp" "polySurface5_parentConstraint1.tg[0].trp";
connectAttr "joint2.rpt" "polySurface5_parentConstraint1.tg[0].trt";
connectAttr "joint2.r" "polySurface5_parentConstraint1.tg[0].tr";
connectAttr "joint2.ro" "polySurface5_parentConstraint1.tg[0].tro";
connectAttr "joint2.s" "polySurface5_parentConstraint1.tg[0].ts";
connectAttr "joint2.pm" "polySurface5_parentConstraint1.tg[0].tpm";
connectAttr "joint2.jo" "polySurface5_parentConstraint1.tg[0].tjo";
connectAttr "joint2.ssc" "polySurface5_parentConstraint1.tg[0].tsc";
connectAttr "joint2.is" "polySurface5_parentConstraint1.tg[0].tis";
connectAttr "polySurface5_parentConstraint1.w0" "polySurface5_parentConstraint1.tg[0].tw"
		;
connectAttr "polySurface6_parentConstraint1.ctx" "polySurface6.tx";
connectAttr "polySurface6_parentConstraint1.cty" "polySurface6.ty";
connectAttr "polySurface6_parentConstraint1.ctz" "polySurface6.tz";
connectAttr "polySurface6_parentConstraint1.crx" "polySurface6.rx";
connectAttr "polySurface6_parentConstraint1.cry" "polySurface6.ry";
connectAttr "polySurface6_parentConstraint1.crz" "polySurface6.rz";
connectAttr "groupParts6.og" "polySurfaceShape6.i";
connectAttr "groupId7.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "polySurface6.ro" "polySurface6_parentConstraint1.cro";
connectAttr "polySurface6.pim" "polySurface6_parentConstraint1.cpim";
connectAttr "polySurface6.rp" "polySurface6_parentConstraint1.crp";
connectAttr "polySurface6.rpt" "polySurface6_parentConstraint1.crt";
connectAttr "joint3.t" "polySurface6_parentConstraint1.tg[0].tt";
connectAttr "joint3.rp" "polySurface6_parentConstraint1.tg[0].trp";
connectAttr "joint3.rpt" "polySurface6_parentConstraint1.tg[0].trt";
connectAttr "joint3.r" "polySurface6_parentConstraint1.tg[0].tr";
connectAttr "joint3.ro" "polySurface6_parentConstraint1.tg[0].tro";
connectAttr "joint3.s" "polySurface6_parentConstraint1.tg[0].ts";
connectAttr "joint3.pm" "polySurface6_parentConstraint1.tg[0].tpm";
connectAttr "joint3.jo" "polySurface6_parentConstraint1.tg[0].tjo";
connectAttr "joint3.ssc" "polySurface6_parentConstraint1.tg[0].tsc";
connectAttr "joint3.is" "polySurface6_parentConstraint1.tg[0].tis";
connectAttr "polySurface6_parentConstraint1.w0" "polySurface6_parentConstraint1.tg[0].tw"
		;
connectAttr "polySurface7_parentConstraint1.ctx" "polySurface7.tx";
connectAttr "polySurface7_parentConstraint1.cty" "polySurface7.ty";
connectAttr "polySurface7_parentConstraint1.ctz" "polySurface7.tz";
connectAttr "polySurface7_parentConstraint1.crx" "polySurface7.rx";
connectAttr "polySurface7_parentConstraint1.cry" "polySurface7.ry";
connectAttr "polySurface7_parentConstraint1.crz" "polySurface7.rz";
connectAttr "groupParts7.og" "polySurfaceShape7.i";
connectAttr "groupId8.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "polySurface7.ro" "polySurface7_parentConstraint1.cro";
connectAttr "polySurface7.pim" "polySurface7_parentConstraint1.cpim";
connectAttr "polySurface7.rp" "polySurface7_parentConstraint1.crp";
connectAttr "polySurface7.rpt" "polySurface7_parentConstraint1.crt";
connectAttr "joint4.t" "polySurface7_parentConstraint1.tg[0].tt";
connectAttr "joint4.rp" "polySurface7_parentConstraint1.tg[0].trp";
connectAttr "joint4.rpt" "polySurface7_parentConstraint1.tg[0].trt";
connectAttr "joint4.r" "polySurface7_parentConstraint1.tg[0].tr";
connectAttr "joint4.ro" "polySurface7_parentConstraint1.tg[0].tro";
connectAttr "joint4.s" "polySurface7_parentConstraint1.tg[0].ts";
connectAttr "joint4.pm" "polySurface7_parentConstraint1.tg[0].tpm";
connectAttr "joint4.jo" "polySurface7_parentConstraint1.tg[0].tjo";
connectAttr "joint4.ssc" "polySurface7_parentConstraint1.tg[0].tsc";
connectAttr "joint4.is" "polySurface7_parentConstraint1.tg[0].tis";
connectAttr "polySurface7_parentConstraint1.w0" "polySurface7_parentConstraint1.tg[0].tw"
		;
connectAttr "polySurface8_parentConstraint1.ctx" "polySurface8.tx";
connectAttr "polySurface8_parentConstraint1.cty" "polySurface8.ty";
connectAttr "polySurface8_parentConstraint1.ctz" "polySurface8.tz";
connectAttr "polySurface8_parentConstraint1.crx" "polySurface8.rx";
connectAttr "polySurface8_parentConstraint1.cry" "polySurface8.ry";
connectAttr "polySurface8_parentConstraint1.crz" "polySurface8.rz";
connectAttr "groupParts8.og" "polySurfaceShape8.i";
connectAttr "groupId9.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "polySurface8.ro" "polySurface8_parentConstraint1.cro";
connectAttr "polySurface8.pim" "polySurface8_parentConstraint1.cpim";
connectAttr "polySurface8.rp" "polySurface8_parentConstraint1.crp";
connectAttr "polySurface8.rpt" "polySurface8_parentConstraint1.crt";
connectAttr "joint5.t" "polySurface8_parentConstraint1.tg[0].tt";
connectAttr "joint5.rp" "polySurface8_parentConstraint1.tg[0].trp";
connectAttr "joint5.rpt" "polySurface8_parentConstraint1.tg[0].trt";
connectAttr "joint5.r" "polySurface8_parentConstraint1.tg[0].tr";
connectAttr "joint5.ro" "polySurface8_parentConstraint1.tg[0].tro";
connectAttr "joint5.s" "polySurface8_parentConstraint1.tg[0].ts";
connectAttr "joint5.pm" "polySurface8_parentConstraint1.tg[0].tpm";
connectAttr "joint5.jo" "polySurface8_parentConstraint1.tg[0].tjo";
connectAttr "joint5.ssc" "polySurface8_parentConstraint1.tg[0].tsc";
connectAttr "joint5.is" "polySurface8_parentConstraint1.tg[0].tis";
connectAttr "polySurface8_parentConstraint1.w0" "polySurface8_parentConstraint1.tg[0].tw"
		;
connectAttr "polySurface9_parentConstraint1.ctx" "polySurface9.tx";
connectAttr "polySurface9_parentConstraint1.cty" "polySurface9.ty";
connectAttr "polySurface9_parentConstraint1.ctz" "polySurface9.tz";
connectAttr "polySurface9_parentConstraint1.crx" "polySurface9.rx";
connectAttr "polySurface9_parentConstraint1.cry" "polySurface9.ry";
connectAttr "polySurface9_parentConstraint1.crz" "polySurface9.rz";
connectAttr "groupParts9.og" "polySurfaceShape9.i";
connectAttr "groupId10.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "polySurface9.ro" "polySurface9_parentConstraint1.cro";
connectAttr "polySurface9.pim" "polySurface9_parentConstraint1.cpim";
connectAttr "polySurface9.rp" "polySurface9_parentConstraint1.crp";
connectAttr "polySurface9.rpt" "polySurface9_parentConstraint1.crt";
connectAttr "joint6.t" "polySurface9_parentConstraint1.tg[0].tt";
connectAttr "joint6.rp" "polySurface9_parentConstraint1.tg[0].trp";
connectAttr "joint6.rpt" "polySurface9_parentConstraint1.tg[0].trt";
connectAttr "joint6.r" "polySurface9_parentConstraint1.tg[0].tr";
connectAttr "joint6.ro" "polySurface9_parentConstraint1.tg[0].tro";
connectAttr "joint6.s" "polySurface9_parentConstraint1.tg[0].ts";
connectAttr "joint6.pm" "polySurface9_parentConstraint1.tg[0].tpm";
connectAttr "joint6.jo" "polySurface9_parentConstraint1.tg[0].tjo";
connectAttr "joint6.ssc" "polySurface9_parentConstraint1.tg[0].tsc";
connectAttr "joint6.is" "polySurface9_parentConstraint1.tg[0].tis";
connectAttr "polySurface9_parentConstraint1.w0" "polySurface9_parentConstraint1.tg[0].tw"
		;
connectAttr "polySurface10_parentConstraint1.ctx" "polySurface10.tx";
connectAttr "polySurface10_parentConstraint1.cty" "polySurface10.ty";
connectAttr "polySurface10_parentConstraint1.ctz" "polySurface10.tz";
connectAttr "polySurface10_parentConstraint1.crx" "polySurface10.rx";
connectAttr "polySurface10_parentConstraint1.cry" "polySurface10.ry";
connectAttr "polySurface10_parentConstraint1.crz" "polySurface10.rz";
connectAttr "groupParts10.og" "polySurfaceShape10.i";
connectAttr "groupId11.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "polySurface10.ro" "polySurface10_parentConstraint1.cro";
connectAttr "polySurface10.pim" "polySurface10_parentConstraint1.cpim";
connectAttr "polySurface10.rp" "polySurface10_parentConstraint1.crp";
connectAttr "polySurface10.rpt" "polySurface10_parentConstraint1.crt";
connectAttr "joint7.t" "polySurface10_parentConstraint1.tg[0].tt";
connectAttr "joint7.rp" "polySurface10_parentConstraint1.tg[0].trp";
connectAttr "joint7.rpt" "polySurface10_parentConstraint1.tg[0].trt";
connectAttr "joint7.r" "polySurface10_parentConstraint1.tg[0].tr";
connectAttr "joint7.ro" "polySurface10_parentConstraint1.tg[0].tro";
connectAttr "joint7.s" "polySurface10_parentConstraint1.tg[0].ts";
connectAttr "joint7.pm" "polySurface10_parentConstraint1.tg[0].tpm";
connectAttr "joint7.jo" "polySurface10_parentConstraint1.tg[0].tjo";
connectAttr "joint7.ssc" "polySurface10_parentConstraint1.tg[0].tsc";
connectAttr "joint7.is" "polySurface10_parentConstraint1.tg[0].tis";
connectAttr "polySurface10_parentConstraint1.w0" "polySurface10_parentConstraint1.tg[0].tw"
		;
connectAttr "groupId1.id" "MASH1_ReproMeshShape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "MASH1_ReproMeshShape.iog.og[1].gco";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2_parentConstraint1.crx" "joint2.rx";
connectAttr "joint2_parentConstraint1.cry" "joint2.ry";
connectAttr "joint2_parentConstraint1.crz" "joint2.rz";
connectAttr "joint2.ro" "joint2_parentConstraint1.cro";
connectAttr "joint2.pim" "joint2_parentConstraint1.cpim";
connectAttr "joint2.rp" "joint2_parentConstraint1.crp";
connectAttr "joint2.rpt" "joint2_parentConstraint1.crt";
connectAttr "joint2.jo" "joint2_parentConstraint1.cjo";
connectAttr "nurbsCircle1.t" "joint2_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle1.rp" "joint2_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle1.rpt" "joint2_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle1.r" "joint2_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "joint2_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.s" "joint2_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle1.pm" "joint2_parentConstraint1.tg[0].tpm";
connectAttr "joint2_parentConstraint1.w0" "joint2_parentConstraint1.tg[0].tw";
connectAttr "joint1.s" "joint3.is";
connectAttr "joint3_parentConstraint1.crx" "joint3.rx";
connectAttr "joint3_parentConstraint1.cry" "joint3.ry";
connectAttr "joint3_parentConstraint1.crz" "joint3.rz";
connectAttr "joint3.ro" "joint3_parentConstraint1.cro";
connectAttr "joint3.pim" "joint3_parentConstraint1.cpim";
connectAttr "joint3.rp" "joint3_parentConstraint1.crp";
connectAttr "joint3.rpt" "joint3_parentConstraint1.crt";
connectAttr "joint3.jo" "joint3_parentConstraint1.cjo";
connectAttr "nurbsCircle1.t" "joint3_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle1.rp" "joint3_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle1.rpt" "joint3_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle1.r" "joint3_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "joint3_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.s" "joint3_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle1.pm" "joint3_parentConstraint1.tg[0].tpm";
connectAttr "joint3_parentConstraint1.w0" "joint3_parentConstraint1.tg[0].tw";
connectAttr "joint1.s" "joint4.is";
connectAttr "joint4_parentConstraint1.crx" "joint4.rx";
connectAttr "joint4_parentConstraint1.cry" "joint4.ry";
connectAttr "joint4_parentConstraint1.crz" "joint4.rz";
connectAttr "joint4.ro" "joint4_parentConstraint1.cro";
connectAttr "joint4.pim" "joint4_parentConstraint1.cpim";
connectAttr "joint4.rp" "joint4_parentConstraint1.crp";
connectAttr "joint4.rpt" "joint4_parentConstraint1.crt";
connectAttr "joint4.jo" "joint4_parentConstraint1.cjo";
connectAttr "nurbsCircle1.t" "joint4_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle1.rp" "joint4_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle1.rpt" "joint4_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle1.r" "joint4_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "joint4_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.s" "joint4_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle1.pm" "joint4_parentConstraint1.tg[0].tpm";
connectAttr "joint4_parentConstraint1.w0" "joint4_parentConstraint1.tg[0].tw";
connectAttr "joint1.s" "joint5.is";
connectAttr "joint5_parentConstraint1.crx" "joint5.rx";
connectAttr "joint5_parentConstraint1.cry" "joint5.ry";
connectAttr "joint5_parentConstraint1.crz" "joint5.rz";
connectAttr "joint5.ro" "joint5_parentConstraint1.cro";
connectAttr "joint5.pim" "joint5_parentConstraint1.cpim";
connectAttr "joint5.rp" "joint5_parentConstraint1.crp";
connectAttr "joint5.rpt" "joint5_parentConstraint1.crt";
connectAttr "joint5.jo" "joint5_parentConstraint1.cjo";
connectAttr "nurbsCircle1.t" "joint5_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle1.rp" "joint5_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle1.rpt" "joint5_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle1.r" "joint5_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "joint5_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.s" "joint5_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle1.pm" "joint5_parentConstraint1.tg[0].tpm";
connectAttr "joint5_parentConstraint1.w0" "joint5_parentConstraint1.tg[0].tw";
connectAttr "joint1.s" "joint6.is";
connectAttr "joint6_parentConstraint1.crx" "joint6.rx";
connectAttr "joint6_parentConstraint1.cry" "joint6.ry";
connectAttr "joint6_parentConstraint1.crz" "joint6.rz";
connectAttr "joint6.ro" "joint6_parentConstraint1.cro";
connectAttr "joint6.pim" "joint6_parentConstraint1.cpim";
connectAttr "joint6.rp" "joint6_parentConstraint1.crp";
connectAttr "joint6.rpt" "joint6_parentConstraint1.crt";
connectAttr "joint6.jo" "joint6_parentConstraint1.cjo";
connectAttr "nurbsCircle1.t" "joint6_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle1.rp" "joint6_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle1.rpt" "joint6_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle1.r" "joint6_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "joint6_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.s" "joint6_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle1.pm" "joint6_parentConstraint1.tg[0].tpm";
connectAttr "joint6_parentConstraint1.w0" "joint6_parentConstraint1.tg[0].tw";
connectAttr "joint1.s" "joint7.is";
connectAttr "joint7_parentConstraint1.crx" "joint7.rx";
connectAttr "joint7_parentConstraint1.cry" "joint7.ry";
connectAttr "joint7_parentConstraint1.crz" "joint7.rz";
connectAttr "joint7.ro" "joint7_parentConstraint1.cro";
connectAttr "joint7.pim" "joint7_parentConstraint1.cpim";
connectAttr "joint7.rp" "joint7_parentConstraint1.crp";
connectAttr "joint7.rpt" "joint7_parentConstraint1.crt";
connectAttr "joint7.jo" "joint7_parentConstraint1.cjo";
connectAttr "nurbsCircle1.t" "joint7_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle1.rp" "joint7_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle1.rpt" "joint7_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle1.r" "joint7_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "joint7_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.s" "joint7_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle1.pm" "joint7_parentConstraint1.tg[0].tpm";
connectAttr "joint7_parentConstraint1.w0" "joint7_parentConstraint1.tg[0].tw";
connectAttr "joint1.s" "joint8.is";
connectAttr "joint8_parentConstraint1.crx" "joint8.rx";
connectAttr "joint8_parentConstraint1.cry" "joint8.ry";
connectAttr "joint8_parentConstraint1.crz" "joint8.rz";
connectAttr "joint8.ro" "joint8_parentConstraint1.cro";
connectAttr "joint8.pim" "joint8_parentConstraint1.cpim";
connectAttr "joint8.rp" "joint8_parentConstraint1.crp";
connectAttr "joint8.rpt" "joint8_parentConstraint1.crt";
connectAttr "joint8.jo" "joint8_parentConstraint1.cjo";
connectAttr "nurbsCircle1.t" "joint8_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle1.rp" "joint8_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle1.rpt" "joint8_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle1.r" "joint8_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "joint8_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.s" "joint8_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle1.pm" "joint8_parentConstraint1.tg[0].tpm";
connectAttr "joint8_parentConstraint1.w0" "joint8_parentConstraint1.tg[0].tw";
connectAttr "joint1.s" "joint9.is";
connectAttr "joint9_parentConstraint1.crx" "joint9.rx";
connectAttr "joint9_parentConstraint1.cry" "joint9.ry";
connectAttr "joint9_parentConstraint1.crz" "joint9.rz";
connectAttr "joint9.ro" "joint9_parentConstraint1.cro";
connectAttr "joint9.pim" "joint9_parentConstraint1.cpim";
connectAttr "joint9.rp" "joint9_parentConstraint1.crp";
connectAttr "joint9.rpt" "joint9_parentConstraint1.crt";
connectAttr "joint9.jo" "joint9_parentConstraint1.cjo";
connectAttr "nurbsCircle1.t" "joint9_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle1.rp" "joint9_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle1.rpt" "joint9_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle1.r" "joint9_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "joint9_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.s" "joint9_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle1.pm" "joint9_parentConstraint1.tg[0].tpm";
connectAttr "joint9_parentConstraint1.w0" "joint9_parentConstraint1.tg[0].tw";
connectAttr "joint1.s" "joint10.is";
connectAttr "joint10_parentConstraint1.crx" "joint10.rx";
connectAttr "joint10_parentConstraint1.cry" "joint10.ry";
connectAttr "joint10_parentConstraint1.crz" "joint10.rz";
connectAttr "joint10.ro" "joint10_parentConstraint1.cro";
connectAttr "joint10.pim" "joint10_parentConstraint1.cpim";
connectAttr "joint10.rp" "joint10_parentConstraint1.crp";
connectAttr "joint10.rpt" "joint10_parentConstraint1.crt";
connectAttr "joint10.jo" "joint10_parentConstraint1.cjo";
connectAttr "nurbsCircle1.t" "joint10_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle1.rp" "joint10_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle1.rpt" "joint10_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle1.r" "joint10_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "joint10_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.s" "joint10_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle1.pm" "joint10_parentConstraint1.tg[0].tpm";
connectAttr "joint10_parentConstraint1.w0" "joint10_parentConstraint1.tg[0].tw";
connectAttr "joint1.s" "joint11.is";
connectAttr "joint11_parentConstraint1.crx" "joint11.rx";
connectAttr "joint11_parentConstraint1.cry" "joint11.ry";
connectAttr "joint11_parentConstraint1.crz" "joint11.rz";
connectAttr "joint11.ro" "joint11_parentConstraint1.cro";
connectAttr "joint11.pim" "joint11_parentConstraint1.cpim";
connectAttr "joint11.rp" "joint11_parentConstraint1.crp";
connectAttr "joint11.rpt" "joint11_parentConstraint1.crt";
connectAttr "joint11.jo" "joint11_parentConstraint1.cjo";
connectAttr "nurbsCircle1.t" "joint11_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle1.rp" "joint11_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle1.rpt" "joint11_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle1.r" "joint11_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "joint11_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.s" "joint11_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle1.pm" "joint11_parentConstraint1.tg[0].tpm";
connectAttr "joint11_parentConstraint1.w0" "joint11_parentConstraint1.tg[0].tw";
connectAttr "transformGeometry1.og" "nurbsCircleShape1.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "MASH1_ReproMeshShape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts1.ig";
connectAttr "groupId2.id" "groupParts1.gi";
connectAttr "polySeparate1.out[1]" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySeparate1.out[2]" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "polySeparate1.out[3]" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "polySeparate1.out[4]" "groupParts5.ig";
connectAttr "groupId6.id" "groupParts5.gi";
connectAttr "polySeparate1.out[5]" "groupParts6.ig";
connectAttr "groupId7.id" "groupParts6.gi";
connectAttr "polySeparate1.out[6]" "groupParts7.ig";
connectAttr "groupId8.id" "groupParts7.gi";
connectAttr "polySeparate1.out[7]" "groupParts8.ig";
connectAttr "groupId9.id" "groupParts8.gi";
connectAttr "polySeparate1.out[8]" "groupParts9.ig";
connectAttr "groupId10.id" "groupParts9.gi";
connectAttr "polySeparate1.out[9]" "groupParts10.ig";
connectAttr "groupId11.id" "groupParts10.gi";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pDiscShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MASH1_ReproMeshShape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
// End of Basic RIg.ma
