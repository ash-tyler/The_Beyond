//Maya ASCII 2017ff05 scene
//Name: Tavern.ma
//Last modified: Wed, Sep 19, 2018 06:55:03 AM
//Codeset: 1252
requires maya "2017ff05";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201710312130-1018716";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "B6A6F216-4DA6-7CF3-2F1E-52862DA47D31";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -299.41354990597665 1363.2868109983951 5510.1843345088892 ;
	setAttr ".r" -type "double3" -12.338352729557085 1.3999999999976895 -3.4797704298831755e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9FB1F272-4D5F-CDF1-CB30-1FAFDFA8E0FE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 5270.8004863484239;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F3C4D701-4306-9473-CB41-9D8CCA8765A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BB8571D4-4D4F-9974-7D46-878547EAB894";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "817D1A4E-4FD8-8A24-ADC6-A581352098F8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "86A5753C-4807-7B99-7910-71A94E117C7C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8E95DDC1-42C8-8600-6CCC-0CBABDAAC028";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1AF9FE25-47EC-5F5B-32FF-26B40C1A0A2F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Model_0";
	rename -uid "3866CD0B-4A48-8972-692D-61B0529C50AC";
createNode mesh -n "Model_0Shape" -p "Model_0";
	rename -uid "91C55065-4216-578C-D6ED-979597E64902";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -13.15629959 2.35339999
		 -9.34770012 3.20840001 -13.15629959 3.20840001 -9.34770012 2.35339999 -1.74430001
		 2.10439992 -2.1953001 2.75 -2.1953001 2.65890002 -1.63489997 2.10439992 2.1953001
		 2.75 1.74430001 2.10439992 2.1953001 2.65890002 1.63489997 2.10439992 9.34770012
		 1.19949996 13.15629959 1.29050004 9.34770012 1.29050004 13.15629959 1.19949996 -13.15620041
		 0.5995 -9.34770012 0.70880002 -13.15620041 0.70880002 -9.34770012 0.5995 13.15629959
		 2.49099994 9.34770012 3.20589995 9.34770012 2.49099994 13.15629959 3.20589995;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1165.85998535 1162.59448242 -471.071411133
		 -1310.64001465 1582.41992188 -106.68000031 1165.85998535 1582.41992188 -106.68000031
		 -1310.64001465 1162.59448242 -471.071411133 1165.85998535 1162.59448242 -399.9513855
		 1165.85998535 1523.21411133 -106.68000031 -1310.64001465 1162.59448242 -399.9513855
		 -1310.64001465 1523.21411133 -106.68000031;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_1";
	rename -uid "237C5126-47DB-A092-DDAA-2BADFFAAC269";
createNode mesh -n "Model_1Shape" -p "Model_1";
	rename -uid "39E75D39-4026-043F-98E3-169A7F8B27B6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -13.15629959 1.01030004
		 -9.34770012 1.84619999 -13.15629959 1.84619999 -9.34770012 1.01030004 -0.12 1.5 -0.59549999
		 2.10439992 -0.70490003 2.10439992 -0.011 1.50670004 0.59549999 2.10439992 0.12 1.5
		 0.70490003 2.10439992 0.011 1.50670004 9.34770012 -0.44 13.15629959 -0.33059999 9.34770012
		 -0.33059999 13.15629959 -0.44 -13.15629959 0.2378 -9.34770012 0.34689999 -13.15629959
		 0.34689999 -9.34770012 0.2378 13.15629959 1.086599946 9.34770012 1.92760003 9.34770012
		 1.086599946 13.15629959 1.92760003;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1165.85998535 773.99737549 -851.1348877 -1310.64001465 1162.59423828 -471.071411133
		 1165.85998535 1162.59423828 -471.071411133 -1310.64001465 773.99737549 -851.1348877
		 1165.85998535 769.61938477 -780.28570557 1165.85998535 1162.59423828 -399.9513855
		 -1310.64001465 769.61938477 -780.28570557 -1310.64001465 1162.59423828 -399.9513855;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_2";
	rename -uid "5D22CB0F-4577-9C3A-2D74-1188BE3B0086";
createNode mesh -n "Model_2Shape" -p "Model_2";
	rename -uid "AEC787EE-414F-A8AC-A1EB-1CAD1FBF3D2E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -16.59370041 -0.1584
		 -20.40229988 -0.91769999 -16.59370041 -0.91769999 -20.40229988 -0.1584 1.64030004
		 1.011700034 1.1638 1.50559998 1.054399967 1.50010002 1.74969995 1.022799969 -1.1638
		 1.50559998 -1.64030004 1.011700034 -1.054399967 1.50010002 -1.74969995 1.022799969
		 9.34770012 -0.94859999 13.15629959 -0.8391 9.34770012 -0.8391 13.15629959 -0.94859999
		 -13.15620041 -0.33019999 -9.34770012 -0.2203 -13.15620041 -0.2203 -9.34770012 -0.33019999
		 16.59379959 -0.2413 20.40229988 -1.0040999651 20.40229988 -0.2413 16.59379959 -1.0040999651;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1165.85998535 459.29650879 -1233.071411133
		 -1310.64001465 773.26867676 -852.071472168 1165.85998535 773.26867676 -852.071472168
		 -1310.64001465 459.29650879 -1233.071411133 1165.85998535 452.11999512 -1161.95141602
		 1165.85998535 769.68041992 -780.95147705 -1310.64001465 452.11999512 -1161.95141602
		 -1310.64001465 769.68041992 -780.95147705;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_3";
	rename -uid "71E5105B-43DC-E87F-A744-979A8BA78D72";
createNode mesh -n "Model_3Shape" -p "Model_3";
	rename -uid "E9CFAEE2-431C-1D1C-3CF3-71A47CC54281";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[8:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 9.37899971 -0.56959999
		 9.50430012 -1.2062 9.50430012 -0.56959999 9.37899971 -1.2062 -20.40229988 -1.91279995
		 -20.27689934 -2.54929996 -20.27689934 -1.91279995 -20.40229988 -2.54929996 -9.50430012
		 -0.82029998 -9.37899971 2.1875 -9.50430012 2.1875 -9.37899971 -0.82029998 9.37899971
		 -0.33199999 9.50430012 1.69920003 9.37899971 1.69920003 9.50430012 -0.33199999 -2.1875
		 -0.033300001 0.33199999 0.37509999 -1.69920003 0.37509999 0.82029998 -0.033300001
		 -3.0078001022 -0.70420003 -0.4883 -0.2958 -2.51950002 -0.2958 0 -0.70420003;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1300.44873047 769.68041992 541.020019531
		 -1218.91748047 504.14959717 858.52001953 -1218.91748047 769.68041992 541.020019531
		 -1300.44873047 504.14959717 858.52001953 -1300.44873047 504.14959717 -1097.2800293
		 -1218.91748047 769.68041992 -779.7800293 -1218.91748047 504.14959717 -1097.2800293
		 -1300.44873047 769.68041992 -779.7800293;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_4";
	rename -uid "A6DBF5EB-4F80-E4F1-BB51-CCBD4ACDA83C";
createNode mesh -n "Model_4Shape" -p "Model_4";
	rename -uid "F669B214-48C6-6253-34A9-42B47F730A10";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[8:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 9.37899971 -0.046399999
		 9.50430012 -0.88340002 9.50430012 -0.046399999 9.37899971 -0.88340002 -9.37899971
		 -1.50639999 -9.50430012 -0.66939998 -9.50430012 -1.50639999 -9.37899971 -0.66939998
		 -9.50430012 -0.33199999 -9.37899971 1.69920003 -9.50430012 1.69920003 -9.37899971
		 -0.33199999 9.37899971 0.25 9.50430012 1.11720002 9.37899971 1.11720002 9.50430012
		 0.25 -1.69920003 -0.20299999 -0.25 0.3985 -1.11720002 0.3985 0.33199999 -0.20299999
		 -2.031199932 -0.80080003 -0.58200002 -0.1992 -1.44920003 -0.1992 0 -0.80080003;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1300.44873047 1160.80004883 162.55999756
		 -1218.91748047 769.68041992 541.020019531 -1218.91748047 1160.80004883 162.55999756
		 -1300.44873047 769.68041992 541.020019531 -1300.44873047 769.68041992 -779.7800293
		 -1218.91748047 1160.80004883 -401.32000732 -1218.91748047 769.68041992 -779.7800293
		 -1300.44873047 1160.80004883 -401.32000732;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_5";
	rename -uid "054169FD-4E4F-4DC2-5E89-AA8315DBC853";
createNode mesh -n "Model_5Shape" -p "Model_5";
	rename -uid "1AD37AA9-4881-5E6A-7B99-4DA31142BBB1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[8:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 9.37899971 0.79909998
		 9.50430012 0.1048 9.50430012 0.79909998 9.37899971 0.1048 -9.37899971 -0.47749999
		 -9.50430012 0.2273 -9.50430012 -0.47749999 -9.37899971 0.2273 -9.50430012 0.25 -9.37899971
		 1.11720002 -9.50430012 1.11720002 -9.37899971 0.25 -9.34770012 1.94980001 -9.47309971
		 1.93620002 -9.34770012 1.93620002 -9.47309971 1.94980001 -1.11720002 0.3985 -0.66409999
		 0.9558 -0.67189997 0.94480002 -0.25 0.3985 0 -0.77869999 -0.4219 -0.2324 -0.41409999
		 -0.22130001 -0.86720002 -0.77869999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1300.44873047 1523.21362305 -106.68000031
		 -1218.91748047 1160.80004883 162.55999756 -1218.91748047 1523.21362305 -106.68000031
		 -1300.44873047 1160.80004883 162.55999756 -1300.44873047 1160.80004883 -401.32000732
		 -1218.91748047 1516.037353516 -111.76000214 -1218.91748047 1160.80004883 -401.32000732
		 -1300.44873047 1516.037353516 -111.76000214;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_6";
	rename -uid "7D0B0A30-42F4-C617-5A3B-1498839C586E";
createNode mesh -n "Model_6Shape" -p "Model_6";
	rename -uid "72E50B43-47A5-C96A-7238-618F25B68606";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[8:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 13.015099525 -0.56959999
		 13.14050007 -1.2062 13.14050007 -0.56959999 13.015099525 -1.2062 -16.76609993 -1.91279995
		 -16.64069939 -2.54929996 -16.64069939 -1.91279995 -16.76609993 -2.54929996 -13.14050007
		 -0.82029998 -13.015099525 2.1875 -13.14050007 2.1875 -13.015099525 -0.82029998 13.015099525
		 -0.33199999 13.14050007 1.69920003 13.015099525 1.69920003 13.14050007 -0.33199999
		 -2.1875 -0.033300001 0.33199999 0.37509999 -1.69920003 0.37509999 0.82029998 -0.033300001
		 -0.82029998 -0.033300001 1.69920003 0.37509999 -0.33199999 0.37509999 2.1875 -0.033300001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1063.9465332 769.68041992 541.020019531 1145.47729492 504.14959717 858.52001953
		 1145.47729492 769.68041992 541.020019531 1063.9465332 504.14959717 858.52001953 1063.9465332 504.14959717 -1097.2800293
		 1145.47729492 769.68041992 -779.7800293 1145.47729492 504.14959717 -1097.2800293
		 1063.9465332 769.68041992 -779.7800293;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_7";
	rename -uid "1E064CEB-49CC-5197-2950-5E86BD1B5A22";
createNode mesh -n "Model_7Shape" -p "Model_7";
	rename -uid "DB64521D-4292-FA70-9A3B-AEADCAE5944F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[8:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 13.015099525 -0.046399999
		 13.14050007 -0.88340002 13.14050007 -0.046399999 13.015099525 -0.88340002 -13.015099525
		 -1.50639999 -13.14050007 -0.66939998 -13.14050007 -1.50639999 -13.015099525 -0.66939998
		 -13.14050007 -0.33199999 -13.015099525 1.69920003 -13.14050007 1.69920003 -13.015099525
		 -0.33199999 13.015099525 0.25 13.14050007 1.11720002 13.015099525 1.11720002 13.14050007
		 0.25 -1.69920003 -0.20299999 -0.25 0.3985 -1.11720002 0.3985 0.33199999 -0.20299999
		 -0.33199999 -0.20299999 1.11720002 0.3985 0.25 0.3985 1.69920003 -0.20299999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1063.9465332 1160.80004883 162.55999756 1145.47729492 769.68041992 541.020019531
		 1145.47729492 1160.80004883 162.55999756 1063.9465332 769.68041992 541.020019531
		 1063.9465332 769.68041992 -779.7800293 1145.47729492 1160.80004883 -401.32000732
		 1145.47729492 769.68041992 -779.7800293 1063.9465332 1160.80004883 -401.32000732;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_8";
	rename -uid "5D4F0D6C-4AFF-BFFF-64C6-74AC82E4F0C7";
createNode mesh -n "Model_8Shape" -p "Model_8";
	rename -uid "4DA3217A-42BC-ABBC-0800-11931BFD8B63";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 1.50890005 -1.012500048
		 -2.50889993 0.2104 -2.50889993 -1.012500048 1.50890005 0.2104 9.46879959 0.78130001
		 9.375 -0.0625 9.46879959 -0.0625 9.375 0.78130001 -9.46879959 0.78130001 -9.375 -0.0625
		 -9.375 0.78130001 -9.46879959 -0.0625 -9.46870041 2.093699932 -9.375 -0.71880001
		 -9.375 2.093699932 -9.46870041 -0.71880001 9.46879959 -0.71880001 9.375 2.093699932
		 9.375 -0.71880001 9.46879959 2.093699932 2.45539999 -0.029999999 -1.5625 1.19280005
		 -1.5625 -0.029999999 2.45539999 1.19280005;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1300.47998047 -40.63999939 792.47998047
		 -1300.47998047 508 -1036.31994629 -1300.47998047 -40.63999939 -1036.31994629 -1300.47998047 508 792.47998047
		 -1239.52001953 508 792.47998047 -1239.52001953 -40.63999939 792.47998047 -1239.52001953 508 -1036.31994629
		 -1239.52001953 -40.63999939 -1036.31994629;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 0 1 0 5 1
		 5 4 1 4 3 1 6 2 1 1 6 1 6 7 1 7 2 1 7 0 1 7 5 1 4 1 1 4 6 1 7 4 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -4 -6
		mu 0 3 4 7 5
		f 3 9 -2 10
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 -3 -13
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -5 -9
		mu 0 3 16 17 18
		f 3 16 -11 -16
		mu 0 3 16 19 17
		f 3 17 -8 -15
		mu 0 3 20 21 22
		f 3 -12 -17 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_9";
	rename -uid "1C82F750-48FF-8FCF-0BE4-C1BC997CA77E";
createNode mesh -n "Model_9Shape" -p "Model_9";
	rename -uid "664A4575-4F0A-1059-F8DB-3EA5B8B4462A";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[8:9]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[10:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -9.375 -0.71880001
		 -9.46870041 2.093699932 -9.46870041 -0.71880001 -9.375 2.093699932 9.46879959 -0.0625
		 9.375 -0.1172 9.46879959 -0.1172 9.375 -0.0625 -9.46879959 -0.0625 -9.375 -0.1172
		 -9.375 -0.0625 -9.46879959 -0.1172 2.093699932 -0.1172 -0.71880001 -0.0625 -0.71880001
		 -0.1172 2.093699932 -0.0625 0.71880001 -0.1172 -2.093800068 -0.0625 -2.093800068
		 -0.1172 0.71880001 -0.0625 9.46879959 -0.71880001 9.375 2.093699932 9.375 -0.71880001
		 9.46879959 2.093699932;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1300.47998047 -40.63999939 792.47998047
		 -1239.52001953 -40.63999939 -1036.31994629 -1239.52001953 -40.63999939 792.47998047
		 -1300.47998047 -40.63999939 -1036.31994629 -1239.52001953 -5.079999924 792.47998047
		 -1300.47998047 -5.079999924 792.47998047 -1239.52001953 -5.079999924 -1036.31994629
		 -1300.47998047 -5.079999924 -1036.31994629;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 0 1 2 4 1
		 4 5 1 5 0 1 6 3 1 3 7 1 7 6 1 6 1 1 1 4 1 6 4 1 0 7 1 5 7 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 -3 6
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -5 -10
		mu 0 3 8 11 9
		f 3 13 -7 -2
		mu 0 3 12 13 14
		f 3 -13 14 -14
		mu 0 3 12 15 13
		f 3 15 -11 -4
		mu 0 3 16 17 18
		f 3 -9 16 -16
		mu 0 3 16 19 17
		f 3 17 -17 -8
		mu 0 3 20 21 22
		f 3 -15 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_10";
	rename -uid "B7B9A263-436B-DB29-8C3D-F9AB5CB1FADF";
createNode mesh -n "Model_10Shape" -p "Model_10";
	rename -uid "6C99D3B3-47B7-3C74-BAD5-8084D791204B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[8:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 13.015099525 0.79570001
		 13.14050007 0.1286 13.14050007 0.79570001 13.015099525 0.1286 -13.015099525 -0.45039999
		 -13.14050007 0.2427 -13.14050007 -0.45039999 -13.015099525 0.2427 -13.14050007 0.2617
		 -13.015099525 1.10549998 -13.14050007 1.10549998 -13.015099525 0.2617 13.015099525
		 0.6523 13.14050007 0.67189997 13.015099525 0.67189997 13.14050007 0.6523 -1.10549998
		 0.4012 -0.6523 0.94199997 -0.67189997 0.94199997 -0.2617 0.4012 0.2617 0.4012 0.67189997
		 0.94199997 0.6523 0.94199997 1.10549998 0.4012;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1063.9465332 1514.2434082 -99.059997559 1145.47729492 1162.59423828 154.94000244
		 1145.47729492 1514.2434082 -99.059997559 1063.9465332 1162.59423828 154.94000244
		 1063.9465332 1162.59423828 -393.70001221 1145.47729492 1514.2434082 -111.76000214
		 1145.47729492 1162.59423828 -393.70001221 1063.9465332 1514.2434082 -111.76000214;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_11";
	rename -uid "FB7C858F-4EC8-5E77-F20D-C399B6885294";
createNode mesh -n "Model_11Shape" -p "Model_11";
	rename -uid "8E52F39E-43D5-6200-D447-1BB54BB582CF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -1.67190003 -5.60690022
		 0.32030001 -5.31020021 -1.67190003 -5.31020021 0.1016 -5.60109997 10.9993 1.15390003
		 10.91289997 1.42970002 10.91289997 1.3908 11.022399902 1.15390003 -10.91289997 0.46919999
		 -10.9993 0.1221 -10.91289997 0.42230001 -11.022399902 0.1221 -0.28909999 1.39450002
		 1.67190003 1.42970002 -0.32030001 1.42970002 1.67190003 1.3908 -10.9993 -1.66499996
		 -11.022399902 0.1085 -11.022399902 -1.66499996 -10.9993 0.1085 1.67190003 -5.23089981
		 -0.289 -4.97469997 -0.1016 -5.22459984 1.67190003 -4.97870016;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  22.17289925 1265.91516113 1300.47973633 -48.9917984 1445.26000977 5.079999924
		 -48.9917984 1445.26000977 1300.47973633 22.17289925 1270 147.32000732 7.19099998 1265.91516113 1300.47973633
		 -48.9917984 1419.96777344 1300.47973633 7.19099998 1270 147.32000732 -48.9917984 1422.40002441 25.39999962;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_12";
	rename -uid "E21B06A5-42B8-3E48-FEF1-3D9B57B2E92F";
createNode mesh -n "Model_12Shape" -p "Model_12";
	rename -uid "C4FFB2DF-4A39-DDD7-6D2F-FAA96967A2DC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -1.67739999 -6.80900002
		 0.095899999 -6.51870012 -1.67760003 -6.52559996 -0.1305 -6.81160021 11.1225996 0.89569998
		 11.022399902 1.15390003 10.9993 1.15390003 11.14550018 0.89859998 -11.022399902 0.059300002
		 -11.1225996 -0.28979999 -10.9993 0.059300002 -11.14550018 -0.28979999 10.9993 0.1085
		 11.022399902 -1.66499996 11.022399902 0.1085 10.9993 -1.66499996 17.77059937 -3.83249998
		 17.74769974 -2.28570008 17.74769974 -3.83249998 17.77059937 -2.28570008 1.67739999
		 -6.74630022 -0.095799997 -6.4533 0.1305 -6.74630022 1.67760003 -6.46029997;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  102.23600006 1099.91088867 1300.47973633
		 22.17219925 1270 147.32000732 22.17219925 1265.91516113 1300.47973633 102.23600006 1097.2800293 294.64001465
		 87.311203 1098.040527344 1300.47973633 7.19000006 1265.91516113 1300.47973633 87.311203 1097.2800293 294.64001465
		 7.19099998 1270 147.32000732;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_13";
	rename -uid "F6D71894-4147-D506-5032-5B9CDCA891C3";
createNode mesh -n "Model_13Shape" -p "Model_13";
	rename -uid "921D8908-4876-39A9-7259-A6AB35C9F94C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -0.1016 9.63589954
		 1.67190003 9.93010044 -0.32030001 9.93010044 1.67190003 9.63010025 -13.90289974 -0.37689999
		 -13.95839977 -0.021400001 -13.96389961 -0.068099998 -13.88020039 -0.37959999 13.77229977
		 1.42970002 13.67730045 1.15390003 13.77229977 1.3908 13.65429974 1.15390003 -1.67190003
		 -0.068700001 0.32030001 -0.0298 -1.67190003 -0.0298 0.28909999 -0.064900003 -10.8178997
		 -0.40709999 -10.79489994 -2.18059993 -10.79489994 -0.40709999 -10.8178997 -2.18059993
		 0.1017 9.35490036 -1.67180002 9.60379982 -1.6717 9.34860039 0.28909999 9.60789967;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -125.75340271 1270 147.32000732 -48.99150085 1445.26000977 1300.47973633
		 -48.99150085 1445.26000977 5.079999924 -125.75340271 1265.91516113 1300.47973633
		 -110.77120209 1270 147.32000732 -48.99150085 1422.40002441 25.39999962 -110.77120209 1265.91516113 1300.47973633
		 -48.99150085 1419.96777344 1300.47973633;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_14";
	rename -uid "9FE90DA5-4B17-69D5-6ACF-5199FB97CAB9";
createNode mesh -n "Model_14Shape" -p "Model_14";
	rename -uid "2B18ABE1-4E9B-5622-09E4-6E8E53EBF6A7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.1185 9.48550034
		 1.66559994 9.77140045 -0.1079 9.77840042 1.66540003 9.48799992 -12.51469994 -0.28979999
		 -12.61480045 0.059300002 -12.63790035 0.059300002 -12.49170017 -0.28979999 12.61480045
		 1.15390003 12.51469994 0.89569998 12.63790035 1.15390003 12.49170017 0.89859998 10.8178997
		 -3.22000003 10.79489994 -1.44659996 10.79489994 -3.22000003 10.8178997 -1.44659996
		 10.49600029 -1.5036 10.44069958 0.0425 10.47319984 -1.50399995 10.46380043 0.043000001
		 -0.1186 9.44419956 -1.66569996 9.73019981 -1.66550004 9.44419956 0.1078 9.73719978;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -205.81719971 1097.2800293 294.64001465 -125.75389862 1265.91516113 1300.47973633
		 -125.75389862 1270 147.32000732 -205.81770325 1099.91088867 1300.47973633 -190.89289856 1097.2800293 294.64001465
		 -110.771698 1270 147.32000732 -190.89289856 1098.040527344 1300.47973633 -110.771698 1265.91516113 1300.47973633;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_15";
	rename -uid "94490F88-43D1-1021-7489-B5916194F035";
createNode mesh -n "Model_15Shape" -p "Model_15";
	rename -uid "80BF4E8C-4E18-2D4D-6402-37B146C0FE85";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.35699999 9.42210007
		 1.67709994 9.69919968 0.1302 9.69509983 1.67729998 9.42500019 -11.20720005 -0.74190003
		 -11.31809998 -0.41589999 -11.34109974 -0.41589999 -11.17790031 -0.74190003 11.31809998
		 0.89810002 11.20720005 0.66250002 11.34109974 0.89569998 11.17790031 0.66250002 10.70499992
		 -4.39720011 10.68200016 -2.85030007 10.68200016 -4.39720011 10.70499992 -2.85030007
		 -10.56060028 -3.055099964 -10.53120041 -4.37540007 -10.53120041 -3.055099964 -10.56060028
		 -4.37540007 -0.35170001 9.30140018 -1.67200005 9.57260036 -1.67209995 9.30370045
		 -0.1251 9.57120037;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -297.17999268 944.88000488 441.95999146 -206.013504028 1099.5994873 1300.47973633
		 -206.013504028 1097.2800293 294.64001465 -297.17999268 946.38970947 1300.47973633
		 -278.094207764 944.88000488 441.95999146 -191.032104492 1097.2800293 294.64001465
		 -278.094207764 946.38970947 1300.47973633 -191.032104492 1098.066650391 1300.47973633;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_16";
	rename -uid "F7BA4B0F-458D-51C1-ABC2-CC926B8D7357";
createNode mesh -n "Model_16Shape" -p "Model_16";
	rename -uid "015AACB6-4AD5-9E33-122A-DA8EDC1A6E8C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -1.66779995 -7.53249979
		 -0.1208 -7.26859999 -1.66770005 -7.26450014 -0.3475 -7.53529978 11.25249958 0.66250002
		 11.14579964 0.89810002 11.12279987 0.89569998 11.27340031 0.66250002 -11.14579964
		 -0.41589999 -11.25249958 -0.74190003 -11.12279987 -0.41589999 -11.27340031 -0.74190003
		 11.27760029 -0.2005 11.3355999 -1.74650002 11.30049992 -0.2 11.31239986 -1.74699998
		 -11.25249958 -1.67439997 -11.27340031 -0.35409999 -11.27340031 -1.67439997 -11.25249958
		 -0.35409999 1.67200005 -7.63829994 0.1251 -7.37279987 0.35170001 -7.6406002 1.67190003
		 -7.37139988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  185.41999817 946.38970947 1300.47973633 102.43309784 1097.2800293 294.64001465
		 102.43309784 1099.5994873 1300.47973633 185.41999817 944.88000488 441.95999146 171.78729248 946.38970947 1300.47973633
		 87.4516983 1098.066650391 1300.47973633 171.78729248 944.88000488 441.95999146 87.4516983 1097.2800293 294.64001465;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_17";
	rename -uid "4639AC47-49C0-3A85-76C0-80B3CB58B473";
createNode mesh -n "Model_17Shape" -p "Model_17";
	rename -uid "97D9ACBE-4C5E-3B4A-CFA7-85A4E5F7E1A1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" -0.60589999 -0.3669
		 -0.39410001 -0.63309997 -0.39410001 -0.3669 -0.60589999 -0.63309997 -0.39410001 -0.63410002
		 -0.60589999 -0.36590001 -0.60589999 -0.63410002 -0.39410001 -0.36590001 -0.8459 -0.39410001
		 -0.1541 -0.60589999 -0.1541 -0.39410001 -0.8459 -0.60589999 -0.2861 -0.60589999 -0.71390003
		 -0.39410001 -0.71390003 -0.60589999 -0.2861 -0.39410001 -0.8459 -0.61610001 -0.2841
		 -0.38389999 -0.71179998 -0.38389999 -0.1541 -0.61610001 -0.28819999 -0.38389999 -0.7159
		 -0.38389999 -0.8459 -0.61610001 -0.8459 -0.61610001 -0.1541 -0.61610001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  87.26399994 1097.42346191 1270.3527832 171.78729248 946.38970947 1132.62841797
		 87.26399994 1097.42346191 1132.62841797 171.78729248 946.38970947 1270.3527832 -278.094207764 946.38970947 1270.3527832
		 -190.84440613 1097.42346191 1132.62841797 -278.094207764 946.38970947 1132.62841797
		 -190.84440613 1097.42346191 1270.3527832;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 22 20 21
		f 3 -12 -7 -18
		mu 0 3 23 24 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_18";
	rename -uid "71AAF5DA-4727-798B-A1C3-E9ADAA02C07F";
createNode mesh -n "Model_18Shape" -p "Model_18";
	rename -uid "C819D4F0-4C0B-8EDD-0D20-3CB4722611BE";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" -0.60589999 -0.3554
		 -0.39410001 -0.64459997 -0.39410001 -0.3554 -0.60589999 -0.64459997 -0.71390003 -0.39410001
		 -0.2861 -0.60589999 -0.2861 -0.39410001 -0.71390003 -0.60589999 -0.41190001 -0.60589999
		 -0.58810002 -0.39410001 -0.58810002 -0.60589999 -0.41190001 -0.39410001 -0.71390003
		 -0.63020003 -0.41190001 -0.3698 -0.58810002 -0.3698 -0.2861 -0.63020003 -0.39410001
		 -0.64459997 -0.60589999 -0.3554 -0.60589999 -0.64459997 -0.39410001 -0.64459997 -0.39410001
		 -0.3554 -0.60589999 -0.3554 -0.71390003 -0.63020003 -0.41190001 -0.3698 -0.58810002
		 -0.3698 -0.71390003 -0.63020003 -0.2861 -0.63020003 -0.41190001 -0.3698;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  5.46759987 1266.76501465 1270.3527832 87.2641983 1097.42382813 1132.62841797
		 5.46759987 1266.76501465 1132.62841797 87.2641983 1097.42382813 1270.3527832 -190.84440613 1097.42382813 1270.3527832
		 -109.047996521 1266.76501465 1132.62841797 -190.84440613 1097.42382813 1132.62841797
		 -109.047996521 1266.76501465 1270.3527832;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 16 17 18
		f 3 8 9 -6
		mu 0 3 19 20 21
		f 3 10 -8 11
		mu 0 3 4 5 6
		f 3 -5 12 -11
		mu 0 3 4 7 5
		f 3 13 -10 14
		mu 0 3 8 9 10
		f 3 -3 15 -14
		mu 0 3 8 11 9
		f 3 16 -15 -9
		mu 0 3 12 13 14
		f 3 -13 -4 -17
		mu 0 3 12 15 13
		f 3 17 -16 -2
		mu 0 3 22 23 24
		f 3 -12 -7 -18
		mu 0 3 25 26 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_19";
	rename -uid "5A50C7ED-4794-CC60-E79F-2ABA85E12AAC";
createNode mesh -n "Model_19Shape" -p "Model_19";
	rename -uid "D1610F0B-4841-A2CD-7941-80A03D41A0C5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" -0.60589999 -0.37650001
		 -0.39410001 -0.62349999 -0.39410001 -0.37650001 -0.60589999 -0.62349999 -0.39410001
		 -0.61690003 -0.60589999 -0.3831 -0.60589999 -0.61690003 -0.39410001 -0.3831 -0.58810002
		 -0.39410001 -0.41190001 -0.60589999 -0.41190001 -0.39410001 -0.58810002 -0.60589999
		 -0.39410001 -0.49180001 -0.60589999 -0.50819999 -0.39410001 -0.50819999 -0.60589999
		 -0.49180001 -0.58810002 -0.61610001 -0.49579999 -0.38389999 -0.50419998 -0.39789999
		 -0.41190001 -0.61610001 -0.49579999 -0.39789999 -0.50419998 -0.38389999 -0.58810002
		 -0.61610001 -0.58810002 -0.61610001 -0.41190001 -0.61610001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -49.063400269 1417.79907227 1270.3527832
		 5.46759987 1266.76501465 1132.62841797 -49.063400269 1417.79907227 1132.62841797
		 5.46759987 1266.76501465 1270.3527832 -109.047996521 1266.76501465 1270.3527832 -54.51679993 1408.64562988 1132.62841797
		 -109.047996521 1266.76501465 1132.62841797 -54.51679993 1408.64562988 1270.3527832;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 22 20 21
		f 3 -12 -7 -18
		mu 0 3 23 24 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_20";
	rename -uid "521295AB-4A3D-7F2C-8CFF-5A8C83A30185";
createNode mesh -n "Model_20Shape" -p "Model_20";
	rename -uid "75984B44-45F5-276C-91FE-3985F45A8702";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -13.125 0.78130001
		 -9.375 -0.0625 -9.375 0.78130001 -13.125 -0.0625 -13.125 2.093800068 -9.375 2.1875
		 -13.125 2.1875 -9.375 2.093699932 -2.093800068 0.78130001 -2.1875 -0.0625 -2.093800068
		 -0.0625 -2.1875 0.78130001 2.093800068 0.78130001 2.1875 -0.0625 2.1875 0.78130001
		 2.093800068 -0.0625 9.375 2.093699932 13.125 2.1875 9.375 2.1875 13.125 2.093699932
		 1.5 -1.04369998 -3.85710001 0.17910001 -3.85710001 -1.04369998 1.5 0.17910001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1137.91992188 508 -1097.2800293 -1300.47998047 -40.63999939 -1097.2800293
		 -1300.47998047 508 -1097.2800293 1137.91992188 -40.63999939 -1097.2800293 1137.91992188 -40.63999939 -1036.31994629
		 -1300.47998047 -40.63999939 -1036.31994629 -1300.47998047 508 -1036.31994629 1137.91992188 508 -1036.31994629;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 3 4 1
		 4 5 1 5 1 1 6 1 1 5 6 1 6 2 1 7 3 1 0 7 1 7 4 1 6 0 1 6 7 1 4 6 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 -5 6
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 -9 10
		mu 0 3 8 9 10
		f 3 11 -2 -10
		mu 0 3 8 11 9
		f 3 12 -4 13
		mu 0 3 12 13 14
		f 3 14 -7 -13
		mu 0 3 12 15 13
		f 3 15 -3 -12
		mu 0 3 16 17 18
		f 3 16 -14 -16
		mu 0 3 16 19 17
		f 3 17 -11 -8
		mu 0 3 20 21 22
		f 3 -15 -17 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_21";
	rename -uid "64EC299B-4CFB-64D6-8764-A7AEFD5AA038";
createNode mesh -n "Model_21Shape" -p "Model_21";
	rename -uid "30AD820D-48C7-0BED-5874-3C9DF04D43E0";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[2:7]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[8:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -0.0046999999 0.0276
		 -0.99529999 -1.02760005 -0.0046999999 -1.02760005 -0.99529999 0.0276 1.26559997 22.20829964
		 1.95899999 22.13629913 1.95899999 22.20829964 1.26559997 22.13629913 -21.20829964
		 0.47960001 -21.13629913 -0.2485 -21.13629913 0.47960001 -21.20829964 -0.2485 22.13629913
		 0.47960001 22.20829964 -0.2485 22.20829964 0.47960001 22.13629913 -0.2485 -0.95899999
		 22.20829964 -0.2656 22.13629913 -0.2656 22.20829964 -0.95899999 22.13629913 1.95899999
		 -0.2485 1.26559997 0.47960001 1.26559997 -0.2485 1.95899999 0.47960001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  173.67449951 948.42358398 1266.048950195
		 -277.25469971 474.98001099 1266.048950195 173.67449951 474.98001099 1266.048950195
		 -277.25469971 948.42358398 1266.048950195 173.67449951 474.98001099 1219.19995117
		 -277.25469971 474.98001099 1219.19995117 -277.25469971 948.42358398 1219.19995117
		 173.67449951 948.42358398 1219.19995117;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 1 5 1
		 5 4 1 4 2 1 6 1 1 3 6 1 6 5 1 0 4 1 4 7 1 7 0 1 6 0 1 7 6 1 5 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -2 -6
		mu 0 3 4 7 5
		f 3 9 -5 10
		mu 0 3 8 9 10
		f 3 11 -7 -10
		mu 0 3 8 11 9
		f 3 12 13 14
		mu 0 3 12 13 14
		f 3 -3 -9 -13
		mu 0 3 12 15 13
		f 3 15 -15 16
		mu 0 3 16 17 18
		f 3 -11 -4 -16
		mu 0 3 16 19 17
		f 3 17 -14 -8
		mu 0 3 20 21 22
		f 3 -12 -17 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_22";
	rename -uid "A1F14AEA-4A04-367A-CCEA-A3AD6FB6A69D";
createNode mesh -n "Model_22Shape" -p "Model_22";
	rename -uid "7795A53F-4651-E3A1-670A-AA8CB210D6AF";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[2:9]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[10:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.1176 -0.099799998
		 -1.60119998 -0.99479997 -1.043200016 -0.99970001 -1.60119998 -0.092399999 10.61330032
		 0.66600001 11.2553997 -0.0469 11.2553997 0.66600001 10.61330032 -0.0469 -10.61330032
		 -1.98580003 -11.2553997 -0.90609998 -11.2553997 -1.98580003 -10.61330032 -0.90609998
		 10.61330032 -0.35080001 11.2553997 -1.5539 11.2553997 -0.35080001 10.61330032 -1.5539
		 1.54690003 -0.0469 0.34380001 0.6602 1.15629995 -0.050799999 1.54690003 0.66600001
		 -10.61330032 -1.16359997 -11.2553997 -1.55420005 -10.61330032 -1.55420005 -11.2553997
		 -1.16359997;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  173.67430115 944.88000488 436.88000488 173.67430115 485.14001465 1219.19995117
		 173.67430115 482.6000061 965.20001221 173.67430115 948.67797852 1219.19995117 -243.83999634 948.67797852 1219.19995117
		 -243.83999634 485.14001465 1219.19995117 -243.83999634 482.6000061 965.20001221 -243.83999634 944.88000488 436.88000488;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 3 4 1
		 4 5 1 5 1 1 6 0 1 2 6 1 6 7 1 7 0 1 7 3 1 7 4 1 5 7 1 6 5 1 6 1 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 -5 6
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 -3 10
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 -4 -13
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -12 16
		mu 0 3 16 17 18
		f 3 -8 -15 -16
		mu 0 3 16 19 17
		f 3 17 -9 -17
		mu 0 3 20 21 22
		f 3 -11 -2 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_23";
	rename -uid "D41E3E44-4694-80E7-D0DF-599B3D0DE33F";
createNode mesh -n "Model_23Shape" -p "Model_23";
	rename -uid "F41724BA-4D03-73CA-62BC-7C8A2ACC4210";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.5898 -1.018000007
		 -1.1178 0.0123 0.054000001 -1.040599942 0.5898 0.017999999 10.61219978 0.66409999
		 10.56190014 -0.050799999 10.61219978 -0.050799999 10.56190014 0.66409999 -10.61219978
		 -0.89969999 -10.56190014 -1.99559999 -10.56190014 -0.89969999 -10.61219978 -1.99559999
		 -10.61219978 -1.20019996 -10.56190014 -1.57550001 -10.56190014 -1.20019996 -10.61219978
		 -1.57550001 10.61219978 -1.55159998 10.56190014 -0.3563 10.56190014 -1.55159998 10.61219978
		 -0.3563 -1.17190003 -0.066399999 -1.54690003 0.66409999 -1.54690003 -0.050799999
		 -0.35159999 0.6602;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -277.25469971 482.6000061 1219.19995117 -277.25469971 944.88000488 441.95999146
		 -277.25469971 472.44000244 975.35998535 -277.25469971 947.41998291 1219.19995117
		 -244.53599548 947.41998291 1219.19995117 -244.53599548 482.6000061 1219.19995117
		 -244.53599548 944.88000488 441.95999146 -244.53599548 472.44000244 975.35998535;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 0 1 0 5 1
		 5 4 1 4 3 1 6 2 1 1 6 1 6 7 1 7 2 1 7 0 1 7 5 1 4 1 1 4 6 1 7 4 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -4 -6
		mu 0 3 4 7 5
		f 3 9 -2 10
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 -3 -13
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -5 -9
		mu 0 3 16 17 18
		f 3 16 -11 -16
		mu 0 3 16 19 17
		f 3 17 -8 -15
		mu 0 3 20 21 22
		f 3 -12 -17 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_24";
	rename -uid "873FB49D-4A84-5E72-A5D1-4C97B31DF71B";
createNode mesh -n "Model_24Shape" -p "Model_24";
	rename -uid "B43EDD08-4A9E-F63F-ACD3-6CA6329257EC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -1.67190003 -6.0062999725
		 -0.73049998 -5.83650017 -1.67190003 -5.83650017 -0.86330003 -6.0037999153 10.99839973
		 0.76300001 10.95110035 0.92189997 10.95110035 0.89950001 11.01099968 0.76300001 -10.95110035
		 -0.2089 -10.99839973 -0.41389999 -10.95110035 -0.2394 -11.01099968 -0.41389999 0.75
		 0.89840001 1.67190003 0.92189997 0.73049998 0.92189997 1.67190003 0.89950001 -10.99839973
		 -1.66639996 -11.01099968 -0.85780001 -11.01099968 -1.66639996 -10.99839973 -0.85780001
		 1.67130005 -5.61560011 0.74940002 -5.47230005 0.86269999 -5.61320019 1.67130005 -5.47119999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -869.13641357 1103.21240234 812.79998779
		 -908.089599609 1206.5 200.66000366 -908.089599609 1206.5 812.79998779 -869.13641357 1104.90002441 287.019989014
		 -877.3369751 1103.21240234 812.79998779 -908.089599609 1191.93383789 812.79998779
		 -877.3369751 1104.90002441 287.019989014 -908.089599609 1191.26000977 213.36000061;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_25";
	rename -uid "049DECC7-4F68-3614-4393-3D83373C0D0D";
createNode mesh -n "Model_25Shape" -p "Model_25";
	rename -uid "955E664F-4333-77E4-3B0B-C18F8BA24CAC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -1.67879999 -7.053800106
		 -0.87029999 -6.88920021 -1.6789 -6.8920002 -1.018700004 -7.052299976 11.065899849
		 0.61430001 11.01099968 0.76300001 10.99839973 0.76300001 11.078399658 0.616 -11.01099968
		 -0.57450002 -11.065899849 -0.78439999 -10.99839973 -0.57450002 -11.078399658 -0.78439999
		 10.99839973 -0.85780001 11.01099968 -1.66639996 11.01099968 -0.85780001 10.99839973
		 -1.66639996 20.51779938 -2.32529998 20.50519943 -1.6652 20.50519943 -2.32529998 20.51779938
		 -1.6652 1.6789 -6.98950005 0.87040001 -6.82340002 1.018700004 -6.98649979 1.67900002
		 -6.82620001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -825.31201172 1007.60778809 812.79998779
		 -869.13671875 1104.90002441 287.019989014 -869.13671875 1103.21240234 812.79998779
		 -825.31201172 1008.38000488 383.54000854 -833.48138428 1006.53057861 812.79998779
		 -877.33728027 1103.21240234 812.79998779 -833.48138428 1008.38000488 383.54000854
		 -877.33691406 1104.90002441 287.019989014;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_26";
	rename -uid "5847E79D-4298-3BC7-DA89-8B867D708F43";
createNode mesh -n "Model_26Shape" -p "Model_26";
	rename -uid "E76BA207-468C-C68F-AD6E-99A43971DDBB";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.86330003 9.37979984
		 1.67190003 9.54889965 0.73049998 9.54889965 1.67190003 9.3774004 -13.71450043 -0.26199999
		 -13.77180004 -0.058400001 -13.77099991 -0.0889 -13.70189953 -0.2617 13.81050014 0.92189997
		 13.7585001 0.76300001 13.81050014 0.89950001 13.74590015 0.76300001 -1.67190003 -0.56
		 -0.73049998 -0.53759998 -1.67190003 -0.53759998 -0.75 -0.56099999 -10.8991003 -1.37339997
		 -10.88650036 -2.18199992 -10.88650036 -1.37339997 -10.8991003 -2.18199992 -0.86390001
		 9.086099625 -1.67250001 9.22980022 -1.67250001 9.083800316 -0.75059998 9.22869968;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -950.10662842 1104.90002441 287.019989014
		 -908.089416504 1206.5 812.79998779 -908.089416504 1206.5 200.66000366 -950.10662842 1103.21240234 812.79998779
		 -941.90570068 1104.90002441 287.019989014 -908.089416504 1191.26000977 213.36000061
		 -941.90570068 1103.21240234 812.79998779 -908.089416504 1191.93383789 812.79998779;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_27";
	rename -uid "6E8648F9-40BB-4EC8-0F0F-80A5CE2871A4";
createNode mesh -n "Model_27Shape" -p "Model_27";
	rename -uid "B0D13507-4219-28B9-4366-31AEF4C1327E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 1.0042999983 9.37639999
		 1.66460001 9.53660011 0.85600001 9.53950024 1.6645 9.37489986 -12.65159988 -0.78439999
		 -12.70639992 -0.57450002 -12.7191 -0.57450002 -12.63899994 -0.78439999 12.70639992
		 0.76300001 12.65159988 0.61430001 12.7191 0.76300001 12.63899994 0.616 10.8991003
		 -3.22149992 10.88650036 -2.41289997 10.88650036 -3.22149992 10.8991003 -2.41289997
		 10.70110035 -0.4691 10.69769955 0.1912 10.68859959 -0.4689 10.71039963 0.191 -1.0044000149
		 9.32890034 -1.66470003 9.48910046 -1.66460001 9.32590008 -0.85610002 9.49199963;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -993.9307251 1008.38000488 383.54000854 -950.10662842 1103.21240234 812.79998779
		 -950.10662842 1104.90002441 287.019989014 -993.93121338 1007.60778809 812.79998779
		 -985.76177979 1008.38000488 383.54000854 -941.90588379 1104.90002441 287.019989014
		 -985.76177979 1006.53057861 812.79998779 -941.90588379 1103.21240234 812.79998779;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_28";
	rename -uid "6A86B30C-4D10-26E6-AD36-69872DEA07EE";
createNode mesh -n "Model_28Shape" -p "Model_28";
	rename -uid "4A6E5428-45E5-202B-7FE2-2EA8508B3763";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 1.14979994 9.45740032
		 1.66559994 9.61590004 1.0053999424 9.61760044 1.66550004 9.46010017 -11.4048996 -1.014099956
		 -11.46560001 -0.81239998 -11.47819996 -0.81239998 -11.38879967 -1.014099956 11.46560001
		 0.61570001 11.4048996 0.47999999 11.47819996 0.61440003 11.38879967 0.47999999 10.84770012
		 -4.38990021 10.83510017 -3.72970009 10.83510017 -4.38990021 10.84770012 -3.72970009
		 -10.75829983 -3.86660004 -10.7421999 -4.3822999 -10.7421999 -3.86660004 -10.75829983
		 -4.3822999 -1.1444 9.32310009 -1.6602 9.47859955 -1.65999997 9.32559967 -1 9.48180008;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1043.93994141 916.94000244 477.51998901
		 -994.038085938 1007.42852783 812.79998779 -994.038085938 1008.38000488 383.54000854
		 -1043.93994141 919.19250488 812.79998779 -1033.49291992 916.94000244 477.51998901
		 -985.83752441 1008.38000488 383.54000854 -1033.49291992 919.19250488 812.79998779
		 -985.83752441 1006.54559326 812.79998779;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_29";
	rename -uid "C3BDBC24-4B82-3DEA-4E9A-EDA852185AFA";
createNode mesh -n "Model_29Shape" -p "Model_29";
	rename -uid "1BF08942-4EF1-4B9B-BEF6-8F8864B4F982";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -1.67709994 -7.72980022
		 -1.01699996 -7.57550001 -1.67709994 -7.57719994 -1.16139996 -7.73260021 11.13700008
		 0.47999999 11.07859993 0.61570001 11.065999985 0.61440003 11.14840031 0.47999999
		 -11.07859993 -0.81239998 -11.13700008 -1.014099956 -11.065999985 -0.81239998 -11.14840031
		 -1.014099956 11.14929962 -0.91299999 11.14820004 -1.5733 11.16189957 -0.91320002
		 11.13549995 -1.57299995 -11.13700008 -1.68130004 -11.14840031 -1.16569996 -11.14840031
		 -1.68130004 -11.13700008 -1.16569996 1.68210006 -7.8421998 1.022099972 -7.68709993
		 1.16649997 -7.8448 1.68219995 -7.69029999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -779.7800293 919.19250488 812.79998779 -825.20410156 1008.38000488 383.54000854
		 -825.20410156 1007.42852783 812.79998779 -779.7800293 916.94000244 477.51998901 -787.2421875 919.19250488 812.79998779
		 -833.40472412 1006.54559326 812.79998779 -787.2421875 916.94000244 477.51998901 -833.40472412 1008.38000488 383.54000854;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_30";
	rename -uid "4F12975C-4CE7-BD53-E102-FBA967268AA4";
createNode mesh -n "Model_30Shape" -p "Model_30";
	rename -uid "BFED2E4A-4585-EEC2-AB1E-AB956E973551";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[10:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -1.6099 -8.78059959
		 -1.39810002 -8.9321003 -1.39810002 -8.78059959 -1.6099 -8.9321003 1.6099 7.80959988
		 1.39810002 7.96220016 1.39810002 7.80959988 1.6099 7.96220016 -11.15260029 -1.41369998
		 -10.77390003 -1.62549996 -10.77390003 -1.41369998 -11.15260029 -1.62549996 11.081399918
		 -1.62549996 10.84729958 -1.41369998 10.84729958 -1.62549996 11.081399918 -1.41369998
		 -11.13700008 -0.64499998 -10.83170033 -0.51120001 -11.065799713 -0.51120001 -10.75829983
		 -0.64499998 -0.68940002 -0.56690001 -0.3818 -0.43309999 -0.61589998 -0.43309999 -0.31060001
		 -0.56690001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -833.50762939 1006.17547607 782.67272949
		 -787.24249268 919.19250488 644.94842529 -833.50762939 1006.17547607 644.94842529
		 -787.24249268 919.19250488 782.67272949 -1033.49291992 919.19250488 782.67272949
		 -985.7354126 1006.17547607 644.94842529 -1033.49291992 919.19250488 644.94842529
		 -985.7354126 1006.17547607 782.67272949;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 1 5 1 4 0 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -16 -2
		mu 0 3 16 17 18
		f 3 -12 -7 -17
		mu 0 3 16 19 17
		f 3 17 -15 -9
		mu 0 3 20 21 22
		f 3 -13 -4 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_31";
	rename -uid "947A9D23-4F71-653F-40DD-D58E94823D3F";
createNode mesh -n "Model_31Shape" -p "Model_31";
	rename -uid "7BDBC4EE-4A7B-753A-F045-8C97A313BEEC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[10:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -1.6099 -8.44900036
		 -1.39810002 -8.61400032 -1.39810002 -8.44900036 -1.6099 -8.61400032 1.6099 6.78429985
		 1.39810002 6.94929981 1.39810002 6.78429985 1.6099 6.94929981 -11.081399918 -1.41369998
		 -10.84729958 -1.62549996 -10.84729958 -1.41369998 -11.081399918 -1.62549996 11.012599945
		 -1.62549996 10.91619968 -1.41369998 10.91619968 -1.62549996 11.012599945 -1.41369998
		 -11.065799713 -1.089300036 -10.90060043 -0.9393 -10.99699974 -0.9393 -10.83170033
		 -1.089300036 -0.6171 -0.57499999 -0.45179999 -0.42500001 -0.54820001 -0.42500001
		 -0.3829 -0.57499999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -878.28057861 1103.70178223 782.67272949
		 -833.50762939 1006.17547607 644.94842529 -878.28057861 1103.70178223 644.94842529
		 -833.50762939 1006.17547607 782.67272949 -985.73510742 1006.17547607 782.67272949
		 -940.96228027 1103.70178223 644.94842529 -985.73510742 1006.17547607 644.94842529
		 -940.96228027 1103.70178223 782.67272949;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 1 5 1 4 0 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -16 -2
		mu 0 3 16 17 18
		f 3 -12 -7 -17
		mu 0 3 16 19 17
		f 3 17 -15 -9
		mu 0 3 20 21 22
		f 3 -13 -4 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_32";
	rename -uid "CE425463-4CE3-6AEF-C848-7E8152491B91";
createNode mesh -n "Model_32Shape" -p "Model_32";
	rename -uid "334AA279-44FC-23EA-00CB-FEBD5A3D8483";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[10:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -1.6099 -7.027900219
		 -1.39810002 -7.16930008 -1.39810002 -7.027900219 -1.6099 -7.16930008 1.6099 5.9295001
		 1.39810002 6.063300133 1.39810002 5.9295001 1.6099 6.063300133 -11.012599945 -1.41369998
		 -10.91619968 -1.62549996 -10.91619968 -1.41369998 -11.012599945 -1.62549996 1.64119995
		 9.51060009 1.42939997 9.50119972 1.64119995 9.50119972 1.42939997 9.51060009 -10.99699974
		 -0.9393 -10.94649982 -0.81370002 -10.95100021 -0.80559999 -10.90060043 -0.9393 -0.54820001
		 -0.56690001 -0.49770001 -0.43309999 -0.50230002 -0.44119999 -0.45179999 -0.56690001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -908.12902832 1190.68493652 782.67272949
		 -878.28039551 1103.70178223 644.94842529 -908.12902832 1190.68493652 644.94842529
		 -878.28039551 1103.70178223 782.67272949 -940.96228027 1103.70178223 782.67272949
		 -911.11401367 1185.41308594 644.94842529 -940.96228027 1103.70178223 644.94842529
		 -911.11401367 1185.41308594 782.67272949;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 1 5 1 4 0 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -16 -2
		mu 0 3 16 17 18
		f 3 -12 -7 -17
		mu 0 3 16 19 17
		f 3 17 -15 -9
		mu 0 3 20 21 22
		f 3 -13 -4 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_33";
	rename -uid "20F9AA67-4980-974D-BEA5-29BCD169A4FD";
createNode mesh -n "Model_33Shape" -p "Model_33";
	rename -uid "EF73E518-4926-75EE-DA0E-F88AEC5E9BBB";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[2:7]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[8:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 1 1 0 0 1 0 0 1 -0.68980002
		 -0.4874 -0.31020001 -0.5126 -0.31020001 -0.4874 -0.68980002 -0.5126 -2.078099966
		 0.32550001 -2.052999973 -0.093800001 -2.052999973 0.32550001 -2.078099966 -0.093800001
		 2.052999973 0.32550001 2.078099966 -0.093800001 2.078099966 0.32550001 2.052999973
		 -0.093800001 0.083700001 -3.66669989 0.3775 -3.93519998 0.3775 -3.66669989 0.083700001
		 -3.93519998 0.9163 0.1547 0.6225 0.6735 0.6225 0.1547 0.9163 0.6735;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -786.20898438 920.3638916 778.36901855 -1033.033691406 647.70001221 778.36901855
		 -786.20898438 647.70001221 778.36901855 -1033.033691406 920.3638916 778.36901855
		 -786.20898438 647.70001221 762 -1033.033691406 647.70001221 762 -1033.033691406 920.3638916 762
		 -786.20898438 920.3638916 762;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 1 5 1
		 5 4 1 4 2 1 6 1 1 3 6 1 6 5 1 0 4 1 4 7 1 7 0 1 6 0 1 7 6 1 5 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -2 -6
		mu 0 3 4 7 5
		f 3 9 -5 10
		mu 0 3 8 9 10
		f 3 11 -7 -10
		mu 0 3 8 11 9
		f 3 12 13 14
		mu 0 3 12 13 14
		f 3 -3 -9 -13
		mu 0 3 12 15 13
		f 3 15 -15 16
		mu 0 3 16 17 18
		f 3 -11 -4 -16
		mu 0 3 16 19 17
		f 3 17 -14 -8
		mu 0 3 20 21 22
		f 3 -12 -17 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_34";
	rename -uid "C6F6FF4A-4866-2860-D69D-808D2CF7291B";
createNode mesh -n "Model_34Shape" -p "Model_34";
	rename -uid "56448479-4AC1-1325-979C-0A836FE8A766";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.61089998 0.99620003
		 0 0 0.0109 0 0 1 1 0 1 1 1 -3.98900008 0 -2.56019998 0 -3.98900008 1 -2.56019998
		 1 0.0109 0 0 0 0.0109 0 0.6038 1 -0.0071 1 0.6038 0 -0.0071 0.38909999 0.99620003
		 0.98909998 0 0 1 0 1 0 0 1 0 1 0 1 0 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -786.20898438 919.47998047 477.51998901 -786.20898438 647.70001221 762
		 -786.20898438 647.70001221 756.91998291 -786.20898438 920.51031494 762 -804.11877441 920.51031494 762
		 -804.11877441 647.70001221 762 -804.11877441 647.70001221 756.91998291 -804.11877441 919.47998047 477.51998901;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 3 4 1
		 4 5 1 5 1 1 6 0 1 2 6 1 6 7 1 7 0 1 6 1 1 5 6 1 7 3 1 7 4 1 5 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 -5 6
		mu 0 3 19 4 5
		f 3 7 8 -6
		mu 0 3 20 21 4
		f 3 9 -3 10
		mu 0 3 6 7 8
		f 3 11 12 -10
		mu 0 3 6 9 7
		f 3 13 -9 14
		mu 0 3 10 11 22
		f 3 -11 -2 -14
		mu 0 3 10 12 11
		f 3 15 -4 -13
		mu 0 3 13 14 15
		f 3 16 -7 -16
		mu 0 3 13 16 14
		f 3 17 -12 -15
		mu 0 3 23 17 18
		f 3 -8 -17 -18
		mu 0 3 24 25 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_35";
	rename -uid "EB73CC67-463E-EAE0-8613-D589D80727CC";
createNode mesh -n "Model_35Shape" -p "Model_35";
	rename -uid "EBEF70D6-47DC-277C-B36B-31868A7594E4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:10]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 1 0 0.4075 0.99070001
		 1 -0.0093 1 1 10.78649998 0.48050001 10.75899982 0.0625 10.78649998 0.0625 10.75899982
		 0.48050001 -10.78649998 -1.02639997 -10.75899982 -1.62870002 -10.75899982 -1.02639997
		 -10.78649998 -1.62870002 -20.90880013 1.30470002 -20.93630028 1.30859995 -20.93630028
		 1.30470002 -20.90880013 1.30859995 10.78649998 -1.62199998 10.75899982 -1.18840003
		 10.75899982 -1.62199998 10.78649998 -1.18840003 -1.60940003 0.058600001 -1.17579997
		 0.47659999 -1.60940003 0.48050001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1033.033691406 647.70001221 762 -1033.033691406 916.94000244 480.059997559
		 -1033.033691406 645.15997314 762 -1033.033691406 919.47998047 762 -1015.12420654 919.47998047 762
		 -1015.12420654 647.70001221 762 -1015.12420654 916.94000244 480.059997559 -1015.12420654 645.15997314 762;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 0 1 0 5 1
		 5 4 0 4 3 1 6 2 1 1 6 1 6 7 1 7 2 1 7 0 1 7 5 0 4 1 1 4 6 1 4 7 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 11 -ch 33 ".fc[0:10]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -4 -6
		mu 0 3 4 7 5
		f 3 9 -2 10
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 -3 -13
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -5 -9
		mu 0 3 16 17 18
		f 3 16 -11 -16
		mu 0 3 16 19 17
		f 3 -12 -17 17
		mu 0 3 20 21 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_36";
	rename -uid "227D8108-496E-5A50-45ED-6C9D8A4BD1C8";
createNode mesh -n "Model_36Shape" -p "Model_36";
	rename -uid "0DCFF483-4C7C-50C7-6D9C-049B86CA9C47";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 1.50890005 -1.033900023
		 -2.50889993 0.18889999 -2.50889993 -1.033900023 1.50890005 0.18889999 13.1171999
		 0.78130001 13.054699898 -0.0625 13.1171999 -0.0625 13.054699898 0.78130001 -13.1171999
		 0.78130001 -13.054699898 -0.0625 -13.054699898 0.78130001 -13.1171999 -0.0625 -13.1171999
		 2.093800068 -13.054699898 -0.71880001 -13.054699898 2.093800068 -13.1171999 -0.71880001
		 13.1171999 -0.71880001 13.054699898 2.093699932 13.054699898 -0.71880001 13.1171999
		 2.093699932 1.50890005 -0.99680001 -2.50889993 0.226 -2.50889993 -0.99680001 1.50890005
		 0.226;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1092.19995117 -40.63999939 792.47998047 1092.19995117 508 -1036.31994629
		 1092.19995117 -40.63999939 -1036.31994629 1092.19995117 508 792.47998047 1132.83996582 508 792.47998047
		 1132.83996582 -40.63999939 792.47998047 1132.83996582 508 -1036.31994629 1132.83996582 -40.63999939 -1036.31994629;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 0 1 0 5 1
		 5 4 1 4 3 1 6 2 1 1 6 1 6 7 1 7 2 1 7 0 1 7 5 1 4 1 1 4 6 1 7 4 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -4 -6
		mu 0 3 4 7 5
		f 3 9 -2 10
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 -3 -13
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -5 -9
		mu 0 3 16 17 18
		f 3 16 -11 -16
		mu 0 3 16 19 17
		f 3 17 -8 -15
		mu 0 3 20 21 22
		f 3 -12 -17 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_37";
	rename -uid "85178F5D-476F-9CFA-F973-7082A9C83DB5";
createNode mesh -n "Model_37Shape" -p "Model_37";
	rename -uid "9CAB21ED-4A68-BC55-33A4-22ADB6400D3E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -3.9381001 1.77339995
		 -3.88779998 1.75779998 -3.88779998 1.77339995 -3.9381001 1.75779998 3.9381001 1.75779998
		 3.88779998 1.77339995 3.88779998 1.75779998 3.9381001 1.77339995 3.88779998 -1.70309997
		 3.9381001 -1.69529998 3.88779998 -1.69529998 3.9381001 -1.70309997 -3.9381001 -1.70309997
		 -3.88779998 -1.69529998 -3.9381001 -1.69529998 -3.88779998 -1.70309997 1.69529998
		 1.75779998 1.70309997 1.77339995 1.69529998 1.77339995 1.70309997 1.75779998 -1.70309997
		 1.75779998 -1.69529998 1.77339995 -1.70309997 1.77339995 -1.69529998 1.75779998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -284.87469482 1153.16003418 619.76000977
		 -252.15600586 1143 619.76000977 -252.15600586 1153.16003418 619.76000977 -284.87469482 1143 619.76000977
		 -284.87469482 1143 614.67999268 -252.15600586 1153.16003418 614.67999268 -252.15600586 1143 614.67999268
		 -284.87469482 1153.16003418 614.67999268;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_38";
	rename -uid "101E0377-4F34-8363-025E-B5B12E2719BB";
	setAttr ".t" -type "double3" -438.01090395726447 0 2.2526068549343563 ;
createNode mesh -n "Model_38Shape" -p "Model_38";
	rename -uid "2E65DEE1-4FDF-E5EE-A723-9380CA7E4DB9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[4:11]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.2045 0.80699998
		 0.7841 0.25229999 0.7841 0.80699998 0.2045 0.25229999 0.79549998 0.25229999 0.2159
		 0.80699998 0.2159 0.25229999 0.79549998 0.80699998 -7.11469984 130.92190552 -6.91550016
		 130.9375 -7.11469984 130.9375 -6.91550016 130.92190552 7.91550016 130.92190552 8.11470032
		 130.9375 7.91550016 130.9375 8.11470032 130.92190552 -129.9375 -0.14560001 -129.92190552
		 0.1015 -129.9375 0.1015 -129.92190552 -0.14560001 130.92190552 -0.14560001 130.9375
		 0.1015 130.92190552 0.1015 130.9375 -0.14560001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -350.51998901 327.66000366 863.59997559 -220.97999573 167.022293091 863.59997559
		 -220.97999573 327.66000366 863.59997559 -350.51998901 167.022293091 863.59997559
		 -350.51998901 167.022293091 853.44000244 -220.97999573 327.66000366 853.44000244
		 -220.97999573 167.022293091 853.44000244 -350.51998901 327.66000366 853.44000244;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_39";
	rename -uid "8FB8EBE8-4EE5-28E2-2939-C593EACA8167";
createNode mesh -n "Model_39Shape" -p "Model_39";
	rename -uid "177DF2A7-4B82-203E-FE79-AB9CABD467C2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[4:11]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.2045 0.80919999
		 0.7841 0.25440001 0.7841 0.80919999 0.2045 0.25440001 0.79549998 0.25440001 0.2159
		 0.80919999 0.2159 0.25440001 0.79549998 0.80919999 -5.76490021 130.92190552 -5.56570005
		 130.9375 -5.76490021 130.9375 -5.56570005 130.92190552 6.56570005 130.92190552 6.76490021
		 130.9375 6.56570005 130.9375 6.76490021 130.92190552 -129.9375 -0.1349 -129.92190552
		 0.1122 -129.9375 0.1122 -129.92190552 -0.1349 130.92190552 -0.1349 130.9375 0.1122
		 130.92190552 0.1122 130.9375 -0.1349;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  109.22000122 323.19769287 863.59997559 238.75999451 162.55999756 863.59997559
		 238.75999451 323.19769287 863.59997559 109.22000122 162.55999756 863.59997559 109.22000122 162.55999756 853.44000244
		 238.75999451 323.19769287 853.44000244 238.75999451 162.55999756 853.44000244 109.22000122 323.19769287 853.44000244;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_40";
	rename -uid "AAA6CDC4-4CA2-9827-0ACC-9C96D2275E54";
createNode mesh -n "Model_40Shape" -p "Model_40";
	rename -uid "2266AF18-4A87-C132-0D17-BB93F7DE7526";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[4:11]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.2045 0.80919999
		 0.7841 0.25440001 0.7841 0.80919999 0.2045 0.25440001 0.79549998 0.25440001 0.2159
		 0.80919999 0.2159 0.25440001 0.79549998 0.80919999 -4.44500017 130.92190552 -4.24569988
		 130.9375 -4.44500017 130.9375 -4.24569988 130.92190552 5.24569988 130.92190552 5.44500017
		 130.9375 5.24569988 130.9375 5.44500017 130.92190552 -129.9375 -0.1349 -129.92190552
		 0.1122 -129.9375 0.1122 -129.92190552 -0.1349 130.92190552 -0.1349 130.9375 0.1122
		 130.92190552 0.1122 130.9375 -0.1349;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  558.79998779 323.19769287 863.59997559 688.34002686 162.55999756 863.59997559
		 688.34002686 323.19769287 863.59997559 558.79998779 162.55999756 863.59997559 558.79998779 162.55999756 853.44000244
		 688.34002686 323.19769287 853.44000244 688.34002686 162.55999756 853.44000244 558.79998779 323.19769287 853.44000244;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_41";
	rename -uid "79E498AC-49D5-9D5B-E079-8E96D76F4743";
createNode mesh -n "Model_41Shape" -p "Model_41";
	rename -uid "41CF8BB1-4166-5339-963F-5D887C68754E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[4:11]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -0.74430001 -0.1842
		 -0.1648 -0.81580001 -0.1648 -0.1842 -0.74430001 -0.81580001 -0.25569999 -0.81580001
		 -0.83520001 -0.1842 -0.83520001 -0.81580001 -0.25569999 -0.1842 -3.70120001 83.77929688
		 -3.68549991 83.58010101 -3.68549991 83.77929688 -3.70120001 83.58010101 2.70120001
		 83.58010101 2.68549991 83.77929688 2.68549991 83.58010101 2.70120001 83.77929688
		 106.3730011 -1.16129994 106.38870239 -0.88 106.3730011 -0.88 106.38870239 -1.16129994
		 -107.38870239 -1.16129994 -107.3730011 -0.88 -107.38870239 -0.88 -107.3730011 -1.16129994;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1146.80993652 363.22000122 435.60998535 1146.80993652 180.33999634 306.070007324
		 1146.80993652 363.22000122 306.070007324 1146.80993652 180.33999634 435.60998535
		 1136.65002441 180.33999634 435.60998535 1136.65002441 363.22000122 306.070007324
		 1136.65002441 180.33999634 306.070007324 1136.65002441 363.22000122 435.60998535;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_42";
	rename -uid "1AD71709-486B-752B-97B7-1686788FA14C";
createNode mesh -n "Model_42Shape" -p "Model_42";
	rename -uid "CF0011BC-42C6-7C11-D08E-73A791ABE866";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[4:11]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.2045 0.79500002
		 0.7841 0.28839999 0.7841 0.79500002 0.2045 0.28839999 0.79549998 0.28839999 0.2159
		 0.79500002 0.2159 0.28839999 0.79549998 0.79500002 -8.94919968 123.78520203 -8.75
		 123.80079651 -8.94919968 123.80079651 -8.75 123.78520203 -0.59960002 -0.50779998
		 -0.40040001 -0.49219999 -0.59960002 -0.49219999 -0.40040001 -0.50779998 -0.50779998
		 -0.59030002 -0.49219999 -0.36469999 -0.50779998 -0.36469999 -0.49219999 -0.59030002
		 -0.50779998 -0.59030002 -0.49219999 -0.36469999 -0.50779998 -0.36469999 -0.50779998
		 -0.59030002 -0.49219999 -0.59030002 -0.49219999 -0.36469999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -975.35998535 880.42749023 789.94000244 -845.82000732 733.74249268 789.94000244
		 -845.82000732 880.42749023 789.94000244 -975.35998535 733.74249268 789.94000244 -975.35998535 733.74249268 779.7800293
		 -845.82000732 880.42749023 779.7800293 -845.82000732 733.74249268 779.7800293 -975.35998535 880.42749023 779.7800293;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 23 24 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_43";
	rename -uid "6E5931A7-4D0E-E35B-544B-2FA60F6405C8";
createNode mesh -n "Model_43Shape" -p "Model_43";
	rename -uid "505FE7C9-43C3-FA16-1653-30A1701EB03D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[4:11]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.2045 0.80699998
		 0.7841 0.25440001 0.7841 0.80699998 0.2045 0.25440001 0.79549998 0.25440001 0.2159
		 0.80699998 0.2159 0.25440001 0.79549998 0.80699998 -6.4211998 174.23440552 -6.22189999
		 174.25 -6.4211998 174.25 -6.22189999 174.23440552 7.22189999 174.23429871 7.4211998
		 174.25 7.22189999 174.25 7.4211998 174.23429871 -173.25 -1.14209998 -173.23429871
		 -0.89600003 -173.25 -0.89600003 -173.23429871 -1.14209998 174.23440552 -1.14209998
		 174.25 -0.89600003 174.23440552 -0.89600003 174.25 -1.14209998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -114.30000305 891.53997803 1277.61999512
		 15.23999977 731.52001953 1277.61999512 15.23999977 891.53997803 1277.61999512 -114.30000305 731.52001953 1277.61999512
		 -114.30000305 731.52001953 1267.45996094 15.23999977 891.53997803 1267.45996094 15.23999977 731.52001953 1267.45996094
		 -114.30000305 891.53997803 1267.45996094;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_44";
	rename -uid "A19E6305-406E-80FA-ED1D-F9BCCC976A3A";
createNode mesh -n "Model_44Shape" -p "Model_44";
	rename -uid "9F9F0994-47D4-57C7-FF1D-9D9ADE46EAF1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -0.92750001 -1.24839997
		 -0.99529999 -2.20510006 -0.92750001 -2.20510006 -0.99529999 -1.24839997 1.91149998
		 22.20829964 1.95899999 22.14579964 1.95899999 22.20829964 1.91149998 22.14579964
		 -0.95899999 22.20829964 -0.91159999 22.14579964 -0.91159999 22.20829964 -0.95899999
		 22.14579964 -21.20829964 -0.40090001 -21.14579964 -1.06099999 -21.14579964 -0.40090001
		 -21.20829964 -1.06099999 22.14579964 -0.40090001 22.20829964 -1.06099999 22.20829964
		 -0.40090001 22.14579964 -1.06099999 1.95899999 -1.06099999 1.91159999 -0.40090001
		 1.91159999 -1.06099999 1.95899999 -0.40090001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -200.66000366 375.92001343 1259.83996582
		 -231.53469849 -53.34000015 1259.83996582 -200.66000366 -53.34000015 1259.83996582
		 -231.53469849 375.92001343 1259.83996582 -200.66000366 -53.34000015 1219.19995117
		 -231.53469849 -53.34000015 1219.19995117 -231.53469849 375.92001343 1219.19995117
		 -200.66000366 375.92001343 1219.19995117;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 1 5 1
		 5 4 1 4 2 1 6 0 1 0 7 1 7 6 1 6 3 1 6 1 1 6 5 1 0 4 1 4 7 1 5 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -2 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -4 -10
		mu 0 3 8 11 9
		f 3 13 -5 -13
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 16 -11
		mu 0 3 16 17 18
		f 3 -3 -9 -16
		mu 0 3 16 19 17
		f 3 17 -17 -8
		mu 0 3 20 21 22
		f 3 -15 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_45";
	rename -uid "A967EFF3-472C-D180-4460-28BF75023517";
createNode mesh -n "Model_45Shape" -p "Model_45";
	rename -uid "89471372-46F3-351F-6E45-4598E710ABF4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" -3.14059997 0.58780003
		 -3.11229992 0.6099 -3.13910007 0.6153 -3.11330009 0.58780003 3.11330009 0.58780003
		 3.13910007 0.6153 3.11229992 0.6099 3.14059997 0.58780003 -2.80649996 0.4499 -2.74399996
		 0.472 -2.80649996 0.472 -2.74399996 0.4499 2.80649996 0.44279999 2.74399996 0.41530001
		 2.80649996 0.41530001 2.74399996 0.44279999 3.14059997 -2.80660009 3.11330009 -2.74410009
		 3.11330009 -2.80660009 3.14059997 -2.74410009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -215.8999939 383.54000854 1259.83996582 -197.48550415 397.91030884 1259.83996582
		 -214.92390442 401.37921143 1259.83996582 -198.11999512 383.54000854 1259.83996582
		 -198.11999512 383.54000854 1219.19995117 -214.92390442 401.37921143 1219.19995117
		 -197.48550415 397.91030884 1219.19995117 -215.8999939 383.54000854 1219.19995117;
	setAttr -s 17 ".ed[0:16]"  0 1 1 1 2 0 2 0 1 0 3 1 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 1 7 5 1 3 6 1 6 1 0 3 4 1 2 7 1 7 0 1 2 5 0 0 4 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 10 -ch 30 ".fc[0:9]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13
		f 3 16 -13 -4
		mu 0 3 16 17 18
		f 3 -15 -9 -17
		mu 0 3 16 19 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_46";
	rename -uid "819CAE92-477B-993F-4BE6-9D87A2CAEC70";
createNode mesh -n "Model_46Shape" -p "Model_46";
	rename -uid "6E8C7D4E-4420-73B3-D4F8-1ABDEBF9D9AE";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.13910007 0.59100002
		 -3.10940003 0.60699999 -3.13470006 0.61739999 -3.11229992 0.58569998 3.11229992 0.58569998
		 3.13470006 0.61739999 3.10940003 0.60699999 3.13910007 0.59100002 -2.78209996 0.16069999
		 -2.71959996 0.1822 -2.78209996 0.1822 -2.71959996 0.16069999 2.78189993 0.087499999
		 2.71939993 0.060699999 2.78189993 0.060699999 2.71939993 0.087499999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -214.92390442 401.37921143 1259.83996582
		 -195.60639954 411.72869873 1259.83996582 -212.033096313 418.53259277 1259.83996582
		 -197.48550415 397.91030884 1259.83996582 -197.48550415 397.91030884 1219.19995117
		 -212.033096313 418.53259277 1219.19995117 -195.60639954 411.72869873 1219.19995117
		 -214.92390442 401.37921143 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_47";
	rename -uid "9F78DBB1-4D7D-659D-B2FF-7AB7BACFD497";
createNode mesh -n "Model_47Shape" -p "Model_47";
	rename -uid "FFCABD1F-429E-CA48-12EF-CA9DC292D2D3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.13470006 0.59460002
		 -3.10470009 0.6038 -3.12750006 0.61900002 -3.10940003 0.58420002 3.10940003 0.58420002
		 3.12750006 0.61900002 3.10470009 0.6038 3.13470006 0.59460002 -2.75929999 -0.1567
		 -2.69679999 -0.1366 -2.75929999 -0.1366 -2.69679999 -0.1567 2.7592001 -0.29730001
		 2.6967001 -0.32269999 2.7592001 -0.32269999 2.6967001 -0.29730001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -212.033096313 418.53259277 1259.83996582
		 -192.55509949 424.4631958 1259.83996582 -207.33869934 434.3414917 1259.83996582 -195.60639954 411.72869873 1259.83996582
		 -195.60639954 411.72869873 1219.19995117 -207.33869934 434.3414917 1219.19995117
		 -192.55509949 424.4631958 1219.19995117 -212.033096313 418.53259277 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_48";
	rename -uid "1DFDF00D-411E-109C-9759-7697B7395D48";
createNode mesh -n "Model_48Shape" -p "Model_48";
	rename -uid "676ABFBF-464B-69D7-0FED-499AD7438DD2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.12750006 0.59850001
		 -3.098400116 0.60049999 -3.1177001 0.61979997 -3.10470009 0.58329999 3.10470009 0.58329999
		 3.1177001 0.61979997 3.098400116 0.60049999 3.12750006 0.59850001 -2.73979998 -0.52380002
		 -2.67729998 -0.50550002 -2.73979998 -0.50550002 -2.67729998 -0.52380002 2.74009991
		 -0.72839999 2.67759991 -0.75190002 2.74009991 -0.75190002 2.67759991 -0.72839999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -207.33869934 434.3414917 1259.83996582 -188.44869995 435.62548828 1259.83996582
		 -201.021194458 448.19799805 1259.83996582 -192.55509949 424.4631958 1259.83996582
		 -192.55509949 424.4631958 1219.19995117 -201.021194458 448.19799805 1219.19995117
		 -188.44869995 435.62548828 1219.19995117 -207.33869934 434.3414917 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_49";
	rename -uid "A9A2ABBD-438C-04CE-3D79-008714A87CED";
createNode mesh -n "Model_49Shape" -p "Model_49";
	rename -uid "15137289-4E2A-BC3E-A003-CAA49F619527";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.1177001 0.60250002
		 -3.090699911 0.59719998 -3.10590005 0.62 -3.098400116 0.58319998 3.098400116 0.58319998
		 3.10590005 0.62 3.090699911 0.59719998 3.1177001 0.60250002 -2.72530007 -0.97009999
		 -2.66280007 -0.954 -2.72530007 -0.954 -2.66280007 -0.97009999 2.72659993 -1.22290003
		 2.66409993 -1.24399996 2.72659993 -1.24399996 2.66409993 -1.22290003;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -201.021194458 448.19799805 1259.83996582
		 -183.44490051 444.78601074 1259.83996582 -193.32299805 459.5696106 1259.83996582
		 -188.44869995 435.62548828 1259.83996582 -188.44869995 435.62548828 1219.19995117
		 -193.32299805 459.5696106 1219.19995117 -183.44490051 444.78601074 1219.19995117
		 -201.021194458 448.19799805 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_50";
	rename -uid "AC7B1BCB-4A11-4098-0227-01A38919284C";
createNode mesh -n "Model_50Shape" -p "Model_50";
	rename -uid "0C9FCC3E-4C63-D9CB-257B-D3903C828870";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.10590005 0.60640001
		 -3.081899881 0.59420002 -3.092400074 0.61940002 -3.090699911 0.5837 3.090699911 0.5837
		 3.092400074 0.61940002 3.081899881 0.59420002 3.10590005 0.60640001 -2.71799994 -1.52909994
		 -2.65549994 -1.51540005 -2.71799994 -1.51540005 -2.65549994 -1.52909994 -1.74109995
		 -2.70830011 -1.75989997 -2.64580011 -1.75989997 -2.70830011 -1.74109995 -2.64580011;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -193.32299805 459.5697937 1259.83996582 -177.73620605 451.59289551 1259.83996582
		 -184.54040527 468.019714355 1259.83996582 -183.44490051 444.7862854 1259.83996582
		 -183.44490051 444.7862854 1219.19995117 -184.54040527 468.019714355 1219.19995117
		 -177.73620605 451.59289551 1219.19995117 -193.32299805 459.5697937 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_51";
	rename -uid "3B68827E-4378-C23C-F2ED-FE986EB323A5";
createNode mesh -n "Model_51Shape" -p "Model_51";
	rename -uid "92B77089-41B1-F511-68F4-F0830AD50822";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.092400074 0.61019999
		 -3.072400093 0.59140003 -3.0776999 0.6182 -3.081899881 0.58490002 3.081899881 0.58490002
		 3.0776999 0.6182 3.072400093 0.59140003 3.092400074 0.61019999 -2.11039996 2.80100012
		 -2.09890008 2.73850012 -2.09890008 2.80100012 -2.11039996 2.73850012 -2.35619998
		 -2.69899988 -2.37290001 -2.63649988 -2.37290001 -2.69899988 -2.35619998 -2.63649988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -184.54040527 468.019714355 1259.83996582
		 -171.54190063 455.78469849 1259.83996582 -175.010604858 473.22311401 1259.83996582
		 -177.73620605 451.59289551 1259.83996582 -177.73620605 451.59289551 1219.19995117
		 -175.010604858 473.22311401 1219.19995117 -171.54190063 455.78469849 1219.19995117
		 -184.54040527 468.019714355 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_52";
	rename -uid "FEF64B42-4C20-7F08-5E5F-E59676DB9684";
createNode mesh -n "Model_52Shape" -p "Model_52";
	rename -uid "E2C7DD41-4DB9-14E9-7FB0-55BF1B70DFB5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.0776999 0.61360002
		 -3.0625 0.58899999 -3.0625 0.61629999 -3.072400093 0.58679998 3.072400093 0.58679998
		 3.0625 0.61629999 3.0625 0.58899999 3.0776999 0.61360002 -2.82719994 2.80559993 -2.81710005
		 2.74309993 -2.81710005 2.80559993 -2.82719994 2.74309993 -2.88849998 -2.69440007
		 -2.90400004 -2.63190007 -2.90400004 -2.69440007 -2.88849998 -2.63190007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -175.010604858 473.22311401 1259.83996582
		 -165.1000061 457.20001221 1259.83996582 -165.1000061 474.98001099 1259.83996582 -171.54190063 455.78469849 1259.83996582
		 -171.54190063 455.78469849 1219.19995117 -165.1000061 474.98001099 1219.19995117
		 -165.1000061 457.20001221 1219.19995117 -175.010604858 473.22311401 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_53";
	rename -uid "D383FD68-4996-786C-A60C-9AB16277D5FE";
createNode mesh -n "Model_53Shape" -p "Model_53";
	rename -uid "22C11618-41EA-C4BE-B5E6-38A0CD0CA875";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.0625 0.61629999
		 -3.052599907 0.58679998 -3.0473001 0.61360002 -3.0625 0.58899999 3.0625 0.58899999
		 3.0473001 0.61360002 3.052599907 0.58679998 3.0625 0.61629999 -3.1652 2.80559993
		 -3.15510011 2.74309993 -3.15510011 2.80559993 -3.1652 2.74309993 -3.12700009 -2.69440007
		 -3.14249992 -2.63190007 -3.14249992 -2.69440007 -3.12700009 -2.63190007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -165.1000061 474.98001099 1259.83996582 -158.65809631 455.78469849 1259.83996582
		 -155.18940735 473.22311401 1259.83996582 -165.1000061 457.20001221 1259.83996582
		 -165.1000061 457.20001221 1219.19995117 -155.18940735 473.22311401 1219.19995117
		 -158.65809631 455.78469849 1219.19995117 -165.1000061 474.98001099 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_54";
	rename -uid "F33926FA-4281-8FF8-51AD-D88B94D272FC";
createNode mesh -n "Model_54Shape" -p "Model_54";
	rename -uid "F981D7F0-4769-1E76-38FC-6796A3137481";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 4.45100021 0.58780003
		 4.47930002 0.6099 4.45249987 0.6153 4.47830009 0.58780003 -4.47830009 0.58780003
		 -4.45249987 0.6153 -4.47930002 0.6099 -4.45100021 0.58780003 2.50600004 0.78479999
		 2.56850004 0.80690002 2.50600004 0.80690002 2.56850004 0.78479999 -2.50600004 0.85750002
		 -2.56850004 0.8301 -2.50600004 0.8301 -2.56850004 0.85750002 3.11229992 -2.74410009
		 3.13960004 -2.80660009 3.13960004 -2.74410009 3.11229992 -2.80660009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -216.14920044 383.54000854 1219.19995117
		 -234.56390381 397.91030884 1219.19995117 -217.12530518 401.37921143 1219.19995117
		 -233.92919922 383.54000854 1219.19995117 -233.92919922 383.54000854 1259.83996582
		 -217.12530518 401.37921143 1259.83996582 -234.56390381 397.91030884 1259.83996582
		 -216.14920044 383.54000854 1259.83996582;
	setAttr -s 17 ".ed[0:16]"  0 1 1 1 2 0 2 0 1 0 3 1 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 1 7 5 1 3 6 1 6 1 0 3 4 1 2 7 1 7 0 1 2 5 0 0 4 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 10 -ch 30 ".fc[0:9]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13
		f 3 16 -13 -4
		mu 0 3 16 17 18
		f 3 -15 -9 -17
		mu 0 3 16 19 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_55";
	rename -uid "754630CD-4F90-6BB3-6543-148B309F6332";
createNode mesh -n "Model_55Shape" -p "Model_55";
	rename -uid "937EC4BF-42FE-7981-8557-2583F6591C80";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.45690012 0.59100002
		 4.48659992 0.60699999 4.4612999 0.61739999 4.4836998 0.58569998 -4.4836998 0.58569998
		 -4.4612999 0.61739999 -4.48659992 0.60699999 -4.45690012 0.59100002 2.53040004 1.18420005
		 2.59290004 1.20560002 2.53040004 1.20560002 2.59290004 1.18420005 -2.53060007 1.34979999
		 -2.59310007 1.32299995 -2.53060007 1.32299995 -2.59310007 1.34979999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -217.12530518 401.37921143 1219.19995117
		 -236.44270325 411.72869873 1219.19995117 -220.016098022 418.53259277 1219.19995117
		 -234.56390381 397.91030884 1219.19995117 -234.56390381 397.91030884 1259.83996582
		 -220.016098022 418.53259277 1259.83996582 -236.44270325 411.72869873 1259.83996582
		 -217.12530518 401.37921143 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_56";
	rename -uid "84A14725-4832-DB27-ABEF-54A830350C12";
createNode mesh -n "Model_56Shape" -p "Model_56";
	rename -uid "987AD9F5-4643-AD45-3E0C-1CB4964D93E1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.47039986 0.59460002
		 4.50040007 0.6038 4.47770023 0.61900002 4.49569988 0.58420002 -4.49569988 0.58420002
		 -4.47770023 0.61900002 -4.50040007 0.6038 -4.47039986 0.59460002 2.55320001 1.61539996
		 2.61570001 1.63559997 2.55320001 1.63559997 2.61570001 1.61539996 -2.5532999 1.86759996
		 -2.6157999 1.84220004 -2.5532999 1.84220004 -2.6157999 1.86759996;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -220.016098022 418.53259277 1219.19995117
		 -239.49429321 424.4631958 1219.19995117 -224.71080017 434.3414917 1219.19995117 -236.44270325 411.72869873 1219.19995117
		 -236.44270325 411.72869873 1259.83996582 -224.71080017 434.3414917 1259.83996582
		 -239.49429321 424.4631958 1259.83996582 -220.016098022 418.53259277 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_57";
	rename -uid "47423A94-44BD-6B79-C592-12B047BF6A24";
createNode mesh -n "Model_57Shape" -p "Model_57";
	rename -uid "18C10C85-4544-F300-5163-90945B94CBE1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.49119997 0.59850001
		 4.52019978 0.60049999 4.50089979 0.61979997 4.5138998 0.58329999 -4.5138998 0.58329999
		 -4.50089979 0.61979997 -4.52019978 0.60049999 -4.49119997 0.59850001 2.57270002 2.10660005
		 2.63520002 2.1249001 2.57270002 2.1249001 2.63520002 2.10660005 -2.57240009 2.43210006
		 -2.63490009 2.40869999 -2.57240009 2.40869999 -2.63490009 2.43210006;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -224.71080017 434.3414917 1219.19995117 -243.60069275 435.62548828 1219.19995117
		 -231.028198242 448.19799805 1219.19995117 -239.49429321 424.4631958 1219.19995117
		 -239.49429321 424.4631958 1259.83996582 -231.028198242 448.19799805 1259.83996582
		 -243.60069275 435.62548828 1259.83996582 -224.71080017 434.3414917 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_58";
	rename -uid "1D3050AB-4BD2-FAAB-A8C4-39B8AEC175F8";
createNode mesh -n "Model_58Shape" -p "Model_58";
	rename -uid "1930EBCF-49BE-DE3D-E167-1286AA0E2519";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.51830006 0.60250002
		 4.54530001 0.59719998 4.5302 0.62 4.53770018 0.58319998 -4.53770018 0.58319998 -4.5302
		 0.62 -4.54530001 0.59719998 -4.51830006 0.60250002 2.58719993 2.69050002 2.64969993
		 2.70650005 2.58719993 2.70650005 2.64969993 2.69050002 -2.58590007 3.057800055 -2.64840007
		 3.03670001 -2.58590007 3.03670001 -2.64840007 3.057800055;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -231.028198242 448.19799805 1219.19995117
		 -248.60429382 444.78601074 1219.19995117 -238.72650146 459.5696106 1219.19995117
		 -243.60069275 435.62548828 1219.19995117 -243.60069275 435.62548828 1259.83996582
		 -238.72650146 459.5696106 1259.83996582 -248.60429382 444.78601074 1259.83996582
		 -231.028198242 448.19799805 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_59";
	rename -uid "AA9C5B80-4264-4DBE-9ABE-F59D658E7460";
createNode mesh -n "Model_59Shape" -p "Model_59";
	rename -uid "AD2A618B-4F41-FA08-15FB-23A39012C732";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.55079985 0.60640001
		 4.57469988 0.59420002 4.56430006 0.61940002 4.56599998 0.5837 -4.56599998 0.5837
		 -4.56430006 0.61940002 -4.57469988 0.59420002 -4.55079985 0.60640001 2.59450006 3.39100003
		 2.65700006 3.40470004 2.59450006 3.40470004 2.65700006 3.39100003 -2.8118 -2.64580011
		 -2.79299998 -2.70830011 -2.79299998 -2.64580011 -2.8118 -2.70830011;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -238.72650146 459.5697937 1219.19995117 -254.31289673 451.59289551 1219.19995117
		 -247.50900269 468.019714355 1219.19995117 -248.60429382 444.7862854 1219.19995117
		 -248.60429382 444.7862854 1259.83996582 -247.50900269 468.019714355 1259.83996582
		 -254.31289673 451.59289551 1259.83996582 -238.72650146 459.5697937 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_60";
	rename -uid "2237D5A9-4E35-6156-8F1A-B78E5FBC88BD";
createNode mesh -n "Model_60Shape" -p "Model_60";
	rename -uid "5A5E92B4-42FE-3B28-599D-0A8256D252BD";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.58729982 0.61019999
		 4.6072998 0.59140003 4.60200024 0.6182 4.59779978 0.58490002 -4.59779978 0.58490002
		 -4.60200024 0.6182 -4.6072998 0.59140003 -4.58729982 0.61019999 -2.94650006 2.73850012
		 -2.95799994 2.80100012 -2.95799994 2.73850012 -2.94650006 2.80100012 -3.11059999
		 -2.63649988 -3.093899965 -2.69899988 -3.093899965 -2.63649988 -3.11059999 -2.69899988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -247.50900269 468.019714355 1219.19995117
		 -260.50750732 455.78469849 1219.19995117 -257.038787842 473.22311401 1219.19995117
		 -254.31289673 451.59289551 1219.19995117 -254.31289673 451.59289551 1259.83996582
		 -257.038787842 473.22311401 1259.83996582 -260.50750732 455.78469849 1259.83996582
		 -247.50900269 468.019714355 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_61";
	rename -uid "8A26EF44-4D0C-E50B-169E-A1BF7175D536";
createNode mesh -n "Model_61Shape" -p "Model_61";
	rename -uid "C8E6034A-486C-86E9-D93F-B8AD2DC4F8F0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.62650013 0.61360002
		 4.64179993 0.58899999 4.64179993 0.61629999 4.63189983 0.58679998 -4.63189983 0.58679998
		 -4.64179993 0.61629999 -4.64179993 0.58899999 -4.62650013 0.61360002 -3.14540005
		 2.74309993 -3.15549994 2.80559993 -3.15549994 2.74309993 -3.14540005 2.80559993 -3.17630005
		 -2.63190007 -3.16079998 -2.69440007 -3.16079998 -2.63190007 -3.17630005 -2.69440007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -257.038787842 473.22311401 1219.19995117
		 -266.94918823 457.20001221 1219.19995117 -266.94918823 474.98001099 1219.19995117
		 -260.50750732 455.78469849 1219.19995117 -260.50750732 455.78469849 1259.83996582
		 -266.94918823 474.98001099 1259.83996582 -266.94918823 457.20001221 1259.83996582
		 -257.038787842 473.22311401 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_62";
	rename -uid "17D7B113-4E84-CF6F-BF3B-57BA12CEFBF0";
createNode mesh -n "Model_62Shape" -p "Model_62";
	rename -uid "B86398CB-4117-5BF4-2DE7-76A3A52732DD";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.67229986 0.61629999
		 4.68219995 0.58679998 4.6875 0.61360002 4.67229986 0.58899999 -4.67229986 0.58899999
		 -4.6875 0.61360002 -4.68219995 0.58679998 -4.67229986 0.61629999 -2.82680011 2.74309993
		 -2.8369 2.80559993 -2.8369 2.74309993 -2.82680011 2.80559993 -2.87019992 -2.63190007
		 -2.85470009 -2.69440007 -2.85470009 -2.63190007 -2.87019992 -2.69440007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -266.94918823 474.98001099 1219.19995117
		 -273.39111328 455.78469849 1219.19995117 -276.85971069 473.22311401 1219.19995117
		 -266.94918823 457.20001221 1219.19995117 -266.94918823 457.20001221 1259.83996582
		 -276.85971069 473.22311401 1259.83996582 -273.39111328 455.78469849 1259.83996582
		 -266.94918823 474.98001099 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_63";
	rename -uid "051EC7D1-4527-6FDF-3C1E-4ABBE751FAB2";
createNode mesh -n "Model_63Shape" -p "Model_63";
	rename -uid "2EE39BA8-490E-75C3-8B72-E2BDD71E4F38";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" -3.14059997 0.58780003
		 -3.11229992 0.6099 -3.13910007 0.6153 -3.11330009 0.58780003 3.11330009 0.58780003
		 3.13910007 0.6153 3.11229992 0.6099 3.14059997 0.58780003 -2.80649996 0.4499 -2.74399996
		 0.472 -2.80649996 0.472 -2.74399996 0.4499 2.80649996 0.44279999 2.74399996 0.41530001
		 2.80649996 0.41530001 2.74399996 0.44279999 3.14059997 -2.80660009 3.11330009 -2.74410009
		 3.11330009 -2.80660009 3.14059997 -2.74410009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  114.30000305 383.54000854 1259.83996582 132.7144928 397.91030884 1259.83996582
		 115.27610016 401.37921143 1259.83996582 132.080001831 383.54000854 1259.83996582
		 132.080001831 383.54000854 1219.19995117 115.27610016 401.37921143 1219.19995117
		 132.7144928 397.91030884 1219.19995117 114.30000305 383.54000854 1219.19995117;
	setAttr -s 17 ".ed[0:16]"  0 1 1 1 2 0 2 0 1 0 3 1 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 1 7 5 1 3 6 1 6 1 0 3 4 1 2 7 1 7 0 1 2 5 0 0 4 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 10 -ch 30 ".fc[0:9]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13
		f 3 16 -13 -4
		mu 0 3 16 17 18
		f 3 -15 -9 -17
		mu 0 3 16 19 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_64";
	rename -uid "C13B21E4-498E-EBC1-7DB2-33843EAEDEF7";
createNode mesh -n "Model_64Shape" -p "Model_64";
	rename -uid "8FFFE038-4C73-477A-B08B-EC8CBEC22F2B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.13910007 0.59100002
		 -3.10940003 0.60699999 -3.13470006 0.61739999 -3.11229992 0.58569998 3.11229992 0.58569998
		 3.13470006 0.61739999 3.10940003 0.60699999 3.13910007 0.59100002 -2.78209996 0.16069999
		 -2.71959996 0.1822 -2.78209996 0.1822 -2.71959996 0.16069999 2.78189993 0.087499999
		 2.71939993 0.060699999 2.78189993 0.060699999 2.71939993 0.087499999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  115.27610016 401.37921143 1259.83996582 134.59359741 411.72869873 1259.83996582
		 118.16690063 418.53259277 1259.83996582 132.7144928 397.91030884 1259.83996582 132.7144928 397.91030884 1219.19995117
		 118.16690063 418.53259277 1219.19995117 134.59359741 411.72869873 1219.19995117 115.27610016 401.37921143 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_65";
	rename -uid "1FD74FDB-414E-58BE-CAC3-83ABBB47A124";
createNode mesh -n "Model_65Shape" -p "Model_65";
	rename -uid "C2EF744E-441E-331C-BAAB-94961C16E6D6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.13470006 0.59460002
		 -3.10470009 0.6038 -3.12750006 0.61900002 -3.10940003 0.58420002 3.10940003 0.58420002
		 3.12750006 0.61900002 3.10470009 0.6038 3.13470006 0.59460002 -2.75929999 -0.1567
		 -2.69679999 -0.1366 -2.75929999 -0.1366 -2.69679999 -0.1567 2.7592001 -0.29730001
		 2.6967001 -0.32269999 2.7592001 -0.32269999 2.6967001 -0.29730001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  118.16690063 418.53259277 1259.83996582 137.64489746 424.4631958 1259.83996582
		 122.86129761 434.3414917 1259.83996582 134.59359741 411.72869873 1259.83996582 134.59359741 411.72869873 1219.19995117
		 122.86129761 434.3414917 1219.19995117 137.64489746 424.4631958 1219.19995117 118.16690063 418.53259277 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_66";
	rename -uid "55BBDA9A-467F-88D7-8349-D0A5DCAD7F3A";
createNode mesh -n "Model_66Shape" -p "Model_66";
	rename -uid "F83C727A-44AF-D719-33C1-EBA0EE7F20C6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.12750006 0.59850001
		 -3.098400116 0.60049999 -3.1177001 0.61979997 -3.10470009 0.58329999 3.10470009 0.58329999
		 3.1177001 0.61979997 3.098400116 0.60049999 3.12750006 0.59850001 -2.73979998 -0.52380002
		 -2.67729998 -0.50550002 -2.73979998 -0.50550002 -2.67729998 -0.52380002 2.74009991
		 -0.72839999 2.67759991 -0.75190002 2.74009991 -0.75190002 2.67759991 -0.72839999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  122.86129761 434.3414917 1259.83996582 141.751297 435.62548828 1259.83996582
		 129.17880249 448.19799805 1259.83996582 137.64489746 424.4631958 1259.83996582 137.64489746 424.4631958 1219.19995117
		 129.17880249 448.19799805 1219.19995117 141.751297 435.62548828 1219.19995117 122.86129761 434.3414917 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_67";
	rename -uid "A5F8108E-4DED-A033-8BC7-249742D5295B";
createNode mesh -n "Model_67Shape" -p "Model_67";
	rename -uid "5F13BC56-43AB-DFE3-FC4B-EB8551D9663F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.1177001 0.60250002
		 -3.090699911 0.59719998 -3.10590005 0.62 -3.098400116 0.58319998 3.098400116 0.58319998
		 3.10590005 0.62 3.090699911 0.59719998 3.1177001 0.60250002 -2.72530007 -0.97009999
		 -2.66280007 -0.954 -2.72530007 -0.954 -2.66280007 -0.97009999 2.72659993 -1.22290003
		 2.66409993 -1.24399996 2.72659993 -1.24399996 2.66409993 -1.22290003;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  129.17880249 448.19799805 1259.83996582 146.75509644 444.78601074 1259.83996582
		 136.8769989 459.5696106 1259.83996582 141.751297 435.62548828 1259.83996582 141.751297 435.62548828 1219.19995117
		 136.8769989 459.5696106 1219.19995117 146.75509644 444.78601074 1219.19995117 129.17880249 448.19799805 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_68";
	rename -uid "D9B186F9-4213-CEC8-A25E-079057177B3C";
createNode mesh -n "Model_68Shape" -p "Model_68";
	rename -uid "17AA606A-4A0C-C203-6229-3CA27BA7D813";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.10590005 0.60640001
		 -3.081899881 0.59420002 -3.092400074 0.61940002 -3.090699911 0.5837 3.090699911 0.5837
		 3.092400074 0.61940002 3.081899881 0.59420002 3.10590005 0.60640001 -2.71799994 -1.52909994
		 -2.65549994 -1.51540005 -2.71799994 -1.51540005 -2.65549994 -1.52909994 -1.74109995
		 -2.70830011 -1.75989997 -2.64580011 -1.75989997 -2.70830011 -1.74109995 -2.64580011;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  136.8769989 459.5697937 1259.83996582 152.46380615 451.59289551 1259.83996582
		 145.65960693 468.019714355 1259.83996582 146.75509644 444.7862854 1259.83996582 146.75509644 444.7862854 1219.19995117
		 145.65960693 468.019714355 1219.19995117 152.46380615 451.59289551 1219.19995117
		 136.8769989 459.5697937 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_69";
	rename -uid "D6EE69E7-48DB-398A-B1D1-6AB7E9E3EEC1";
createNode mesh -n "Model_69Shape" -p "Model_69";
	rename -uid "BAF03760-480E-B654-699A-848135279A3F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.092400074 0.61019999
		 -3.072400093 0.59140003 -3.0776999 0.6182 -3.081899881 0.58490002 3.081899881 0.58490002
		 3.0776999 0.6182 3.072400093 0.59140003 3.092400074 0.61019999 -2.11039996 2.80100012
		 -2.09890008 2.73850012 -2.09890008 2.80100012 -2.11039996 2.73850012 -2.35619998
		 -2.69899988 -2.37290001 -2.63649988 -2.37290001 -2.69899988 -2.35619998 -2.63649988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  145.65960693 468.019714355 1259.83996582
		 158.65809631 455.78469849 1259.83996582 155.18940735 473.22311401 1259.83996582 152.46380615 451.59289551 1259.83996582
		 152.46380615 451.59289551 1219.19995117 155.18940735 473.22311401 1219.19995117 158.65809631 455.78469849 1219.19995117
		 145.65960693 468.019714355 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_70";
	rename -uid "2D26FBA0-4D3D-099F-958A-EABBB0B5FE68";
createNode mesh -n "Model_70Shape" -p "Model_70";
	rename -uid "60A8FDD9-49FC-E867-2CFE-1FB0BC6A94FE";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.0776999 0.61360002
		 -3.0625 0.58899999 -3.0625 0.61629999 -3.072400093 0.58679998 3.072400093 0.58679998
		 3.0625 0.61629999 3.0625 0.58899999 3.0776999 0.61360002 -2.82719994 2.80559993 -2.81710005
		 2.74309993 -2.81710005 2.80559993 -2.82719994 2.74309993 -2.88849998 -2.69440007
		 -2.90400004 -2.63190007 -2.90400004 -2.69440007 -2.88849998 -2.63190007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  155.18940735 473.22311401 1259.83996582 165.1000061 457.20001221 1259.83996582
		 165.1000061 474.98001099 1259.83996582 158.65809631 455.78469849 1259.83996582 158.65809631 455.78469849 1219.19995117
		 165.1000061 474.98001099 1219.19995117 165.1000061 457.20001221 1219.19995117 155.18940735 473.22311401 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_71";
	rename -uid "BBD8E823-4484-B227-EECD-30B380ECF581";
createNode mesh -n "Model_71Shape" -p "Model_71";
	rename -uid "B3AB325B-42A4-5CE3-A1D8-A389950F57CA";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -3.0625 0.61629999
		 -3.052599907 0.58679998 -3.0473001 0.61360002 -3.0625 0.58899999 3.0625 0.58899999
		 3.0473001 0.61360002 3.052599907 0.58679998 3.0625 0.61629999 -3.1652 2.80559993
		 -3.15510011 2.74309993 -3.15510011 2.80559993 -3.1652 2.74309993 -3.12700009 -2.69440007
		 -3.14249992 -2.63190007 -3.14249992 -2.69440007 -3.12700009 -2.63190007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  165.1000061 474.98001099 1259.83996582 171.54190063 455.78469849 1259.83996582
		 175.010604858 473.22311401 1259.83996582 165.1000061 457.20001221 1259.83996582 165.1000061 457.20001221 1219.19995117
		 175.010604858 473.22311401 1219.19995117 171.54190063 455.78469849 1219.19995117
		 165.1000061 474.98001099 1219.19995117;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_72";
	rename -uid "0973E33C-490B-0196-2A97-21943BAC0CF6";
createNode mesh -n "Model_72Shape" -p "Model_72";
	rename -uid "67742FD7-4955-0DC4-BC59-5E9CA4941BB4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 4.45100021 0.58780003
		 4.47930002 0.6099 4.45249987 0.6153 4.47830009 0.58780003 -4.47830009 0.58780003
		 -4.45249987 0.6153 -4.47930002 0.6099 -4.45100021 0.58780003 2.50600004 0.78479999
		 2.56850004 0.80690002 2.50600004 0.80690002 2.56850004 0.78479999 -2.50600004 0.85750002
		 -2.56850004 0.8301 -2.50600004 0.8301 -2.56850004 0.85750002 3.11229992 -2.74410009
		 3.13960004 -2.80660009 3.13960004 -2.74410009 3.11229992 -2.80660009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  114.050796509 383.54000854 1219.19995117
		 95.63610077 397.91030884 1219.19995117 113.074699402 401.37921143 1219.19995117 96.27079773 383.54000854 1219.19995117
		 96.27079773 383.54000854 1259.83996582 113.074699402 401.37921143 1259.83996582 95.63610077 397.91030884 1259.83996582
		 114.050796509 383.54000854 1259.83996582;
	setAttr -s 17 ".ed[0:16]"  0 1 1 1 2 0 2 0 1 0 3 1 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 1 7 5 1 3 6 1 6 1 0 3 4 1 2 7 1 7 0 1 2 5 0 0 4 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 10 -ch 30 ".fc[0:9]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13
		f 3 16 -13 -4
		mu 0 3 16 17 18
		f 3 -15 -9 -17
		mu 0 3 16 19 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_73";
	rename -uid "5B2F3C31-4F70-8B6F-F08D-489F8C842F59";
createNode mesh -n "Model_73Shape" -p "Model_73";
	rename -uid "EE978198-4E08-33BB-28DC-FB9A06150B9D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.45690012 0.59100002
		 4.48659992 0.60699999 4.4612999 0.61739999 4.4836998 0.58569998 -4.4836998 0.58569998
		 -4.4612999 0.61739999 -4.48659992 0.60699999 -4.45690012 0.59100002 2.53040004 1.18420005
		 2.59290004 1.20560002 2.53040004 1.20560002 2.59290004 1.18420005 -2.53060007 1.34979999
		 -2.59310007 1.32299995 -2.53060007 1.32299995 -2.59310007 1.34979999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  113.074699402 401.37921143 1219.19995117
		 93.75720215 411.72869873 1219.19995117 110.18389893 418.53259277 1219.19995117 95.63610077 397.91030884 1219.19995117
		 95.63610077 397.91030884 1259.83996582 110.18389893 418.53259277 1259.83996582 93.75720215 411.72869873 1259.83996582
		 113.074699402 401.37921143 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_74";
	rename -uid "B64AC75F-495B-0905-6392-43935B664C8D";
createNode mesh -n "Model_74Shape" -p "Model_74";
	rename -uid "464CE404-46C1-3D4E-C26B-DEAB3342E97A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.47039986 0.59460002
		 4.50040007 0.6038 4.47770023 0.61900002 4.49569988 0.58420002 -4.49569988 0.58420002
		 -4.47770023 0.61900002 -4.50040007 0.6038 -4.47039986 0.59460002 2.55320001 1.61539996
		 2.61570001 1.63559997 2.55320001 1.63559997 2.61570001 1.61539996 -2.5532999 1.86759996
		 -2.6157999 1.84220004 -2.5532999 1.84220004 -2.6157999 1.86759996;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  110.18389893 418.53259277 1219.19995117 90.70570374 424.4631958 1219.19995117
		 105.48950195 434.3414917 1219.19995117 93.75720215 411.72869873 1219.19995117 93.75720215 411.72869873 1259.83996582
		 105.48950195 434.3414917 1259.83996582 90.70570374 424.4631958 1259.83996582 110.18389893 418.53259277 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_75";
	rename -uid "9157620A-4D69-D90A-843D-2E93BD6CEA27";
createNode mesh -n "Model_75Shape" -p "Model_75";
	rename -uid "4EECD4BD-47BB-4E48-6F1D-B9B18108BC04";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.49119997 0.59850001
		 4.52019978 0.60049999 4.50089979 0.61979997 4.5138998 0.58329999 -4.5138998 0.58329999
		 -4.50089979 0.61979997 -4.52019978 0.60049999 -4.49119997 0.59850001 2.57270002 2.10660005
		 2.63520002 2.1249001 2.57270002 2.1249001 2.63520002 2.10660005 -2.57240009 2.43210006
		 -2.63490009 2.40869999 -2.57240009 2.40869999 -2.63490009 2.43210006;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  105.48950195 434.3414917 1219.19995117 86.59929657 435.62548828 1219.19995117
		 99.17179871 448.19799805 1219.19995117 90.70570374 424.4631958 1219.19995117 90.70570374 424.4631958 1259.83996582
		 99.17179871 448.19799805 1259.83996582 86.59929657 435.62548828 1259.83996582 105.48950195 434.3414917 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_76";
	rename -uid "116A0AA6-424E-8B60-32D8-CA9BC48BCB3D";
createNode mesh -n "Model_76Shape" -p "Model_76";
	rename -uid "A08244A6-4DA7-2F84-BEB4-24A1B71546DA";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.51830006 0.60250002
		 4.54530001 0.59719998 4.5302 0.62 4.53770018 0.58319998 -4.53770018 0.58319998 -4.5302
		 0.62 -4.54530001 0.59719998 -4.51830006 0.60250002 2.58719993 2.69050002 2.64969993
		 2.70650005 2.58719993 2.70650005 2.64969993 2.69050002 -2.58590007 3.057800055 -2.64840007
		 3.03670001 -2.58590007 3.03670001 -2.64840007 3.057800055;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  99.17179871 448.19799805 1219.19995117 81.59570313 444.78601074 1219.19995117
		 91.47350311 459.5696106 1219.19995117 86.59929657 435.62548828 1219.19995117 86.59929657 435.62548828 1259.83996582
		 91.47350311 459.5696106 1259.83996582 81.59570313 444.78601074 1259.83996582 99.17179871 448.19799805 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_77";
	rename -uid "C0D0F72B-4D75-30FC-DAC8-E7970F86AD34";
createNode mesh -n "Model_77Shape" -p "Model_77";
	rename -uid "F1E05941-49B3-322F-8F69-F9B01A2FA5BD";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.55079985 0.60640001
		 4.57469988 0.59420002 4.56430006 0.61940002 4.56599998 0.5837 -4.56599998 0.5837
		 -4.56430006 0.61940002 -4.57469988 0.59420002 -4.55079985 0.60640001 2.59450006 3.39100003
		 2.65700006 3.40470004 2.59450006 3.40470004 2.65700006 3.39100003 -2.8118 -2.64580011
		 -2.79299998 -2.70830011 -2.79299998 -2.64580011 -2.8118 -2.70830011;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  91.47350311 459.5697937 1219.19995117 75.88710022 451.59289551 1219.19995117
		 82.69100189 468.019714355 1219.19995117 81.59570313 444.7862854 1219.19995117 81.59570313 444.7862854 1259.83996582
		 82.69100189 468.019714355 1259.83996582 75.88710022 451.59289551 1259.83996582 91.47350311 459.5697937 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_78";
	rename -uid "A48DAAE0-4392-FEE1-A02B-83984C54B636";
createNode mesh -n "Model_78Shape" -p "Model_78";
	rename -uid "031D8B91-4B60-7915-5CA7-A194B1A9FCAC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.58729982 0.61019999
		 4.6072998 0.59140003 4.60200024 0.6182 4.59779978 0.58490002 -4.59779978 0.58490002
		 -4.60200024 0.6182 -4.6072998 0.59140003 -4.58729982 0.61019999 -2.94650006 2.73850012
		 -2.95799994 2.80100012 -2.95799994 2.73850012 -2.94650006 2.80100012 -3.11059999
		 -2.63649988 -3.093899965 -2.69899988 -3.093899965 -2.63649988 -3.11059999 -2.69899988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  82.69100189 468.019714355 1219.19995117 69.69249725 455.78469849 1219.19995117
		 73.16110229 473.22311401 1219.19995117 75.88710022 451.59289551 1219.19995117 75.88710022 451.59289551 1259.83996582
		 73.16110229 473.22311401 1259.83996582 69.69249725 455.78469849 1259.83996582 82.69100189 468.019714355 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_79";
	rename -uid "DF032353-4B8B-7F0B-8CA9-87B8F982CCEE";
createNode mesh -n "Model_79Shape" -p "Model_79";
	rename -uid "E9A400BC-496E-B48B-5B02-068FB9AD2B74";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.62650013 0.61360002
		 4.64179993 0.58899999 4.64179993 0.61629999 4.63189983 0.58679998 -4.63189983 0.58679998
		 -4.64179993 0.61629999 -4.64179993 0.58899999 -4.62650013 0.61360002 -3.14540005
		 2.74309993 -3.15549994 2.80559993 -3.15549994 2.74309993 -3.14540005 2.80559993 -3.17630005
		 -2.63190007 -3.16079998 -2.69440007 -3.16079998 -2.63190007 -3.17630005 -2.69440007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  73.16110229 473.22311401 1219.19995117 63.25080109 457.20001221 1219.19995117
		 63.25080109 474.98001099 1219.19995117 69.69249725 455.78469849 1219.19995117 69.69249725 455.78469849 1259.83996582
		 63.25080109 474.98001099 1259.83996582 63.25080109 457.20001221 1259.83996582 73.16110229 473.22311401 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_80";
	rename -uid "44F55E3E-4614-2141-CCA6-60866D43927E";
createNode mesh -n "Model_80Shape" -p "Model_80";
	rename -uid "FE75BE2E-42ED-9D69-A773-9CAAAFE19B73";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 4.67229986 0.61629999
		 4.68219995 0.58679998 4.6875 0.61360002 4.67229986 0.58899999 -4.67229986 0.58899999
		 -4.6875 0.61360002 -4.68219995 0.58679998 -4.67229986 0.61629999 -2.82680011 2.74309993
		 -2.8369 2.80559993 -2.8369 2.74309993 -2.82680011 2.80559993 -2.87019992 -2.63190007
		 -2.85470009 -2.69440007 -2.85470009 -2.63190007 -2.87019992 -2.69440007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  63.25080109 474.98001099 1219.19995117 56.80889893 455.78469849 1219.19995117
		 53.34030151 473.22311401 1219.19995117 63.25080109 457.20001221 1219.19995117 63.25080109 457.20001221 1259.83996582
		 53.34030151 473.22311401 1259.83996582 56.80889893 455.78469849 1259.83996582 63.25080109 474.98001099 1259.83996582;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -5
		mu 0 3 8 9 10
		f 3 12 -8 -11
		mu 0 3 8 11 9
		f 3 13 14 -3
		mu 0 3 12 13 14
		f 3 15 -10 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_81";
	rename -uid "6B3519E1-4BEF-3B20-D3BD-D39613DF4957";
createNode mesh -n "Model_81Shape" -p "Model_81";
	rename -uid "CB8CB3B9-4793-13CC-44A6-EF974DC72986";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -0.9052 -1.23140001
		 -1.016800046 -1.24839997 -0.9052 -1.24839997 -1.016800046 -1.23140001 1.89590001
		 22.22400093 1.97399998 22.13019943 1.97399998 22.22400093 1.89590001 22.13019943
		 -0.97409999 22.22400093 -0.89590001 22.13019943 -0.89590001 22.22400093 -0.97409999
		 22.13019943 -21.22400093 -0.38909999 -21.13019943 -0.40090001 -21.13019943 -0.38909999
		 -21.22400093 -0.40090001 22.13019943 -0.38909999 22.22400093 -0.40090001 22.22400093
		 -0.38909999 22.13019943 -0.40090001 1.97409999 -0.40090001 1.89590001 -0.38909999
		 1.89590001 -0.40090001 1.97409999 -0.38909999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -190.5 383.54000854 1270 -241.30000305 375.92001343 1270
		 -190.5 375.92001343 1270 -241.30000305 383.54000854 1270 -190.5 375.92001343 1209.040039063
		 -241.30000305 375.92001343 1209.040039063 -241.30000305 383.54000854 1209.040039063
		 -190.5 383.54000854 1209.040039063;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 1 5 1
		 5 4 1 4 2 1 6 0 1 0 7 1 7 6 1 6 3 1 6 1 1 6 5 1 0 4 1 4 7 1 5 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -2 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -4 -10
		mu 0 3 8 11 9
		f 3 13 -5 -13
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 16 -11
		mu 0 3 16 17 18
		f 3 -3 -9 -16
		mu 0 3 16 19 17
		f 3 17 -17 -8
		mu 0 3 20 21 22
		f 3 -15 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_82";
	rename -uid "66B17ABC-49F3-B8B0-89C6-7195B5AFCE2F";
createNode mesh -n "Model_82Shape" -p "Model_82";
	rename -uid "71AD0D22-4950-95C5-00EF-B3996139A17A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -0.89399999 -2.20510006
		 -1.016800046 -2.25040007 -0.89399999 -2.25040007 -1.016800046 -2.20510006 1.88810003
		 22.23180008 1.97399998 22.13019943 1.97399998 22.23180008 1.88810003 22.13019943
		 -0.97409999 22.23180008 -0.88810003 22.13019943 -0.88810003 22.23180008 -0.97409999
		 22.13019943 -21.23180008 -1.06099999 -21.13019943 -1.092300057 -21.13019943 -1.06099999
		 -21.23180008 -1.092300057 22.13019943 -1.06099999 22.23180008 -1.092300057 22.23180008
		 -1.06099999 22.13019943 -1.092300057 1.97409999 -1.092300057 1.88810003 -1.06099999
		 1.88810003 -1.092300057 1.97409999 -1.06099999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -185.41999817 -53.34000015 1270 -241.30000305 -73.66000366 1270
		 -185.41999817 -73.66000366 1270 -241.30000305 -53.34000015 1270 -185.41999817 -73.66000366 1203.95996094
		 -241.30000305 -73.66000366 1203.95996094 -241.30000305 -53.34000015 1203.95996094
		 -185.41999817 -53.34000015 1203.95996094;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 1 5 1
		 5 4 1 4 2 1 6 0 1 0 7 1 7 6 1 6 3 1 6 1 1 6 5 1 0 4 1 4 7 1 5 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -2 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -4 -10
		mu 0 3 8 11 9
		f 3 13 -5 -13
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 16 -11
		mu 0 3 16 17 18
		f 3 -3 -9 -16
		mu 0 3 16 19 17
		f 3 17 -17 -8
		mu 0 3 20 21 22
		f 3 -15 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_83";
	rename -uid "B33077C6-4A56-F0B4-660B-E0ACE0B687BD";
createNode mesh -n "Model_83Shape" -p "Model_83";
	rename -uid "D251B13D-4E1D-30C8-0679-78B94649E5B2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -0.92750001 -1.24839997
		 -0.99529999 -2.20510006 -0.92750001 -2.20510006 -0.99529999 -1.24839997 1.91149998
		 22.20829964 1.95899999 22.14579964 1.95899999 22.20829964 1.91149998 22.14579964
		 -0.95899999 22.20829964 -0.91159999 22.14579964 -0.91159999 22.20829964 -0.95899999
		 22.14579964 -21.20829964 -0.40090001 -21.14579964 -1.06099999 -21.14579964 -0.40090001
		 -21.20829964 -1.06099999 22.14579964 -0.40090001 22.20829964 -1.06099999 22.20829964
		 -0.40090001 22.14579964 -1.06099999 1.95899999 -1.06099999 1.91159999 -0.40090001
		 1.91159999 -1.06099999 1.95899999 -0.40090001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  129.53999329 373.38000488 1259.83996582 98.66529846 -55.88000107 1259.83996582
		 129.53999329 -55.88000107 1259.83996582 98.66529846 373.38000488 1259.83996582 129.53999329 -55.88000107 1219.19995117
		 98.66529846 -55.88000107 1219.19995117 98.66529846 373.38000488 1219.19995117 129.53999329 373.38000488 1219.19995117;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 1 5 1
		 5 4 1 4 2 1 6 0 1 0 7 1 7 6 1 6 3 1 6 1 1 6 5 1 0 4 1 4 7 1 5 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -2 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -4 -10
		mu 0 3 8 11 9
		f 3 13 -5 -13
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 16 -11
		mu 0 3 16 17 18
		f 3 -3 -9 -16
		mu 0 3 16 19 17
		f 3 17 -17 -8
		mu 0 3 20 21 22
		f 3 -15 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_84";
	rename -uid "3B1ED7DD-4A07-01A5-AFD7-D680F6A5763F";
createNode mesh -n "Model_84Shape" -p "Model_84";
	rename -uid "8455AB64-4FCC-C03B-DB2F-49808A994EE4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -0.9052 -1.23140001
		 -1.016800046 -1.24839997 -0.9052 -1.24839997 -1.016800046 -1.23140001 1.89590001
		 22.22400093 1.97399998 22.13019943 1.97399998 22.22400093 1.89590001 22.13019943
		 -0.97409999 22.22400093 -0.89590001 22.13019943 -0.89590001 22.22400093 -0.97409999
		 22.13019943 -21.22400093 -0.38909999 -21.13019943 -0.40090001 -21.13019943 -0.38909999
		 -21.22400093 -0.40090001 22.13019943 -0.38909999 22.22400093 -0.40090001 22.22400093
		 -0.38909999 22.13019943 -0.40090001 1.97409999 -0.40090001 1.89590001 -0.38909999
		 1.89590001 -0.40090001 1.97409999 -0.38909999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  139.69999695 381 1270 88.90000153 373.38000488 1270
		 139.69999695 373.38000488 1270 88.90000153 381 1270 139.69999695 373.38000488 1209.040039063
		 88.90000153 373.38000488 1209.040039063 88.90000153 381 1209.040039063 139.69999695 381 1209.040039063;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 1 5 1
		 5 4 1 4 2 1 6 0 1 0 7 1 7 6 1 6 3 1 6 1 1 6 5 1 0 4 1 4 7 1 5 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -2 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -4 -10
		mu 0 3 8 11 9
		f 3 13 -5 -13
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 16 -11
		mu 0 3 16 17 18
		f 3 -3 -9 -16
		mu 0 3 16 19 17
		f 3 17 -17 -8
		mu 0 3 20 21 22
		f 3 -15 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_85";
	rename -uid "5462852E-4580-4356-8150-ECABB90363D8";
createNode mesh -n "Model_85Shape" -p "Model_85";
	rename -uid "736DCD07-42F3-77FC-B4C7-AE996A78FFF9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -0.89399999 -2.20510006
		 -1.016800046 -2.25040007 -0.89399999 -2.25040007 -1.016800046 -2.20510006 1.88810003
		 22.23180008 1.97399998 22.13019943 1.97399998 22.23180008 1.88810003 22.13019943
		 -0.97409999 22.23180008 -0.88810003 22.13019943 -0.88810003 22.23180008 -0.97409999
		 22.13019943 -21.23180008 -1.06099999 -21.13019943 -1.092300057 -21.13019943 -1.06099999
		 -21.23180008 -1.092300057 22.13019943 -1.06099999 22.23180008 -1.092300057 22.23180008
		 -1.06099999 22.13019943 -1.092300057 1.97409999 -1.092300057 1.88810003 -1.06099999
		 1.88810003 -1.092300057 1.97409999 -1.06099999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  144.77999878 -55.88000107 1270 88.90000153 -76.19999695 1270
		 144.77999878 -76.19999695 1270 88.90000153 -55.88000107 1270 144.77999878 -76.19999695 1203.95996094
		 88.90000153 -76.19999695 1203.95996094 88.90000153 -55.88000107 1203.95996094 144.77999878 -55.88000107 1203.95996094;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 1 5 1
		 5 4 1 4 2 1 6 0 1 0 7 1 7 6 1 6 3 1 6 1 1 6 5 1 0 4 1 4 7 1 5 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -2 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -4 -10
		mu 0 3 8 11 9
		f 3 13 -5 -13
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 16 -11
		mu 0 3 16 17 18
		f 3 -3 -9 -16
		mu 0 3 16 19 17
		f 3 17 -17 -8
		mu 0 3 20 21 22
		f 3 -15 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_86";
	rename -uid "78739B81-4AEF-AC04-E72F-A3A6FD5BA637";
createNode mesh -n "Model_86Shape" -p "Model_86";
	rename -uid "B2AAA884-4333-B497-59A3-0C8A675E0FAC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" -1.8477 -0.32170001
		 0.8477 -0.67830002 0.8477 -0.32170001 -1.8477 -0.67830002 0.4434 -0.62300003 -1.44340003
		 -0.377 -1.44340003 -0.62300003 0.4434 -0.377 -1.44340003 -0.51169997 0.4434 -0.4883
		 -1.44340003 -0.4883 0.4434 -0.51169997 -0.51169997 -0.62300003 -0.4883 -0.377 -0.51169997
		 -0.377 -0.4883 -0.62300003 -1.44340003 -0.51169997 0.4434 -0.4883 -1.44340003 -0.4883
		 -1.44340003 -0.51169997 0.4434 -0.51169997 0.4434 -0.4883 -0.51169997 -0.62300003
		 -0.4883 -0.377 -0.51169997 -0.377 -0.51169997 -0.62300003 -0.4883 -0.62300003 -0.4883
		 -0.377;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -746.76000977 182.88000488 -650.23999023
		 480.059997559 22.86000061 -650.23999023 480.059997559 182.88000488 -650.23999023
		 -746.76000977 22.86000061 -650.23999023 -746.76000977 22.86000061 -665.47998047 480.059997559 182.88000488 -665.47998047
		 480.059997559 22.86000061 -665.47998047 -746.76000977 182.88000488 -665.47998047;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 16 17 18
		f 3 -3 15 -14
		mu 0 3 19 20 21
		f 3 16 -15 -9
		mu 0 3 12 13 14
		f 3 -13 -4 -17
		mu 0 3 12 15 13
		f 3 17 -16 -2
		mu 0 3 22 23 24
		f 3 -12 -7 -18
		mu 0 3 25 26 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_87";
	rename -uid "0C38A891-4026-F9CC-BB68-F4BD480B8D08";
createNode mesh -n "Model_87Shape" -p "Model_87";
	rename -uid "C9796BD8-48D0-01A4-853D-E68E28EEC312";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.46090001 0.2422
		 0.63279998 -0.0038999999 0.63279998 0.2422 0.46090001 -0.0038999999 -0.46090001 -0.0038999999
		 -0.63279998 0.2422 -0.63279998 -0.0038999999 -0.46090001 0.2422 3.61520004 -1.17970002
		 3.63870001 -1.35160005 3.63870001 -1.17970002 3.61520004 -1.35160005 -3.61520004
		 -1.35160005 -3.63870001 -1.17970002 -3.63870001 -1.35160005 -3.61520004 -1.17970002
		 -1.98239994 -0.0038999999 -1.95899999 0.2422 -1.98239994 0.2422 -1.95899999 -0.0038999999
		 1.95899999 -0.0038999999 1.98239994 0.2422 1.95899999 0.2422 1.98239994 -0.0038999999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -725.16998291 182.88000488 -665.47998047
		 -725.16998291 22.86000061 -777.23999023 -725.16998291 182.88000488 -777.23999023
		 -725.16998291 22.86000061 -665.47998047 -740.40997314 22.86000061 -665.47998047 -740.40997314 182.88000488 -777.23999023
		 -740.40997314 22.86000061 -777.23999023 -740.40997314 182.88000488 -665.47998047;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_88";
	rename -uid "76734821-41CC-4FC8-CD91-B5869DFF0D87";
createNode mesh -n "Model_88Shape" -p "Model_88";
	rename -uid "54F4F923-4F8B-0E06-D758-97B8BED38AD1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.46090001 0.2422
		 0.63279998 -0.0038999999 0.63279998 0.2422 0.46090001 -0.0038999999 -0.46090001 -0.0038999999
		 -0.63279998 0.2422 -0.63279998 -0.0038999999 -0.46090001 0.2422 1.76559997 -1.17970002
		 1.78910005 -1.35160005 1.78910005 -1.17970002 1.76559997 -1.35160005 -1.76559997
		 -1.35160005 -1.78910005 -1.17970002 -1.78910005 -1.35160005 -1.76559997 -1.17970002
		 -0.1328 -0.0038999999 -0.1094 0.2422 -0.1328 0.2422 -0.1094 -0.0038999999 0.1094
		 -0.0038999999 0.1328 0.2422 0.1094 0.2422 0.1328 -0.0038999999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  477.51998901 182.88000488 -665.47998047 477.51998901 22.86000061 -777.23999023
		 477.51998901 182.88000488 -777.23999023 477.51998901 22.86000061 -665.47998047 462.27999878 22.86000061 -665.47998047
		 462.27999878 182.88000488 -777.23999023 462.27999878 22.86000061 -777.23999023 462.27999878 182.88000488 -665.47998047;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_89";
	rename -uid "F6AD719A-460C-FA3C-F16F-5E90E6FA8619";
createNode mesh -n "Model_89Shape" -p "Model_89";
	rename -uid "82DB7E04-4058-1241-B04A-22959386007E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -4.5703001 0.26949999
		 -2.68359995 0.2422 -2.68359995 0.26949999 -4.5703001 0.2422 4.5703001 0.2422 2.68359995
		 0.26949999 2.68359995 0.2422 4.5703001 0.26949999 2.68359995 -1.51559997 4.5703001
		 -1.36720002 2.68359995 -1.36720002 4.5703001 -1.51559997 -4.5703001 -1.51559997 -2.68359995
		 -1.36720002 -4.5703001 -1.36720002 -2.68359995 -1.51559997 1.36720002 0.2422 1.51559997
		 0.26949999 1.36720002 0.26949999 1.51559997 0.2422 -1.51559997 0.2422 -1.36720002
		 0.26949999 -1.51559997 0.26949999 -1.36720002 0.2422;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -746.76000977 200.66000366 -629.91998291
		 480.059997559 182.88000488 -629.91998291 480.059997559 200.66000366 -629.91998291
		 -746.76000977 182.88000488 -629.91998291 -746.76000977 182.88000488 -726.44000244
		 480.059997559 200.66000366 -726.44000244 480.059997559 182.88000488 -726.44000244
		 -746.76000977 200.66000366 -726.44000244;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_90";
	rename -uid "EDBD07D4-4731-3954-EFA5-E3A46D6C88A5";
createNode mesh -n "Model_90Shape" -p "Model_90";
	rename -uid "7BBD3F07-4E39-10D5-9313-B9B34CC1B0AC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" -4.51170015 0.0625
		 -4.074200153 0 -4.074200153 0.0625 -4.51170015 0 4.51170015 0 4.074200153 0.0625
		 4.074200153 0 4.51170015 0.0625 -0.40619999 0.031300001 -0.031199999 -0.40619999
		 -0.031199999 0.031300001 -0.40619999 -0.40619999 0.40630001 -0.40619999 0.031300001
		 0.031300001 0.031300001 -0.40619999 0.40630001 0.031300001 -3.69919991 0.0625 -3.69919991
		 0 3.69919991 0 3.69919991 0.0625 -4.074200153 0 -4.074200153 0.0625 -4.074200153
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 60.95999908 -269.23999023 -972.82000732 20.31999969 -553.7199707
		 -972.82000732 60.95999908 -553.7199707 -972.82000732 20.31999969 -269.23999023 -1216.66003418 20.31999969 -269.23999023
		 -1216.66003418 60.95999908 -553.7199707 -1216.66003418 20.31999969 -553.7199707 -1216.66003418 60.95999908 -269.23999023;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 20 16 21
		f 3 -13 -4 -17
		mu 0 3 22 17 16
		f 3 17 -16 -2
		mu 0 3 18 5 19
		f 3 -12 -7 -18
		mu 0 3 18 6 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_91";
	rename -uid "CE937FCE-496B-DA51-D22B-9D949076FC51";
createNode mesh -n "Model_91Shape" -p "Model_91";
	rename -uid "89664688-425E-735F-93E3-468C537DDF1E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" -4.41800022 0.125
		 -4.043000221 0.0625 -4.043000221 0.125 -4.41800022 0.0625 4.41800022 0.0625 4.043000221
		 0.125 4.043000221 0.0625 4.41800022 0.125 -0.375 0 0 -0.375 0 0 -0.375 -0.375 0.375
		 -0.375 0.375 0 -4.10550022 0.0625 -3.73049998 0.125 -4.10550022 0.125 -3.73049998
		 0.0625 3.73049998 0.0625 4.10550022 0.125 3.73049998 0.125 4.10550022 0.0625 0 0
		 0 -0.375 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 101.59999847 -309.88000488
		 -972.82000732 60.95999908 -553.7199707 -972.82000732 101.59999847 -553.7199707 -972.82000732 60.95999908 -309.88000488
		 -1216.66003418 60.95999908 -309.88000488 -1216.66003418 101.59999847 -553.7199707
		 -1216.66003418 60.95999908 -553.7199707 -1216.66003418 101.59999847 -309.88000488;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 22 23
		f 3 -3 15 -14
		mu 0 3 12 13 24
		f 3 16 -15 -9
		mu 0 3 14 15 16
		f 3 -13 -4 -17
		mu 0 3 14 17 15
		f 3 17 -16 -2
		mu 0 3 18 19 20
		f 3 -12 -7 -18
		mu 0 3 18 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_92";
	rename -uid "01EE2221-4B17-36A7-13AA-919D29FB848C";
createNode mesh -n "Model_92Shape" -p "Model_92";
	rename -uid "1C0A3B6F-4405-8714-1E00-ED9698067736";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -4.32420015 0.1875
		 -4.011700153 0.125 -4.011700153 0.1875 -4.32420015 0.125 4.32420015 0.125 4.011700153
		 0.1875 4.011700153 0.125 4.32420015 0.1875 -0.34369999 -0.031199999 0.031300001 -0.34369999
		 0.031300001 -0.031199999 -0.34369999 -0.34369999 0.34380001 -0.34369999 -0.031300001
		 -0.031199999 -0.031300001 -0.34369999 0.34380001 -0.031199999 -4.13670015 0.125 -3.76169991
		 0.1875 -4.13670015 0.1875 -3.76169991 0.125 3.76169991 0.125 4.13670015 0.1875 3.76169991
		 0.1875 4.13670015 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 142.24000549 -350.51998901
		 -972.82000732 101.59999847 -553.7199707 -972.82000732 142.24000549 -553.7199707 -972.82000732 101.59999847 -350.51998901
		 -1216.66003418 101.59999847 -350.51998901 -1216.66003418 142.24000549 -553.7199707
		 -1216.66003418 101.59999847 -553.7199707 -1216.66003418 142.24000549 -350.51998901;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_93";
	rename -uid "EAC0F723-448D-EA20-77AF-9681D7C005A5";
createNode mesh -n "Model_93Shape" -p "Model_93";
	rename -uid "980EF7F5-462D-0256-1FB3-C2B218BDF400";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -4.23050022 0.25
		 -3.98049998 0.1875 -3.98049998 0.25 -4.23050022 0.1875 4.23050022 0.1875 3.98049998
		 0.25 3.98049998 0.1875 4.23050022 0.25 -0.3125 -0.0625 0.0625 -0.3125 0.0625 -0.0625
		 -0.3125 -0.3125 0.3125 -0.3125 -0.0625 -0.0625 -0.0625 -0.3125 0.3125 -0.0625 -4.16800022
		 0.1875 -3.79299998 0.25 -4.16800022 0.25 -3.79299998 0.1875 3.79299998 0.1875 4.16800022
		 0.25 3.79299998 0.25 4.16800022 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 182.88000488 -391.16000366
		 -972.82000732 142.24000549 -553.7199707 -972.82000732 182.88000488 -553.7199707 -972.82000732 142.24000549 -391.16000366
		 -1216.66003418 142.24000549 -391.16000366 -1216.66003418 182.88000488 -553.7199707
		 -1216.66003418 142.24000549 -553.7199707 -1216.66003418 182.88000488 -391.16000366;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_94";
	rename -uid "AC5B2D90-4F19-F03E-E6BA-5D8C1B02362C";
createNode mesh -n "Model_94Shape" -p "Model_94";
	rename -uid "2B986F4B-4559-2DC8-8103-BCBD29920B6F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -4.13670015 0.3125
		 -3.94919991 0.25 -3.94919991 0.3125 -4.13670015 0.25 4.13670015 0.25 3.94919991 0.3125
		 3.94919991 0.25 4.13670015 0.3125 -0.28119999 -0.093699999 0.093800001 -0.28119999
		 0.093800001 -0.093699999 -0.28119999 -0.28119999 0.28130001 -0.28119999 -0.093800001
		 -0.093699999 -0.093800001 -0.28119999 0.28130001 -0.093699999 -4.19920015 0.25 -3.82419991
		 0.3125 -4.19920015 0.3125 -3.82419991 0.25 3.82419991 0.25 4.19920015 0.3125 3.82419991
		 0.3125 4.19920015 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 223.52000427 -431.79998779
		 -972.82000732 182.88000488 -553.7199707 -972.82000732 223.52000427 -553.7199707 -972.82000732 182.88000488 -431.79998779
		 -1216.66003418 182.88000488 -431.79998779 -1216.66003418 223.52000427 -553.7199707
		 -1216.66003418 182.88000488 -553.7199707 -1216.66003418 223.52000427 -431.79998779;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_95";
	rename -uid "8C01B1FD-4508-A8DF-B57B-819710242F5D";
createNode mesh -n "Model_95Shape" -p "Model_95";
	rename -uid "DD41EBA2-41BA-30D8-F939-2B912DB36878";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -4.043000221 0.375
		 -3.91799998 0.3125 -3.91799998 0.375 -4.043000221 0.3125 4.043000221 0.3125 3.91799998
		 0.375 3.91799998 0.3125 4.043000221 0.375 -0.25 -0.125 0.125 -0.25 0.125 -0.125 -0.25
		 -0.25 0.25 -0.25 -0.125 -0.125 -0.125 -0.25 0.25 -0.125 -4.23050022 0.3125 -3.85549998
		 0.375 -4.23050022 0.375 -3.85549998 0.3125 3.85549998 0.3125 4.23050022 0.375 3.85549998
		 0.375 4.23050022 0.3125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 264.16000366 -472.44000244
		 -972.82000732 223.52000427 -553.7199707 -972.82000732 264.16000366 -553.7199707 -972.82000732 223.52000427 -472.44000244
		 -1216.66003418 223.52000427 -472.44000244 -1216.66003418 264.16000366 -553.7199707
		 -1216.66003418 223.52000427 -553.7199707 -1216.66003418 264.16000366 -472.44000244;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_96";
	rename -uid "665FD39E-428C-A31F-667B-B5B4E6A9F5FD";
createNode mesh -n "Model_96Shape" -p "Model_96";
	rename -uid "A3E77495-432E-D686-38BF-D6A589F2E21E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" -3.94919991 0.4375
		 -3.88669991 0.375 -3.88669991 0.4375 -3.94919991 0.375 3.94919991 0.375 3.88669991
		 0.4375 3.88669991 0.375 3.94919991 0.4375 -0.21870001 -0.15620001 0.15629999 -0.21870001
		 0.15629999 -0.15620001 -0.21870001 -0.21870001 0.21879999 -0.21870001 -0.15629999
		 -0.15620001 -0.15629999 -0.21870001 0.21879999 -0.15620001 -4.26170015 0.375 -4.26170015
		 0.4375 4.26170015 0.4375 4.26170015 0.375 -3.88669991 0.4375 -3.88669991 0.375 -3.88669991
		 0.4375 3.88669991 0.375 3.88669991 0.4375 3.88669991 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 304.79998779 -513.08001709
		 -972.82000732 264.16000366 -553.7199707 -972.82000732 304.79998779 -553.7199707 -972.82000732 264.16000366 -513.08001709
		 -1216.66003418 264.16000366 -513.08001709 -1216.66003418 304.79998779 -553.7199707
		 -1216.66003418 264.16000366 -553.7199707 -1216.66003418 304.79998779 -513.08001709;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 20 17
		f 3 -13 -4 -17
		mu 0 3 16 21 22
		f 3 17 -16 -2
		mu 0 3 23 18 24
		f 3 -12 -7 -18
		mu 0 3 25 19 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_97";
	rename -uid "A2E2A48D-446C-CAF7-9092-19A46FC1B4B4";
createNode mesh -n "Model_97Shape" -p "Model_97";
	rename -uid "BD2EDEB3-4A5F-2D73-CFB2-E89E09E56537";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" -4.51170015 0.0625
		 -4.074200153 0 -4.074200153 0.0625 -4.51170015 0 4.51170015 0 4.074200153 0.0625
		 4.074200153 0 4.51170015 0.0625 -0.40619999 0.031300001 -0.031199999 -0.40619999
		 -0.031199999 0.031300001 -0.40619999 -0.40619999 0.40630001 -0.40619999 0.031300001
		 0.031300001 0.031300001 -0.40619999 0.40630001 0.031300001 -3.69919991 0.0625 -3.69919991
		 0 3.69919991 0 3.69919991 0.0625 -4.074200153 0 -4.074200153 0.0625 -4.074200153
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 345.44000244 -510.54000854
		 -972.82000732 304.79998779 -795.020019531 -972.82000732 345.44000244 -795.020019531
		 -972.82000732 304.79998779 -510.54000854 -1216.66003418 304.79998779 -510.54000854
		 -1216.66003418 345.44000244 -795.020019531 -1216.66003418 304.79998779 -795.020019531
		 -1216.66003418 345.44000244 -510.54000854;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 20 16 21
		f 3 -13 -4 -17
		mu 0 3 22 17 16
		f 3 17 -16 -2
		mu 0 3 18 5 19
		f 3 -12 -7 -18
		mu 0 3 18 6 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_98";
	rename -uid "049B202E-43BE-A0DE-34F0-869B880B6000";
createNode mesh -n "Model_98Shape" -p "Model_98";
	rename -uid "514E2ACF-43ED-4C24-D9B8-F0A8CB421B66";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" -4.41800022 0.125
		 -4.043000221 0.0625 -4.043000221 0.125 -4.41800022 0.0625 4.41800022 0.0625 4.043000221
		 0.125 4.043000221 0.0625 4.41800022 0.125 -0.375 0 0 -0.375 0 0 -0.375 -0.375 0.375
		 -0.375 0.375 0 -4.10550022 0.0625 -3.73049998 0.125 -4.10550022 0.125 -3.73049998
		 0.0625 3.73049998 0.0625 4.10550022 0.125 3.73049998 0.125 4.10550022 0.0625 0 0
		 0 -0.375 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 386.079986572 -551.17999268
		 -972.82000732 345.44000244 -795.020019531 -972.82000732 386.079986572 -795.020019531
		 -972.82000732 345.44000244 -551.17999268 -1216.66003418 345.44000244 -551.17999268
		 -1216.66003418 386.079986572 -795.020019531 -1216.66003418 345.44000244 -795.020019531
		 -1216.66003418 386.079986572 -551.17999268;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 22 23
		f 3 -3 15 -14
		mu 0 3 12 13 24
		f 3 16 -15 -9
		mu 0 3 14 15 16
		f 3 -13 -4 -17
		mu 0 3 14 17 15
		f 3 17 -16 -2
		mu 0 3 18 19 20
		f 3 -12 -7 -18
		mu 0 3 18 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_99";
	rename -uid "6043EB86-42BE-7C7D-4531-AEA9F67DF8B1";
createNode mesh -n "Model_99Shape" -p "Model_99";
	rename -uid "570F616F-4995-8C1F-4CFF-6188928E8B58";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -4.32420015 0.1875
		 -4.011700153 0.125 -4.011700153 0.1875 -4.32420015 0.125 4.32420015 0.125 4.011700153
		 0.1875 4.011700153 0.125 4.32420015 0.1875 -0.34369999 -0.031199999 0.031300001 -0.34369999
		 0.031300001 -0.031199999 -0.34369999 -0.34369999 0.34380001 -0.34369999 -0.031300001
		 -0.031199999 -0.031300001 -0.34369999 0.34380001 -0.031199999 -4.13670015 0.125 -3.76169991
		 0.1875 -4.13670015 0.1875 -3.76169991 0.125 3.76169991 0.125 4.13670015 0.1875 3.76169991
		 0.1875 4.13670015 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 426.72000122 -591.82000732
		 -972.82000732 386.079986572 -795.020019531 -972.82000732 426.72000122 -795.020019531
		 -972.82000732 386.079986572 -591.82000732 -1216.66003418 386.079986572 -591.82000732
		 -1216.66003418 426.72000122 -795.020019531 -1216.66003418 386.079986572 -795.020019531
		 -1216.66003418 426.72000122 -591.82000732;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_100";
	rename -uid "3C7A8FE0-48B1-B2A2-92E2-35B3953427FE";
createNode mesh -n "Model_100Shape" -p "Model_100";
	rename -uid "B9D55622-4B9A-AC95-890A-928BF0E15F65";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -4.23050022 0.25
		 -3.98049998 0.1875 -3.98049998 0.25 -4.23050022 0.1875 4.23050022 0.1875 3.98049998
		 0.25 3.98049998 0.1875 4.23050022 0.25 -0.3125 -0.0625 0.0625 -0.3125 0.0625 -0.0625
		 -0.3125 -0.3125 0.3125 -0.3125 -0.0625 -0.0625 -0.0625 -0.3125 0.3125 -0.0625 -4.16800022
		 0.1875 -3.79299998 0.25 -4.16800022 0.25 -3.79299998 0.1875 3.79299998 0.1875 4.16800022
		 0.25 3.79299998 0.25 4.16800022 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 467.35998535 -632.46002197
		 -972.82000732 426.72000122 -795.020019531 -972.82000732 467.35998535 -795.020019531
		 -972.82000732 426.72000122 -632.46002197 -1216.66003418 426.72000122 -632.46002197
		 -1216.66003418 467.35998535 -795.020019531 -1216.66003418 426.72000122 -795.020019531
		 -1216.66003418 467.35998535 -632.46002197;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_101";
	rename -uid "E537DEA5-4722-5599-18FE-4383FF7E77DC";
createNode mesh -n "Model_101Shape" -p "Model_101";
	rename -uid "38F60F34-4A6F-2B61-5D60-B2B9228DF128";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -4.13670015 0.3125
		 -3.57809997 0.25 -3.57809997 0.3125 -4.13670015 0.25 4.13670015 0.25 3.57809997 0.3125
		 3.57809997 0.25 4.13670015 0.3125 -0.28119999 0.2773 0.093800001 -0.28130001 0.093800001
		 0.2773 -0.28119999 -0.28130001 0.28130001 -0.28119999 -0.093800001 0.2773 -0.093800001
		 -0.28119999 0.28130001 0.2773 -4.19920015 0.25 -3.82419991 0.3125 -4.19920015 0.3125
		 -3.82419991 0.25 3.82419991 0.25 4.19920015 0.3125 3.82419991 0.3125 4.19920015 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -972.82000732 508 -673.099975586 -972.82000732 467.35998535 -1036.31994629
		 -972.82000732 508 -1036.31994629 -972.82000732 467.35998535 -673.099975586 -1216.66003418 467.35998535 -673.099975586
		 -1216.66003418 508 -1036.31994629 -1216.66003418 467.35998535 -1036.31994629 -1216.66003418 508 -673.099975586;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_102";
	rename -uid "CCE5CB25-4609-4572-33A7-7CB3F1261B60";
createNode mesh -n "Model_102Shape" -p "Model_102";
	rename -uid "AECCE752-44AB-72CB-DAAF-C49E30B76F90";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[6:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -13.031200409 -0.71880001
		 -9.46870041 2.093699932 -13.031200409 2.093800068 -9.46870041 -0.71880001 -9.46879959
		 -0.0625 -13.031299591 0.031300001 -13.031299591 -0.0625 -9.46879959 0.031300001 13.031299591
		 -0.0625 9.46879959 0.031300001 9.46879959 -0.0625 13.031299591 0.031300001 13.031299591
		 -0.71880001 9.46879959 2.093699932 9.46879959 -0.71880001 13.031299591 2.093699932
		 0.71880001 0.031300001 -2.093800068 -0.0625 0.71880001 -0.0625 -2.093800068 0.031300001
		 -0.71880001 0.031300001 2.093800068 -0.0625 2.093800068 0.031300001 -0.71880001 -0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1076.95996094 -40.63999939 792.47998047 -1239.52001953 -40.63999939 -1036.31994629
		 1076.95996094 -40.63999939 -1036.31994629 -1239.52001953 -40.63999939 792.47998047
		 1076.95996094 20.31999969 -1036.31994629 -1239.52001953 20.31999969 -1036.31994629
		 -1239.52001953 20.31999969 792.47998047 1076.95996094 20.31999969 792.47998047;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 1 4 1 4 2 1
		 1 5 1 5 4 1 0 6 1 6 3 1 0 7 1 7 6 1 7 5 1 5 6 1 7 4 1 6 1 1 7 2 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 -2
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 10 -4
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 14 -13
		mu 0 3 12 13 14
		f 3 15 -9 -14
		mu 0 3 12 15 13
		f 3 16 -5 -11
		mu 0 3 16 17 18
		f 3 -15 -8 -17
		mu 0 3 16 19 17
		f 3 17 -7 -16
		mu 0 3 20 21 22
		f 3 -12 -3 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_103";
	rename -uid "BD45FF9B-4A61-9735-38B0-3CA60FBBC002";
createNode mesh -n "Model_103Shape" -p "Model_103";
	rename -uid "D7303472-44F9-E204-A690-589F64FA3EB6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -13.031200409 -0.625
		 -9.91409969 2.093699932 -13.031200409 2.093800068 -9.91409969 -0.625 -9.91409969
		 0.75389999 -13.031299591 0.7852 -13.031299591 0.75389999 -9.91409969 0.7852 13.031299591
		 -0.625 9.91409969 2.093699932 9.91409969 -0.625 13.031299591 2.093699932 0.625 0.7852
		 -2.093800068 0.75389999 0.625 0.75389999 -2.093800068 0.7852 -0.625 0.7852 2.093800068
		 0.75389999 2.093800068 0.7852 -0.625 0.75389999 13.031299591 0.75389999 9.91409969
		 0.7852 9.91409969 0.75389999 13.031299591 0.7852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1076.95996094 490.22000122 731.52001953 -949.96002197 490.22000122 -1036.31994629
		 1076.95996094 490.22000122 -1036.31994629 -949.96002197 490.22000122 731.52001953
		 1076.95996094 510.54000854 -1036.31994629 -949.96002197 510.54000854 -1036.31994629
		 1076.95996094 510.54000854 731.52001953 -949.96002197 510.54000854 731.52001953;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 1 4 1 4 2 1
		 1 5 1 5 4 1 6 5 1 5 7 1 7 6 1 6 4 1 7 1 1 3 7 1 6 2 1 6 0 1 0 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 -2
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -9 -10
		mu 0 3 8 11 9
		f 3 13 -5 14
		mu 0 3 12 13 14
		f 3 -11 -8 -14
		mu 0 3 12 15 13
		f 3 15 -7 -13
		mu 0 3 16 17 18
		f 3 16 -3 -16
		mu 0 3 16 19 17
		f 3 17 -15 -4
		mu 0 3 20 21 22
		f 3 -17 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_104";
	rename -uid "C790E8F6-4F5A-5E00-BD76-1EA078B36ACD";
createNode mesh -n "Model_104Shape" -p "Model_104";
	rename -uid "52767AC1-434E-2841-C27F-489A81521663";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -9.90620041 -0.625
		 -9.5 0.375 -9.90620041 0.375 -9.5 -0.625 -9.5 0.75389999 -9.90629959 0.7852 -9.90629959
		 0.75389999 -9.5 0.7852 9.90629959 -0.625 9.5 0.375 9.5 -0.625 9.90629959 0.375 0.625
		 0.7852 -0.375 0.75389999 0.625 0.75389999 -0.375 0.7852 -0.625 0.7852 0.375 0.75389999
		 0.375 0.7852 -0.625 0.75389999 9.90629959 0.75389999 9.5 0.7852 9.5 0.75389999 9.90629959
		 0.7852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -955.039978027 490.22000122 731.52001953
		 -1219.19995117 490.22000122 81.27999878 -955.039978027 490.22000122 81.27999878 -1219.19995117 490.22000122 731.52001953
		 -955.039978027 510.54000854 81.27999878 -1219.19995117 510.54000854 81.27999878 -955.039978027 510.54000854 731.52001953
		 -1219.19995117 510.54000854 731.52001953;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 1 4 1 4 2 1
		 1 5 1 5 4 1 6 5 1 5 7 1 7 6 1 6 4 1 7 1 1 3 7 1 6 2 1 6 0 1 0 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 -2
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -9 -10
		mu 0 3 8 11 9
		f 3 13 -5 14
		mu 0 3 12 13 14
		f 3 -11 -8 -14
		mu 0 3 12 15 13
		f 3 15 -7 -13
		mu 0 3 16 17 18
		f 3 16 -3 -16
		mu 0 3 16 19 17
		f 3 17 -15 -4
		mu 0 3 20 21 22
		f 3 -17 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_105";
	rename -uid "D57DA52A-4837-63A0-FC47-21B2F2004A43";
createNode mesh -n "Model_105Shape" -p "Model_105";
	rename -uid "5508DA1F-4CE3-146C-20F6-DB866086269E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -9.91409969 1.11720002
		 -9.8828001 2.093699932 -9.91409969 2.093699932 -9.8828001 1.11720002 -9.8828001 0.031199999
		 -9.91409969 0.7852 -9.91409969 0.031199999 -9.8828001 0.7852 9.91409969 1.11720002
		 9.8828001 2.093699932 9.8828001 1.11720002 9.91409969 2.093699932 -1.11720002 0.7852
		 -2.093800068 0.031199999 -1.11720002 0.031199999 -2.093800068 0.7852 1.11720002 0.7852
		 2.093699932 0.031199999 2.093699932 0.7852 1.11720002 0.031199999 9.91409969 0.031199999
		 9.8828001 0.7852 9.8828001 0.031199999 9.91409969 0.7852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -949.96002197 20.31999969 -401.32000732 -970.2800293 20.31999969 -1036.31994629
		 -949.96002197 20.31999969 -1036.31994629 -970.2800293 20.31999969 -401.32000732 -949.96002197 510.54000854 -1036.31994629
		 -970.2800293 510.54000854 -1036.31994629 -949.96002197 510.54000854 -401.32000732
		 -970.2800293 510.54000854 -401.32000732;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 1 4 1 4 2 1
		 1 5 1 5 4 1 6 5 1 5 7 1 7 6 1 6 4 1 7 1 1 3 7 1 6 2 1 6 0 1 0 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 -2
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -9 -10
		mu 0 3 8 11 9
		f 3 13 -5 14
		mu 0 3 12 13 14
		f 3 -11 -8 -14
		mu 0 3 12 15 13
		f 3 15 -7 -13
		mu 0 3 16 17 18
		f 3 16 -3 -16
		mu 0 3 16 19 17
		f 3 17 -15 -4
		mu 0 3 20 21 22
		f 3 -17 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_106";
	rename -uid "4B92322C-4029-FEAE-26DF-4AACD8076884";
createNode mesh -n "Model_106Shape" -p "Model_106";
	rename -uid "62A1771A-49B4-C3A7-C00B-CB96A2058AFF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -3.5169000923633575 9.0090002417564392 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 7 ".pt";
	setAttr ".pt[8]" -type "float3" 7.6293945e-006 0 0 ;
	setAttr ".pt[9]" -type "float3" 7.6293945e-006 0 0 ;
	setAttr ".pt[11]" -type "float3" 7.6293945e-006 0 0 ;
	setAttr ".pt[12]" -type "float3" 7.6293945e-006 0 0 ;
createNode mesh -n "polySurfaceShape1" -p "Model_106";
	rename -uid "35CBE1F8-45F9-F7A7-E71E-4183DFD3524E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[8:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.61379999 0.2299
		 -4.73210001 -0.99290001 0.61379999 -0.99290001 -4.73210001 0.2299 -7.64760017 19.14669991
		 -2.30159998 19.010900497 -2.30159998 19.14669991 -7.64760017 19.010900497 3.30159998
		 19.14679909 8.64760017 19.010900497 8.64760017 19.14679909 3.30159998 19.010900497
		 -2.30159998 -0.033399999 -7.64760017 1.18939996 -7.64760017 -0.033399999 -2.30159998
		 1.18939996 -1.1875 1.18939996 -1.053599954 -0.033399999 -1.053599954 1.18939996 -1.1875
		 -0.033399999 1.053599954 1.18939996 1.1875 -0.033399999 1.1875 1.18939996 1.053599954
		 -0.033399999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  1132.83996582 508 853.44000244 -1300.47998047 -40.63999939 853.44000244
		 1132.83996582 -40.63999939 853.44000244 -1300.47998047 508 853.44000244 1132.83996582 -40.63999939 792.47998047
		 -1300.47998047 -40.63999939 792.47998047 -1300.47998047 508 792.47998047 1132.83996582 508 792.47998047;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 1 5 1
		 5 4 1 4 2 1 6 0 1 0 7 1 7 6 1 6 3 1 5 7 1 7 4 1 5 6 1 6 1 1 0 4 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -2 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -4 -10
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -12 -14
		mu 0 3 12 15 13
		f 3 16 -5 -13
		mu 0 3 16 17 18
		f 3 -16 -7 -17
		mu 0 3 16 19 17
		f 3 17 -15 -11
		mu 0 3 20 21 22
		f 3 -3 -9 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_107";
	rename -uid "7DB1FEF1-4FBD-4C84-C3F0-3C9B38C455B5";
createNode mesh -n "Model_107Shape" -p "Model_107";
	rename -uid "023F1530-404D-D3B5-14A6-698110C84A06";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 9.34770012 1.56410003
		 13.15629959 2.39280009 9.34770012 2.39280009 13.15629959 1.56410003 -0.25389999 2.10439992
		 -0.66409999 2.75 -0.66409999 2.65890002 -0.1445 2.10439992 0.66409999 2.75 0.25389999
		 2.10439992 0.66409999 2.65890002 0.1445 2.10439992 -13.15629959 2.65890002 -9.34770012
		 2.75 -13.15629959 2.75 -9.34770012 2.65890002 -9.34770012 0.25389999 -13.15620041
		 0.1445 -9.34770012 0.1445 -13.15620041 0.25389999 -9.34770012 1.67840004 -13.15629959
		 2.36820006 -13.15629959 1.67840004 -9.34770012 2.36820006;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1310.64001465 1162.59448242 231.13999939
		 1165.85998535 1582.41992188 -106.68000031 -1310.64001465 1582.41992188 -106.68000031
		 1165.85998535 1162.59448242 231.13999939 -1310.64001465 1162.59448242 160.020004272
		 -1310.64001465 1523.21411133 -106.68000031 1165.85998535 1162.59448242 160.020004272
		 1165.85998535 1523.21411133 -106.68000031;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_108";
	rename -uid "1E20310C-4D48-B931-56DC-86806A779A72";
createNode mesh -n "Model_108Shape" -p "Model_108";
	rename -uid "777DEB00-44C3-0703-E031-5095EEFB10D6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 9.34770012 0.74470001
		 13.15629959 1.58060002 9.34770012 1.58060002 13.15629959 0.74470001 0.331 1.59179997
		 -0.1445 2.1961 -0.25389999 2.1961 0.44 1.59850001 0.1445 2.1961 -0.331 1.59179997
		 0.25389999 2.1961 -0.44 1.59850001 13.15629959 0.3457 9.34770012 0.23630001 13.15629959
		 0.23630001 9.34770012 0.3457 -9.34770012 -0.3335 -13.15629959 -0.44260001 -9.34770012
		 -0.44260001 -13.15629959 -0.3335 -9.34770012 0.77560002 -13.15629959 1.61660004 -13.15629959
		 0.77560002 -9.34770012 1.61660004;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1310.64001465 773.99737549 611.20349121
		 1165.85998535 1162.59423828 231.13999939 -1310.64001465 1162.59423828 231.13999939
		 1165.85998535 773.99737549 611.20349121 -1310.64001465 769.61938477 540.35418701
		 -1310.64001465 1162.59423828 160.020004272 1165.85998535 769.61938477 540.35418701
		 1165.85998535 1162.59423828 160.020004272;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_109";
	rename -uid "DD03703C-444B-67CD-28E0-70BC88FBA05C";
createNode mesh -n "Model_109Shape" -p "Model_109";
	rename -uid "45153DAA-4619-8899-8D0F-CFABA7F042A5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 9.34770012 -0.2942
		 13.15629959 0.46990001 9.34770012 0.46990001 13.15629959 -0.2942 0.91799998 1.011700034
		 0.4375 1.50839996 0.33199999 1.50010002 1.0273 1.022799969 -0.4375 1.50839996 -0.91799998
		 1.011700034 -0.33199999 1.50010002 -1.0273 1.022799969 13.15629959 -0.4522 9.34770012
		 -0.55800003 13.15629959 -0.55800003 9.34770012 -0.4522 -9.34770012 -1.021199942 -13.15620041
		 -1.13110006 -9.34770012 -1.13110006 -13.15620041 -1.021199942 -9.34770012 -0.2094
		 -13.15629959 0.55330002 -13.15629959 -0.2094 -9.34770012 0.55330002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1310.64001465 459.29650879 993.14001465
		 1165.85998535 775.062683105 609.59997559 -1310.64001465 775.062683105 609.59997559
		 1165.85998535 459.29650879 993.14001465 -1310.64001465 452.11999512 922.020019531
		 -1310.64001465 769.68041992 541.020019531 1165.85998535 452.11999512 922.020019531
		 1165.85998535 769.68041992 541.020019531;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 2 1 2 5 1
		 5 4 1 4 0 1 1 6 1 6 7 1 7 1 1 3 6 1 7 2 1 7 5 1 4 3 1 4 6 1 4 7 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 -3 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 -5 12 -10
		mu 0 3 8 11 9
		f 3 13 -2 -12
		mu 0 3 12 13 14
		f 3 14 -7 -14
		mu 0 3 12 15 13
		f 3 15 -4 -9
		mu 0 3 16 17 18
		f 3 16 -13 -16
		mu 0 3 16 19 17
		f 3 17 -11 -17
		mu 0 3 20 21 22
		f 3 -8 -15 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_110";
	rename -uid "4FE368D3-44E9-0D08-4E40-E78005C176D6";
	setAttr ".t" -type "double3" 541.69391221812464 0 -18.257886101077219 ;
createNode mesh -n "Model_110Shape" -p "Model_110";
	rename -uid "390060E6-4A25-C074-8A90-42A6C3E73205";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[6:11]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[2:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" -8.77229977 -0.24150001
		 -8.2208004 -0.99150002 -8.2208004 -0.24150001 -8.77229977 -0.99150002 1 0 0.18179999
		 0.81819999 0.18179999 0 1 0.81819999 1 1 0.18179999 1 -0.5625 1.875 -0.28130001 1.9375
		 -0.5625 1.9375 -0.28130001 1.875 -1.9375 0.0284 -1.875 0.5909 -1.9375 0.5909 -1.875
		 0.0284 1.875 0.0284 1.9375 0.5909 1.875 0.5909 1.9375 0.0284 0.18179999 0 0.18179999
		 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -690.88000488 325.11999512 894.08001709 -508 -40.63999939 894.08001709
		 -508 325.11999512 894.08001709 -690.88000488 -40.63999939 894.08001709 -690.88000488 -40.63999939 853.44000244
		 -508 325.11999512 853.44000244 -508 -40.63999939 853.44000244 -690.88000488 325.11999512 853.44000244;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 22 8 9
		f 3 -5 12 -11
		mu 0 3 23 24 8
		f 3 13 -10 14
		mu 0 3 10 11 12
		f 3 -3 15 -14
		mu 0 3 10 13 11
		f 3 16 -15 -9
		mu 0 3 14 15 16
		f 3 -13 -4 -17
		mu 0 3 14 17 15
		f 3 17 -16 -2
		mu 0 3 18 19 20
		f 3 -12 -7 -18
		mu 0 3 18 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_111";
	rename -uid "9BEB3FD9-4F17-5757-E623-96B7C74C92C8";
createNode mesh -n "Model_111Shape" -p "Model_111";
	rename -uid "5BD0AAE0-4522-D7EE-94F2-84956F4CBF71";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" -15.15219975 3.80579996
		 -15.12989998 3.8736999 -15.15499973 3.8513 -15.12989998 3.80579996 15.12989998 3.80579996
		 15.15499973 3.8513 15.12989998 3.8736999 15.15219975 3.80579996 51.74399948 4.78560019
		 51.85139847 4.83120012 51.74399948 4.83120012 51.85139847 4.78560019 -51.74399948
		 3.8736999 -51.85139847 3.80579996 -51.74399948 3.80579996 -51.85139847 3.8736999
		 -29.41279984 -6.27110004 -29.52020073 -6.29339981 -29.41279984 -6.29339981 -29.52020073
		 -6.27110004;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 27.94000053 10.15060043 -1122.67993164 58.85380173 -0.00050000002
		 -1122.67993164 48.65319824 11.42440033 -1122.67993164 27.94000053 -0.00050000002
		 -1171.57495117 27.94000053 -0.00050000002 -1171.57495117 48.65319824 11.42440033
		 -1171.57495117 58.85380173 -0.00050000002 -1171.57495117 27.94000053 10.15060043;
	setAttr -s 17 ".ed[0:16]"  0 1 1 1 2 0 2 0 1 0 3 1 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 1 7 5 1 7 2 1 2 5 0 7 0 1 6 3 1 3 4 1 6 1 0 4 0 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 10 -ch 30 ".fc[0:9]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13
		f 3 16 -13 -9
		mu 0 3 16 17 18
		f 3 -15 -4 -17
		mu 0 3 16 19 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_112";
	rename -uid "A920EBAA-45BE-A367-91FC-8B8C4F4C4BD4";
createNode mesh -n "Model_112Shape" -p "Model_112";
	rename -uid "5BF32398-49BB-0AB8-DBE0-168E47EAA7D6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -15.16769981 3.8513
		 -15.15620041 3.92750001 -15.17599964 3.89510012 -15.14260006 3.8736999 15.14260006
		 3.8736999 15.17599964 3.89510012 15.15620041 3.92750001 15.16769981 3.8513 51.74840164
		 6.69220018 51.85580063 6.73670006 51.74840164 6.73670006 51.85580063 6.69220018 -51.74840164
		 7.5953002 -51.85580063 7.53980017 -51.74840164 7.53980017 -51.85580063 7.5953002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 48.65319824 11.42490005 -1122.67993164 83.34480286 6.20930004
		 -1122.67993164 68.57009888 15.1953001 -1122.67993164 58.85380173 0 -1171.57495117 58.85380173 0
		 -1171.57495117 68.57009888 15.1953001 -1171.57495117 83.34480286 6.20930004 -1171.57495117 48.65319824 11.42490005;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_113";
	rename -uid "CDC310DF-48D3-E2CC-37EF-55ACED0247DE";
createNode mesh -n "Model_113Shape" -p "Model_113";
	rename -uid "223BED2D-4C2C-C194-AB88-4CBBE851BF56";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -15.21749973 3.89510012
		 -15.21319962 3.98250008 -15.23099995 3.93540001 -15.19779968 3.92750001 15.19779968
		 3.92750001 15.23099995 3.93540001 15.21319962 3.98250008 15.21749973 3.89510012 51.76290131
		 8.52439976 51.87030029 8.56690025 51.76290131 8.56690025 51.87030029 8.52439976 -51.76290131
		 7.99490023 -51.87030029 7.93779993 -51.76290131 7.93779993 -51.87030029 7.99490023;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 68.57009888 15.1953001 -1122.67993164 108.37550354 13.23089981
		 -1122.67993164 86.92620087 21.31850052 -1122.67993164 83.34500122 6.20930004 -1171.57495117 83.34500122 6.20979977
		 -1171.57495117 86.92620087 21.31900024 -1171.57495117 108.37550354 13.23209953 -1171.57495117 68.57009888 15.1953001;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_114";
	rename -uid "BB624469-4EEC-EACD-85ED-C5816B3F34F5";
createNode mesh -n "Model_114Shape" -p "Model_114";
	rename -uid "2272E7AD-4D0B-498F-364B-D785B960493E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -15.28240013 3.93540001
		 -15.28540039 4.030700207 -15.30049992 3.97070003 -15.2645998 3.98250008 15.2645998
		 3.98250008 15.30049992 3.97070003 15.28540039 4.030700207 15.28240013 3.93540001
		 51.78070068 10.33259964 51.88819885 10.37230015 51.78070068 10.37230015 51.88819885
		 10.33259964 -51.78079987 9.68540001 -51.88819885 9.63290024 -51.78079987 9.63290024
		 -51.88819885 9.68540001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 86.92590332 21.31850052 -1122.67993164 130.31500244 22.6814003
		 -1122.67993164 103.01499939 29.55920029 -1122.67993164 108.37550354 13.23139954 -1171.57495117 108.37550354 13.23139954
		 -1171.57495117 103.01499939 29.55920029 -1171.57495117 130.31500244 22.6814003 -1171.57495117 86.92590332 21.31850052;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_115";
	rename -uid "ECB17AC8-4675-C2BD-EDDD-69BE327005C5";
createNode mesh -n "Model_115Shape" -p "Model_115";
	rename -uid "90CD5772-4411-7E17-3245-AB9423E1CAFF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -15.36610031 3.97070003
		 -15.37629986 4.070300102 -15.38819981 3.99979997 -15.35099983 4.030700207 15.35099983
		 4.030700207 15.38819981 3.99979997 15.37629986 4.070300102 15.36610031 3.97070003
		 -57.22240067 7.93529987 -57.11489868 7.97170019 -57.22240067 7.97170019 -57.11489868
		 7.93529987 53.55360031 9.22560024 53.44609833 9.17860031 53.55360031 9.17860031 53.44609833
		 9.22560024;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 103.01499939 29.55850029 -1122.67993164 148.32029724 34.19630051
		 -1122.67993164 116.21869659 39.60010147 -1122.67993164 130.31500244 22.6807003 -1171.57495117 130.31500244 22.6807003
		 -1171.57495117 116.21869659 39.60010147 -1171.57495117 148.32029724 34.19630051 -1171.57495117 103.01499939 29.55920029;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_116";
	rename -uid "455540FC-4F7A-4210-093A-9A81F55F7EC1";
createNode mesh -n "Model_116Shape" -p "Model_116";
	rename -uid "56BA76C9-42BB-C1DB-41DA-319D74071EC2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -15.46560001 3.99979997
		 -15.48260021 4.099699974 -15.49069977 4.021299839 -15.45370007 4.070300102 15.45370007
		 4.070300102 15.49069977 4.021299839 15.48260021 4.099699974 15.46560001 3.99979997
		 -58.14049911 5.6500001 -58.2478981 5.61689997 -58.14049911 5.61689997 -58.2478981
		 5.6500001 50.38560104 7.9124999 50.27819824 7.87130022 50.38560104 7.87130022 50.27819824
		 7.9124999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 116.21869659 39.60010147 -1122.67993164 161.69920349 47.332901
		 -1122.67993164 126.029998779 51.055999756 -1122.67993164 148.32029724 34.19630051
		 -1171.57495117 148.32029724 34.19630051 -1171.57495117 126.029998779 51.055999756
		 -1171.57495117 161.69920349 47.33420181 -1171.57495117 116.21869659 39.60010147;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_117";
	rename -uid "ADC550B6-46D7-58FA-6B93-769260EC2FD3";
createNode mesh -n "Model_117Shape" -p "Model_117";
	rename -uid "5D7CC682-42B6-9CE4-E802-438820F04D85";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -15.57689953 4.021299839
		 -15.60000038 4.11780024 -15.60420036 4.034599781 -15.56869984 4.099699974 15.56869984
		 4.099699974 15.60420036 4.034599781 15.60000038 4.11780024 15.57689953 4.021299839
		 -59.97290039 6.067599773 -60.080299377 6.037199974 -59.97290039 6.037199974 -60.080299377
		 6.067599773 30.89529991 -7.3671999 31.0027008057 -7.33109999 30.89529991 -7.33109999
		 31.0027008057 -7.3671999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 126.029998779 51.055500031
		 -1122.67993164 169.9382019 61.58810043 -1122.67993164 132.071899414 63.48500061 -1122.67993164 161.69920349 47.332901
		 -1171.57495117 161.69920349 47.33369827 -1171.57495117 132.071899414 63.4858017 -1171.57495117 169.9382019 61.58810043
		 -1171.57495117 126.029998779 51.055500031;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_118";
	rename -uid "A849E030-415F-3863-2A4B-1DA47ADAF4E7";
createNode mesh -n "Model_118Shape" -p "Model_118";
	rename -uid "62E3EFA5-47C4-33B7-9994-4EB478BFDB04";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -15.69569969 4.034599781
		 -15.72410011 4.12389994 -15.72410011 4.03910017 -15.69159985 4.11780024 15.69159985
		 4.11780024 15.72410011 4.03910017 15.72410011 4.12389994 15.69569969 4.034599781
		 -61.0083007813 6.39650011 -61.11569977 6.36780024 -61.0083007813 6.36780024 -61.11569977
		 6.39650011 29.62280083 -6.88590002 29.73019981 -6.85279989 29.62280083 -6.85279989
		 29.73019981 -6.88590002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 132.071899414 63.48500061
		 -1122.67993164 172.72000122 76.41210175 -1122.67993164 134.11199951 76.41210175 -1122.67993164 169.93789673 61.58890152
		 -1171.57495117 169.93789673 61.58890152 -1171.57495117 134.11199951 76.41210175 -1171.57495117 172.72000122 76.41210175
		 -1171.57495117 132.071899414 63.48630142;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_119";
	rename -uid "41C2659E-4331-19B8-7E3B-73954859DD4A";
createNode mesh -n "Model_119Shape" -p "Model_119";
	rename -uid "2860ECCC-4F9C-70FD-1164-E89FAB863647";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -15.82400036 4.03910017
		 -15.85659981 4.11780024 -15.85239983 4.034599781 -15.82400036 4.12389994 15.82400036
		 4.12389994 15.85239983 4.034599781 15.85659981 4.11780024 15.82400036 4.03910017
		 -60.8103981 6.75519991 -60.9178009 6.7263999 -60.8103981 6.7263999 -60.9178009 6.75519991
		 30.010900497 -6.34420013 30.11829948 -6.31110001 30.010900497 -6.31110001 30.11829948
		 -6.34420013;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 134.11199951 76.41259766 -1122.67993164 169.93789673 91.23600006
		 -1122.67993164 132.071899414 89.33840179 -1122.67993164 172.72000122 76.41259766
		 -1171.57495117 172.72000122 76.41259766 -1171.57495117 132.071899414 89.33969879
		 -1171.57495117 169.93789673 91.23600006 -1171.57495117 134.11199951 76.41259766;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_120";
	rename -uid "FE5C6D9E-4E70-7D49-97B5-E1966228ED31";
createNode mesh -n "Model_120Shape" -p "Model_120";
	rename -uid "BD35857E-4252-8407-2E64-EA892718CC56";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -15.94400024 4.034599781
		 -15.97949982 4.099699974 -15.97130013 4.021299839 -15.94820023 4.11780024 15.94820023
		 4.11780024 15.97130013 4.021299839 15.97949982 4.099699974 15.94400024 4.034599781
		 -59.36729813 7.14559984 -59.47470093 7.11530018 -59.36729813 7.11530018 -59.47470093
		 7.14559984 32.033500671 -5.78830004 32.14089966 -5.75209999 32.033500671 -5.75209999
		 32.14089966 -5.78830004;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 132.071899414 89.33969879
		 -1122.67993164 161.69920349 105.4917984 -1122.67993164 126.029998779 101.76989746
		 -1122.67993164 169.9382019 91.23729706 -1171.57495117 169.9382019 91.23729706 -1171.57495117 126.029998779 101.76989746
		 -1171.57495117 161.69920349 105.49259949 -1171.57495117 132.071899414 89.34020233;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_121";
	rename -uid "FC86287E-4455-85F7-3F21-FD917C47BEFC";
createNode mesh -n "Model_121Shape" -p "Model_121";
	rename -uid "8594ECF0-4185-FDBD-BDBF-809574DB9441";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -16.05739975 4.021299839
		 -16.094499588 4.070300102 -16.08259964 3.99979997 -16.065599442 4.099699974 16.065599442
		 4.099699974 16.08259964 3.99979997 16.094499588 4.070300102 16.05739975 4.021299839
		 -57.27080154 7.51380014 -57.37820053 7.48059988 -57.27080154 7.48059988 -57.37820053
		 7.51380014 49.47359848 -8.43430042 49.58100128 -8.39309978 49.47359848 -8.39309978
		 49.58100128 -8.43430042;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 126.029998779 101.76940155
		 -1122.67993164 148.32029724 118.62889862 -1122.67993164 116.21869659 113.22480011
		 -1122.67993164 161.69920349 105.49130249 -1171.57495117 161.69920349 105.4917984
		 -1171.57495117 116.21869659 113.22480011 -1171.57495117 148.32029724 118.62889862
		 -1171.57495117 126.029998779 101.76940155;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_122";
	rename -uid "EBB8350D-4E13-AE40-2720-C1A1F93D7276";
createNode mesh -n "Model_122Shape" -p "Model_122";
	rename -uid "BEBDD679-4CBA-1118-C8B6-20901BEA8CA5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -16.15999985 3.99979997
		 -16.19709969 4.030700207 -16.18199921 3.97070003 -16.17180061 4.070300102 16.17180061
		 4.070300102 16.18199921 3.97070003 16.19709969 4.030700207 16.15999985 3.99979997
		 -52.81290054 -5.46099997 -52.92029953 -5.49739981 -52.81290054 -5.49739981 -52.92029953
		 -5.46099997 52.015800476 -6.40269995 52.12319946 -6.35580015 52.015800476 -6.35580015
		 52.12319946 -6.40280008;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 116.21869659 113.22480011
		 -1122.67993164 130.31500244 130.14399719 -1122.67993164 103.01499939 123.26570129
		 -1122.67993164 148.32029724 118.62840271 -1171.57495117 148.32029724 118.62889862
		 -1171.57495117 103.01499939 123.2661972 -1171.57495117 130.31500244 130.14399719
		 -1171.57495117 116.21869659 113.22480011;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_123";
	rename -uid "2E81ACFC-4A7B-AAF8-5603-AA96B70CF044";
createNode mesh -n "Model_123Shape" -p "Model_123";
	rename -uid "C45B7F7F-4140-5C5E-EBE0-5A82A585C339";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -16.24769974 3.97070003
		 -16.28359985 3.98250008 -16.26580048 3.93540001 -16.26280022 4.030700207 16.26280022
		 4.030700207 16.26580048 3.93540001 16.28359985 3.98250008 16.24769974 3.97070003
		 -52.038600922 -4.83920002 -52.14599991 -4.87890005 -52.038600922 -4.87890005 -52.14599991
		 -4.83920002 52.038600922 -3.63980007 52.14599991 -3.58739996 52.038600922 -3.58739996
		 52.14599991 -3.63980007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 103.01499939 123.2661972 -1122.67993164 108.37550354 139.59410095
		 -1122.67993164 86.92590332 131.50700378 -1122.67993164 130.31500244 130.14399719
		 -1171.57495117 130.31500244 130.14399719 -1171.57495117 86.92590332 131.50700378
		 -1171.57495117 108.37550354 139.59410095 -1171.57495117 103.01499939 123.2661972;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_124";
	rename -uid "5E234F3B-4280-B73D-1F21-C5B98380D2A1";
createNode mesh -n "Model_124Shape" -p "Model_124";
	rename -uid "F923AB6E-4E4E-CA99-B4F1-C7830C853D4D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -16.31719971 3.93540001
		 -16.35040092 3.92750001 -16.33069992 3.89510012 -16.33499908 3.98250008 16.33499908
		 3.98250008 16.33069992 3.89510012 16.35040092 3.92750001 16.31719971 3.93540001 -52.056499481
		 -2.11919999 -52.16389847 -2.16170001 -52.056499481 -2.16170001 -52.16389847 -2.11919999
		 52.056499481 -1.21340001 52.16389847 -1.15629995 52.056499481 -1.15629995 52.16389847
		 -1.21340001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 86.92590332 131.50650024 -1122.67993164 83.34500122 146.61560059
		 -1122.67993164 68.57009888 137.63020325 -1122.67993164 108.37550354 139.5933075 -1171.57495117 108.37550354 139.59460449
		 -1171.57495117 68.57009888 137.63020325 -1171.57495117 83.34500122 146.61619568 -1171.57495117 86.92590332 131.50700378;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_125";
	rename -uid "DFBD43BC-4A50-CFCD-EDA7-EDA1702F8188";
createNode mesh -n "Model_125Shape" -p "Model_125";
	rename -uid "00004C4D-4834-012C-09E5-F7A4C89BD72A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -16.36590004 3.89510012
		 -16.39509964 3.86789989 -16.37409973 3.8513 -16.38559914 3.92750001 16.38559914 3.92750001
		 16.37409973 3.8513 16.39509964 3.86789989 16.36590004 3.89510012 -52.06880188 0.40560001
		 -52.17620087 0.361 -52.06880188 0.361 -52.17620087 0.40560001 52.068698883 0.93279999
		 52.17620087 0.9932 52.068698883 0.9932 52.17620087 0.93279999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 68.57009888 137.63020325 -1122.67993164 56.18510056 150.94030762
		 -1122.67993164 48.65319824 141.40100098 -1122.67993164 83.34480286 146.61560059 -1171.57495117 83.34480286 146.61560059
		 -1171.57495117 48.65319824 141.40100098 -1171.57495117 56.18510056 150.94030762 -1171.57495117 68.57009888 137.63020325;
	setAttr -s 16 ".ed[0:15]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 0 7 0 0 6 3 1 3 4 0 6 1 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 8 -ch 24 ".fc[0:7]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -8
		mu 0 3 12 13 14
		f 3 15 -5 -14
		mu 0 3 12 15 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_126";
	rename -uid "FEE91E34-4052-92C5-D36B-40B3D02C116F";
createNode mesh -n "Model_126Shape" -p "Model_126";
	rename -uid "0FD1541D-4D58-D332-40CE-EDAA0C22338D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" -16.39179993 3.8513
		 -16.41589928 3.80579996 -16.39459991 3.80579996 -16.41270065 3.86789989 16.41270065
		 3.86789989 16.39459991 3.80579996 16.41589928 3.80579996 16.39179993 3.8513 -52.074901581
		 2.73379993 -52.18230057 2.6882 -52.074901581 2.6882 -52.18230057 2.73379993 -29.74370003
		 -6.91540003 -29.85110092 -6.93669987 -29.74370003 -6.93669987 -29.85110092 -6.91540003
		 52.074901581 2.8671 52.18230057 2.92930007 52.074901581 2.92930007 52.18230057 2.8671;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1122.67993164 48.65319824 141.40029907 -1122.67993164 27.94000053 152.3999939
		 -1122.67993164 27.94000053 142.67359924 -1122.67993164 56.18510056 150.94030762 -1171.57495117 56.18510056 150.94030762
		 -1171.57495117 27.94000053 142.67359924 -1171.57495117 27.94000053 152.3999939 -1171.57495117 48.65319824 141.40029907;
	setAttr -s 17 ".ed[0:16]"  0 1 1 1 2 1 2 0 1 0 3 0 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 0 7 5 1 7 2 1 2 5 1 7 0 0 5 1 1 1 6 1 6 3 1 3 4 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 10 -ch 30 ".fc[0:9]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 11 -10
		mu 0 3 8 9 10
		f 3 12 -3 -11
		mu 0 3 8 11 9
		f 3 13 14 -7
		mu 0 3 12 13 14
		f 3 -12 -2 -14
		mu 0 3 12 15 13
		f 3 15 16 -8
		mu 0 3 16 17 18
		f 3 -15 -5 -16
		mu 0 3 16 19 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_127";
	rename -uid "E23D2802-4C75-6047-48E9-0497679CBFC9";
createNode mesh -n "Model_127Shape" -p "Model_127";
	rename -uid "083F1C09-49CC-0AB8-90CB-A09C316BBFB7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 4.21150017 -0.38280001
		 4.65789986 -0.44530001 4.65789986 -0.38280001 4.21150017 -0.44530001 -11.25979996
		 -1.93159997 -11.17770004 -2.24410009 -11.17770004 -1.93159997 -11.25979996 -2.24410009
		 11.25979996 -2.24410009 11.17770004 -1.93159997 11.17770004 -2.24410009 11.25979996
		 -1.93159997 -3.34179997 -0.1953 -3.42379999 -0.22660001 -3.34179997 -0.22660001 -3.42379999
		 -0.1953 3.34179997 -0.1953 3.42379999 -0.22660001 3.42379999 -0.1953 3.34179997 -0.22660001
		 5.78849983 -1.28149998 5.34210014 -1.23619998 5.34210014 -1.28149998 5.78849983 -1.23619998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1176.020019531 27.94000053 -20.31999969
		 -1176.020019531 7.61999989 182.88000488 -1176.020019531 27.94000053 182.88000488
		 -1176.020019531 7.61999989 -20.31999969 -1122.67993164 7.61999989 -20.31999969 -1122.67993164 7.61999989 182.88000488
		 -1122.67993164 27.94000053 182.88000488 -1122.67993164 27.94000053 -20.31999969;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 3 4 1
		 4 5 1 5 1 1 6 0 1 2 6 1 6 7 1 7 0 1 6 1 1 5 6 1 7 3 1 7 4 1 4 6 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 -5 6
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 -3 10
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 -9 14
		mu 0 3 12 13 14
		f 3 -11 -2 -14
		mu 0 3 12 15 13
		f 3 15 -4 -13
		mu 0 3 16 17 18
		f 3 16 -7 -16
		mu 0 3 16 19 17
		f 3 17 -15 -8
		mu 0 3 20 21 22
		f 3 -17 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_128";
	rename -uid "44AA8C40-4309-6E25-55C5-E9A73CF667CE";
createNode mesh -n "Model_128Shape" -p "Model_128";
	rename -uid "0ACC4255-4813-1410-A766-E49C2A247EE4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 4.097099781 0.99220002
		 4.54349995 -0.44530001 4.54349995 0.99220002 4.097099781 -0.44530001 -11.25389957
		 -1.85160005 -11.16020012 -2.16409993 -11.16020012 -1.85160005 -11.25389957 -2.16409993
		 11.25389957 -2.16409993 11.16020012 -1.85160005 11.16020012 -2.16409993 11.25389957
		 -1.85160005 -3.5078001 0.49219999 -3.60159993 -0.22660001 -3.5078001 -0.22660001
		 -3.60159993 0.49219999 3.5078001 0.49219999 3.60159993 -0.22660001 3.60159993 0.49219999
		 3.5078001 -0.22660001 5.90290022 -1.28149998 5.45650005 -0.23980001 5.45650005 -1.28149998
		 5.90290022 -0.23980001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1239.52001953 474.98001099 -20.31999969
		 -1239.52001953 7.61999989 182.88000488 -1239.52001953 474.98001099 182.88000488 -1239.52001953 7.61999989 -20.31999969
		 -1178.55993652 7.61999989 -20.31999969 -1178.55993652 7.61999989 182.88000488 -1178.55993652 474.98001099 182.88000488
		 -1178.55993652 474.98001099 -20.31999969;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 3 4 1
		 4 5 1 5 1 1 6 0 1 2 6 1 6 7 1 7 0 1 6 1 1 5 6 1 7 3 1 7 4 1 4 6 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 -5 6
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 -3 10
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 -9 14
		mu 0 3 12 13 14
		f 3 -11 -2 -14
		mu 0 3 12 15 13
		f 3 15 -4 -13
		mu 0 3 16 17 18
		f 3 16 -7 -16
		mu 0 3 16 19 17
		f 3 17 -15 -8
		mu 0 3 20 21 22
		f 3 -17 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_129";
	rename -uid "C53A4EA9-42D2-2383-90EF-E4BEC1C8ACAE";
createNode mesh -n "Model_129Shape" -p "Model_129";
	rename -uid "41A39ED4-4488-E549-0B57-369FAFD5EF65";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 4.26170015 -0.0469
		 4.52400017 -0.44530001 4.47380018 -0.070299998 4.18919992 -0.44530001 -11.23239994
		 -1.93159997 -11.22070026 -2.16599989 -11.22070026 -1.93159997 -11.23239994 -2.16599989
		 11.25380039 -2.11380005 11.24209976 -1.96490002 11.24209976 -2.11380005 11.25380039
		 -1.96490002 -3.44729996 -1.73899996 -3.45900011 -1.92980003 -3.44729996 -1.92980003
		 -3.45900011 -1.73899996 3.44729996 2.20740008 3.45900011 2.0018000603 3.45900011
		 2.20740008 3.44729996 2.0018000603 5.81080008 -1.28149998 5.52619982 -1.0096999407
		 5.47599983 -1.28149998 5.73829985 -0.9928;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1178.55993652 137.16000366 33.020000458
		 -1178.55993652 7.61999989 152.3999939 -1178.55993652 129.53999329 129.53999329 -1178.55993652 7.61999989 0
		 -1170.93994141 7.61999989 0 -1170.93994141 7.61999989 152.3999939 -1170.93994141 129.53999329 129.53999329
		 -1170.93994141 137.16000366 33.020000458;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 3 4 1
		 4 5 1 5 1 1 6 0 1 2 6 1 6 7 1 7 0 1 6 1 1 5 6 1 7 3 1 7 4 1 4 6 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 -5 6
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 -3 10
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 -9 14
		mu 0 3 12 13 14
		f 3 -11 -2 -14
		mu 0 3 12 15 13
		f 3 15 -4 -13
		mu 0 3 16 17 18
		f 3 16 -7 -16
		mu 0 3 16 19 17
		f 3 17 -15 -8
		mu 0 3 20 21 22
		f 3 -17 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_130";
	rename -uid "B2C7D19B-45A2-85E7-C55A-D0B8E6116E75";
createNode mesh -n "Model_130Shape" -p "Model_130";
	rename -uid "9A99E245-4B52-9E2E-2868-A4A464C97222";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 1.64709997 1.24849999
		 1.81379998 0.96880001 1.81379998 1.24849999 1.64709997 0.96880001 -1.64709997 1.10469997
		 -1.81379998 1.25569999 -1.81379998 1.10469997 -1.64709997 1.25569999 -1.81379998
		 2.9835999 -1.64709997 3.14529991 -1.81379998 3.14529991 -1.64709997 2.9835999 -10.96220016
		 -6.089799881 -10.79559994 -6 -10.96220016 -6 -10.79559994 -6.089799881 -3.6328001
		 1.0977 -3.53520012 1.24849999 -3.625 1.24849999 -3.53520012 0.96880001 3.53520012
		 0.96880001 3.625 1.24849999 3.53520012 1.24849999 3.6328001 1.0977;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1362.28662109 1393.4864502 185.41999817
		 -1253.91333008 1211.57995605 185.41999817 -1253.91333008 1393.4864502 185.41999817
		 -1362.28662109 1211.57995605 185.41999817 -1362.28662109 1295.40002441 121.91999817
		 -1253.91333008 1393.4864502 127 -1253.91333008 1295.40002441 121.91999817 -1362.28662109 1393.4864502 127;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_131";
	rename -uid "751F4058-4CC3-DDAC-69B8-6F865FED47EA";
createNode mesh -n "Model_131Shape" -p "Model_131";
	rename -uid "99B26579-410A-9205-9486-54A10EAE0A3A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 1.63670003 1.054700017
		 1.82420003 1.029800057 1.82420003 1.054700017 1.63670003 1.029800057 -1.63670003
		 1.029800057 -1.82420003 1.054700017 -1.82420003 1.029800057 -1.63670003 1.054700017
		 10.78520012 -6.2809 10.97270012 -6.1559 10.78520012 -6.1559 10.97270012 -6.2809 -10.97270012
		 -6.11329985 -10.78520012 -5.98829985 -10.97270012 -5.98829985 -10.78520012 -6.11329985
		 -3.62890005 1.029800057 -3.50390005 1.054700017 -3.62890005 1.054700017 -3.50390005
		 1.029800057 3.50390005 1.029800057 3.62890005 1.054700017 3.50390005 1.054700017
		 3.62890005 1.029800057;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1369.059936523 1409.69995117 198.11999512
		 -1247.14001465 1393.4864502 198.11999512 -1247.14001465 1409.69995117 198.11999512
		 -1369.059936523 1393.4864502 198.11999512 -1369.059936523 1393.4864502 116.83999634
		 -1247.14001465 1409.69995117 116.83999634 -1247.14001465 1393.4864502 116.83999634
		 -1369.059936523 1409.69995117 116.83999634;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 6 7
		mu 0 3 4 5 6
		f 3 8 9 -6
		mu 0 3 4 7 5
		f 3 10 -8 11
		mu 0 3 8 9 10
		f 3 -5 12 -11
		mu 0 3 8 11 9
		f 3 13 -10 14
		mu 0 3 12 13 14
		f 3 -3 15 -14
		mu 0 3 12 15 13
		f 3 16 -15 -9
		mu 0 3 16 17 18
		f 3 -13 -4 -17
		mu 0 3 16 19 17
		f 3 17 -16 -2
		mu 0 3 20 21 22
		f 3 -12 -7 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_132";
	rename -uid "F7157A4B-4537-CD30-D92A-A596846BC2D5";
createNode mesh -n "Model_132Shape" -p "Model_132";
	rename -uid "0DBF55EA-4D45-559F-6E01-6C98E89266E0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 4.097099781 3.21880007
		 4.54349995 1.085899949 4.54349995 2.52340007 4.097099781 1.085899949 -11.25389957
		 -1.85160005 -11.16020012 -2.16409993 -11.16020012 -1.85160005 -11.25389957 -2.16409993
		 11.25389957 -0.95819998 11.16020012 -0.49070001 11.16020012 -0.95819998 11.25389957
		 -0.49070001 -3.5078001 1.25779998 -3.60159993 0.53909999 -3.5078001 0.53909999 -3.60159993
		 1.25779998 3.5078001 1.60549998 3.60159993 0.53909999 3.60159993 1.60549998 3.5078001
		 0.53909999 5.90290022 -0.1719 5.45650005 0.86979997 5.45650005 -0.1719 5.90290022
		 1.37360001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1239.52001953 1198.88000488 -20.31999969
		 -1239.52001953 505.45999146 182.88000488 -1239.52001953 972.82000732 182.88000488
		 -1239.52001953 505.45999146 -20.31999969 -1178.55993652 505.45999146 -20.31999969
		 -1178.55993652 505.45999146 182.88000488 -1178.55993652 972.82000732 182.88000488
		 -1178.55993652 1198.88000488 -20.31999969;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 3 4 1
		 4 5 1 5 1 1 6 0 1 2 6 1 6 7 1 7 0 1 6 1 1 5 6 1 7 3 1 7 4 1 4 6 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 -5 6
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 -3 10
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 -9 14
		mu 0 3 12 13 14
		f 3 -11 -2 -14
		mu 0 3 12 15 13
		f 3 15 -4 -13
		mu 0 3 16 17 18
		f 3 16 -7 -16
		mu 0 3 16 19 17
		f 3 17 -15 -8
		mu 0 3 20 21 22
		f 3 -17 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_133";
	rename -uid "2543A297-4319-F288-8FE8-8A8BCD0B5691";
createNode mesh -n "Model_133Shape" -p "Model_133";
	rename -uid "F3DDD1B7-496D-A6E7-7DFB-E49C1535F235";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 4.097099781 2.71880007
		 4.54349995 -0.59380001 4.54349995 2.71880007 4.097099781 -0.59380001 -11.066399574
		 -1.85160005 -10.97270012 -2.16409993 -10.97270012 -1.85160005 -11.066399574 -2.16409993
		 11.066399574 -2.16409993 10.97270012 -1.85160005 10.97270012 -2.16409993 11.066399574
		 -1.85160005 -3.6953001 1.35549998 -3.78909993 -0.3008 -3.6953001 -0.3008 -3.78909993
		 1.35549998 3.6953001 1.35549998 3.78909993 -0.3008 3.78909993 1.35549998 3.6953001
		 -0.3008 5.90290022 -1.38900006 5.45650005 1.011299968 5.45650005 -1.38900006 5.90290022
		 1.011299968;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1361.43994141 1036.31994629 -20.31999969
		 -1361.43994141 -40.63999939 182.88000488 -1361.43994141 1036.31994629 182.88000488
		 -1361.43994141 -40.63999939 -20.31999969 -1300.47998047 -40.63999939 -20.31999969
		 -1300.47998047 -40.63999939 182.88000488 -1300.47998047 1036.31994629 182.88000488
		 -1300.47998047 1036.31994629 -20.31999969;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 3 4 1
		 4 5 1 5 1 1 6 0 1 2 6 1 6 7 1 7 0 1 6 1 1 5 6 1 7 3 1 7 4 1 4 6 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 -5 6
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 -3 10
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 -9 14
		mu 0 3 12 13 14
		f 3 -11 -2 -14
		mu 0 3 12 15 13
		f 3 15 -4 -13
		mu 0 3 16 17 18
		f 3 16 -7 -16
		mu 0 3 16 19 17
		f 3 17 -15 -8
		mu 0 3 20 21 22
		f 3 -17 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_134";
	rename -uid "E52B4667-42EB-10F5-ECDF-DD886685CB35";
createNode mesh -n "Model_134Shape" -p "Model_134";
	rename -uid "E41D7885-4E37-76FD-7D12-6CBCAFC78493";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 4.40399981 3.51559997
		 4.54349995 2.71880007 4.54349995 3.26259995 4.21430016 2.71090007 -11.066399574 -1.9605
		 -10.97270012 -2.19099998 -10.97270012 -1.9605 -11.066399574 -2.19099998 11.066399574
		 -0.57770002 10.97270012 -0.4179 10.97270012 -0.57770002 11.066399574 -0.4179 -3.6953001
		 1.62740004 -3.78909993 1.35549998 -3.6953001 1.35549998 -3.78909993 1.62740004 3.6953001
		 1.71109998 3.78909993 1.28740001 3.78909993 1.71109998 3.6953001 1.28740001 5.78569984
		 1.0056999922 5.45650005 1.40540004 5.45650005 1.011299968 5.59600019 1.58879995;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1361.43994141 1295.40002441 119.37999725
		 -1361.43994141 1036.31994629 182.88000488 -1361.43994141 1213.12304688 182.88000488
		 -1361.43994141 1033.7800293 33.020000458 -1300.47998047 1033.7800293 33.020000458
		 -1300.47998047 1036.31994629 182.88000488 -1300.47998047 1213.12304688 182.88000488
		 -1300.47998047 1295.40002441 119.37999725;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 3 4 1
		 4 5 1 5 1 1 6 0 1 2 6 1 6 7 1 7 0 1 6 1 1 5 6 1 7 3 1 7 4 1 4 6 1;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -1
		mu 0 3 0 3 1
		f 3 5 -5 6
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 -3 10
		mu 0 3 8 9 10
		f 3 11 12 -10
		mu 0 3 8 11 9
		f 3 13 -9 14
		mu 0 3 12 13 14
		f 3 -11 -2 -14
		mu 0 3 12 15 13
		f 3 15 -4 -13
		mu 0 3 16 17 18
		f 3 16 -7 -16
		mu 0 3 16 19 17
		f 3 17 -15 -8
		mu 0 3 20 21 22
		f 3 -17 -12 -18
		mu 0 3 20 23 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C6CE2D4F-4E98-2B54-52DF-918D9EC61843";
	setAttr -s 17 ".lnk";
	setAttr -s 17 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8D7D5F48-4C21-DE03-7F61-D48BF782CA7C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "96DC090D-47CB-0336-7F4F-04BAC9912AA8";
createNode displayLayerManager -n "layerManager";
	rename -uid "C4A6AF12-4801-9A81-BA5B-88B0D2238106";
createNode displayLayer -n "defaultLayer";
	rename -uid "DD3BD320-40EB-E36B-2A5E-6084A04281E6";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9AE1E598-49AE-5B21-AE87-D9BC3320846E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F83B4674-4E12-6306-5D8E-E0AF2F59E4ED";
	setAttr ".g" yes;
createNode shadingEngine -n "Mat_9";
	rename -uid "9F2F2B0A-419F-7A95-BF45-D7941B76A256";
	setAttr ".ihi" 0;
	setAttr -s 18 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 18 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "3135FBD8-4D48-5D1D-6430-21A352A2F77A";
createNode groupId -n "groupId1";
	rename -uid "A303E307-4966-CB24-21C3-3E803A33BA25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "1D512731-489C-7D18-12A1-37BEE3C2AB9D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "AE499504-4BF6-58C1-76B7-7D9491B36DBF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "EC4DBB10-4FD5-FE79-D84F-63A5289CD6CF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "8D7A089E-49CA-01F3-56A2-188BAD5285D8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "29E243EA-435A-E673-F4DC-1F86D7E94B86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "6B23B749-4245-A243-21E5-D0BDC13D3863";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "D1F55AD6-48B3-9C5A-F37E-6BA4702F7151";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "32582E58-4EBF-BF7A-FC3D-1885F397C339";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "DA272B82-47A3-2F32-C877-82B4D747376B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "DEBF2B14-4381-FA1F-EFAC-BFBD1DF01EA3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "9205ADA7-4B7B-EE84-F983-74994E4CBACB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "0904A9C6-46D9-CB1B-2EA8-B0B6C67C1719";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "A39A9C52-41EE-7FA4-4A04-1AB5E5E2C1E8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "59C8D9C6-4E5D-B5C4-6639-56BAF187D0F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "F07A3018-4AE6-C195-8F28-748336194A09";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "6E6B8591-4D96-3C12-116F-4F909F115468";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "71DE3764-4C27-EC1E-C2E0-90BE685AC7A9";
	setAttr ".ihi" 0;
createNode phong -n "Mat_10";
	rename -uid "A3A2B802-4C12-5DA8-B44E-80915F54FFC7";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_10F";
	rename -uid "6F43D956-4D73-FA6D-8608-63B37787279A";
	setAttr ".ftn" -type "string" "mapswr8.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_10P2D";
	rename -uid "0A95E93F-4F69-50B0-C40C-EAAE782F0031";
createNode file -n "Mat_10F1";
	rename -uid "144D2D25-4DBA-DF2A-8F5C-1BACF0ED655E";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/wr8.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_10P2D1";
	rename -uid "2652A8C5-48B6-C110-C9C1-1E95199D8D5D";
createNode shadingEngine -n "Mat_1";
	rename -uid "55E6856A-45CD-4674-4242-FB9A75FA366B";
	setAttr ".ihi" 0;
	setAttr -s 35 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 35 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "9B77F38C-4993-9FD4-F41F-178D5FC0F2F1";
createNode groupId -n "groupId19";
	rename -uid "93D3A562-4770-BB57-B191-4294D01AE3AE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "F154E34F-4E11-0FEA-BE00-34B65FFACC47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "4BD93A58-4B12-D5F1-D492-7688A6A66CA1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "7D10B49B-4EAC-D7AB-F047-EEBFC198CCAF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "A0F2F5AA-4FB6-4085-A812-13A5EC139D59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "246A9222-4525-3FED-8947-F59F5DF13791";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "FF499724-4281-3CF9-906D-67872124E7D6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "2A03D055-4069-FA60-9EC0-B5A491DB97D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "B8C98CC0-4EAB-CC7E-87D0-FAB413A3EEAB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "421BB8A2-4633-6584-A032-46834DD23182";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "00B9F0DE-4F4C-C4E1-1545-498658D01C9A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	rename -uid "E6104336-4F5B-E886-5ECB-43ACF0184635";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	rename -uid "9035F1C7-448F-5303-1361-62B72CD8057D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	rename -uid "5F7B2521-4836-B2B4-10E5-4BB27416E9DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	rename -uid "AF9B12EC-4E97-D591-439C-8688DF5C84D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "A31DDF21-45EA-D639-145D-3587A01DD57E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	rename -uid "0C4D8085-47F6-0656-400B-B396C62992DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "FDDD163B-4E11-094E-898F-DEBD6C73E840";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	rename -uid "02D8F3EC-49BA-C3CA-5471-28B83C93DB18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "EA159B94-41E3-9700-6B2A-88AB28497B68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	rename -uid "E7E278D0-4A90-9947-4FFA-13B52DF3066F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "AF4FF947-424A-4344-C278-979D23EBD9C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	rename -uid "A97D9068-4E47-3FD4-DB76-FD967C17DC7C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	rename -uid "53ABE159-4086-C5C1-8538-6F8DC934EC53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	rename -uid "38817203-42E1-F76E-C352-50B977691366";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	rename -uid "6F5FD4BA-4A9F-9CB1-2607-1F8285BE63E4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	rename -uid "91AE181C-4AF4-20E4-B2CB-1E9FC590C081";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	rename -uid "F788EB33-4CE4-1430-4A77-D093FD5E287D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	rename -uid "14028CA4-4665-65AF-1FB4-DAB0D067E09C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId49";
	rename -uid "AB1776B3-42C8-8CA0-B538-7CAE3F8333BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	rename -uid "B6531DFD-4AE3-4586-0637-0BAE2FC97ACE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId51";
	rename -uid "9B967854-4A69-9406-0BCD-F18A5777F64C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	rename -uid "58653AB4-4EF5-43C2-544E-6FB0BAFD857E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	rename -uid "E96870AC-43C3-E77F-1C4F-0188CAAE3F03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	rename -uid "09602D79-45C2-BF2E-C4D1-71BA03ECDE47";
	setAttr ".ihi" 0;
createNode phong -n "Mat_11";
	rename -uid "94DC915C-42E2-3477-4706-CC80480A157E";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_11F";
	rename -uid "80DC0137-44A1-7680-14A6-549BD76619CC";
	setAttr ".ftn" -type "string" "mapscs.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_11P2D";
	rename -uid "3DBF7DD5-42D6-26A4-7CB2-C48AFE2E9710";
createNode file -n "Mat_11F1";
	rename -uid "D071074A-4E8E-6230-1811-DEAFBBFC9E29";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/cs.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_11P2D1";
	rename -uid "BCCBC6E7-4879-ECD6-DCB5-CE8DD9E08F19";
createNode shadingEngine -n "Mat_12";
	rename -uid "20D1B0BD-4F04-5182-FD4C-ECA3CF00FBD2";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 10 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "23EA388F-4ED6-BCF2-A75E-088AD38535A1";
createNode groupId -n "groupId55";
	rename -uid "773328EB-4EB4-7FC5-2C96-DA860356ABB4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	rename -uid "ED8B393D-4EF4-13FB-74A4-FFBF9211ABC8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	rename -uid "7CC93950-40A7-4C20-6F86-45B963773091";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	rename -uid "5B79353F-43F6-F2B7-3BBA-D991256071CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	rename -uid "EFA6EF90-4FB9-ABE8-72C7-8FBF3B3CBA91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	rename -uid "8ABD5B89-4BCA-4D25-67CE-81B675DAA842";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	rename -uid "51E5DF23-4588-77D3-6FBE-8E8F703DCD05";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	rename -uid "2EE15C67-4590-E4F7-FFBC-EFB8ED3A9018";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	rename -uid "AC2B3CD0-4C1D-D9D5-27BA-9583DFD8645D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	rename -uid "C8AB596B-4B5F-3192-C649-AB86CF4AC67C";
	setAttr ".ihi" 0;
createNode phong -n "Mat_13";
	rename -uid "E55B3642-45C5-90E0-A2B0-059750EDAAAE";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_13F";
	rename -uid "747C7332-4DD5-2BC6-16AB-F585D1B52673";
	setAttr ".ftn" -type "string" "mapsmw64.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_13P2D";
	rename -uid "6704DFC0-461F-D581-58F9-56ACFC33F0BB";
createNode file -n "Mat_13F1";
	rename -uid "3E24ABE6-4707-93DC-617F-559B769485B9";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/mw64.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_13P2D1";
	rename -uid "445EC009-4DD8-E4AD-E4B6-D6BAED89775C";
createNode shadingEngine -n "Mat_8";
	rename -uid "EB79E7B7-40AF-48C3-D86B-BD8325A65FB8";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 11 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "5065C852-4514-9125-496D-3D9ABFF99E8D";
createNode groupId -n "groupId66";
	rename -uid "55F15926-4370-45A5-7F78-FB9E91B24AC2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	rename -uid "740DD58B-4272-A170-5A92-1BA5AAAECD91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	rename -uid "65D9EC3F-4532-0052-3428-ECA670F85C76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	rename -uid "5818896F-45E4-4682-C2CA-E6B86DAA956D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	rename -uid "217A5AA9-47FA-2821-0B2A-A18A17355F83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId71";
	rename -uid "97F4B57E-4987-B26F-D1F6-7E8B293D2EB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	rename -uid "71E4BD70-41D5-6C09-BD1E-E6A736951A2C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId73";
	rename -uid "FEFAF8EC-4C75-D948-40D4-AAA2C6ED9254";
	setAttr ".ihi" 0;
createNode groupId -n "groupId75";
	rename -uid "5A3C9486-47F7-25AE-3AED-A9A53578AFC6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	rename -uid "4FF0DB65-42EA-ED8F-7E0F-D6A7E90142E0";
	setAttr ".ihi" 0;
createNode phong -n "Mat_14";
	rename -uid "EEFED7DF-4E2A-57B8-6778-36998876E84B";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_14F";
	rename -uid "A2C897B3-4D03-4996-9BEE-CC8C497635DA";
	setAttr ".ftn" -type "string" "mapsmw55.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_14P2D";
	rename -uid "634F941A-4A41-2C68-69D0-B4BFEC30EA9B";
createNode file -n "Mat_14F1";
	rename -uid "B809C0B3-4D44-C65B-ED07-028CE76FA9A5";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/mw55.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_14P2D1";
	rename -uid "65B6365E-4C3E-F1B7-2C78-AAAC0B852BBE";
createNode shadingEngine -n "Mat_2";
	rename -uid "9C73C104-451F-9CA0-9AF7-08982762A722";
	setAttr ".ihi" 0;
	setAttr -s 71 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 71 ".gn";
createNode materialInfo -n "materialInfo5";
	rename -uid "07347654-4766-1364-BDD8-B0891B89575C";
createNode groupId -n "groupId78";
	rename -uid "811AE987-4A3D-D42C-3ED4-E28A9F216309";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	rename -uid "7C07DF16-46D7-0686-B115-9BA1E506B7D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId80";
	rename -uid "D257D8C4-484E-6182-87C6-DCAEDAFBFF0C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId81";
	rename -uid "A6BD8DBC-42D1-D5C5-70D7-35BB7A506525";
	setAttr ".ihi" 0;
createNode groupId -n "groupId82";
	rename -uid "0162F78D-49E3-913D-0000-AF8A14107A19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	rename -uid "75BD375C-4C16-B010-4E3F-A3AA66C6078D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId84";
	rename -uid "098E84CF-446A-EC09-ABF9-2787DD3C4EF1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	rename -uid "12265E8D-4F18-63FD-C4E7-FBAEE26C1C21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId86";
	rename -uid "3546057A-49B1-D959-1EDB-1DB21262CF8A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId87";
	rename -uid "6A6C0F54-4FB1-2EA5-1BF6-B99E6235ACF5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId88";
	rename -uid "A6DD8F15-4A81-F03A-C689-A9B27C1C88E0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	rename -uid "AE9D040D-4935-0E3B-FB45-B8ABDA1E30A7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId90";
	rename -uid "80FAA343-4CAD-ED97-11A2-E7AB08EE8A32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId91";
	rename -uid "020FEEDB-4A7A-1272-9144-1BB4FE00BF89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId92";
	rename -uid "815887C6-47AB-FF67-6186-B49050B9B79B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	rename -uid "5A589A00-48D4-6BED-DEF1-A08FE415B93A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId94";
	rename -uid "9F684172-43F9-B9BE-0449-048404D3E24D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId95";
	rename -uid "40FD2199-4A55-6852-C9CB-4EB98DDAC5C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId96";
	rename -uid "EFF36E40-4E27-49DC-FADA-9AB785585D97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId97";
	rename -uid "558D59FB-48AD-D8B6-854D-68BD0DBEAA76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	rename -uid "12D0420B-4534-1CFD-4E5E-FA8BC6873BD3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId99";
	rename -uid "A22A6935-4D21-1BB7-90C0-CCB5D31E3B04";
	setAttr ".ihi" 0;
createNode groupId -n "groupId100";
	rename -uid "D52619F5-44A6-E813-113F-F08543CD2DA6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	rename -uid "799A0F19-4568-2C2F-AFF5-37AA0E5A49EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId102";
	rename -uid "464D214C-4491-E9C5-7651-DEAA308A8EA9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId103";
	rename -uid "F29E3CC5-4284-9E37-76E6-A092F8AD0800";
	setAttr ".ihi" 0;
createNode groupId -n "groupId104";
	rename -uid "E6F7FD0F-4A52-EF9D-EABB-3C87D80667D6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId105";
	rename -uid "6F31DC30-4D6E-EAC9-57C8-9A88A488EAF6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	rename -uid "C243356E-4D82-D550-0499-47AEE7AE5F2C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId107";
	rename -uid "77A70AAF-41BC-4286-A2FD-679EFA74012E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId108";
	rename -uid "6487AB84-45CE-E51E-FD79-1494790EB690";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	rename -uid "ABC388AF-40BF-90F4-8BDD-37A73A21172D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId110";
	rename -uid "4D31E7FA-4B33-236E-FF65-6593350127AE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId111";
	rename -uid "33DA4681-48D9-8E34-987F-7C8689AECF00";
	setAttr ".ihi" 0;
createNode groupId -n "groupId112";
	rename -uid "F4421DB9-43E4-C2CF-9F76-EF9F685EB742";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	rename -uid "9D7330C2-40DB-CB40-A906-AB8593E60638";
	setAttr ".ihi" 0;
createNode groupId -n "groupId114";
	rename -uid "63D28B6D-451D-B1C9-786D-D4887C7C8B86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId115";
	rename -uid "7F9DEB81-40DE-9BC0-26BD-28AB7BC3EF77";
	setAttr ".ihi" 0;
createNode groupId -n "groupId116";
	rename -uid "6462ACE4-49A4-6A59-2EF4-9293B3656CDC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId117";
	rename -uid "5539A59F-4910-4399-22B8-D78BEF35C169";
	setAttr ".ihi" 0;
createNode groupId -n "groupId118";
	rename -uid "EB543B7E-4FD2-B3C5-95BA-0CBAE06B1523";
	setAttr ".ihi" 0;
createNode groupId -n "groupId119";
	rename -uid "06B6EC24-4AE9-1463-81D8-CA8144AD6026";
	setAttr ".ihi" 0;
createNode groupId -n "groupId120";
	rename -uid "E962781A-4308-9A48-EC8E-13B0259BA1A3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId121";
	rename -uid "73315A62-456E-C08D-82F4-EE8D16F20ABD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId122";
	rename -uid "DB03627D-42F6-4ECB-B8E4-4F8028942C41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId123";
	rename -uid "B2D47C10-4825-FD83-ABA8-E9872319F122";
	setAttr ".ihi" 0;
createNode groupId -n "groupId124";
	rename -uid "1B48E6A7-4045-0765-8231-648DF8A27F04";
	setAttr ".ihi" 0;
createNode groupId -n "groupId125";
	rename -uid "13AD45CD-4C62-F814-A0E0-9FAF96BA5CBC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId126";
	rename -uid "41C3E937-45BA-418A-C8FE-77A29C70FBA0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId127";
	rename -uid "38D52E8B-4F6C-AC51-F22E-859B5CE9A7C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId128";
	rename -uid "CE044FC3-4001-74F2-996B-FF8001CCB254";
	setAttr ".ihi" 0;
createNode groupId -n "groupId129";
	rename -uid "F6F70187-4F17-CEF2-2150-CDBC04960276";
	setAttr ".ihi" 0;
createNode groupId -n "groupId130";
	rename -uid "EBA12858-4AF5-09EB-308E-D7AF79B83527";
	setAttr ".ihi" 0;
createNode groupId -n "groupId131";
	rename -uid "3B63D652-44AE-CDD5-2265-A6AE1D72A43C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId132";
	rename -uid "A6291D17-41BC-C527-E421-98A1799045C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId133";
	rename -uid "63B68F33-4D39-B1B5-C17B-BAA5F1363A77";
	setAttr ".ihi" 0;
createNode groupId -n "groupId134";
	rename -uid "C402B78F-423A-E0CE-3A64-E6B56EF0F894";
	setAttr ".ihi" 0;
createNode groupId -n "groupId135";
	rename -uid "4391AAFD-470F-4C72-E692-16A50612B5A5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId136";
	rename -uid "509C054A-4953-650C-AAC4-B284669FF4E0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId137";
	rename -uid "E9E74F69-4D3A-9C11-8B12-659E0727FADC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId138";
	rename -uid "215CF430-41F8-C560-0E99-C1B11AF15382";
	setAttr ".ihi" 0;
createNode groupId -n "groupId139";
	rename -uid "3A1230CC-4397-75BC-34BF-6BAE13550DEB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId140";
	rename -uid "68A2E2D2-4FE4-A903-6CF3-E39A6C04D5AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId141";
	rename -uid "63DAF56B-4846-9353-BBA7-84AC4E66B9E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId142";
	rename -uid "58FD7948-4B82-B3B2-BAA5-B6B664820F4E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId143";
	rename -uid "D586E1ED-418D-2820-1316-779E2A7AF52D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId144";
	rename -uid "E27020D0-49BB-2D28-DCF5-ADB66544F405";
	setAttr ".ihi" 0;
createNode groupId -n "groupId145";
	rename -uid "3F913270-4E6D-6E01-0A6D-04889920B349";
	setAttr ".ihi" 0;
createNode groupId -n "groupId146";
	rename -uid "755FE43D-4258-AA79-A77E-3C9B114919F5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId148";
	rename -uid "94B712D7-44D8-8A96-A22C-3892D1123DAB";
	setAttr ".ihi" 0;
createNode phong -n "Mat_15";
	rename -uid "17E7056C-4C10-E379-7477-149DB2A4974D";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_15F";
	rename -uid "0FF0B8C0-4323-915D-97B3-3F8DF216AF90";
	setAttr ".ftn" -type "string" "mapsw1.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_15P2D";
	rename -uid "6E8C5FF1-46C0-73B3-1309-D6A86504EE36";
createNode file -n "Mat_15F1";
	rename -uid "DF276B62-4972-0523-4AF9-AAA11C36CDDA";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/w1.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_15P2D1";
	rename -uid "573996E4-495A-6BAF-DF30-5BAB40440040";
createNode shadingEngine -n "Mat_7";
	rename -uid "F93C269C-4BB1-4915-766A-3E90BB638102";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo6";
	rename -uid "D27F899E-4374-4208-4BA7-31BF96318E5A";
createNode groupId -n "groupId149";
	rename -uid "ACE741CA-4A70-A0CF-F3EE-A68D17997F96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId150";
	rename -uid "0B6C1AAD-46B4-CD81-6389-4FA259955DC7";
	setAttr ".ihi" 0;
createNode phong -n "Mat_16";
	rename -uid "A67FCEDD-4647-F635-86F6-CB9DA3A815D1";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_16F";
	rename -uid "BF0ADB3A-42E6-33F0-13FC-D2B1FCE4CA12";
	setAttr ".ftn" -type "string" "mapsw2.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_16P2D";
	rename -uid "CC838B6D-4B98-8497-657F-88AD34279016";
createNode file -n "Mat_16F1";
	rename -uid "B04C585B-407B-91E2-A4DC-4088E847EE8D";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/w2.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_16P2D1";
	rename -uid "FDFD6332-4854-04B1-3E60-5A832DF95C1C";
createNode shadingEngine -n "Mat_17";
	rename -uid "84162359-4983-7B52-8D18-1390AA928B60";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "D9EE5F54-41AD-7DBC-E6C5-1BBF143749A4";
createNode groupId -n "groupId151";
	rename -uid "12452D8F-4A29-5A3C-3011-83B0112AF538";
	setAttr ".ihi" 0;
createNode phong -n "Mat_18";
	rename -uid "519D0225-4C07-F091-1B02-55AC601A40C0";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_18F";
	rename -uid "58CA06A4-47B2-C04E-B7E0-24BFEB963EB1";
	setAttr ".ftn" -type "string" "mapsmw65.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_18P2D";
	rename -uid "26296CC7-4D18-3D75-EB58-A781727B3B95";
createNode file -n "Mat_18F1";
	rename -uid "C0104D25-4598-6BAF-BA9A-36ACCCA12A3C";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/mw65.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_18P2D1";
	rename -uid "E1E78AD4-48D5-4C92-1167-F1B170B5C860";
createNode shadingEngine -n "Mat_19";
	rename -uid "1B3EC591-409A-8BF1-C1D8-53BB79A78E75";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "4A095DE5-4BEE-3B0D-0472-D4846962C9D3";
createNode groupId -n "groupId152";
	rename -uid "E48D200D-4A71-21A5-B028-AA9CC8E48F54";
	setAttr ".ihi" 0;
createNode phong -n "Mat_20";
	rename -uid "2E11FAE1-428E-FB95-C116-FCA0843F6F68";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_20F";
	rename -uid "DFD118BF-4451-17FF-3FF6-70802F384AF5";
	setAttr ".ftn" -type "string" "mapsmw18.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_20P2D";
	rename -uid "D53550BF-4631-2F16-0140-E2A8DF25DD1F";
createNode file -n "Mat_20F1";
	rename -uid "C1846F1C-46F7-6F9B-EA81-AFBAB8E20E5D";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/mw18.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_20P2D1";
	rename -uid "0E6F29D9-493C-D6B4-13E7-5FA52EC53EDD";
createNode shadingEngine -n "Mat_5";
	rename -uid "841A8DF9-4AAD-40DE-4902-9388D097A24F";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo9";
	rename -uid "46EE6C05-4193-D1E6-6B14-BC81310DF13D";
createNode groupId -n "groupId153";
	rename -uid "22F0C74D-479B-5E58-A8A1-FF9799675E9F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId154";
	rename -uid "EDF75E6C-4A49-F145-E13F-43A3FE93AB0E";
	setAttr ".ihi" 0;
createNode phong -n "Mat_21";
	rename -uid "3F4951DB-471D-D790-C1CA-FCBB45B282A7";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_21F";
	rename -uid "AEFD72F5-4708-F458-3DEA-0A92F8D75BF4";
	setAttr ".ftn" -type "string" "mapsw2.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_21P2D";
	rename -uid "A4F1534B-43F5-BD49-C6DA-E9B6E466E869";
createNode file -n "Mat_21F1";
	rename -uid "BB56E854-4E1D-EDA6-578B-A0A7F6B08889";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/w2.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_21P2D1";
	rename -uid "6DBBB4A9-47CA-3AC5-F25E-C1B9045FCF6B";
createNode shadingEngine -n "Mat_3";
	rename -uid "06C9C24F-491D-8B8B-A606-D2AB076491F7";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
createNode materialInfo -n "materialInfo10";
	rename -uid "1A4DD90C-4EF0-2247-A0AE-9FA37CAEE5F7";
createNode groupId -n "groupId155";
	rename -uid "2B497B1B-401C-A116-4D9C-39A2DCDC8B5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId156";
	rename -uid "A837301C-4CEC-04FA-4530-A7B234BC1D37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId157";
	rename -uid "9351A3EB-4879-E1B4-B562-8E8214C6FDF5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId158";
	rename -uid "5412A4DF-45D5-B586-BCFE-A4A314EFEB38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId159";
	rename -uid "3568C9A7-4893-9FA8-9158-30957634D6EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId160";
	rename -uid "DCE4318D-4BDC-0E72-6F9C-168EF22DF085";
	setAttr ".ihi" 0;
createNode phong -n "Mat_22";
	rename -uid "BBEEF77B-4498-5FA1-21C5-F2A1418A51A7";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_22F";
	rename -uid "72BA3A99-42D4-27C9-0504-8F832A51D146";
	setAttr ".ftn" -type "string" "mapsmd13.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_22P2D";
	rename -uid "FF3CBF69-434B-C760-3515-E4934CCC321A";
createNode file -n "Mat_22F1";
	rename -uid "710941AD-4E9E-DE77-25E7-0B9A588A12BA";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/md13.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_22P2D1";
	rename -uid "D360A8FF-4529-05C5-AAF2-C69303894727";
createNode shadingEngine -n "Mat_23";
	rename -uid "34B138E5-430C-3C12-9B83-2FA847F18E15";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "673CC6B6-4A17-39A5-9A49-8CB4C7A60126";
createNode groupId -n "groupId161";
	rename -uid "2E12776B-492D-530C-2909-078667EBB988";
	setAttr ".ihi" 0;
createNode phong -n "Mat_24";
	rename -uid "7AC558B3-4FEF-CD97-8E2F-279762E6CE30";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_24F";
	rename -uid "B435A29C-4BB7-34CB-3B94-14ADD7D9AC0D";
	setAttr ".ftn" -type "string" "mapsmw3.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_24P2D";
	rename -uid "8F8B48FA-45BB-0BA1-76EE-F1ACE3AFEDC7";
createNode file -n "Mat_24F1";
	rename -uid "391CC889-4715-F294-CC3D-57B086D4F9D1";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/mw3.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_24P2D1";
	rename -uid "E4832A67-4D64-5AD4-70FE-47A26C698EF3";
createNode shadingEngine -n "Mat_6";
	rename -uid "1FD01523-4638-FCA8-A6CC-DB9B103719FD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "384710FB-4672-4709-1D91-3FB18B2DA6A0";
createNode groupId -n "groupId162";
	rename -uid "AF542E9E-4D0F-ED3B-0631-79BF8D4315A5";
	setAttr ".ihi" 0;
createNode phong -n "Mat_25";
	rename -uid "AE5DD492-4997-838B-95C8-00A78B57E8A4";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_25F";
	rename -uid "A8DF3E99-413C-2B3D-C42D-998F3398BC45";
	setAttr ".ftn" -type "string" "mapsmd49.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_25P2D";
	rename -uid "08BEBB46-4F4D-80A4-43D2-518723AD07BD";
createNode file -n "Mat_25F1";
	rename -uid "78BB0CC6-435A-2738-3BC8-31A4C7DBC604";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/md49.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_25P2D1";
	rename -uid "0922C76C-4433-B40F-F3A3-D48BAAFE5776";
createNode shadingEngine -n "Mat_4";
	rename -uid "37594EF6-477D-A31F-184D-D48B2F2D65E8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "4DF550F7-4F2A-1760-1D7A-EFBE6C49488D";
createNode groupId -n "groupId163";
	rename -uid "72C38842-4DB4-EC37-E154-1CBF34A2176E";
	setAttr ".ihi" 0;
createNode phong -n "Mat_26";
	rename -uid "BFB3D902-4A70-B12C-9D83-19BA70CD8A16";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_26F";
	rename -uid "F22A14A5-4485-C009-A2B5-909D49F896C5";
	setAttr ".ftn" -type "string" "mapsdoor16.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_26P2D";
	rename -uid "EF499540-467B-2805-A0E7-B6B51C6013E2";
createNode file -n "Mat_26F1";
	rename -uid "8A6BF1C9-4AF3-C8B8-E567-6E91B09FB9F9";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/door16.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_26P2D1";
	rename -uid "DFC2E886-4F3E-E63A-DE18-96AE07B58875";
createNode shadingEngine -n "Mat_0";
	rename -uid "B862FFCB-4FCC-3DBE-3F8E-B18711070D8E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "7EC4B01C-4F92-59DF-2F57-EB832B44C5F4";
createNode groupId -n "groupId164";
	rename -uid "0A8397BF-4022-D7E1-2FCD-C29C2553320C";
	setAttr ".ihi" 0;
createNode phong -n "Mat_27";
	rename -uid "F15121F3-45C3-1957-5219-BEBDC0689B29";
	setAttr ".rfi" 1.5;
	setAttr ".sc" -type "float3" -0.87 -0.87 -0.87 ;
	setAttr ".cp" 1133;
createNode file -n "Mat_27F";
	rename -uid "9A33D34E-4BB0-AF91-B0FD-FE9EB74A63D6";
	setAttr ".ftn" -type "string" "mapsw1.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_27P2D";
	rename -uid "6481DDA2-4ABE-A170-5E75-998A57E3FF8B";
createNode file -n "Mat_27F1";
	rename -uid "13CDECBF-4863-B55D-FCDA-5E98B96BA4DA";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/w1.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_27P2D1";
	rename -uid "04025EB9-4B49-65EB-F2DC-A08EBE9E57C0";
createNode shadingEngine -n "wire_181181181";
	rename -uid "49BDC16F-41EA-3D9A-DDFD-85A1F929019B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "FE739157-4CB3-F2E2-3453-1C9537C99325";
createNode phong -n "wire_181181182";
	rename -uid "B8F16994-486D-FECD-17FE-4782D60C73A3";
	setAttr ".c" -type "float3" 0.7098 0.7098 0.7098 ;
	setAttr ".sc" -type "float3" 0.34999999 0.34999999 0.34999999 ;
	setAttr ".cp" 34;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8D3DC586-41F3-A56D-DE0C-569A8F8E3211";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1118\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n"
		+ "                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n"
		+ "                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1118\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1118\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "54E12F0D-4BE8-AAB2-F7F7-B8A3FE3871DF";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId165";
	rename -uid "63F02EAC-44A0-BAAD-1CD6-ADB621BFD642";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "1556E7AD-443C-35DE-BA72-1DAC0903803B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId166";
	rename -uid "01D9799F-47B4-3533-F4D6-EEB4AB7EA955";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "0D4D0051-4D20-1EBE-3B9D-21A373862F93";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[8:11]";
createNode polySplit -n "polySplit1";
	rename -uid "71B874C7-4543-1FBF-9268-DFACA8DA50D4";
	setAttr -s 3 ".e[0:2]"  0.54522902 0.45559001 0.45627499;
	setAttr -s 3 ".d[0:2]"  -2147483647 -2147483648 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "5A4E5296-4380-6F42-2A7C-909DE171FAF1";
	setAttr -s 3 ".e[0:2]"  0.86480701 0.13600899 0.137307;
	setAttr -s 3 ".d[0:2]"  -2147483647 -2147483629 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "24E40B44-44E5-3764-59D7-6D87B4E68DC2";
	setAttr -s 5 ".e[0:4]"  0.30699399 0.385708 0.27949399 0.70812702
		 0.69104701;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483621 -2147483626 -2147483648 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "B74EF8D7-4E41-7A28-7B98-72847BE5E747";
	setAttr ".dc" -type "componentList" 2 "f[14]" "f[17]";
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "9B46C196-4FB2-BF8D-F5CA-15B1369234D7";
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[23]" "e[30]";
	setAttr ".cv" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "78F92CE8-40A6-CD0E-42A5-6A882A69B192";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 17 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 19 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 28 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 28 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId18.id" "Model_0Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_0Shape.iog.og[0].gco";
connectAttr "groupId17.id" "Model_1Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_1Shape.iog.og[0].gco";
connectAttr "groupId16.id" "Model_2Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_2Shape.iog.og[0].gco";
connectAttr "groupId54.id" "Model_3Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_3Shape.iog.og[0].gco";
connectAttr "groupId64.id" "Model_3Shape.iog.og[1].gid";
connectAttr "Mat_12.mwc" "Model_3Shape.iog.og[1].gco";
connectAttr "groupId53.id" "Model_4Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_4Shape.iog.og[0].gco";
connectAttr "groupId63.id" "Model_4Shape.iog.og[1].gid";
connectAttr "Mat_12.mwc" "Model_4Shape.iog.og[1].gco";
connectAttr "groupId52.id" "Model_5Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_5Shape.iog.og[0].gco";
connectAttr "groupId62.id" "Model_5Shape.iog.og[1].gid";
connectAttr "Mat_12.mwc" "Model_5Shape.iog.og[1].gco";
connectAttr "groupId51.id" "Model_6Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_6Shape.iog.og[0].gco";
connectAttr "groupId61.id" "Model_6Shape.iog.og[1].gid";
connectAttr "Mat_12.mwc" "Model_6Shape.iog.og[1].gco";
connectAttr "groupId50.id" "Model_7Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_7Shape.iog.og[0].gco";
connectAttr "groupId60.id" "Model_7Shape.iog.og[1].gid";
connectAttr "Mat_12.mwc" "Model_7Shape.iog.og[1].gco";
connectAttr "groupId76.id" "Model_8Shape.iog.og[0].gid";
connectAttr "Mat_8.mwc" "Model_8Shape.iog.og[0].gco";
connectAttr "groupId49.id" "Model_9Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_9Shape.iog.og[0].gco";
connectAttr "groupId148.id" "Model_9Shape.iog.og[1].gid";
connectAttr "Mat_2.mwc" "Model_9Shape.iog.og[1].gco";
connectAttr "groupId150.id" "Model_9Shape.iog.og[2].gid";
connectAttr "Mat_7.mwc" "Model_9Shape.iog.og[2].gco";
connectAttr "groupId48.id" "Model_10Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_10Shape.iog.og[0].gco";
connectAttr "groupId59.id" "Model_10Shape.iog.og[1].gid";
connectAttr "Mat_12.mwc" "Model_10Shape.iog.og[1].gco";
connectAttr "groupId15.id" "Model_11Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_11Shape.iog.og[0].gco";
connectAttr "groupId14.id" "Model_12Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_12Shape.iog.og[0].gco";
connectAttr "groupId13.id" "Model_13Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_13Shape.iog.og[0].gco";
connectAttr "groupId12.id" "Model_14Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_14Shape.iog.og[0].gco";
connectAttr "groupId11.id" "Model_15Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_15Shape.iog.og[0].gco";
connectAttr "groupId10.id" "Model_16Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_16Shape.iog.og[0].gco";
connectAttr "groupId75.id" "Model_17Shape.iog.og[0].gid";
connectAttr "Mat_8.mwc" "Model_17Shape.iog.og[0].gco";
connectAttr "groupId58.id" "Model_18Shape.iog.og[0].gid";
connectAttr "Mat_12.mwc" "Model_18Shape.iog.og[0].gco";
connectAttr "groupId57.id" "Model_19Shape.iog.og[0].gid";
connectAttr "Mat_12.mwc" "Model_19Shape.iog.og[0].gco";
connectAttr "groupId73.id" "Model_21Shape.iog.og[0].gid";
connectAttr "Mat_8.mwc" "Model_21Shape.iog.og[0].gco";
connectAttr "groupId146.id" "Model_21Shape.iog.og[1].gid";
connectAttr "Mat_2.mwc" "Model_21Shape.iog.og[1].gco";
connectAttr "groupId151.id" "Model_21Shape.iog.og[2].gid";
connectAttr "Mat_17.mwc" "Model_21Shape.iog.og[2].gco";
connectAttr "groupId46.id" "Model_22Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_22Shape.iog.og[0].gco";
connectAttr "groupId72.id" "Model_22Shape.iog.og[1].gid";
connectAttr "Mat_8.mwc" "Model_22Shape.iog.og[1].gco";
connectAttr "groupId145.id" "Model_22Shape.iog.og[2].gid";
connectAttr "Mat_2.mwc" "Model_22Shape.iog.og[2].gco";
connectAttr "groupId71.id" "Model_23Shape.iog.og[0].gid";
connectAttr "Mat_8.mwc" "Model_23Shape.iog.og[0].gco";
connectAttr "groupId9.id" "Model_24Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_24Shape.iog.og[0].gco";
connectAttr "groupId8.id" "Model_25Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_25Shape.iog.og[0].gco";
connectAttr "groupId7.id" "Model_26Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_26Shape.iog.og[0].gco";
connectAttr "groupId6.id" "Model_27Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_27Shape.iog.og[0].gco";
connectAttr "groupId5.id" "Model_28Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_28Shape.iog.og[0].gco";
connectAttr "groupId4.id" "Model_29Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_29Shape.iog.og[0].gco";
connectAttr "groupId45.id" "Model_30Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_30Shape.iog.og[0].gco";
connectAttr "groupId70.id" "Model_30Shape.iog.og[1].gid";
connectAttr "Mat_8.mwc" "Model_30Shape.iog.og[1].gco";
connectAttr "groupId44.id" "Model_31Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_31Shape.iog.og[0].gco";
connectAttr "groupId56.id" "Model_31Shape.iog.og[1].gid";
connectAttr "Mat_12.mwc" "Model_31Shape.iog.og[1].gco";
connectAttr "groupId43.id" "Model_32Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_32Shape.iog.og[0].gco";
connectAttr "groupId55.id" "Model_32Shape.iog.og[1].gid";
connectAttr "Mat_12.mwc" "Model_32Shape.iog.og[1].gco";
connectAttr "groupId69.id" "Model_33Shape.iog.og[0].gid";
connectAttr "Mat_8.mwc" "Model_33Shape.iog.og[0].gco";
connectAttr "groupId144.id" "Model_33Shape.iog.og[1].gid";
connectAttr "Mat_2.mwc" "Model_33Shape.iog.og[1].gco";
connectAttr "groupId152.id" "Model_33Shape.iog.og[2].gid";
connectAttr "Mat_19.mwc" "Model_33Shape.iog.og[2].gco";
connectAttr "groupId68.id" "Model_34Shape.iog.og[0].gid";
connectAttr "Mat_8.mwc" "Model_34Shape.iog.og[0].gco";
connectAttr "groupId67.id" "Model_35Shape.iog.og[0].gid";
connectAttr "Mat_8.mwc" "Model_35Shape.iog.og[0].gco";
connectAttr "groupId66.id" "Model_36Shape.iog.og[0].gid";
connectAttr "Mat_8.mwc" "Model_36Shape.iog.og[0].gco";
connectAttr "groupId154.id" "Model_37Shape.iog.og[0].gid";
connectAttr "Mat_5.mwc" "Model_37Shape.iog.og[0].gco";
connectAttr "groupId143.id" "Model_38Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_38Shape.iog.og[0].gco";
connectAttr "groupId160.id" "Model_38Shape.iog.og[1].gid";
connectAttr "Mat_3.mwc" "Model_38Shape.iog.og[1].gco";
connectAttr "groupId142.id" "Model_39Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_39Shape.iog.og[0].gco";
connectAttr "groupId159.id" "Model_39Shape.iog.og[1].gid";
connectAttr "Mat_3.mwc" "Model_39Shape.iog.og[1].gco";
connectAttr "groupId141.id" "Model_40Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_40Shape.iog.og[0].gco";
connectAttr "groupId158.id" "Model_40Shape.iog.og[1].gid";
connectAttr "Mat_3.mwc" "Model_40Shape.iog.og[1].gco";
connectAttr "groupId140.id" "Model_41Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_41Shape.iog.og[0].gco";
connectAttr "groupId157.id" "Model_41Shape.iog.og[1].gid";
connectAttr "Mat_3.mwc" "Model_41Shape.iog.og[1].gco";
connectAttr "groupId139.id" "Model_42Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_42Shape.iog.og[0].gco";
connectAttr "groupId156.id" "Model_42Shape.iog.og[1].gid";
connectAttr "Mat_3.mwc" "Model_42Shape.iog.og[1].gco";
connectAttr "groupId138.id" "Model_43Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_43Shape.iog.og[0].gco";
connectAttr "groupId155.id" "Model_43Shape.iog.og[1].gid";
connectAttr "Mat_3.mwc" "Model_43Shape.iog.og[1].gco";
connectAttr "groupId137.id" "Model_44Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_44Shape.iog.og[0].gco";
connectAttr "groupId136.id" "Model_45Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_45Shape.iog.og[0].gco";
connectAttr "groupId135.id" "Model_46Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_46Shape.iog.og[0].gco";
connectAttr "groupId134.id" "Model_47Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_47Shape.iog.og[0].gco";
connectAttr "groupId133.id" "Model_48Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_48Shape.iog.og[0].gco";
connectAttr "groupId132.id" "Model_49Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_49Shape.iog.og[0].gco";
connectAttr "groupId131.id" "Model_50Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_50Shape.iog.og[0].gco";
connectAttr "groupId130.id" "Model_51Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_51Shape.iog.og[0].gco";
connectAttr "groupId129.id" "Model_52Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_52Shape.iog.og[0].gco";
connectAttr "groupId128.id" "Model_53Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_53Shape.iog.og[0].gco";
connectAttr "groupId127.id" "Model_54Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_54Shape.iog.og[0].gco";
connectAttr "groupId126.id" "Model_55Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_55Shape.iog.og[0].gco";
connectAttr "groupId125.id" "Model_56Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_56Shape.iog.og[0].gco";
connectAttr "groupId124.id" "Model_57Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_57Shape.iog.og[0].gco";
connectAttr "groupId123.id" "Model_58Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_58Shape.iog.og[0].gco";
connectAttr "groupId122.id" "Model_59Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_59Shape.iog.og[0].gco";
connectAttr "groupId121.id" "Model_60Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_60Shape.iog.og[0].gco";
connectAttr "groupId120.id" "Model_61Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_61Shape.iog.og[0].gco";
connectAttr "groupId119.id" "Model_62Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_62Shape.iog.og[0].gco";
connectAttr "groupId118.id" "Model_63Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_63Shape.iog.og[0].gco";
connectAttr "groupId117.id" "Model_64Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_64Shape.iog.og[0].gco";
connectAttr "groupId116.id" "Model_65Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_65Shape.iog.og[0].gco";
connectAttr "groupId115.id" "Model_66Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_66Shape.iog.og[0].gco";
connectAttr "groupId114.id" "Model_67Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_67Shape.iog.og[0].gco";
connectAttr "groupId113.id" "Model_68Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_68Shape.iog.og[0].gco";
connectAttr "groupId112.id" "Model_69Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_69Shape.iog.og[0].gco";
connectAttr "groupId111.id" "Model_70Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_70Shape.iog.og[0].gco";
connectAttr "groupId110.id" "Model_71Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_71Shape.iog.og[0].gco";
connectAttr "groupId109.id" "Model_72Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_72Shape.iog.og[0].gco";
connectAttr "groupId108.id" "Model_73Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_73Shape.iog.og[0].gco";
connectAttr "groupId107.id" "Model_74Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_74Shape.iog.og[0].gco";
connectAttr "groupId106.id" "Model_75Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_75Shape.iog.og[0].gco";
connectAttr "groupId105.id" "Model_76Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_76Shape.iog.og[0].gco";
connectAttr "groupId104.id" "Model_77Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_77Shape.iog.og[0].gco";
connectAttr "groupId103.id" "Model_78Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_78Shape.iog.og[0].gco";
connectAttr "groupId102.id" "Model_79Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_79Shape.iog.og[0].gco";
connectAttr "groupId101.id" "Model_80Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_80Shape.iog.og[0].gco";
connectAttr "groupId100.id" "Model_81Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_81Shape.iog.og[0].gco";
connectAttr "groupId99.id" "Model_82Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_82Shape.iog.og[0].gco";
connectAttr "groupId98.id" "Model_83Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_83Shape.iog.og[0].gco";
connectAttr "groupId97.id" "Model_84Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_84Shape.iog.og[0].gco";
connectAttr "groupId96.id" "Model_85Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_85Shape.iog.og[0].gco";
connectAttr "groupId161.id" "Model_86Shape.iog.og[0].gid";
connectAttr "Mat_23.mwc" "Model_86Shape.iog.og[0].gco";
connectAttr "groupId95.id" "Model_87Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_87Shape.iog.og[0].gco";
connectAttr "groupId94.id" "Model_88Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_88Shape.iog.og[0].gco";
connectAttr "groupId93.id" "Model_89Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_89Shape.iog.og[0].gco";
connectAttr "groupId92.id" "Model_90Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_90Shape.iog.og[0].gco";
connectAttr "groupId91.id" "Model_91Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_91Shape.iog.og[0].gco";
connectAttr "groupId90.id" "Model_92Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_92Shape.iog.og[0].gco";
connectAttr "groupId89.id" "Model_93Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_93Shape.iog.og[0].gco";
connectAttr "groupId88.id" "Model_94Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_94Shape.iog.og[0].gco";
connectAttr "groupId87.id" "Model_95Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_95Shape.iog.og[0].gco";
connectAttr "groupId86.id" "Model_96Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_96Shape.iog.og[0].gco";
connectAttr "groupId85.id" "Model_97Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_97Shape.iog.og[0].gco";
connectAttr "groupId84.id" "Model_98Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_98Shape.iog.og[0].gco";
connectAttr "groupId83.id" "Model_99Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_99Shape.iog.og[0].gco";
connectAttr "groupId82.id" "Model_100Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_100Shape.iog.og[0].gco";
connectAttr "groupId81.id" "Model_101Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_101Shape.iog.og[0].gco";
connectAttr "groupId42.id" "Model_102Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_102Shape.iog.og[0].gco";
connectAttr "groupId149.id" "Model_102Shape.iog.og[1].gid";
connectAttr "Mat_7.mwc" "Model_102Shape.iog.og[1].gco";
connectAttr "groupId80.id" "Model_103Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_103Shape.iog.og[0].gco";
connectAttr "groupId79.id" "Model_104Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_104Shape.iog.og[0].gco";
connectAttr "groupId78.id" "Model_105Shape.iog.og[0].gid";
connectAttr "Mat_2.mwc" "Model_105Shape.iog.og[0].gco";
connectAttr "groupId165.id" "Model_106Shape.iog.og[0].gid";
connectAttr "Mat_8.mwc" "Model_106Shape.iog.og[0].gco";
connectAttr "groupId166.id" "Model_106Shape.iog.og[1].gid";
connectAttr "Mat_2.mwc" "Model_106Shape.iog.og[1].gco";
connectAttr "polyDelEdge1.out" "Model_106Shape.i";
connectAttr "groupId3.id" "Model_107Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_107Shape.iog.og[0].gco";
connectAttr "groupId2.id" "Model_108Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_108Shape.iog.og[0].gco";
connectAttr "groupId1.id" "Model_109Shape.iog.og[0].gid";
connectAttr "Mat_9.mwc" "Model_109Shape.iog.og[0].gco";
connectAttr "groupId153.id" "Model_110Shape.iog.og[0].gid";
connectAttr "Mat_5.mwc" "Model_110Shape.iog.og[0].gco";
connectAttr "groupId162.id" "Model_110Shape.iog.og[1].gid";
connectAttr "Mat_6.mwc" "Model_110Shape.iog.og[1].gco";
connectAttr "groupId163.id" "Model_110Shape.iog.og[2].gid";
connectAttr "Mat_4.mwc" "Model_110Shape.iog.og[2].gco";
connectAttr "groupId41.id" "Model_111Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_111Shape.iog.og[0].gco";
connectAttr "groupId40.id" "Model_112Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_112Shape.iog.og[0].gco";
connectAttr "groupId39.id" "Model_113Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_113Shape.iog.og[0].gco";
connectAttr "groupId38.id" "Model_114Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_114Shape.iog.og[0].gco";
connectAttr "groupId37.id" "Model_115Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_115Shape.iog.og[0].gco";
connectAttr "groupId36.id" "Model_116Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_116Shape.iog.og[0].gco";
connectAttr "groupId35.id" "Model_117Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_117Shape.iog.og[0].gco";
connectAttr "groupId34.id" "Model_118Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_118Shape.iog.og[0].gco";
connectAttr "groupId33.id" "Model_119Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_119Shape.iog.og[0].gco";
connectAttr "groupId32.id" "Model_120Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_120Shape.iog.og[0].gco";
connectAttr "groupId31.id" "Model_121Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_121Shape.iog.og[0].gco";
connectAttr "groupId30.id" "Model_122Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_122Shape.iog.og[0].gco";
connectAttr "groupId29.id" "Model_123Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_123Shape.iog.og[0].gco";
connectAttr "groupId28.id" "Model_124Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_124Shape.iog.og[0].gco";
connectAttr "groupId27.id" "Model_125Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_125Shape.iog.og[0].gco";
connectAttr "groupId26.id" "Model_126Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_126Shape.iog.og[0].gco";
connectAttr "groupId25.id" "Model_127Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_127Shape.iog.og[0].gco";
connectAttr "groupId24.id" "Model_128Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_128Shape.iog.og[0].gco";
connectAttr "groupId164.id" "Model_129Shape.iog.og[0].gid";
connectAttr "Mat_0.mwc" "Model_129Shape.iog.og[0].gco";
connectAttr "groupId23.id" "Model_130Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_130Shape.iog.og[0].gco";
connectAttr "groupId22.id" "Model_131Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_131Shape.iog.og[0].gco";
connectAttr "groupId21.id" "Model_132Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_132Shape.iog.og[0].gco";
connectAttr "groupId20.id" "Model_133Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_133Shape.iog.og[0].gco";
connectAttr "groupId19.id" "Model_134Shape.iog.og[0].gid";
connectAttr "Mat_1.mwc" "Model_134Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_12.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_17.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_19.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_23.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mat_0.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "wire_181181181.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_12.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_17.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_19.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_23.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mat_0.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "wire_181181181.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Mat_10.oc" "Mat_9.ss";
connectAttr "groupId1.msg" "Mat_9.gn" -na;
connectAttr "groupId2.msg" "Mat_9.gn" -na;
connectAttr "groupId3.msg" "Mat_9.gn" -na;
connectAttr "groupId4.msg" "Mat_9.gn" -na;
connectAttr "groupId5.msg" "Mat_9.gn" -na;
connectAttr "groupId6.msg" "Mat_9.gn" -na;
connectAttr "groupId7.msg" "Mat_9.gn" -na;
connectAttr "groupId8.msg" "Mat_9.gn" -na;
connectAttr "groupId9.msg" "Mat_9.gn" -na;
connectAttr "groupId10.msg" "Mat_9.gn" -na;
connectAttr "groupId11.msg" "Mat_9.gn" -na;
connectAttr "groupId12.msg" "Mat_9.gn" -na;
connectAttr "groupId13.msg" "Mat_9.gn" -na;
connectAttr "groupId14.msg" "Mat_9.gn" -na;
connectAttr "groupId15.msg" "Mat_9.gn" -na;
connectAttr "groupId16.msg" "Mat_9.gn" -na;
connectAttr "groupId17.msg" "Mat_9.gn" -na;
connectAttr "groupId18.msg" "Mat_9.gn" -na;
connectAttr "Model_109Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_108Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_107Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_29Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_28Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_27Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_26Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_25Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_24Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_16Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_15Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_14Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_13Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_12Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_11Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_2Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_1Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Model_0Shape.iog.og[0]" "Mat_9.dsm" -na;
connectAttr "Mat_9.msg" "materialInfo1.sg";
connectAttr "Mat_10.msg" "materialInfo1.m";
connectAttr "Mat_10F1.msg" "materialInfo1.t" -na;
connectAttr "Mat_10F.oc" "Mat_10.ambc";
connectAttr "Mat_10F1.oc" "Mat_10.c";
connectAttr "Mat_10P2D.c" "Mat_10F.c";
connectAttr "Mat_10P2D.tf" "Mat_10F.tf";
connectAttr "Mat_10P2D.rf" "Mat_10F.rf";
connectAttr "Mat_10P2D.s" "Mat_10F.s";
connectAttr "Mat_10P2D.wu" "Mat_10F.wu";
connectAttr "Mat_10P2D.wv" "Mat_10F.wv";
connectAttr "Mat_10P2D.re" "Mat_10F.re";
connectAttr "Mat_10P2D.of" "Mat_10F.of";
connectAttr "Mat_10P2D.r" "Mat_10F.ro";
connectAttr "Mat_10P2D.o" "Mat_10F.uv";
connectAttr "Mat_10P2D.ofs" "Mat_10F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_10F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_10F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_10F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_10F.ws";
connectAttr "Mat_10P2D1.c" "Mat_10F1.c";
connectAttr "Mat_10P2D1.tf" "Mat_10F1.tf";
connectAttr "Mat_10P2D1.rf" "Mat_10F1.rf";
connectAttr "Mat_10P2D1.s" "Mat_10F1.s";
connectAttr "Mat_10P2D1.wu" "Mat_10F1.wu";
connectAttr "Mat_10P2D1.wv" "Mat_10F1.wv";
connectAttr "Mat_10P2D1.re" "Mat_10F1.re";
connectAttr "Mat_10P2D1.of" "Mat_10F1.of";
connectAttr "Mat_10P2D1.r" "Mat_10F1.ro";
connectAttr "Mat_10P2D1.o" "Mat_10F1.uv";
connectAttr "Mat_10P2D1.ofs" "Mat_10F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_10F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_10F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_10F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_10F1.ws";
connectAttr "Mat_11.oc" "Mat_1.ss";
connectAttr "groupId19.msg" "Mat_1.gn" -na;
connectAttr "groupId20.msg" "Mat_1.gn" -na;
connectAttr "groupId21.msg" "Mat_1.gn" -na;
connectAttr "groupId22.msg" "Mat_1.gn" -na;
connectAttr "groupId23.msg" "Mat_1.gn" -na;
connectAttr "groupId24.msg" "Mat_1.gn" -na;
connectAttr "groupId25.msg" "Mat_1.gn" -na;
connectAttr "groupId26.msg" "Mat_1.gn" -na;
connectAttr "groupId27.msg" "Mat_1.gn" -na;
connectAttr "groupId28.msg" "Mat_1.gn" -na;
connectAttr "groupId29.msg" "Mat_1.gn" -na;
connectAttr "groupId30.msg" "Mat_1.gn" -na;
connectAttr "groupId31.msg" "Mat_1.gn" -na;
connectAttr "groupId32.msg" "Mat_1.gn" -na;
connectAttr "groupId33.msg" "Mat_1.gn" -na;
connectAttr "groupId34.msg" "Mat_1.gn" -na;
connectAttr "groupId35.msg" "Mat_1.gn" -na;
connectAttr "groupId36.msg" "Mat_1.gn" -na;
connectAttr "groupId37.msg" "Mat_1.gn" -na;
connectAttr "groupId38.msg" "Mat_1.gn" -na;
connectAttr "groupId39.msg" "Mat_1.gn" -na;
connectAttr "groupId40.msg" "Mat_1.gn" -na;
connectAttr "groupId41.msg" "Mat_1.gn" -na;
connectAttr "groupId42.msg" "Mat_1.gn" -na;
connectAttr "groupId43.msg" "Mat_1.gn" -na;
connectAttr "groupId44.msg" "Mat_1.gn" -na;
connectAttr "groupId45.msg" "Mat_1.gn" -na;
connectAttr "groupId46.msg" "Mat_1.gn" -na;
connectAttr "groupId48.msg" "Mat_1.gn" -na;
connectAttr "groupId49.msg" "Mat_1.gn" -na;
connectAttr "groupId50.msg" "Mat_1.gn" -na;
connectAttr "groupId51.msg" "Mat_1.gn" -na;
connectAttr "groupId52.msg" "Mat_1.gn" -na;
connectAttr "groupId53.msg" "Mat_1.gn" -na;
connectAttr "groupId54.msg" "Mat_1.gn" -na;
connectAttr "Model_134Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_133Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_132Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_131Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_130Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_128Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_127Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_126Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_125Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_124Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_123Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_122Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_121Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_120Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_119Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_118Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_117Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_116Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_115Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_114Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_113Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_112Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_111Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_102Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_32Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_31Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_30Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_22Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_10Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_9Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_7Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_6Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_5Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_4Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Model_3Shape.iog.og[0]" "Mat_1.dsm" -na;
connectAttr "Mat_1.msg" "materialInfo2.sg";
connectAttr "Mat_11.msg" "materialInfo2.m";
connectAttr "Mat_11F1.msg" "materialInfo2.t" -na;
connectAttr "Mat_11F.oc" "Mat_11.ambc";
connectAttr "Mat_11F1.oc" "Mat_11.c";
connectAttr "Mat_11P2D.c" "Mat_11F.c";
connectAttr "Mat_11P2D.tf" "Mat_11F.tf";
connectAttr "Mat_11P2D.rf" "Mat_11F.rf";
connectAttr "Mat_11P2D.s" "Mat_11F.s";
connectAttr "Mat_11P2D.wu" "Mat_11F.wu";
connectAttr "Mat_11P2D.wv" "Mat_11F.wv";
connectAttr "Mat_11P2D.re" "Mat_11F.re";
connectAttr "Mat_11P2D.of" "Mat_11F.of";
connectAttr "Mat_11P2D.r" "Mat_11F.ro";
connectAttr "Mat_11P2D.o" "Mat_11F.uv";
connectAttr "Mat_11P2D.ofs" "Mat_11F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_11F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_11F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_11F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_11F.ws";
connectAttr "Mat_11P2D1.c" "Mat_11F1.c";
connectAttr "Mat_11P2D1.tf" "Mat_11F1.tf";
connectAttr "Mat_11P2D1.rf" "Mat_11F1.rf";
connectAttr "Mat_11P2D1.s" "Mat_11F1.s";
connectAttr "Mat_11P2D1.wu" "Mat_11F1.wu";
connectAttr "Mat_11P2D1.wv" "Mat_11F1.wv";
connectAttr "Mat_11P2D1.re" "Mat_11F1.re";
connectAttr "Mat_11P2D1.of" "Mat_11F1.of";
connectAttr "Mat_11P2D1.r" "Mat_11F1.ro";
connectAttr "Mat_11P2D1.o" "Mat_11F1.uv";
connectAttr "Mat_11P2D1.ofs" "Mat_11F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_11F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_11F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_11F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_11F1.ws";
connectAttr "Mat_13.oc" "Mat_12.ss";
connectAttr "groupId55.msg" "Mat_12.gn" -na;
connectAttr "groupId56.msg" "Mat_12.gn" -na;
connectAttr "groupId57.msg" "Mat_12.gn" -na;
connectAttr "groupId58.msg" "Mat_12.gn" -na;
connectAttr "groupId59.msg" "Mat_12.gn" -na;
connectAttr "groupId60.msg" "Mat_12.gn" -na;
connectAttr "groupId61.msg" "Mat_12.gn" -na;
connectAttr "groupId62.msg" "Mat_12.gn" -na;
connectAttr "groupId63.msg" "Mat_12.gn" -na;
connectAttr "groupId64.msg" "Mat_12.gn" -na;
connectAttr "Model_32Shape.iog.og[1]" "Mat_12.dsm" -na;
connectAttr "Model_31Shape.iog.og[1]" "Mat_12.dsm" -na;
connectAttr "Model_19Shape.iog.og[0]" "Mat_12.dsm" -na;
connectAttr "Model_18Shape.iog.og[0]" "Mat_12.dsm" -na;
connectAttr "Model_10Shape.iog.og[1]" "Mat_12.dsm" -na;
connectAttr "Model_7Shape.iog.og[1]" "Mat_12.dsm" -na;
connectAttr "Model_6Shape.iog.og[1]" "Mat_12.dsm" -na;
connectAttr "Model_5Shape.iog.og[1]" "Mat_12.dsm" -na;
connectAttr "Model_4Shape.iog.og[1]" "Mat_12.dsm" -na;
connectAttr "Model_3Shape.iog.og[1]" "Mat_12.dsm" -na;
connectAttr "Model_20Shape.iog" "Mat_12.dsm" -na;
connectAttr "Mat_12.msg" "materialInfo3.sg";
connectAttr "Mat_13.msg" "materialInfo3.m";
connectAttr "Mat_13F1.msg" "materialInfo3.t" -na;
connectAttr "Mat_13F.oc" "Mat_13.ambc";
connectAttr "Mat_13F1.oc" "Mat_13.c";
connectAttr "Mat_13P2D.c" "Mat_13F.c";
connectAttr "Mat_13P2D.tf" "Mat_13F.tf";
connectAttr "Mat_13P2D.rf" "Mat_13F.rf";
connectAttr "Mat_13P2D.s" "Mat_13F.s";
connectAttr "Mat_13P2D.wu" "Mat_13F.wu";
connectAttr "Mat_13P2D.wv" "Mat_13F.wv";
connectAttr "Mat_13P2D.re" "Mat_13F.re";
connectAttr "Mat_13P2D.of" "Mat_13F.of";
connectAttr "Mat_13P2D.r" "Mat_13F.ro";
connectAttr "Mat_13P2D.o" "Mat_13F.uv";
connectAttr "Mat_13P2D.ofs" "Mat_13F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_13F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_13F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_13F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_13F.ws";
connectAttr "Mat_13P2D1.c" "Mat_13F1.c";
connectAttr "Mat_13P2D1.tf" "Mat_13F1.tf";
connectAttr "Mat_13P2D1.rf" "Mat_13F1.rf";
connectAttr "Mat_13P2D1.s" "Mat_13F1.s";
connectAttr "Mat_13P2D1.wu" "Mat_13F1.wu";
connectAttr "Mat_13P2D1.wv" "Mat_13F1.wv";
connectAttr "Mat_13P2D1.re" "Mat_13F1.re";
connectAttr "Mat_13P2D1.of" "Mat_13F1.of";
connectAttr "Mat_13P2D1.r" "Mat_13F1.ro";
connectAttr "Mat_13P2D1.o" "Mat_13F1.uv";
connectAttr "Mat_13P2D1.ofs" "Mat_13F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_13F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_13F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_13F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_13F1.ws";
connectAttr "Mat_14.oc" "Mat_8.ss";
connectAttr "groupId66.msg" "Mat_8.gn" -na;
connectAttr "groupId67.msg" "Mat_8.gn" -na;
connectAttr "groupId68.msg" "Mat_8.gn" -na;
connectAttr "groupId69.msg" "Mat_8.gn" -na;
connectAttr "groupId70.msg" "Mat_8.gn" -na;
connectAttr "groupId71.msg" "Mat_8.gn" -na;
connectAttr "groupId72.msg" "Mat_8.gn" -na;
connectAttr "groupId73.msg" "Mat_8.gn" -na;
connectAttr "groupId75.msg" "Mat_8.gn" -na;
connectAttr "groupId76.msg" "Mat_8.gn" -na;
connectAttr "groupId165.msg" "Mat_8.gn" -na;
connectAttr "Model_36Shape.iog.og[0]" "Mat_8.dsm" -na;
connectAttr "Model_35Shape.iog.og[0]" "Mat_8.dsm" -na;
connectAttr "Model_34Shape.iog.og[0]" "Mat_8.dsm" -na;
connectAttr "Model_33Shape.iog.og[0]" "Mat_8.dsm" -na;
connectAttr "Model_30Shape.iog.og[1]" "Mat_8.dsm" -na;
connectAttr "Model_23Shape.iog.og[0]" "Mat_8.dsm" -na;
connectAttr "Model_22Shape.iog.og[1]" "Mat_8.dsm" -na;
connectAttr "Model_21Shape.iog.og[0]" "Mat_8.dsm" -na;
connectAttr "Model_17Shape.iog.og[0]" "Mat_8.dsm" -na;
connectAttr "Model_8Shape.iog.og[0]" "Mat_8.dsm" -na;
connectAttr "Model_106Shape.iog.og[0]" "Mat_8.dsm" -na;
connectAttr "Mat_8.msg" "materialInfo4.sg";
connectAttr "Mat_14.msg" "materialInfo4.m";
connectAttr "Mat_14F1.msg" "materialInfo4.t" -na;
connectAttr "Mat_14F.oc" "Mat_14.ambc";
connectAttr "Mat_14F1.oc" "Mat_14.c";
connectAttr "Mat_14P2D.c" "Mat_14F.c";
connectAttr "Mat_14P2D.tf" "Mat_14F.tf";
connectAttr "Mat_14P2D.rf" "Mat_14F.rf";
connectAttr "Mat_14P2D.s" "Mat_14F.s";
connectAttr "Mat_14P2D.wu" "Mat_14F.wu";
connectAttr "Mat_14P2D.wv" "Mat_14F.wv";
connectAttr "Mat_14P2D.re" "Mat_14F.re";
connectAttr "Mat_14P2D.of" "Mat_14F.of";
connectAttr "Mat_14P2D.r" "Mat_14F.ro";
connectAttr "Mat_14P2D.o" "Mat_14F.uv";
connectAttr "Mat_14P2D.ofs" "Mat_14F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_14F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_14F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_14F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_14F.ws";
connectAttr "Mat_14P2D1.c" "Mat_14F1.c";
connectAttr "Mat_14P2D1.tf" "Mat_14F1.tf";
connectAttr "Mat_14P2D1.rf" "Mat_14F1.rf";
connectAttr "Mat_14P2D1.s" "Mat_14F1.s";
connectAttr "Mat_14P2D1.wu" "Mat_14F1.wu";
connectAttr "Mat_14P2D1.wv" "Mat_14F1.wv";
connectAttr "Mat_14P2D1.re" "Mat_14F1.re";
connectAttr "Mat_14P2D1.of" "Mat_14F1.of";
connectAttr "Mat_14P2D1.r" "Mat_14F1.ro";
connectAttr "Mat_14P2D1.o" "Mat_14F1.uv";
connectAttr "Mat_14P2D1.ofs" "Mat_14F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_14F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_14F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_14F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_14F1.ws";
connectAttr "Mat_15.oc" "Mat_2.ss";
connectAttr "groupId78.msg" "Mat_2.gn" -na;
connectAttr "groupId79.msg" "Mat_2.gn" -na;
connectAttr "groupId80.msg" "Mat_2.gn" -na;
connectAttr "groupId81.msg" "Mat_2.gn" -na;
connectAttr "groupId82.msg" "Mat_2.gn" -na;
connectAttr "groupId83.msg" "Mat_2.gn" -na;
connectAttr "groupId84.msg" "Mat_2.gn" -na;
connectAttr "groupId85.msg" "Mat_2.gn" -na;
connectAttr "groupId86.msg" "Mat_2.gn" -na;
connectAttr "groupId87.msg" "Mat_2.gn" -na;
connectAttr "groupId88.msg" "Mat_2.gn" -na;
connectAttr "groupId89.msg" "Mat_2.gn" -na;
connectAttr "groupId90.msg" "Mat_2.gn" -na;
connectAttr "groupId91.msg" "Mat_2.gn" -na;
connectAttr "groupId92.msg" "Mat_2.gn" -na;
connectAttr "groupId93.msg" "Mat_2.gn" -na;
connectAttr "groupId94.msg" "Mat_2.gn" -na;
connectAttr "groupId95.msg" "Mat_2.gn" -na;
connectAttr "groupId96.msg" "Mat_2.gn" -na;
connectAttr "groupId97.msg" "Mat_2.gn" -na;
connectAttr "groupId98.msg" "Mat_2.gn" -na;
connectAttr "groupId99.msg" "Mat_2.gn" -na;
connectAttr "groupId100.msg" "Mat_2.gn" -na;
connectAttr "groupId101.msg" "Mat_2.gn" -na;
connectAttr "groupId102.msg" "Mat_2.gn" -na;
connectAttr "groupId103.msg" "Mat_2.gn" -na;
connectAttr "groupId104.msg" "Mat_2.gn" -na;
connectAttr "groupId105.msg" "Mat_2.gn" -na;
connectAttr "groupId106.msg" "Mat_2.gn" -na;
connectAttr "groupId107.msg" "Mat_2.gn" -na;
connectAttr "groupId108.msg" "Mat_2.gn" -na;
connectAttr "groupId109.msg" "Mat_2.gn" -na;
connectAttr "groupId110.msg" "Mat_2.gn" -na;
connectAttr "groupId111.msg" "Mat_2.gn" -na;
connectAttr "groupId112.msg" "Mat_2.gn" -na;
connectAttr "groupId113.msg" "Mat_2.gn" -na;
connectAttr "groupId114.msg" "Mat_2.gn" -na;
connectAttr "groupId115.msg" "Mat_2.gn" -na;
connectAttr "groupId116.msg" "Mat_2.gn" -na;
connectAttr "groupId117.msg" "Mat_2.gn" -na;
connectAttr "groupId118.msg" "Mat_2.gn" -na;
connectAttr "groupId119.msg" "Mat_2.gn" -na;
connectAttr "groupId120.msg" "Mat_2.gn" -na;
connectAttr "groupId121.msg" "Mat_2.gn" -na;
connectAttr "groupId122.msg" "Mat_2.gn" -na;
connectAttr "groupId123.msg" "Mat_2.gn" -na;
connectAttr "groupId124.msg" "Mat_2.gn" -na;
connectAttr "groupId125.msg" "Mat_2.gn" -na;
connectAttr "groupId126.msg" "Mat_2.gn" -na;
connectAttr "groupId127.msg" "Mat_2.gn" -na;
connectAttr "groupId128.msg" "Mat_2.gn" -na;
connectAttr "groupId129.msg" "Mat_2.gn" -na;
connectAttr "groupId130.msg" "Mat_2.gn" -na;
connectAttr "groupId131.msg" "Mat_2.gn" -na;
connectAttr "groupId132.msg" "Mat_2.gn" -na;
connectAttr "groupId133.msg" "Mat_2.gn" -na;
connectAttr "groupId134.msg" "Mat_2.gn" -na;
connectAttr "groupId135.msg" "Mat_2.gn" -na;
connectAttr "groupId136.msg" "Mat_2.gn" -na;
connectAttr "groupId137.msg" "Mat_2.gn" -na;
connectAttr "groupId138.msg" "Mat_2.gn" -na;
connectAttr "groupId139.msg" "Mat_2.gn" -na;
connectAttr "groupId140.msg" "Mat_2.gn" -na;
connectAttr "groupId141.msg" "Mat_2.gn" -na;
connectAttr "groupId142.msg" "Mat_2.gn" -na;
connectAttr "groupId143.msg" "Mat_2.gn" -na;
connectAttr "groupId144.msg" "Mat_2.gn" -na;
connectAttr "groupId145.msg" "Mat_2.gn" -na;
connectAttr "groupId146.msg" "Mat_2.gn" -na;
connectAttr "groupId148.msg" "Mat_2.gn" -na;
connectAttr "groupId166.msg" "Mat_2.gn" -na;
connectAttr "Model_105Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_104Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_103Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_101Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_100Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_99Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_98Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_97Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_96Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_95Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_94Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_93Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_92Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_91Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_90Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_89Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_88Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_87Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_85Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_84Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_83Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_82Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_81Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_80Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_79Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_78Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_77Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_76Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_75Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_74Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_73Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_72Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_71Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_70Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_69Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_68Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_67Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_66Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_65Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_64Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_63Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_62Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_61Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_60Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_59Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_58Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_57Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_56Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_55Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_54Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_53Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_52Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_51Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_50Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_49Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_48Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_47Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_46Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_45Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_44Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_43Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_42Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_41Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_40Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_39Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_38Shape.iog.og[0]" "Mat_2.dsm" -na;
connectAttr "Model_33Shape.iog.og[1]" "Mat_2.dsm" -na;
connectAttr "Model_22Shape.iog.og[2]" "Mat_2.dsm" -na;
connectAttr "Model_21Shape.iog.og[1]" "Mat_2.dsm" -na;
connectAttr "Model_9Shape.iog.og[1]" "Mat_2.dsm" -na;
connectAttr "Model_106Shape.iog.og[1]" "Mat_2.dsm" -na;
connectAttr "Mat_2.msg" "materialInfo5.sg";
connectAttr "Mat_15.msg" "materialInfo5.m";
connectAttr "Mat_15F1.msg" "materialInfo5.t" -na;
connectAttr "Mat_15F.oc" "Mat_15.ambc";
connectAttr "Mat_15F1.oc" "Mat_15.c";
connectAttr "Mat_15P2D.c" "Mat_15F.c";
connectAttr "Mat_15P2D.tf" "Mat_15F.tf";
connectAttr "Mat_15P2D.rf" "Mat_15F.rf";
connectAttr "Mat_15P2D.s" "Mat_15F.s";
connectAttr "Mat_15P2D.wu" "Mat_15F.wu";
connectAttr "Mat_15P2D.wv" "Mat_15F.wv";
connectAttr "Mat_15P2D.re" "Mat_15F.re";
connectAttr "Mat_15P2D.of" "Mat_15F.of";
connectAttr "Mat_15P2D.r" "Mat_15F.ro";
connectAttr "Mat_15P2D.o" "Mat_15F.uv";
connectAttr "Mat_15P2D.ofs" "Mat_15F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_15F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_15F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_15F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_15F.ws";
connectAttr "Mat_15P2D1.c" "Mat_15F1.c";
connectAttr "Mat_15P2D1.tf" "Mat_15F1.tf";
connectAttr "Mat_15P2D1.rf" "Mat_15F1.rf";
connectAttr "Mat_15P2D1.s" "Mat_15F1.s";
connectAttr "Mat_15P2D1.wu" "Mat_15F1.wu";
connectAttr "Mat_15P2D1.wv" "Mat_15F1.wv";
connectAttr "Mat_15P2D1.re" "Mat_15F1.re";
connectAttr "Mat_15P2D1.of" "Mat_15F1.of";
connectAttr "Mat_15P2D1.r" "Mat_15F1.ro";
connectAttr "Mat_15P2D1.o" "Mat_15F1.uv";
connectAttr "Mat_15P2D1.ofs" "Mat_15F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_15F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_15F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_15F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_15F1.ws";
connectAttr "Mat_16.oc" "Mat_7.ss";
connectAttr "groupId149.msg" "Mat_7.gn" -na;
connectAttr "groupId150.msg" "Mat_7.gn" -na;
connectAttr "Model_102Shape.iog.og[1]" "Mat_7.dsm" -na;
connectAttr "Model_9Shape.iog.og[2]" "Mat_7.dsm" -na;
connectAttr "Mat_7.msg" "materialInfo6.sg";
connectAttr "Mat_16.msg" "materialInfo6.m";
connectAttr "Mat_16F1.msg" "materialInfo6.t" -na;
connectAttr "Mat_16F.oc" "Mat_16.ambc";
connectAttr "Mat_16F1.oc" "Mat_16.c";
connectAttr "Mat_16P2D.c" "Mat_16F.c";
connectAttr "Mat_16P2D.tf" "Mat_16F.tf";
connectAttr "Mat_16P2D.rf" "Mat_16F.rf";
connectAttr "Mat_16P2D.s" "Mat_16F.s";
connectAttr "Mat_16P2D.wu" "Mat_16F.wu";
connectAttr "Mat_16P2D.wv" "Mat_16F.wv";
connectAttr "Mat_16P2D.re" "Mat_16F.re";
connectAttr "Mat_16P2D.of" "Mat_16F.of";
connectAttr "Mat_16P2D.r" "Mat_16F.ro";
connectAttr "Mat_16P2D.o" "Mat_16F.uv";
connectAttr "Mat_16P2D.ofs" "Mat_16F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_16F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_16F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_16F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_16F.ws";
connectAttr "Mat_16P2D1.c" "Mat_16F1.c";
connectAttr "Mat_16P2D1.tf" "Mat_16F1.tf";
connectAttr "Mat_16P2D1.rf" "Mat_16F1.rf";
connectAttr "Mat_16P2D1.s" "Mat_16F1.s";
connectAttr "Mat_16P2D1.wu" "Mat_16F1.wu";
connectAttr "Mat_16P2D1.wv" "Mat_16F1.wv";
connectAttr "Mat_16P2D1.re" "Mat_16F1.re";
connectAttr "Mat_16P2D1.of" "Mat_16F1.of";
connectAttr "Mat_16P2D1.r" "Mat_16F1.ro";
connectAttr "Mat_16P2D1.o" "Mat_16F1.uv";
connectAttr "Mat_16P2D1.ofs" "Mat_16F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_16F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_16F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_16F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_16F1.ws";
connectAttr "Mat_18.oc" "Mat_17.ss";
connectAttr "groupId151.msg" "Mat_17.gn" -na;
connectAttr "Model_21Shape.iog.og[2]" "Mat_17.dsm" -na;
connectAttr "Mat_17.msg" "materialInfo7.sg";
connectAttr "Mat_18.msg" "materialInfo7.m";
connectAttr "Mat_18F1.msg" "materialInfo7.t" -na;
connectAttr "Mat_18F.oc" "Mat_18.ambc";
connectAttr "Mat_18F1.oc" "Mat_18.c";
connectAttr "Mat_18P2D.c" "Mat_18F.c";
connectAttr "Mat_18P2D.tf" "Mat_18F.tf";
connectAttr "Mat_18P2D.rf" "Mat_18F.rf";
connectAttr "Mat_18P2D.s" "Mat_18F.s";
connectAttr "Mat_18P2D.wu" "Mat_18F.wu";
connectAttr "Mat_18P2D.wv" "Mat_18F.wv";
connectAttr "Mat_18P2D.re" "Mat_18F.re";
connectAttr "Mat_18P2D.of" "Mat_18F.of";
connectAttr "Mat_18P2D.r" "Mat_18F.ro";
connectAttr "Mat_18P2D.o" "Mat_18F.uv";
connectAttr "Mat_18P2D.ofs" "Mat_18F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_18F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_18F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_18F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_18F.ws";
connectAttr "Mat_18P2D1.c" "Mat_18F1.c";
connectAttr "Mat_18P2D1.tf" "Mat_18F1.tf";
connectAttr "Mat_18P2D1.rf" "Mat_18F1.rf";
connectAttr "Mat_18P2D1.s" "Mat_18F1.s";
connectAttr "Mat_18P2D1.wu" "Mat_18F1.wu";
connectAttr "Mat_18P2D1.wv" "Mat_18F1.wv";
connectAttr "Mat_18P2D1.re" "Mat_18F1.re";
connectAttr "Mat_18P2D1.of" "Mat_18F1.of";
connectAttr "Mat_18P2D1.r" "Mat_18F1.ro";
connectAttr "Mat_18P2D1.o" "Mat_18F1.uv";
connectAttr "Mat_18P2D1.ofs" "Mat_18F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_18F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_18F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_18F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_18F1.ws";
connectAttr "Mat_20.oc" "Mat_19.ss";
connectAttr "groupId152.msg" "Mat_19.gn" -na;
connectAttr "Model_33Shape.iog.og[2]" "Mat_19.dsm" -na;
connectAttr "Mat_19.msg" "materialInfo8.sg";
connectAttr "Mat_20.msg" "materialInfo8.m";
connectAttr "Mat_20F1.msg" "materialInfo8.t" -na;
connectAttr "Mat_20F.oc" "Mat_20.ambc";
connectAttr "Mat_20F1.oc" "Mat_20.c";
connectAttr "Mat_20P2D.c" "Mat_20F.c";
connectAttr "Mat_20P2D.tf" "Mat_20F.tf";
connectAttr "Mat_20P2D.rf" "Mat_20F.rf";
connectAttr "Mat_20P2D.s" "Mat_20F.s";
connectAttr "Mat_20P2D.wu" "Mat_20F.wu";
connectAttr "Mat_20P2D.wv" "Mat_20F.wv";
connectAttr "Mat_20P2D.re" "Mat_20F.re";
connectAttr "Mat_20P2D.of" "Mat_20F.of";
connectAttr "Mat_20P2D.r" "Mat_20F.ro";
connectAttr "Mat_20P2D.o" "Mat_20F.uv";
connectAttr "Mat_20P2D.ofs" "Mat_20F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_20F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_20F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_20F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_20F.ws";
connectAttr "Mat_20P2D1.c" "Mat_20F1.c";
connectAttr "Mat_20P2D1.tf" "Mat_20F1.tf";
connectAttr "Mat_20P2D1.rf" "Mat_20F1.rf";
connectAttr "Mat_20P2D1.s" "Mat_20F1.s";
connectAttr "Mat_20P2D1.wu" "Mat_20F1.wu";
connectAttr "Mat_20P2D1.wv" "Mat_20F1.wv";
connectAttr "Mat_20P2D1.re" "Mat_20F1.re";
connectAttr "Mat_20P2D1.of" "Mat_20F1.of";
connectAttr "Mat_20P2D1.r" "Mat_20F1.ro";
connectAttr "Mat_20P2D1.o" "Mat_20F1.uv";
connectAttr "Mat_20P2D1.ofs" "Mat_20F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_20F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_20F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_20F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_20F1.ws";
connectAttr "Mat_21.oc" "Mat_5.ss";
connectAttr "groupId153.msg" "Mat_5.gn" -na;
connectAttr "groupId154.msg" "Mat_5.gn" -na;
connectAttr "Model_110Shape.iog.og[0]" "Mat_5.dsm" -na;
connectAttr "Model_37Shape.iog.og[0]" "Mat_5.dsm" -na;
connectAttr "Mat_5.msg" "materialInfo9.sg";
connectAttr "Mat_21.msg" "materialInfo9.m";
connectAttr "Mat_21F1.msg" "materialInfo9.t" -na;
connectAttr "Mat_21F.oc" "Mat_21.ambc";
connectAttr "Mat_21F1.oc" "Mat_21.c";
connectAttr "Mat_21P2D.c" "Mat_21F.c";
connectAttr "Mat_21P2D.tf" "Mat_21F.tf";
connectAttr "Mat_21P2D.rf" "Mat_21F.rf";
connectAttr "Mat_21P2D.s" "Mat_21F.s";
connectAttr "Mat_21P2D.wu" "Mat_21F.wu";
connectAttr "Mat_21P2D.wv" "Mat_21F.wv";
connectAttr "Mat_21P2D.re" "Mat_21F.re";
connectAttr "Mat_21P2D.of" "Mat_21F.of";
connectAttr "Mat_21P2D.r" "Mat_21F.ro";
connectAttr "Mat_21P2D.o" "Mat_21F.uv";
connectAttr "Mat_21P2D.ofs" "Mat_21F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_21F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_21F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_21F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_21F.ws";
connectAttr "Mat_21P2D1.c" "Mat_21F1.c";
connectAttr "Mat_21P2D1.tf" "Mat_21F1.tf";
connectAttr "Mat_21P2D1.rf" "Mat_21F1.rf";
connectAttr "Mat_21P2D1.s" "Mat_21F1.s";
connectAttr "Mat_21P2D1.wu" "Mat_21F1.wu";
connectAttr "Mat_21P2D1.wv" "Mat_21F1.wv";
connectAttr "Mat_21P2D1.re" "Mat_21F1.re";
connectAttr "Mat_21P2D1.of" "Mat_21F1.of";
connectAttr "Mat_21P2D1.r" "Mat_21F1.ro";
connectAttr "Mat_21P2D1.o" "Mat_21F1.uv";
connectAttr "Mat_21P2D1.ofs" "Mat_21F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_21F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_21F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_21F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_21F1.ws";
connectAttr "Mat_22.oc" "Mat_3.ss";
connectAttr "groupId155.msg" "Mat_3.gn" -na;
connectAttr "groupId156.msg" "Mat_3.gn" -na;
connectAttr "groupId157.msg" "Mat_3.gn" -na;
connectAttr "groupId158.msg" "Mat_3.gn" -na;
connectAttr "groupId159.msg" "Mat_3.gn" -na;
connectAttr "groupId160.msg" "Mat_3.gn" -na;
connectAttr "Model_43Shape.iog.og[1]" "Mat_3.dsm" -na;
connectAttr "Model_42Shape.iog.og[1]" "Mat_3.dsm" -na;
connectAttr "Model_41Shape.iog.og[1]" "Mat_3.dsm" -na;
connectAttr "Model_40Shape.iog.og[1]" "Mat_3.dsm" -na;
connectAttr "Model_39Shape.iog.og[1]" "Mat_3.dsm" -na;
connectAttr "Model_38Shape.iog.og[1]" "Mat_3.dsm" -na;
connectAttr "Mat_3.msg" "materialInfo10.sg";
connectAttr "Mat_22.msg" "materialInfo10.m";
connectAttr "Mat_22F1.msg" "materialInfo10.t" -na;
connectAttr "Mat_22F.oc" "Mat_22.ambc";
connectAttr "Mat_22F1.oc" "Mat_22.c";
connectAttr "Mat_22P2D.c" "Mat_22F.c";
connectAttr "Mat_22P2D.tf" "Mat_22F.tf";
connectAttr "Mat_22P2D.rf" "Mat_22F.rf";
connectAttr "Mat_22P2D.s" "Mat_22F.s";
connectAttr "Mat_22P2D.wu" "Mat_22F.wu";
connectAttr "Mat_22P2D.wv" "Mat_22F.wv";
connectAttr "Mat_22P2D.re" "Mat_22F.re";
connectAttr "Mat_22P2D.of" "Mat_22F.of";
connectAttr "Mat_22P2D.r" "Mat_22F.ro";
connectAttr "Mat_22P2D.o" "Mat_22F.uv";
connectAttr "Mat_22P2D.ofs" "Mat_22F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_22F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_22F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_22F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_22F.ws";
connectAttr "Mat_22P2D1.c" "Mat_22F1.c";
connectAttr "Mat_22P2D1.tf" "Mat_22F1.tf";
connectAttr "Mat_22P2D1.rf" "Mat_22F1.rf";
connectAttr "Mat_22P2D1.s" "Mat_22F1.s";
connectAttr "Mat_22P2D1.wu" "Mat_22F1.wu";
connectAttr "Mat_22P2D1.wv" "Mat_22F1.wv";
connectAttr "Mat_22P2D1.re" "Mat_22F1.re";
connectAttr "Mat_22P2D1.of" "Mat_22F1.of";
connectAttr "Mat_22P2D1.r" "Mat_22F1.ro";
connectAttr "Mat_22P2D1.o" "Mat_22F1.uv";
connectAttr "Mat_22P2D1.ofs" "Mat_22F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_22F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_22F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_22F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_22F1.ws";
connectAttr "Mat_24.oc" "Mat_23.ss";
connectAttr "groupId161.msg" "Mat_23.gn" -na;
connectAttr "Model_86Shape.iog.og[0]" "Mat_23.dsm" -na;
connectAttr "Mat_23.msg" "materialInfo11.sg";
connectAttr "Mat_24.msg" "materialInfo11.m";
connectAttr "Mat_24F1.msg" "materialInfo11.t" -na;
connectAttr "Mat_24F.oc" "Mat_24.ambc";
connectAttr "Mat_24F1.oc" "Mat_24.c";
connectAttr "Mat_24P2D.c" "Mat_24F.c";
connectAttr "Mat_24P2D.tf" "Mat_24F.tf";
connectAttr "Mat_24P2D.rf" "Mat_24F.rf";
connectAttr "Mat_24P2D.s" "Mat_24F.s";
connectAttr "Mat_24P2D.wu" "Mat_24F.wu";
connectAttr "Mat_24P2D.wv" "Mat_24F.wv";
connectAttr "Mat_24P2D.re" "Mat_24F.re";
connectAttr "Mat_24P2D.of" "Mat_24F.of";
connectAttr "Mat_24P2D.r" "Mat_24F.ro";
connectAttr "Mat_24P2D.o" "Mat_24F.uv";
connectAttr "Mat_24P2D.ofs" "Mat_24F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_24F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_24F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_24F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_24F.ws";
connectAttr "Mat_24P2D1.c" "Mat_24F1.c";
connectAttr "Mat_24P2D1.tf" "Mat_24F1.tf";
connectAttr "Mat_24P2D1.rf" "Mat_24F1.rf";
connectAttr "Mat_24P2D1.s" "Mat_24F1.s";
connectAttr "Mat_24P2D1.wu" "Mat_24F1.wu";
connectAttr "Mat_24P2D1.wv" "Mat_24F1.wv";
connectAttr "Mat_24P2D1.re" "Mat_24F1.re";
connectAttr "Mat_24P2D1.of" "Mat_24F1.of";
connectAttr "Mat_24P2D1.r" "Mat_24F1.ro";
connectAttr "Mat_24P2D1.o" "Mat_24F1.uv";
connectAttr "Mat_24P2D1.ofs" "Mat_24F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_24F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_24F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_24F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_24F1.ws";
connectAttr "Mat_25.oc" "Mat_6.ss";
connectAttr "groupId162.msg" "Mat_6.gn" -na;
connectAttr "Model_110Shape.iog.og[1]" "Mat_6.dsm" -na;
connectAttr "Mat_6.msg" "materialInfo12.sg";
connectAttr "Mat_25.msg" "materialInfo12.m";
connectAttr "Mat_25F1.msg" "materialInfo12.t" -na;
connectAttr "Mat_25F.oc" "Mat_25.ambc";
connectAttr "Mat_25F1.oc" "Mat_25.c";
connectAttr "Mat_25P2D.c" "Mat_25F.c";
connectAttr "Mat_25P2D.tf" "Mat_25F.tf";
connectAttr "Mat_25P2D.rf" "Mat_25F.rf";
connectAttr "Mat_25P2D.s" "Mat_25F.s";
connectAttr "Mat_25P2D.wu" "Mat_25F.wu";
connectAttr "Mat_25P2D.wv" "Mat_25F.wv";
connectAttr "Mat_25P2D.re" "Mat_25F.re";
connectAttr "Mat_25P2D.of" "Mat_25F.of";
connectAttr "Mat_25P2D.r" "Mat_25F.ro";
connectAttr "Mat_25P2D.o" "Mat_25F.uv";
connectAttr "Mat_25P2D.ofs" "Mat_25F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_25F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_25F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_25F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_25F.ws";
connectAttr "Mat_25P2D1.c" "Mat_25F1.c";
connectAttr "Mat_25P2D1.tf" "Mat_25F1.tf";
connectAttr "Mat_25P2D1.rf" "Mat_25F1.rf";
connectAttr "Mat_25P2D1.s" "Mat_25F1.s";
connectAttr "Mat_25P2D1.wu" "Mat_25F1.wu";
connectAttr "Mat_25P2D1.wv" "Mat_25F1.wv";
connectAttr "Mat_25P2D1.re" "Mat_25F1.re";
connectAttr "Mat_25P2D1.of" "Mat_25F1.of";
connectAttr "Mat_25P2D1.r" "Mat_25F1.ro";
connectAttr "Mat_25P2D1.o" "Mat_25F1.uv";
connectAttr "Mat_25P2D1.ofs" "Mat_25F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_25F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_25F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_25F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_25F1.ws";
connectAttr "Mat_26.oc" "Mat_4.ss";
connectAttr "groupId163.msg" "Mat_4.gn" -na;
connectAttr "Model_110Shape.iog.og[2]" "Mat_4.dsm" -na;
connectAttr "Mat_4.msg" "materialInfo13.sg";
connectAttr "Mat_26.msg" "materialInfo13.m";
connectAttr "Mat_26F1.msg" "materialInfo13.t" -na;
connectAttr "Mat_26F.oc" "Mat_26.ambc";
connectAttr "Mat_26F1.oc" "Mat_26.c";
connectAttr "Mat_26P2D.c" "Mat_26F.c";
connectAttr "Mat_26P2D.tf" "Mat_26F.tf";
connectAttr "Mat_26P2D.rf" "Mat_26F.rf";
connectAttr "Mat_26P2D.s" "Mat_26F.s";
connectAttr "Mat_26P2D.wu" "Mat_26F.wu";
connectAttr "Mat_26P2D.wv" "Mat_26F.wv";
connectAttr "Mat_26P2D.re" "Mat_26F.re";
connectAttr "Mat_26P2D.of" "Mat_26F.of";
connectAttr "Mat_26P2D.r" "Mat_26F.ro";
connectAttr "Mat_26P2D.o" "Mat_26F.uv";
connectAttr "Mat_26P2D.ofs" "Mat_26F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_26F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_26F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_26F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_26F.ws";
connectAttr "Mat_26P2D1.c" "Mat_26F1.c";
connectAttr "Mat_26P2D1.tf" "Mat_26F1.tf";
connectAttr "Mat_26P2D1.rf" "Mat_26F1.rf";
connectAttr "Mat_26P2D1.s" "Mat_26F1.s";
connectAttr "Mat_26P2D1.wu" "Mat_26F1.wu";
connectAttr "Mat_26P2D1.wv" "Mat_26F1.wv";
connectAttr "Mat_26P2D1.re" "Mat_26F1.re";
connectAttr "Mat_26P2D1.of" "Mat_26F1.of";
connectAttr "Mat_26P2D1.r" "Mat_26F1.ro";
connectAttr "Mat_26P2D1.o" "Mat_26F1.uv";
connectAttr "Mat_26P2D1.ofs" "Mat_26F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_26F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_26F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_26F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_26F1.ws";
connectAttr "Mat_27.oc" "Mat_0.ss";
connectAttr "groupId164.msg" "Mat_0.gn" -na;
connectAttr "Model_129Shape.iog.og[0]" "Mat_0.dsm" -na;
connectAttr "Mat_0.msg" "materialInfo14.sg";
connectAttr "Mat_27.msg" "materialInfo14.m";
connectAttr "Mat_27F1.msg" "materialInfo14.t" -na;
connectAttr "Mat_27F.oc" "Mat_27.ambc";
connectAttr "Mat_27F1.oc" "Mat_27.c";
connectAttr "Mat_27P2D.c" "Mat_27F.c";
connectAttr "Mat_27P2D.tf" "Mat_27F.tf";
connectAttr "Mat_27P2D.rf" "Mat_27F.rf";
connectAttr "Mat_27P2D.s" "Mat_27F.s";
connectAttr "Mat_27P2D.wu" "Mat_27F.wu";
connectAttr "Mat_27P2D.wv" "Mat_27F.wv";
connectAttr "Mat_27P2D.re" "Mat_27F.re";
connectAttr "Mat_27P2D.of" "Mat_27F.of";
connectAttr "Mat_27P2D.r" "Mat_27F.ro";
connectAttr "Mat_27P2D.o" "Mat_27F.uv";
connectAttr "Mat_27P2D.ofs" "Mat_27F.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_27F.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_27F.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_27F.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_27F.ws";
connectAttr "Mat_27P2D1.c" "Mat_27F1.c";
connectAttr "Mat_27P2D1.tf" "Mat_27F1.tf";
connectAttr "Mat_27P2D1.rf" "Mat_27F1.rf";
connectAttr "Mat_27P2D1.s" "Mat_27F1.s";
connectAttr "Mat_27P2D1.wu" "Mat_27F1.wu";
connectAttr "Mat_27P2D1.wv" "Mat_27F1.wv";
connectAttr "Mat_27P2D1.re" "Mat_27F1.re";
connectAttr "Mat_27P2D1.of" "Mat_27F1.of";
connectAttr "Mat_27P2D1.r" "Mat_27F1.ro";
connectAttr "Mat_27P2D1.o" "Mat_27F1.uv";
connectAttr "Mat_27P2D1.ofs" "Mat_27F1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Mat_27F1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Mat_27F1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Mat_27F1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Mat_27F1.ws";
connectAttr "wire_181181182.oc" "wire_181181181.ss";
connectAttr "wire_181181181.msg" "materialInfo15.sg";
connectAttr "wire_181181182.msg" "materialInfo15.m";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId165.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId166.id" "groupParts2.gi";
connectAttr "groupParts2.og" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyDelEdge1.ip";
connectAttr "Mat_9.pa" ":renderPartition.st" -na;
connectAttr "Mat_1.pa" ":renderPartition.st" -na;
connectAttr "Mat_12.pa" ":renderPartition.st" -na;
connectAttr "Mat_8.pa" ":renderPartition.st" -na;
connectAttr "Mat_2.pa" ":renderPartition.st" -na;
connectAttr "Mat_7.pa" ":renderPartition.st" -na;
connectAttr "Mat_17.pa" ":renderPartition.st" -na;
connectAttr "Mat_19.pa" ":renderPartition.st" -na;
connectAttr "Mat_5.pa" ":renderPartition.st" -na;
connectAttr "Mat_3.pa" ":renderPartition.st" -na;
connectAttr "Mat_23.pa" ":renderPartition.st" -na;
connectAttr "Mat_6.pa" ":renderPartition.st" -na;
connectAttr "Mat_4.pa" ":renderPartition.st" -na;
connectAttr "Mat_0.pa" ":renderPartition.st" -na;
connectAttr "wire_181181181.pa" ":renderPartition.st" -na;
connectAttr "Mat_10.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_11.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_13.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_14.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_15.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_16.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_18.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_20.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_21.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_22.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_24.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_25.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_26.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_27.msg" ":defaultShaderList1.s" -na;
connectAttr "wire_181181182.msg" ":defaultShaderList1.s" -na;
connectAttr "Mat_10P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_10P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_11P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_11P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_13P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_13P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_14P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_14P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_15P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_15P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_16P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_16P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_18P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_18P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_20P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_20P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_21P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_21P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_22P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_22P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_24P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_24P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_25P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_25P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_26P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_26P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_27P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Mat_27P2D1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Mat_10F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_10F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_11F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_11F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_13F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_13F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_14F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_14F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_15F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_15F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_16F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_16F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_18F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_18F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_20F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_20F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_21F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_21F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_22F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_22F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_24F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_24F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_25F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_25F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_26F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_26F1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_27F.msg" ":defaultTextureList1.tx" -na;
connectAttr "Mat_27F1.msg" ":defaultTextureList1.tx" -na;
// End of Tavern.ma
