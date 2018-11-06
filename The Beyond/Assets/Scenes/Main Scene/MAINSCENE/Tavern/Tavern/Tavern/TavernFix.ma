//Maya ASCII 2018 scene
//Name: TavernFix.ma
//Last modified: Wed, Oct 24, 2018 02:40:38 PM
//Codeset: 1252
requires maya "2018";
requires -dataType "HIKCharacter" -dataType "HIKCharacterState" -dataType "HIKEffectorState"
		 -dataType "HIKPropertySetState" "mayaHIK" "1.0_HIK_2016.5";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "99E42819-4403-6D53-2105-61ACD1C3F301";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -560.32355846832615 1950.5695496186449 4522.8308341514876 ;
	setAttr ".r" -type "double3" 334.46164726815721 2516.9999999994998 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AF30423A-4ECC-B217-A2F6-55B331969D60";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 4233.537842959242;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 922.71167187819219 72.390001773834229 76.199996948242188 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3D5D50AA-4C3C-63CA-3E1B-5789E9BA4936";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D2F94FD3-41EF-0D01-3E25-36B23FD765A0";
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
	rename -uid "B8D17365-4625-AA85-3220-05A58CB6FB3B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C6FB6A03-41B7-7E17-94E4-90BDC6BFF22E";
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
	rename -uid "E21DAA67-4ED0-33FD-CB77-74B7D268CEAF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "690A9B97-482E-F0CA-334D-81BCD10E8E0E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Roof_L_Top";
	rename -uid "7D687B43-4D22-50E6-D700-F786ABA18C61";
	setAttr ".rp" -type "double3" -72.3900146484375 1372.5072021484375 -288.87570571899414 ;
	setAttr ".sp" -type "double3" -72.3900146484375 1372.5072021484375 -288.87570571899414 ;
createNode mesh -n "Roof_L_TopShape" -p "Roof_L_Top";
	rename -uid "AD1D107F-4AA2-7CE1-E773-C1A61E9E2392";
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
createNode transform -n "Roof_L_Mid";
	rename -uid "8820CF0E-479A-D7CD-5160-0FAD417BEBB8";
	setAttr ".rp" -type "double3" -72.3900146484375 966.1068115234375 -625.54313659667969 ;
	setAttr ".sp" -type "double3" -72.3900146484375 966.1068115234375 -625.54313659667969 ;
createNode mesh -n "Roof_L_MidShape" -p "Roof_L_Mid";
	rename -uid "F142E983-4C4F-174F-BED7-138649C07468";
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
createNode transform -n "Roof_L_Bottom";
	rename -uid "92B062E5-4E8F-B5CD-33A6-4FAF032B2110";
	setAttr ".rp" -type "double3" -72.3900146484375 612.6943359375 -1007.0114440917969 ;
	setAttr ".sp" -type "double3" -72.3900146484375 612.6943359375 -1007.0114440917969 ;
createNode mesh -n "Roof_L_BottomShape" -p "Roof_L_Bottom";
	rename -uid "ACB6BF65-46A5-5402-C1D6-1AAAC64B4760";
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
createNode transform -n "Sidewall_L_Bottom";
	rename -uid "0FDFCDC6-44EE-243C-F9E2-25A9592D9A18";
	setAttr ".rp" -type "double3" -1259.68310546875 636.91500854492188 -119.3800048828125 ;
	setAttr ".sp" -type "double3" -1259.68310546875 636.91500854492188 -119.3800048828125 ;
createNode mesh -n "Sidewall_L_BottomShape" -p "Sidewall_L_Bottom";
	rename -uid "C5A8EB0B-48B2-AF7F-9D41-179BFE8115A4";
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
createNode transform -n "Sidewall_L_Mid";
	rename -uid "32CF398E-4142-72F3-A531-BEAC9211B304";
	setAttr ".rp" -type "double3" -1259.68310546875 965.240234375 -119.3800048828125 ;
	setAttr ".sp" -type "double3" -1259.68310546875 965.240234375 -119.3800048828125 ;
createNode mesh -n "Sidewall_L_MidShape" -p "Sidewall_L_Mid";
	rename -uid "DD7FE27A-482E-ED39-9DC6-04BBBEEECB0A";
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
createNode transform -n "Sidewall_L_Top";
	rename -uid "33FEA617-4E25-0CFB-3D82-A7AB85609631";
	setAttr ".rp" -type "double3" -1259.68310546875 1342.0068359375 -119.3800048828125 ;
	setAttr ".sp" -type "double3" -1259.68310546875 1342.0068359375 -119.3800048828125 ;
createNode mesh -n "Sidewall_L_TopShape" -p "Sidewall_L_Top";
	rename -uid "581F6D7A-48E0-10A5-DBD7-669A8738B72A";
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
createNode transform -n "Sidewall_R_Bottom";
	rename -uid "C179738B-41D1-DF60-B1BC-56B424275000";
	setAttr ".rp" -type "double3" 1104.7119140625 636.91500854492188 -119.3800048828125 ;
	setAttr ".sp" -type "double3" 1104.7119140625 636.91500854492188 -119.3800048828125 ;
createNode mesh -n "Sidewall_R_BottomShape" -p "Sidewall_R_Bottom";
	rename -uid "0B32F120-4A71-6E26-F626-93920416F8BD";
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
createNode transform -n "Sidewall_R_Mid";
	rename -uid "3849BCA4-46AA-7972-0CCF-62BBE5E56FF6";
	setAttr ".rp" -type "double3" 1104.7119140625 965.240234375 -119.3800048828125 ;
	setAttr ".sp" -type "double3" 1104.7119140625 965.240234375 -119.3800048828125 ;
createNode mesh -n "Sidewall_R_MidShape" -p "Sidewall_R_Mid";
	rename -uid "7E86E81F-4E73-D215-6A98-55BCF059D3DF";
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
createNode transform -n "Sidewall_L_Wall";
	rename -uid "048FEACA-4272-D8E2-ED3D-6392B6C20999";
	setAttr ".t" -type "double3" -2.5424266119350705 0 0 ;
	setAttr ".rp" -type "double3" -1270 233.68000030517578 -150.33929443359375 ;
	setAttr ".sp" -type "double3" -1270 233.68000030517578 -150.33929443359375 ;
createNode mesh -n "Sidewall_L_WallShape" -p "Sidewall_L_Wall";
	rename -uid "175F6730-4B39-1B93-8227-2F92141CEFF0";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.14059999585151672 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -5.94194984 -0.53750002
		 9.46879959 0.78130001 9.375 -0.0625 9.46879959 -0.0625 9.375 0.78130001 -9.46879959
		 0.78130001 -9.375 -0.0625 -9.375 0.78130001 -9.46879959 -0.0625 -9.46870041 2.093699932
		 -9.375 -0.71880001 -9.46870041 -0.71880001 9.46879959 -0.71880001 9.375 2.093699932
		 9.375 -0.71880001 9.46879959 2.093699932 2.45539999 -0.029999999 -1.5625 1.19280005
		 -1.5625 -0.029999999 2.45539999 1.19280005 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -1300.47998047 -40.63999939 792.47998047
		 -1300.47998047 508 -1093.15856934 -1300.47998047 -40.63999939 -1093.15856934 -1300.47998047 508 792.47998047
		 -1239.52001953 508 792.47998047 -1239.52001953 -40.63999939 792.47998047 -1239.52001953 508 -1093.15856934
		 -1239.52001953 -40.63999939 -1093.15856934;
	setAttr -s 12 ".ed[0:11]"  2 0 0 0 3 0 3 1 0 0 5 0 5 4 0 4 3 0 1 6 0
		 6 7 0 7 5 0 4 6 0 1 2 0 7 2 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 3 4 5 -2
		mu 0 4 2 3 1 4
		f 4 -11 6 7 11
		mu 0 4 0 7 5 8
		f 4 -3 -6 9 -7
		mu 0 4 13 14 12 15
		f 4 -5 -9 -8 -10
		mu 0 4 17 18 16 19
		f 4 -1 -12 8 -4
		mu 0 4 10 6 9 11
		f 4 2 10 0 1
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Model_9";
	rename -uid "61207794-47BA-DAB2-5212-6FB5C26D670A";
	setAttr ".t" -type "double3" 2297.4022038366174 9.8158351024613673 205.15638268511634 ;
	setAttr ".r" -type "double3" 0 -180 0 ;
	setAttr ".s" -type "double3" 2.2065956133649482 1.2046303768409039 0.14986565613082192 ;
	setAttr ".rp" -type "double3" -1270 -22.859999656677246 -121.91998291015625 ;
	setAttr ".sp" -type "double3" -1270 -22.859999656677246 -121.91998291015625 ;
createNode mesh -n "Model_9Shape" -p "Model_9";
	rename -uid "E8113183-4843-31AA-CCEC-54BDCF51DD6B";
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
createNode transform -n "Sidewall_R_Top";
	rename -uid "91B6F0AE-43B8-58E8-8D88-3BA23C8AD8D2";
	setAttr ".rp" -type "double3" 1104.7119140625 1338.4188232421875 -119.3800048828125 ;
	setAttr ".sp" -type "double3" 1104.7119140625 1338.4188232421875 -119.3800048828125 ;
createNode mesh -n "Sidewall_R_TopShape" -p "Sidewall_R_Top";
	rename -uid "A6F4FE73-4B7F-29FA-A30E-FEBA1673B621";
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
createNode transform -n "Large_top_roof_R";
	rename -uid "384D2983-4DDF-280A-AF34-BDA0A0FD1256";
	setAttr ".rp" -type "double3" -13.409449577331543 1355.5875854492188 652.77986812591553 ;
	setAttr ".sp" -type "double3" -13.409449577331543 1355.5875854492188 652.77986812591553 ;
createNode mesh -n "Large_top_roof_RShape" -p "Large_top_roof_R";
	rename -uid "8B47CAC4-4DB1-FF59-3DB0-CA9F9097776C";
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
createNode transform -n "Large_Mid_roof_R";
	rename -uid "FB7B9E7D-4A38-E6E4-F7A2-B7AA137AA56D";
	setAttr ".rp" -type "double3" 54.713000059127808 1183.6400146484375 723.89987182617188 ;
	setAttr ".sp" -type "double3" 54.713000059127808 1183.6400146484375 723.89987182617188 ;
createNode mesh -n "Large_Mid_roof_RShape" -p "Large_Mid_roof_R";
	rename -uid "2C3BBB06-4E82-4718-4DD3-46BB8F2F51A6";
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
createNode transform -n "Large_top_roof_L";
	rename -uid "AA40DE09-4C71-0D07-C87A-2AAAAFE28D96";
	setAttr ".rp" -type "double3" -87.372451782226563 1355.5875854492188 652.77986812591553 ;
	setAttr ".sp" -type "double3" -87.372451782226563 1355.5875854492188 652.77986812591553 ;
createNode mesh -n "Large_top_roof_LShape" -p "Large_top_roof_L";
	rename -uid "0719709C-47E3-3F40-2038-D4A1E66D8054";
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
createNode transform -n "Large_Mid_roof_L";
	rename -uid "2CE8123D-4C9B-25F0-F769-939CC94FF0DA";
	setAttr ".rp" -type "double3" -158.29470062255859 1183.6400146484375 723.89987182617188 ;
	setAttr ".sp" -type "double3" -158.29470062255859 1183.6400146484375 723.89987182617188 ;
createNode mesh -n "Large_Mid_roof_LShape" -p "Large_Mid_roof_L";
	rename -uid "2B2D9BD8-41FA-8C6D-4ABD-A1844502F840";
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
createNode transform -n "Large_Bottom_roof_L";
	rename -uid "2823A626-4E18-5C99-1E5A-009E9818F336";
	setAttr ".rp" -type "double3" -244.10604858398438 1022.23974609375 797.55987548828125 ;
	setAttr ".sp" -type "double3" -244.10604858398438 1022.23974609375 797.55987548828125 ;
createNode mesh -n "Large_Bottom_roof_LShape" -p "Large_Bottom_roof_L";
	rename -uid "D1AE1340-41E1-CC5E-ABD7-72AD9BDEA045";
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
createNode transform -n "Large_Bottom_roof_R";
	rename -uid "E6CA1F3E-4FD4-11AB-8C12-32A4EA07E344";
	setAttr ".rp" -type "double3" 136.43584823608398 1022.23974609375 797.55987548828125 ;
	setAttr ".sp" -type "double3" 136.43584823608398 1022.23974609375 797.55987548828125 ;
createNode mesh -n "Large_Bottom_roof_RShape" -p "Large_Bottom_roof_R";
	rename -uid "058CFE41-4E40-D55D-D5AA-5A8AFAEE3913";
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
createNode transform -n "Large_Bottom_roof_Front";
	rename -uid "E7B5DD11-4E1C-5871-26CF-5BAC6D5397CB";
	setAttr ".rp" -type "double3" -53.153457641601563 1021.9065856933594 1201.4906005859375 ;
	setAttr ".sp" -type "double3" -53.153457641601563 1021.9065856933594 1201.4906005859375 ;
createNode mesh -n "Large_Bottom_roof_FrontShape" -p "Large_Bottom_roof_Front";
	rename -uid "B0505D33-4B0E-98C2-8234-35A1F1329CCF";
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
createNode transform -n "Large_Mid_roof_Front";
	rename -uid "F49349EC-4A8A-EC44-94ED-9CB5CBC09E67";
createNode mesh -n "Large_Mid_roof_FrontShape" -p "Large_Mid_roof_Front";
	rename -uid "447BC33B-4F74-A526-737A-C7A4237CE014";
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
createNode transform -n "Large_top_roof_Front";
	rename -uid "AEDDF364-4952-D1DE-90D2-BA923A16DC1D";
	setAttr ".rp" -type "double3" -51.79019832611084 1342.2820434570313 1201.4906005859375 ;
	setAttr ".sp" -type "double3" -51.79019832611084 1342.2820434570313 1201.4906005859375 ;
createNode mesh -n "Large_top_roof_FrontShape" -p "Large_top_roof_Front";
	rename -uid "CCD30785-45BD-8A11-EE6A-F0A6BD84531D";
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
createNode transform -n "Back_wall";
	rename -uid "B718CAA7-4A64-5642-DF21-70B76B7D1546";
	setAttr ".t" -type "double3" 0 0 -14.947185488878006 ;
	setAttr ".s" -type "double3" 1 1 0.31019347939531428 ;
	setAttr ".rp" -type "double3" -81.280029296875 233.68000030517578 -1066.799987792969 ;
	setAttr ".sp" -type "double3" -81.280029296875 233.68000030517578 -1066.7999877929688 ;
	setAttr ".spt" -type "double3" 0 0 -1.1368683772161603e-13 ;
createNode mesh -n "Back_wallShape" -p "Back_wall";
	rename -uid "E54A86AC-421A-FA4A-2E28-66B9DAF25710";
	setAttr -k off ".v";
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
createNode transform -n "Large_Wall_roof_Front";
	rename -uid "2E802FAB-4659-7B87-7743-83BF117ED0A1";
	setAttr ".rp" -type "double3" -51.79010009765625 711.70179748535156 1242.6244506835938 ;
	setAttr ".sp" -type "double3" -51.79010009765625 711.70179748535156 1242.6244506835938 ;
createNode mesh -n "Large_Wall_roof_FrontShape" -p "Large_Wall_roof_Front";
	rename -uid "4781E45C-406F-14FB-15DE-1CA3C20A3DAC";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[2:7]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[8:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.49999999743886292 -0.50000002514570951 ;
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
createNode transform -n "Large_R_Wall";
	rename -uid "A59CFD90-43A3-1DFE-5CEE-278C6AF7AE19";
createNode mesh -n "Large_R_WallShape" -p "Large_R_Wall";
	rename -uid "AB20FD25-448A-4F21-2611-018A9887EDB5";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[2:9]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[10:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.94535002112388611 0.30955000407993793 ;
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
createNode transform -n "Large_L_Wall";
	rename -uid "4117233A-43A4-798F-4976-A1A0E5F10CD6";
	setAttr ".rp" -type "double3" -260.89534759521484 709.92999267578125 830.57997131347656 ;
	setAttr ".sp" -type "double3" -260.89534759521484 709.92999267578125 830.57997131347656 ;
createNode mesh -n "Large_L_WallShape" -p "Large_L_Wall";
	rename -uid "40A6FF11-47F1-D4EE-3A9D-9889527F7824";
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
createNode transform -n "Small_top_roof_R";
	rename -uid "4FEAB28D-494E-6885-CF23-0ABDA41A8B59";
	setAttr ".rp" -type "double3" -888.61300659179688 1154.856201171875 506.72999572753906 ;
	setAttr ".sp" -type "double3" -888.61300659179688 1154.856201171875 506.72999572753906 ;
createNode mesh -n "Small_top_roof_RShape" -p "Small_top_roof_R";
	rename -uid "4E0CE665-45DC-C0AB-75A6-4F8FAA36F296";
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
createNode transform -n "Small_Mid_roof_R";
	rename -uid "8E34E787-4B47-2F3F-BB43-5886DE13ABA1";
	setAttr ".rp" -type "double3" -851.32464599609375 1055.7153015136719 549.90998840332031 ;
	setAttr ".sp" -type "double3" -851.32464599609375 1055.7153015136719 549.90998840332031 ;
createNode mesh -n "Small_Mid_roof_RShape" -p "Small_Mid_roof_R";
	rename -uid "E9CFC750-437B-468E-5E7C-E291AA3FB13F";
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
createNode transform -n "Small_top_roof_L";
	rename -uid "01BC3754-4330-571C-A5BC-8A8D8824D063";
	setAttr ".rp" -type "double3" -929.0980224609375 1154.856201171875 506.72999572753906 ;
	setAttr ".sp" -type "double3" -929.0980224609375 1154.856201171875 506.72999572753906 ;
createNode mesh -n "Small_top_roof_LShape" -p "Small_top_roof_L";
	rename -uid "1A8EEF0F-4A89-0F5C-AAD2-27BB7BA57622";
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
createNode transform -n "Small_mid_roof_L";
	rename -uid "7577FDD7-4CE2-0474-8840-51A935A5A6CB";
	setAttr ".rp" -type "double3" -967.91854858398438 1055.7153015136719 549.90998840332031 ;
	setAttr ".sp" -type "double3" -967.91854858398438 1055.7153015136719 549.90998840332031 ;
createNode mesh -n "Small_mid_roof_LShape" -p "Small_mid_roof_L";
	rename -uid "56FD3CAC-4DC7-3787-463A-26B8633AF8B2";
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
createNode transform -n "Small_Bottem_roof_L";
	rename -uid "CBE787BD-4277-8CD1-1CFD-D589FD0667A9";
	setAttr ".rp" -type "double3" -1014.8887329101563 962.66000366210938 598.16999816894531 ;
	setAttr ".sp" -type "double3" -1014.8887329101563 962.66000366210938 598.16999816894531 ;
createNode mesh -n "Small_Bottem_roof_LShape" -p "Small_Bottem_roof_L";
	rename -uid "2E284931-49AF-CA07-80C3-1D9A96F1F387";
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
createNode transform -n "Small_Bottom_roof_R";
	rename -uid "CEC27317-44C9-C4EA-9DA9-E5829C03AF44";
	setAttr ".rp" -type "double3" -806.59237670898438 962.66000366210938 598.16999816894531 ;
	setAttr ".sp" -type "double3" -806.59237670898438 962.66000366210938 598.16999816894531 ;
createNode mesh -n "Small_Bottom_roof_RShape" -p "Small_Bottom_roof_R";
	rename -uid "BA5F997D-48E2-4A21-C935-439FAE7E9E20";
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
createNode transform -n "Small_Bottom_roof_Front";
	rename -uid "0A0A650B-4E14-9A7C-62AB-8C84193B0E6F";
	setAttr ".rp" -type "double3" -910.36770629882813 962.68399047851563 713.81057739257813 ;
	setAttr ".sp" -type "double3" -910.36770629882813 962.68399047851563 713.81057739257813 ;
createNode mesh -n "Small_Bottom_roof_FrontShape" -p "Small_Bottom_roof_Front";
	rename -uid "79AD3226-4615-B3F0-1753-5D9FD6A378C0";
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
createNode transform -n "Small_Mid_roof_Front";
	rename -uid "88AE2B5D-4D2B-D9E6-0827-8FA8DE95F74B";
	setAttr ".rp" -type "double3" -909.62136840820313 1054.9386291503906 713.81057739257813 ;
	setAttr ".sp" -type "double3" -909.62136840820313 1054.9386291503906 713.81057739257813 ;
createNode mesh -n "Small_Mid_roof_FrontShape" -p "Small_Mid_roof_Front";
	rename -uid "45FC44BF-4571-79E5-FDC3-FF9208434318";
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
createNode transform -n "Small_top_roof_Front";
	rename -uid "FFD26157-438D-2AC4-11FC-6180A8604FC2";
	setAttr ".rp" -type "double3" -909.621337890625 1147.193359375 713.81057739257813 ;
	setAttr ".sp" -type "double3" -909.621337890625 1147.193359375 713.81057739257813 ;
createNode mesh -n "Small_top_roof_FrontShape" -p "Small_top_roof_Front";
	rename -uid "8CF8DEFB-45D7-251D-1C88-CF92D62C5487";
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
createNode transform -n "Small_Face_roof_Front";
	rename -uid "A88388CA-4E34-E9E3-CFD7-58967ED811E0";
	setAttr ".rp" -type "double3" -909.621337890625 784.03195190429688 770.18450927734375 ;
	setAttr ".sp" -type "double3" -909.621337890625 784.03195190429688 770.18450927734375 ;
createNode mesh -n "Small_Face_roof_FrontShape" -p "Small_Face_roof_Front";
	rename -uid "0B497889-451A-1F2B-8B18-83879EC9050B";
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
createNode transform -n "Small_Wall_R";
	rename -uid "5B547F2B-43CB-45FD-5397-28BA00B6931A";
createNode mesh -n "Small_Wall_RShape" -p "Small_Wall_R";
	rename -uid "BFC89B67-467E-7CF6-E40D-38976D61CAF6";
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
createNode transform -n "Small_Wall_L";
	rename -uid "BDAFA1C7-499B-DDBE-752F-8FB771BEAD60";
	setAttr ".rp" -type "double3" -1024.0789489746094 782.31997680664063 621.02999877929688 ;
	setAttr ".sp" -type "double3" -1024.0789489746094 782.31997680664063 621.02999877929688 ;
createNode mesh -n "Small_Wall_LShape" -p "Small_Wall_L";
	rename -uid "10A142B6-478B-1BAD-2E17-11A0BF9A8FE4";
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
createNode transform -n "Sidewall_R_Wall";
	rename -uid "764D5459-452C-3544-1E10-F7A35E408550";
	setAttr ".rp" -type "double3" 1112.5199584960938 233.68000030517578 -121.91998291015625 ;
	setAttr ".sp" -type "double3" 1112.5199584960938 233.68000030517578 -121.91998291015625 ;
createNode mesh -n "Sidewall_R_WallShape" -p "Sidewall_R_Wall";
	rename -uid "ED54D141-4F34-2ECE-89C0-B590DC7020B4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.68744996190071106 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 13 ".uvst[0].uvsp[0:12]" -type "float2" 13.1171999 0.78130001
		 13.054699898 -0.0625 13.1171999 -0.0625 13.054699898 0.78130001 -13.1171999 0.78130001
		 -13.054699898 -0.71880001 13.1171999 -0.71880001 13.054699898 2.093699932 13.054699898
		 -0.71880001 -13.054699898 -0.0625 -13.054699898 0.78130001 -13.1171999 0.78130001
		 -13.1171999 -0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 10 ".vt[0:9]"  1092.19995117 -40.63999939 792.47998047 1092.19995117 508 -1036.31994629
		 1092.19995117 508 792.47998047 1132.83996582 508 792.47998047 1132.83996582 -40.63999939 792.47998047
		 1132.83996582 508 -1036.31994629 1132.83996582 508 -1084.081665039 1092.19995117 -40.63999939 -1084.081665039
		 1092.19995117 508 -1084.081665039 1132.83996582 -40.63999939 -1084.081665039;
	setAttr -s 17 ".ed[0:16]"  0 2 1 2 1 1 3 0 1 0 4 1 4 3 1 3 2 1 3 1 1
		 3 5 1 5 6 0 0 7 0 6 7 1 1 8 0 8 7 0 8 6 0 0 9 0 6 9 0 9 7 0;
	setAttr -s 7 -ch 23 ".fc[0:6]" -type "polyFaces" 
		f 3 2 3 4
		mu 0 3 0 1 2
		f 3 5 -1 -3
		mu 0 3 0 3 1
		f 3 10 -13 13
		mu 0 3 11 9 10
		f 3 15 16 -11
		mu 0 3 11 12 9
		f 3 6 -2 -6
		mu 0 3 6 7 8
		f 5 8 -14 -12 -7 7
		mu 0 5 4 11 10 7 6
		f 3 9 -17 -15
		mu 0 3 5 9 12;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Front_window_1";
	rename -uid "11581898-418F-D9D6-74E5-07B56D5FC4B4";
	setAttr ".t" -type "double3" -438.01090395726447 0 2.2526068549343563 ;
	setAttr ".rp" -type "double3" -285.74999237060547 247.34114837646484 858.51998901367188 ;
	setAttr ".sp" -type "double3" -285.74999237060547 247.34114837646484 858.51998901367188 ;
createNode mesh -n "Front_window_1Shape" -p "Front_window_1";
	rename -uid "882DE34A-45D8-59B2-1ECE-2F965DD9FDAC";
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
createNode transform -n "Front_window_2";
	rename -uid "3729DACE-4123-D711-4FBE-E99504A14F61";
	setAttr ".rp" -type "double3" 173.98999786376953 242.87884521484375 858.51998901367188 ;
	setAttr ".sp" -type "double3" 173.98999786376953 242.87884521484375 858.51998901367188 ;
createNode mesh -n "Front_window_2Shape" -p "Front_window_2";
	rename -uid "44D3F77A-435C-8175-36CF-0CA4659ED572";
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
createNode transform -n "Front_window_3";
	rename -uid "063974BA-4E36-B285-BCED-778CB6F8E6F8";
	setAttr ".rp" -type "double3" 623.57000732421875 242.87884521484375 858.51998901367188 ;
	setAttr ".sp" -type "double3" 623.57000732421875 242.87884521484375 858.51998901367188 ;
createNode mesh -n "Front_window_3Shape" -p "Front_window_3";
	rename -uid "D2C9EAD6-4652-0E01-7121-C88BFD0807E8";
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
createNode transform -n "Side_R_window";
	rename -uid "281DD42F-4F47-976A-A60A-7F9DD315C40E";
	setAttr ".t" -type "double3" 13.734125643815787 0 0 ;
	setAttr ".rp" -type "double3" 1141.72998046875 271.77999877929688 370.83999633789063 ;
	setAttr ".sp" -type "double3" 1141.72998046875 271.77999877929688 370.83999633789063 ;
createNode mesh -n "Side_R_windowShape" -p "Side_R_window";
	rename -uid "7DFE0272-417A-DC5F-F455-8EBE03E3D992";
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
createNode transform -n "Small_Window";
	rename -uid "644F937F-496F-9717-0549-009275BA6426";
	setAttr ".rp" -type "double3" -910.58999633789063 807.08499145507813 784.86001586914063 ;
	setAttr ".sp" -type "double3" -910.58999633789063 807.08499145507813 784.86001586914063 ;
createNode mesh -n "Small_WindowShape" -p "Small_Window";
	rename -uid "10C32A27-402D-07D0-AEF2-4FB16A7B98A4";
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
createNode transform -n "Large_Window";
	rename -uid "47D82C59-419A-9152-40E1-218FBBBA7257";
createNode mesh -n "Large_WindowShape" -p "Large_Window";
	rename -uid "3F4E1557-4C20-707C-0FDE-E7B373B1480B";
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
createNode transform -n "Floor";
	rename -uid "3EA70FD2-47D9-1ACD-1A20-7B9249498C84";
	setAttr ".t" -type "double3" 14.960152069002561 -30.520709407061872 1.2443032309006662e-16 ;
	setAttr ".s" -type "double3" 1 0.25060930351867539 1 ;
createNode mesh -n "FloorShape" -p "Floor";
	rename -uid "C163C46A-4036-23B7-AE88-2FBF278B61D6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[6:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 4.9591064453125e-05 -0.3437500037252903 ;
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
	setAttr -s 6 ".pt[1:6]" -type "float3"  0 0 -47.579334 15.304184 
		0 -47.497841 0 -0.16548222 0 15.304184 0 -47.497841 0 0 -47.579334 0 -0.16548222 
		0;
	setAttr -s 8 ".vt[0:7]"  1076.95996094 -40.63999939 792.47998047 -1239.52001953 -40.63999939 -1036.31994629
		 1076.95996094 -40.63999939 -1036.31994629 -1239.52001953 -40.63999939 792.47998047
		 1076.95996094 20.31999969 -1036.31994629 -1239.52001953 20.31999969 -1036.31994629
		 -1239.52001953 20.31999969 792.47998047 1076.95996094 20.31999969 792.47998047;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 1 4 1 4 2 1
		 1 5 1 5 4 1 0 6 1 6 3 1 0 7 1 7 6 1 7 5 1 5 6 1 7 4 1 6 1 1 7 2 1;
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
createNode transform -n "Top_Floor";
	rename -uid "66528EBA-40E4-7F7E-CE24-4F8F7D67EC9C";
	setAttr ".t" -type "double3" 0 0 11.147267686440671 ;
	setAttr ".s" -type "double3" 1 1 1.0545759862515851 ;
	setAttr ".rp" -type "double3" 63.499969482421875 500.3800048828125 -152.39996337890625 ;
	setAttr ".sp" -type "double3" 63.499969482421875 500.3800048828125 -152.39996337890625 ;
createNode mesh -n "Top_FloorShape" -p "Top_Floor";
	rename -uid "4CFF1A60-4C2C-D238-0FA8-0CA7572A92CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 11.472699642181396 0.73434996604919434 ;
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
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 0 2 0 0 0 3 0 3 1 0 1 4 1 4 2 1
		 1 5 0 5 4 1 6 5 1 5 7 0 7 6 1 6 4 1 7 1 1 3 7 0 6 2 1 6 0 1 0 7 1;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 -3 -2 -1
		mu 0 3 0 2 1
		f 3 0 -5 -4
		mu 0 3 0 1 3
		f 3 5 6 -2
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -9 -10
		mu 0 3 8 11 9
		f 3 -15 4 -14
		mu 0 3 12 14 13
		f 3 13 7 10
		mu 0 3 12 13 15
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
createNode transform -n "Roof_r_Top1";
	rename -uid "D37283B2-4BC1-6A87-E6CE-FC9455F517D3";
	setAttr ".rp" -type "double3" -72.3900146484375 1372.5072021484375 62.229999542236328 ;
	setAttr ".sp" -type "double3" -72.3900146484375 1372.5072021484375 62.229999542236328 ;
createNode mesh -n "Roof_r_Top1Shape" -p "Roof_r_Top1";
	rename -uid "141FF854-4A56-1592-8916-71AF5E597E43";
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
createNode transform -n "Roof_r_Mid1";
	rename -uid "EAF0453B-457A-79BF-5CE3-0AB9EDC62323";
	setAttr ".rp" -type "double3" -72.3900146484375 966.1068115234375 385.61174774169922 ;
	setAttr ".sp" -type "double3" -72.3900146484375 966.1068115234375 385.61174774169922 ;
createNode mesh -n "Roof_r_Mid1Shape" -p "Roof_r_Mid1";
	rename -uid "AD791880-45F2-EB26-11A8-068633B4784D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.87674999237060547 ;
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
createNode transform -n "Roof_r_Bottom1";
	rename -uid "5F9DD00D-4572-6635-375D-BB9065FDFEF0";
	setAttr ".rp" -type "double3" -72.3900146484375 613.59133911132813 767.08001708984375 ;
	setAttr ".sp" -type "double3" -72.3900146484375 613.59133911132813 767.08001708984375 ;
createNode mesh -n "Roof_r_Bottom1Shape" -p "Roof_r_Bottom1";
	rename -uid "7E4D115F-4775-9D26-3E1D-3AB31BFB5B31";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -11.251999855041504 0.17195001244544983 ;
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
createNode transform -n "Bottom_Harth";
	rename -uid "75282162-4D60-88ED-E824-BC9CEB211922";
	setAttr ".t" -type "double3" 2274.7565063629036 0 0 ;
	setAttr ".rp" -type "double3" -1209.0399780273438 241.3000054359436 81.280002593994141 ;
	setAttr ".sp" -type "double3" -1209.0399780273438 241.3000054359436 81.280002593994141 ;
createNode mesh -n "Bottom_HarthShape" -p "Bottom_Harth";
	rename -uid "C5F0996A-4F3D-8D14-CA12-6EA6A3FE68EC";
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
createNode transform -n "Hearth_panel";
	rename -uid "21222922-4F3B-31E3-40F9-6C941D9BDAE9";
	setAttr ".t" -type "double3" 2210.1972756326213 0 9.1042782608313928 ;
	setAttr ".rp" -type "double3" -1174.7499389648438 72.390001773834229 76.199996948242188 ;
	setAttr ".sp" -type "double3" -1174.7499389648438 72.390001773834229 76.199996948242188 ;
createNode mesh -n "Hearth_panelShape" -p "Hearth_panel";
	rename -uid "FC788042-4E6F-A3D3-A8C5-C890FD428FF5";
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
createNode transform -n "Chimney_top";
	rename -uid "76A0A0E5-4F07-59E3-969B-DFBF233D89EB";
	setAttr ".t" -type "double3" 2510.3699772940581 0.53138044173039334 -346.29954595726116 ;
	setAttr ".r" -type "double3" -0.10415325048227159 -180 0.19250314686197237 ;
	setAttr ".s" -type "double3" 1.0266151167765956 1.0266151167765956 1.0266151167765956 ;
	setAttr ".rp" -type "double3" -1308.0999755859375 1302.533203125 153.66999816894531 ;
	setAttr ".sp" -type "double3" -1308.0999755859375 1302.533203125 153.66999816894531 ;
createNode mesh -n "Chimney_topShape" -p "Chimney_top";
	rename -uid "A4DD18E7-4ADA-3AF4-F69D-399BF5F2B0B8";
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
createNode transform -n "Chimney_cap";
	rename -uid "32691B8B-4CA6-A96E-1C3A-C0830845BD55";
	setAttr ".t" -type "double3" 2510.3699772940581 0.53138044173039134 -346.29954595726116 ;
	setAttr ".r" -type "double3" -0.10415325048227159 -180 0.19250314686197237 ;
	setAttr ".rp" -type "double3" -1308.0999755859375 1401.5932006835938 157.47999572753906 ;
	setAttr ".sp" -type "double3" -1308.0999755859375 1401.5932006835938 157.47999572753906 ;
createNode mesh -n "Chimney_capShape" -p "Chimney_cap";
	rename -uid "5D966B7E-40A2-A63F-26F8-6691AA250AD1";
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
createNode transform -n "Top_Hearth";
	rename -uid "8B50EF76-40B7-0003-064E-1E8528A80770";
	setAttr ".t" -type "double3" 2274.7565063629036 0 0 ;
	setAttr ".rp" -type "double3" -1209.0399780273438 852.16999816894531 81.280002593994141 ;
	setAttr ".sp" -type "double3" -1209.0399780273438 852.16999816894531 81.280002593994141 ;
createNode mesh -n "Top_HearthShape" -p "Top_Hearth";
	rename -uid "9892EAD0-4C5C-463E-706B-CF99F3F9E83E";
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
createNode transform -n "Chimney_Bottom";
	rename -uid "A3C500B7-485E-BB65-89D3-CE80054F9D1F";
	setAttr ".t" -type "double3" 2536.7350625487356 0.42934000586765797 -236.17952698713827 ;
	setAttr ".r" -type "double3" -0.10415325048227159 -180 0.19250314686197237 ;
	setAttr ".s" -type "double3" 1.8269337158645707 1 0.92261750945253884 ;
	setAttr ".rp" -type "double3" -1330.9599609375 497.83997344970703 81.280002593994141 ;
	setAttr ".sp" -type "double3" -1330.9599609375 497.83997344970703 81.280002593994141 ;
createNode mesh -n "Chimney_BottomShape" -p "Chimney_Bottom";
	rename -uid "84F27E33-4C99-CAEC-F942-7CB55E9730E0";
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
createNode transform -n "Chimney_Mid";
	rename -uid "A9C6FC6E-4BE7-1003-E9FD-5E8A43F9394B";
	setAttr ".t" -type "double3" 2532.8286573616033 -1.8594070523247974 -256.64217462280226 ;
	setAttr ".r" -type "double3" -0.10415325048227159 -180 0.19250314686197237 ;
	setAttr ".s" -type "double3" 1.8619295729469347 1 1.0176723878521672 ;
	setAttr ".rp" -type "double3" -1330.9599609375 1164.5900268554688 107.95000267028809 ;
	setAttr ".sp" -type "double3" -1330.9599609375 1164.5900268554688 107.95000267028809 ;
createNode mesh -n "Chimney_MidShape" -p "Chimney_Mid";
	rename -uid "BD70B8C5-438F-B3EC-E49F-FFB45B4D84F1";
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
createNode transform -n "R_Piller";
	rename -uid "E8D190DF-418B-C5E0-E585-B18315AC1A1E";
	setAttr ".rp" -type "double3" 114.17545318603516 199.39000701904297 1236.97998046875 ;
	setAttr ".sp" -type "double3" 114.17545318603516 199.39000701904297 1236.97998046875 ;
createNode mesh -n "R_PillerShape" -p "R_Piller";
	rename -uid "4ADE08B5-4D7F-77EA-C9ED-1C8DC722CCB4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 368 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 4.62650013 0.61360002 4.64179993
		 0.58899999 4.64179993 0.61629999 4.63189983 0.58679998 -4.63189983 0.58679998 -4.64179993
		 0.61629999 -4.64179993 0.58899999 -4.62650013 0.61360002 -3.14540005 2.74309993 -3.15549994
		 2.80559993 -3.15549994 2.74309993 -3.14540005 2.80559993 -3.17630005 -2.63190007
		 -3.16079998 -2.69440007 -3.16079998 -2.63190007 -3.17630005 -2.69440007 4.67229986
		 0.61629999 4.68219995 0.58679998 4.6875 0.61360002 4.67229986 0.58899999 -4.67229986
		 0.58899999 -4.6875 0.61360002 -4.68219995 0.58679998 -4.67229986 0.61629999 -2.82680011
		 2.74309993 -2.8369 2.80559993 -2.8369 2.74309993 -2.82680011 2.80559993 -2.87019992
		 -2.63190007 -2.85470009 -2.69440007 -2.85470009 -2.63190007 -2.87019992 -2.69440007
		 4.58729982 0.61019999 4.6072998 0.59140003 4.60200024 0.6182 4.59779978 0.58490002
		 -4.59779978 0.58490002 -4.60200024 0.6182 -4.6072998 0.59140003 -4.58729982 0.61019999
		 -2.94650006 2.73850012 -2.95799994 2.80100012 -2.95799994 2.73850012 -2.94650006
		 2.80100012 -3.11059999 -2.63649988 -3.093899965 -2.69899988 -3.093899965 -2.63649988
		 -3.11059999 -2.69899988 4.55079985 0.60640001 4.57469988 0.59420002 4.56430006 0.61940002
		 4.56599998 0.5837 -4.56599998 0.5837 -4.56430006 0.61940002 -4.57469988 0.59420002
		 -4.55079985 0.60640001 2.59450006 3.39100003 2.65700006 3.40470004 2.59450006 3.40470004
		 2.65700006 3.39100003 -2.8118 -2.64580011 -2.79299998 -2.70830011 -2.79299998 -2.64580011
		 -2.8118 -2.70830011 4.51830006 0.60250002 4.54530001 0.59719998 4.5302 0.62 4.53770018
		 0.58319998 -4.53770018 0.58319998 -4.5302 0.62 -4.54530001 0.59719998 -4.51830006
		 0.60250002 2.58719993 2.69050002 2.64969993 2.70650005 2.58719993 2.70650005 2.64969993
		 2.69050002 -2.58590007 3.057800055 -2.64840007 3.03670001 -2.58590007 3.03670001
		 -2.64840007 3.057800055 4.49119997 0.59850001 4.52019978 0.60049999 4.50089979 0.61979997
		 4.5138998 0.58329999 -4.5138998 0.58329999 -4.50089979 0.61979997 -4.52019978 0.60049999
		 -4.49119997 0.59850001 2.57270002 2.10660005 2.63520002 2.1249001 2.57270002 2.1249001
		 2.63520002 2.10660005 -2.57240009 2.43210006 -2.63490009 2.40869999 -2.57240009 2.40869999
		 -2.63490009 2.43210006 4.47039986 0.59460002 4.50040007 0.6038 4.47770023 0.61900002
		 4.49569988 0.58420002 -4.49569988 0.58420002 -4.47770023 0.61900002 -4.50040007 0.6038
		 -4.47039986 0.59460002 2.55320001 1.61539996 2.61570001 1.63559997 2.55320001 1.63559997
		 2.61570001 1.61539996 -2.5532999 1.86759996 -2.6157999 1.84220004 -2.5532999 1.84220004
		 -2.6157999 1.86759996 4.45690012 0.59100002 4.48659992 0.60699999 4.4612999 0.61739999
		 4.4836998 0.58569998 -4.4836998 0.58569998 -4.4612999 0.61739999 -4.48659992 0.60699999
		 -4.45690012 0.59100002 2.53040004 1.18420005 2.59290004 1.20560002 2.53040004 1.20560002
		 2.59290004 1.18420005 -2.53060007 1.34979999 -2.59310007 1.32299995 -2.53060007 1.32299995
		 -2.59310007 1.34979999 4.45100021 0.58780003 4.47930002 0.6099 4.45249987 0.6153
		 4.47830009 0.58780003 -4.47830009 0.58780003 -4.45249987 0.6153 -4.47930002 0.6099
		 -4.45100021 0.58780003 2.50600004 0.78479999 2.56850004 0.80690002 2.50600004 0.80690002
		 2.56850004 0.78479999 -2.50600004 0.85750002 -2.56850004 0.8301 -2.50600004 0.8301
		 -2.56850004 0.85750002 3.11229992 -2.74410009 3.13960004 -2.80660009 3.13960004 -2.74410009
		 3.11229992 -2.80660009 -3.14059997 0.58780003 -3.11229992 0.6099 -3.13910007 0.6153
		 -3.11330009 0.58780003 3.11330009 0.58780003 3.13910007 0.6153 3.11229992 0.6099
		 3.14059997 0.58780003 -2.80649996 0.4499 -2.74399996 0.472 -2.80649996 0.472 -2.74399996
		 0.4499 2.80649996 0.44279999 2.74399996 0.41530001 2.80649996 0.41530001 2.74399996
		 0.44279999 3.14059997 -2.80660009 3.11330009 -2.74410009 3.11330009 -2.80660009 3.14059997
		 -2.74410009 -3.13910007 0.59100002 -3.10940003 0.60699999 -3.13470006 0.61739999
		 -3.11229992 0.58569998 3.11229992 0.58569998 3.13470006 0.61739999 3.10940003 0.60699999
		 3.13910007 0.59100002 -2.78209996 0.16069999 -2.71959996 0.1822 -2.78209996 0.1822
		 -2.71959996 0.16069999 2.78189993 0.087499999 2.71939993 0.060699999 2.78189993 0.060699999
		 2.71939993 0.087499999 -3.13470006 0.59460002 -3.10470009 0.6038 -3.12750006 0.61900002
		 -3.10940003 0.58420002 3.10940003 0.58420002 3.12750006 0.61900002 3.10470009 0.6038
		 3.13470006 0.59460002 -2.75929999 -0.1567 -2.69679999 -0.1366 -2.75929999 -0.1366
		 -2.69679999 -0.1567 2.7592001 -0.29730001 2.6967001 -0.32269999 2.7592001 -0.32269999
		 2.6967001 -0.29730001 -3.12750006 0.59850001 -3.098400116 0.60049999 -3.1177001 0.61979997
		 -3.10470009 0.58329999 3.10470009 0.58329999 3.1177001 0.61979997 3.098400116 0.60049999
		 3.12750006 0.59850001 -2.73979998 -0.52380002 -2.67729998 -0.50550002 -2.73979998
		 -0.50550002 -2.67729998 -0.52380002 2.74009991 -0.72839999 2.67759991 -0.75190002
		 2.74009991 -0.75190002 2.67759991 -0.72839999 -3.1177001 0.60250002 -3.090699911
		 0.59719998 -3.10590005 0.62 -3.098400116 0.58319998 3.098400116 0.58319998 3.10590005
		 0.62 3.090699911 0.59719998 3.1177001 0.60250002 -2.72530007 -0.97009999 -2.66280007
		 -0.954 -2.72530007 -0.954 -2.66280007 -0.97009999 2.72659993 -1.22290003 2.66409993
		 -1.24399996 2.72659993 -1.24399996 2.66409993 -1.22290003 -3.10590005 0.60640001
		 -3.081899881 0.59420002 -3.092400074 0.61940002 -3.090699911 0.5837 3.090699911 0.5837
		 3.092400074 0.61940002 3.081899881 0.59420002 3.10590005 0.60640001 -2.71799994 -1.52909994
		 -2.65549994 -1.51540005 -2.71799994 -1.51540005 -2.65549994 -1.52909994 -1.74109995
		 -2.70830011 -1.75989997 -2.64580011 -1.75989997 -2.70830011 -1.74109995 -2.64580011
		 -3.092400074 0.61019999 -3.072400093 0.59140003;
	setAttr ".uvst[0].uvsp[250:367]" -3.0776999 0.6182 -3.081899881 0.58490002
		 3.081899881 0.58490002 3.0776999 0.6182 3.072400093 0.59140003 3.092400074 0.61019999
		 -2.11039996 2.80100012 -2.09890008 2.73850012 -2.09890008 2.80100012 -2.11039996
		 2.73850012 -2.35619998 -2.69899988 -2.37290001 -2.63649988 -2.37290001 -2.69899988
		 -2.35619998 -2.63649988 -3.0776999 0.61360002 -3.0625 0.58899999 -3.0625 0.61629999
		 -3.072400093 0.58679998 3.072400093 0.58679998 3.0625 0.61629999 3.0625 0.58899999
		 3.0776999 0.61360002 -2.82719994 2.80559993 -2.81710005 2.74309993 -2.81710005 2.80559993
		 -2.82719994 2.74309993 -2.88849998 -2.69440007 -2.90400004 -2.63190007 -2.90400004
		 -2.69440007 -2.88849998 -2.63190007 -3.0625 0.61629999 -3.052599907 0.58679998 -3.0473001
		 0.61360002 -3.0625 0.58899999 3.0625 0.58899999 3.0473001 0.61360002 3.052599907
		 0.58679998 3.0625 0.61629999 -3.1652 2.80559993 -3.15510011 2.74309993 -3.15510011
		 2.80559993 -3.1652 2.74309993 -3.12700009 -2.69440007 -3.14249992 -2.63190007 -3.14249992
		 -2.69440007 -3.12700009 -2.63190007 -0.9052 -1.23140001 -1.016800046 -1.24839997
		 -0.9052 -1.24839997 -1.016800046 -1.23140001 1.89590001 22.22400093 1.97399998 22.13019943
		 1.97399998 22.22400093 1.89590001 22.13019943 -0.97409999 22.22400093 -0.89590001
		 22.13019943 -0.89590001 22.22400093 -0.97409999 22.13019943 -21.22400093 -0.38909999
		 -21.13019943 -0.40090001 -21.13019943 -0.38909999 -21.22400093 -0.40090001 22.13019943
		 -0.38909999 22.22400093 -0.40090001 22.22400093 -0.38909999 22.13019943 -0.40090001
		 1.97409999 -0.40090001 1.89590001 -0.38909999 1.89590001 -0.40090001 1.97409999 -0.38909999
		 -0.92750001 -1.24839997 -0.99529999 -2.20510006 -0.92750001 -2.20510006 -0.99529999
		 -1.24839997 1.91149998 22.20829964 1.95899999 22.14579964 1.95899999 22.20829964
		 1.91149998 22.14579964 -0.95899999 22.20829964 -0.91159999 22.14579964 -0.91159999
		 22.20829964 -0.95899999 22.14579964 -21.20829964 -0.40090001 -21.14579964 -1.06099999
		 -21.14579964 -0.40090001 -21.20829964 -1.06099999 22.14579964 -0.40090001 22.20829964
		 -1.06099999 22.20829964 -0.40090001 22.14579964 -1.06099999 1.95899999 -1.06099999
		 1.91159999 -0.40090001 1.91159999 -1.06099999 1.95899999 -0.40090001 -0.89399999
		 -2.20510006 -1.016800046 -2.25040007 -0.89399999 -2.25040007 -1.016800046 -2.20510006
		 1.88810003 22.23180008 1.97399998 22.13019943 1.97399998 22.23180008 1.88810003 22.13019943
		 -0.97409999 22.23180008 -0.88810003 22.13019943 -0.88810003 22.23180008 -0.97409999
		 22.13019943 -21.23180008 -1.06099999 -21.13019943 -1.092300057 -21.13019943 -1.06099999
		 -21.23180008 -1.092300057 22.13019943 -1.06099999 22.23180008 -1.092300057 22.23180008
		 -1.06099999 22.13019943 -1.092300057 1.97409999 -1.092300057 1.88810003 -1.06099999
		 1.88810003 -1.092300057 1.97409999 -1.06099999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 168 ".vt";
	setAttr ".vt[0:165]"  73.16110229 473.22311401 1219.19995117 63.25080109 457.20001221 1219.19995117
		 63.25080109 474.98001099 1219.19995117 69.69249725 455.78469849 1219.19995117 69.69249725 455.78469849 1259.83996582
		 63.25080109 474.98001099 1259.83996582 63.25080109 457.20001221 1259.83996582 73.16110229 473.22311401 1259.83996582
		 63.25080109 474.98001099 1219.19995117 56.80889893 455.78469849 1219.19995117 53.34030151 473.22311401 1219.19995117
		 63.25080109 457.20001221 1219.19995117 63.25080109 457.20001221 1259.83996582 53.34030151 473.22311401 1259.83996582
		 56.80889893 455.78469849 1259.83996582 63.25080109 474.98001099 1259.83996582 82.69100189 468.019714355 1219.19995117
		 69.69249725 455.78469849 1219.19995117 73.16110229 473.22311401 1219.19995117 75.88710022 451.59289551 1219.19995117
		 75.88710022 451.59289551 1259.83996582 73.16110229 473.22311401 1259.83996582 69.69249725 455.78469849 1259.83996582
		 82.69100189 468.019714355 1259.83996582 91.47350311 459.5697937 1219.19995117 75.88710022 451.59289551 1219.19995117
		 82.69100189 468.019714355 1219.19995117 81.59570313 444.7862854 1219.19995117 81.59570313 444.7862854 1259.83996582
		 82.69100189 468.019714355 1259.83996582 75.88710022 451.59289551 1259.83996582 91.47350311 459.5697937 1259.83996582
		 99.17179871 448.19799805 1219.19995117 81.59570313 444.78601074 1219.19995117 91.47350311 459.5696106 1219.19995117
		 86.59929657 435.62548828 1219.19995117 86.59929657 435.62548828 1259.83996582 91.47350311 459.5696106 1259.83996582
		 81.59570313 444.78601074 1259.83996582 99.17179871 448.19799805 1259.83996582 105.48950195 434.3414917 1219.19995117
		 86.59929657 435.62548828 1219.19995117 99.17179871 448.19799805 1219.19995117 90.70570374 424.4631958 1219.19995117
		 90.70570374 424.4631958 1259.83996582 99.17179871 448.19799805 1259.83996582 86.59929657 435.62548828 1259.83996582
		 105.48950195 434.3414917 1259.83996582 110.18389893 418.53259277 1219.19995117 90.70570374 424.4631958 1219.19995117
		 105.48950195 434.3414917 1219.19995117 93.75720215 411.72869873 1219.19995117 93.75720215 411.72869873 1259.83996582
		 105.48950195 434.3414917 1259.83996582 90.70570374 424.4631958 1259.83996582 110.18389893 418.53259277 1259.83996582
		 113.074699402 401.37921143 1219.19995117 93.75720215 411.72869873 1219.19995117 110.18389893 418.53259277 1219.19995117
		 95.63610077 397.91030884 1219.19995117 95.63610077 397.91030884 1259.83996582 110.18389893 418.53259277 1259.83996582
		 93.75720215 411.72869873 1259.83996582 113.074699402 401.37921143 1259.83996582 114.050796509 383.54000854 1219.19995117
		 95.63610077 397.91030884 1219.19995117 113.074699402 401.37921143 1219.19995117 96.27079773 383.54000854 1219.19995117
		 96.27079773 383.54000854 1259.83996582 113.074699402 401.37921143 1259.83996582 95.63610077 397.91030884 1259.83996582
		 114.050796509 383.54000854 1259.83996582 114.30000305 383.54000854 1259.83996582
		 132.7144928 397.91030884 1259.83996582 115.27610016 401.37921143 1259.83996582 132.080001831 383.54000854 1259.83996582
		 132.080001831 383.54000854 1219.19995117 115.27610016 401.37921143 1219.19995117
		 132.7144928 397.91030884 1219.19995117 114.30000305 383.54000854 1219.19995117 115.27610016 401.37921143 1259.83996582
		 134.59359741 411.72869873 1259.83996582 118.16690063 418.53259277 1259.83996582 132.7144928 397.91030884 1259.83996582
		 132.7144928 397.91030884 1219.19995117 118.16690063 418.53259277 1219.19995117 134.59359741 411.72869873 1219.19995117
		 115.27610016 401.37921143 1219.19995117 118.16690063 418.53259277 1259.83996582 137.64489746 424.4631958 1259.83996582
		 122.86129761 434.3414917 1259.83996582 134.59359741 411.72869873 1259.83996582 134.59359741 411.72869873 1219.19995117
		 122.86129761 434.3414917 1219.19995117 137.64489746 424.4631958 1219.19995117 118.16690063 418.53259277 1219.19995117
		 122.86129761 434.3414917 1259.83996582 141.751297 435.62548828 1259.83996582 129.17880249 448.19799805 1259.83996582
		 137.64489746 424.4631958 1259.83996582 137.64489746 424.4631958 1219.19995117 129.17880249 448.19799805 1219.19995117
		 141.751297 435.62548828 1219.19995117 122.86129761 434.3414917 1219.19995117 129.17880249 448.19799805 1259.83996582
		 146.75509644 444.78601074 1259.83996582 136.8769989 459.5696106 1259.83996582 141.751297 435.62548828 1259.83996582
		 141.751297 435.62548828 1219.19995117 136.8769989 459.5696106 1219.19995117 146.75509644 444.78601074 1219.19995117
		 129.17880249 448.19799805 1219.19995117 136.8769989 459.5697937 1259.83996582 152.46380615 451.59289551 1259.83996582
		 145.65960693 468.019714355 1259.83996582 146.75509644 444.7862854 1259.83996582 146.75509644 444.7862854 1219.19995117
		 145.65960693 468.019714355 1219.19995117 152.46380615 451.59289551 1219.19995117
		 136.8769989 459.5697937 1219.19995117 145.65960693 468.019714355 1259.83996582 158.65809631 455.78469849 1259.83996582
		 155.18940735 473.22311401 1259.83996582 152.46380615 451.59289551 1259.83996582 152.46380615 451.59289551 1219.19995117
		 155.18940735 473.22311401 1219.19995117 158.65809631 455.78469849 1219.19995117 145.65960693 468.019714355 1219.19995117
		 155.18940735 473.22311401 1259.83996582 165.1000061 457.20001221 1259.83996582 165.1000061 474.98001099 1259.83996582
		 158.65809631 455.78469849 1259.83996582 158.65809631 455.78469849 1219.19995117 165.1000061 474.98001099 1219.19995117
		 165.1000061 457.20001221 1219.19995117 155.18940735 473.22311401 1219.19995117 165.1000061 474.98001099 1259.83996582
		 171.54190063 455.78469849 1259.83996582 175.010604858 473.22311401 1259.83996582
		 165.1000061 457.20001221 1259.83996582 165.1000061 457.20001221 1219.19995117 175.010604858 473.22311401 1219.19995117
		 171.54190063 455.78469849 1219.19995117 165.1000061 474.98001099 1219.19995117 139.69999695 381 1270
		 88.90000153 373.38000488 1270 139.69999695 373.38000488 1270 88.90000153 381 1270
		 139.69999695 373.38000488 1209.040039063 88.90000153 373.38000488 1209.040039063
		 88.90000153 381 1209.040039063 139.69999695 381 1209.040039063 129.53999329 373.38000488 1259.83996582
		 98.66529846 -55.88000107 1259.83996582 129.53999329 -55.88000107 1259.83996582 98.66529846 373.38000488 1259.83996582
		 129.53999329 -55.88000107 1219.19995117 98.66529846 -55.88000107 1219.19995117 98.66529846 373.38000488 1219.19995117
		 129.53999329 373.38000488 1219.19995117 144.77999878 -55.88000107 1270 88.90000153 -76.19999695 1270
		 144.77999878 -76.19999695 1270 88.90000153 -55.88000107 1270 144.77999878 -76.19999695 1203.95996094
		 88.90000153 -76.19999695 1203.95996094;
	setAttr ".vt[166:167]" 88.90000153 -55.88000107 1203.95996094 144.77999878 -55.88000107 1203.95996094;
	setAttr -s 344 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0 6 4 1 4 7 0
		 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0 8 9 1 9 10 0 10 8 1 8 11 0 11 9 1 12 13 1
		 13 14 0 14 12 1 12 15 0 15 13 1 11 14 1 14 9 0 11 12 0 10 15 1 15 8 0 10 13 0 16 17 1
		 17 18 0 18 16 1 16 19 0 19 17 1 20 21 1 21 22 0 22 20 1 20 23 0 23 21 1 19 22 1 22 17 0
		 19 20 0 18 23 1 23 16 0 18 21 0 24 25 1 25 26 0 26 24 1 24 27 0 27 25 1 28 29 1 29 30 0
		 30 28 1 28 31 0 31 29 1 27 30 1 30 25 0 27 28 0 26 31 1 31 24 0 26 29 0 32 33 1 33 34 0
		 34 32 1 32 35 0 35 33 1 36 37 1 37 38 0 38 36 1 36 39 0 39 37 1 35 38 1 38 33 0 35 36 0
		 34 39 1 39 32 0 34 37 0 40 41 1 41 42 0 42 40 1 40 43 0 43 41 1 44 45 1 45 46 0 46 44 1
		 44 47 0 47 45 1 43 46 1 46 41 0 43 44 0 42 47 1 47 40 0 42 45 0 48 49 1 49 50 0 50 48 1
		 48 51 0 51 49 1 52 53 1 53 54 0 54 52 1 52 55 0 55 53 1 51 54 1 54 49 0 51 52 0 50 55 1
		 55 48 0 50 53 0 56 57 1 57 58 0 58 56 1 56 59 0 59 57 1 60 61 1 61 62 0 62 60 1 60 63 0
		 63 61 1 59 62 1 62 57 0 59 60 0 58 63 1 63 56 0 58 61 0 64 65 1 65 66 0 66 64 1 64 67 1
		 67 65 1 68 69 1 69 70 0 70 68 1 68 71 1 71 69 1 67 70 1 70 65 0 67 68 1 66 71 1 71 64 1
		 66 69 0 64 68 1 72 73 1 73 74 0 74 72 1 72 75 1 75 73 1 76 77 1 77 78 0 78 76 1 76 79 1
		 79 77 1 75 78 1 78 73 0 75 76 1 74 79 1 79 72 1 74 77 0 72 76 1 80 81 1 81 82 0 82 80 1
		 80 83 0;
	setAttr ".ed[166:331]" 83 81 1 84 85 1 85 86 0 86 84 1 84 87 0 87 85 1 83 86 1
		 86 81 0 83 84 0 82 87 1 87 80 0 82 85 0 88 89 1 89 90 0 90 88 1 88 91 0 91 89 1 92 93 1
		 93 94 0 94 92 1 92 95 0 95 93 1 91 94 1 94 89 0 91 92 0 90 95 1 95 88 0 90 93 0 96 97 1
		 97 98 0 98 96 1 96 99 0 99 97 1 100 101 1 101 102 0 102 100 1 100 103 0 103 101 1
		 99 102 1 102 97 0 99 100 0 98 103 1 103 96 0 98 101 0 104 105 1 105 106 0 106 104 1
		 104 107 0 107 105 1 108 109 1 109 110 0 110 108 1 108 111 0 111 109 1 107 110 1 110 105 0
		 107 108 0 106 111 1 111 104 0 106 109 0 112 113 1 113 114 0 114 112 1 112 115 0 115 113 1
		 116 117 1 117 118 0 118 116 1 116 119 0 119 117 1 115 118 1 118 113 0 115 116 0 114 119 1
		 119 112 0 114 117 0 120 121 1 121 122 0 122 120 1 120 123 0 123 121 1 124 125 1 125 126 0
		 126 124 1 124 127 0 127 125 1 123 126 1 126 121 0 123 124 0 122 127 1 127 120 0 122 125 0
		 128 129 1 129 130 0 130 128 1 128 131 0 131 129 1 132 133 1 133 134 0 134 132 1 132 135 0
		 135 133 1 131 134 1 134 129 0 131 132 0 130 135 1 135 128 0 130 133 0 136 137 1 137 138 0
		 138 136 1 136 139 0 139 137 1 140 141 1 141 142 0 142 140 1 140 143 0 143 141 1 139 142 1
		 142 137 0 139 140 0 138 143 1 143 136 0 138 141 0 144 145 1 145 146 1 146 144 1 144 147 1
		 147 145 1 148 145 1 145 149 1 149 148 1 148 146 1 150 144 1 144 151 1 151 150 1 150 147 1
		 150 145 1 150 149 1 144 148 1 148 151 1 149 151 1 152 153 1 153 154 1 154 152 1 152 155 1
		 155 153 1 156 153 1 153 157 1 157 156 1 156 154 1 158 152 1 152 159 1 159 158 1 158 155 1
		 158 153 1 158 157 1 152 156 1 156 159 1 157 159 1 160 161 1 161 162 1 162 160 1 160 163 1
		 163 161 1 164 161 1;
	setAttr ".ed[332:343]" 161 165 1 165 164 1 164 162 1 166 160 1 160 167 1 167 166 1
		 166 163 1 166 161 1 166 165 1 160 164 1 164 167 1 165 167 1;
	setAttr -s 184 -ch 552 ".fc[0:183]" -type "polyFaces" 
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
		f 3 16 17 18
		mu 0 3 16 17 18
		f 3 19 20 -17
		mu 0 3 16 19 17
		f 3 21 22 23
		mu 0 3 20 21 22
		f 3 24 25 -22
		mu 0 3 20 23 21
		f 3 26 27 -21
		mu 0 3 24 25 26
		f 3 28 -24 -27
		mu 0 3 24 27 25
		f 3 29 30 -19
		mu 0 3 28 29 30
		f 3 31 -26 -30
		mu 0 3 28 31 29
		f 3 32 33 34
		mu 0 3 32 33 34
		f 3 35 36 -33
		mu 0 3 32 35 33
		f 3 37 38 39
		mu 0 3 36 37 38
		f 3 40 41 -38
		mu 0 3 36 39 37
		f 3 42 43 -37
		mu 0 3 40 41 42
		f 3 44 -40 -43
		mu 0 3 40 43 41
		f 3 45 46 -35
		mu 0 3 44 45 46
		f 3 47 -42 -46
		mu 0 3 44 47 45
		f 3 48 49 50
		mu 0 3 48 49 50
		f 3 51 52 -49
		mu 0 3 48 51 49
		f 3 53 54 55
		mu 0 3 52 53 54
		f 3 56 57 -54
		mu 0 3 52 55 53
		f 3 58 59 -53
		mu 0 3 56 57 58
		f 3 60 -56 -59
		mu 0 3 56 59 57
		f 3 61 62 -51
		mu 0 3 60 61 62
		f 3 63 -58 -62
		mu 0 3 60 63 61
		f 3 64 65 66
		mu 0 3 64 65 66
		f 3 67 68 -65
		mu 0 3 64 67 65
		f 3 69 70 71
		mu 0 3 68 69 70
		f 3 72 73 -70
		mu 0 3 68 71 69
		f 3 74 75 -69
		mu 0 3 72 73 74
		f 3 76 -72 -75
		mu 0 3 72 75 73
		f 3 77 78 -67
		mu 0 3 76 77 78
		f 3 79 -74 -78
		mu 0 3 76 79 77
		f 3 80 81 82
		mu 0 3 80 81 82
		f 3 83 84 -81
		mu 0 3 80 83 81
		f 3 85 86 87
		mu 0 3 84 85 86
		f 3 88 89 -86
		mu 0 3 84 87 85
		f 3 90 91 -85
		mu 0 3 88 89 90
		f 3 92 -88 -91
		mu 0 3 88 91 89
		f 3 93 94 -83
		mu 0 3 92 93 94
		f 3 95 -90 -94
		mu 0 3 92 95 93
		f 3 96 97 98
		mu 0 3 96 97 98
		f 3 99 100 -97
		mu 0 3 96 99 97
		f 3 101 102 103
		mu 0 3 100 101 102
		f 3 104 105 -102
		mu 0 3 100 103 101
		f 3 106 107 -101
		mu 0 3 104 105 106
		f 3 108 -104 -107
		mu 0 3 104 107 105
		f 3 109 110 -99
		mu 0 3 108 109 110
		f 3 111 -106 -110
		mu 0 3 108 111 109
		f 3 112 113 114
		mu 0 3 112 113 114
		f 3 115 116 -113
		mu 0 3 112 115 113
		f 3 117 118 119
		mu 0 3 116 117 118
		f 3 120 121 -118
		mu 0 3 116 119 117
		f 3 122 123 -117
		mu 0 3 120 121 122
		f 3 124 -120 -123
		mu 0 3 120 123 121
		f 3 125 126 -115
		mu 0 3 124 125 126
		f 3 127 -122 -126
		mu 0 3 124 127 125
		f 3 128 129 130
		mu 0 3 128 129 130
		f 3 131 132 -129
		mu 0 3 128 131 129
		f 3 133 134 135
		mu 0 3 132 133 134
		f 3 136 137 -134
		mu 0 3 132 135 133
		f 3 138 139 -133
		mu 0 3 136 137 138
		f 3 140 -136 -139
		mu 0 3 136 139 137
		f 3 141 142 -131
		mu 0 3 140 141 142
		f 3 143 -138 -142
		mu 0 3 140 143 141
		f 3 144 -141 -132
		mu 0 3 144 145 146
		f 3 -143 -137 -145
		mu 0 3 144 147 145
		f 3 145 146 147
		mu 0 3 148 149 150
		f 3 148 149 -146
		mu 0 3 148 151 149
		f 3 150 151 152
		mu 0 3 152 153 154
		f 3 153 154 -151
		mu 0 3 152 155 153
		f 3 155 156 -150
		mu 0 3 156 157 158
		f 3 157 -153 -156
		mu 0 3 156 159 157
		f 3 158 159 -148
		mu 0 3 160 161 162
		f 3 160 -155 -159
		mu 0 3 160 163 161
		f 3 161 -158 -149
		mu 0 3 164 165 166
		f 3 -160 -154 -162
		mu 0 3 164 167 165
		f 3 162 163 164
		mu 0 3 168 169 170
		f 3 165 166 -163
		mu 0 3 168 171 169
		f 3 167 168 169
		mu 0 3 172 173 174
		f 3 170 171 -168
		mu 0 3 172 175 173
		f 3 172 173 -167
		mu 0 3 176 177 178
		f 3 174 -170 -173
		mu 0 3 176 179 177
		f 3 175 176 -165
		mu 0 3 180 181 182
		f 3 177 -172 -176
		mu 0 3 180 183 181
		f 3 178 179 180
		mu 0 3 184 185 186
		f 3 181 182 -179
		mu 0 3 184 187 185
		f 3 183 184 185
		mu 0 3 188 189 190
		f 3 186 187 -184
		mu 0 3 188 191 189
		f 3 188 189 -183
		mu 0 3 192 193 194
		f 3 190 -186 -189
		mu 0 3 192 195 193
		f 3 191 192 -181
		mu 0 3 196 197 198
		f 3 193 -188 -192
		mu 0 3 196 199 197
		f 3 194 195 196
		mu 0 3 200 201 202
		f 3 197 198 -195
		mu 0 3 200 203 201
		f 3 199 200 201
		mu 0 3 204 205 206
		f 3 202 203 -200
		mu 0 3 204 207 205
		f 3 204 205 -199
		mu 0 3 208 209 210
		f 3 206 -202 -205
		mu 0 3 208 211 209
		f 3 207 208 -197
		mu 0 3 212 213 214
		f 3 209 -204 -208
		mu 0 3 212 215 213
		f 3 210 211 212
		mu 0 3 216 217 218
		f 3 213 214 -211
		mu 0 3 216 219 217
		f 3 215 216 217
		mu 0 3 220 221 222
		f 3 218 219 -216
		mu 0 3 220 223 221
		f 3 220 221 -215
		mu 0 3 224 225 226
		f 3 222 -218 -221
		mu 0 3 224 227 225
		f 3 223 224 -213
		mu 0 3 228 229 230
		f 3 225 -220 -224
		mu 0 3 228 231 229
		f 3 226 227 228
		mu 0 3 232 233 234
		f 3 229 230 -227
		mu 0 3 232 235 233
		f 3 231 232 233
		mu 0 3 236 237 238
		f 3 234 235 -232
		mu 0 3 236 239 237
		f 3 236 237 -231
		mu 0 3 240 241 242
		f 3 238 -234 -237
		mu 0 3 240 243 241
		f 3 239 240 -229
		mu 0 3 244 245 246
		f 3 241 -236 -240
		mu 0 3 244 247 245
		f 3 242 243 244
		mu 0 3 248 249 250
		f 3 245 246 -243
		mu 0 3 248 251 249
		f 3 247 248 249
		mu 0 3 252 253 254
		f 3 250 251 -248
		mu 0 3 252 255 253
		f 3 252 253 -247
		mu 0 3 256 257 258
		f 3 254 -250 -253
		mu 0 3 256 259 257
		f 3 255 256 -245
		mu 0 3 260 261 262
		f 3 257 -252 -256
		mu 0 3 260 263 261
		f 3 258 259 260
		mu 0 3 264 265 266
		f 3 261 262 -259
		mu 0 3 264 267 265
		f 3 263 264 265
		mu 0 3 268 269 270
		f 3 266 267 -264
		mu 0 3 268 271 269
		f 3 268 269 -263
		mu 0 3 272 273 274
		f 3 270 -266 -269
		mu 0 3 272 275 273
		f 3 271 272 -261
		mu 0 3 276 277 278
		f 3 273 -268 -272
		mu 0 3 276 279 277
		f 3 274 275 276
		mu 0 3 280 281 282
		f 3 277 278 -275
		mu 0 3 280 283 281
		f 3 279 280 281
		mu 0 3 284 285 286
		f 3 282 283 -280
		mu 0 3 284 287 285
		f 3 284 285 -279
		mu 0 3 288 289 290
		f 3 286 -282 -285
		mu 0 3 288 291 289
		f 3 287 288 -277
		mu 0 3 292 293 294
		f 3 289 -284 -288
		mu 0 3 292 295 293
		f 3 290 291 292
		mu 0 3 296 297 298
		f 3 293 294 -291
		mu 0 3 296 299 297
		f 3 295 296 297
		mu 0 3 300 301 302
		f 3 298 -292 -296
		mu 0 3 300 303 301
		f 3 299 300 301
		mu 0 3 304 305 306
		f 3 302 -294 -300
		mu 0 3 304 307 305
		f 3 303 -295 -303
		mu 0 3 308 309 310
		f 3 304 -297 -304
		mu 0 3 308 311 309
		f 3 305 306 -301
		mu 0 3 312 313 314
		f 3 -293 -299 -306
		mu 0 3 312 315 313
		f 3 307 -307 -298
		mu 0 3 316 317 318
		f 3 -305 -302 -308
		mu 0 3 316 319 317
		f 3 308 309 310
		mu 0 3 320 321 322
		f 3 311 312 -309
		mu 0 3 320 323 321
		f 3 313 314 315
		mu 0 3 324 325 326
		f 3 316 -310 -314
		mu 0 3 324 327 325
		f 3 317 318 319
		mu 0 3 328 329 330
		f 3 320 -312 -318
		mu 0 3 328 331 329
		f 3 321 -313 -321
		mu 0 3 332 333 334
		f 3 322 -315 -322
		mu 0 3 332 335 333
		f 3 323 324 -319
		mu 0 3 336 337 338
		f 3 -311 -317 -324
		mu 0 3 336 339 337
		f 3 325 -325 -316
		mu 0 3 340 341 342
		f 3 -323 -320 -326
		mu 0 3 340 343 341
		f 3 326 327 328
		mu 0 3 344 345 346
		f 3 329 330 -327
		mu 0 3 344 347 345
		f 3 331 332 333
		mu 0 3 348 349 350
		f 3 334 -328 -332
		mu 0 3 348 351 349
		f 3 335 336 337
		mu 0 3 352 353 354
		f 3 338 -330 -336
		mu 0 3 352 355 353
		f 3 339 -331 -339
		mu 0 3 356 357 358
		f 3 340 -333 -340
		mu 0 3 356 359 357
		f 3 341 342 -337
		mu 0 3 360 361 362
		f 3 -329 -335 -342
		mu 0 3 360 363 361
		f 3 343 -343 -334
		mu 0 3 364 365 366
		f 3 -341 -338 -344
		mu 0 3 364 367 365;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_Piller";
	rename -uid "2576214A-4D5C-5CE1-79A9-CBB33C9FB9A1";
	setAttr ".rp" -type "double3" -216.02455902099609 200.66000366210938 1236.97998046875 ;
	setAttr ".sp" -type "double3" -216.02455902099609 200.66000366210938 1236.97998046875 ;
createNode mesh -n "L_PillerShape" -p "L_Piller";
	rename -uid "3C56DA91-4DCF-6862-4CDB-1CBF7163D825";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 368 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" -3.0625 0.61629999 -3.052599907
		 0.58679998 -3.0473001 0.61360002 -3.0625 0.58899999 3.0625 0.58899999 3.0473001 0.61360002
		 3.052599907 0.58679998 3.0625 0.61629999 -3.1652 2.80559993 -3.15510011 2.74309993
		 -3.15510011 2.80559993 -3.1652 2.74309993 -3.12700009 -2.69440007 -3.14249992 -2.63190007
		 -3.14249992 -2.69440007 -3.12700009 -2.63190007 -3.0776999 0.61360002 -3.0625 0.58899999
		 -3.0625 0.61629999 -3.072400093 0.58679998 3.072400093 0.58679998 3.0625 0.61629999
		 3.0625 0.58899999 3.0776999 0.61360002 -2.82719994 2.80559993 -2.81710005 2.74309993
		 -2.81710005 2.80559993 -2.82719994 2.74309993 -2.88849998 -2.69440007 -2.90400004
		 -2.63190007 -2.90400004 -2.69440007 -2.88849998 -2.63190007 -3.092400074 0.61019999
		 -3.072400093 0.59140003 -3.0776999 0.6182 -3.081899881 0.58490002 3.081899881 0.58490002
		 3.0776999 0.6182 3.072400093 0.59140003 3.092400074 0.61019999 -2.11039996 2.80100012
		 -2.09890008 2.73850012 -2.09890008 2.80100012 -2.11039996 2.73850012 -2.35619998
		 -2.69899988 -2.37290001 -2.63649988 -2.37290001 -2.69899988 -2.35619998 -2.63649988
		 -3.10590005 0.60640001 -3.081899881 0.59420002 -3.092400074 0.61940002 -3.090699911
		 0.5837 3.090699911 0.5837 3.092400074 0.61940002 3.081899881 0.59420002 3.10590005
		 0.60640001 -2.71799994 -1.52909994 -2.65549994 -1.51540005 -2.71799994 -1.51540005
		 -2.65549994 -1.52909994 -1.74109995 -2.70830011 -1.75989997 -2.64580011 -1.75989997
		 -2.70830011 -1.74109995 -2.64580011 -3.1177001 0.60250002 -3.090699911 0.59719998
		 -3.10590005 0.62 -3.098400116 0.58319998 3.098400116 0.58319998 3.10590005 0.62 3.090699911
		 0.59719998 3.1177001 0.60250002 -2.72530007 -0.97009999 -2.66280007 -0.954 -2.72530007
		 -0.954 -2.66280007 -0.97009999 2.72659993 -1.22290003 2.66409993 -1.24399996 2.72659993
		 -1.24399996 2.66409993 -1.22290003 -3.12750006 0.59850001 -3.098400116 0.60049999
		 -3.1177001 0.61979997 -3.10470009 0.58329999 3.10470009 0.58329999 3.1177001 0.61979997
		 3.098400116 0.60049999 3.12750006 0.59850001 -2.73979998 -0.52380002 -2.67729998
		 -0.50550002 -2.73979998 -0.50550002 -2.67729998 -0.52380002 2.74009991 -0.72839999
		 2.67759991 -0.75190002 2.74009991 -0.75190002 2.67759991 -0.72839999 -3.13470006
		 0.59460002 -3.10470009 0.6038 -3.12750006 0.61900002 -3.10940003 0.58420002 3.10940003
		 0.58420002 3.12750006 0.61900002 3.10470009 0.6038 3.13470006 0.59460002 -2.75929999
		 -0.1567 -2.69679999 -0.1366 -2.75929999 -0.1366 -2.69679999 -0.1567 2.7592001 -0.29730001
		 2.6967001 -0.32269999 2.7592001 -0.32269999 2.6967001 -0.29730001 -3.13910007 0.59100002
		 -3.10940003 0.60699999 -3.13470006 0.61739999 -3.11229992 0.58569998 3.11229992 0.58569998
		 3.13470006 0.61739999 3.10940003 0.60699999 3.13910007 0.59100002 -2.78209996 0.16069999
		 -2.71959996 0.1822 -2.78209996 0.1822 -2.71959996 0.16069999 2.78189993 0.087499999
		 2.71939993 0.060699999 2.78189993 0.060699999 2.71939993 0.087499999 -3.14059997
		 0.58780003 -3.11229992 0.6099 -3.13910007 0.6153 -3.11330009 0.58780003 3.11330009
		 0.58780003 3.13910007 0.6153 3.11229992 0.6099 3.14059997 0.58780003 -2.80649996
		 0.4499 -2.74399996 0.472 -2.80649996 0.472 -2.74399996 0.4499 2.80649996 0.44279999
		 2.74399996 0.41530001 2.80649996 0.41530001 2.74399996 0.44279999 3.14059997 -2.80660009
		 3.11330009 -2.74410009 3.11330009 -2.80660009 3.14059997 -2.74410009 4.45100021 0.58780003
		 4.47930002 0.6099 4.45249987 0.6153 4.47830009 0.58780003 -4.47830009 0.58780003
		 -4.45249987 0.6153 -4.47930002 0.6099 -4.45100021 0.58780003 2.50600004 0.78479999
		 2.56850004 0.80690002 2.50600004 0.80690002 2.56850004 0.78479999 -2.50600004 0.85750002
		 -2.56850004 0.8301 -2.50600004 0.8301 -2.56850004 0.85750002 3.11229992 -2.74410009
		 3.13960004 -2.80660009 3.13960004 -2.74410009 3.11229992 -2.80660009 4.45690012 0.59100002
		 4.48659992 0.60699999 4.4612999 0.61739999 4.4836998 0.58569998 -4.4836998 0.58569998
		 -4.4612999 0.61739999 -4.48659992 0.60699999 -4.45690012 0.59100002 2.53040004 1.18420005
		 2.59290004 1.20560002 2.53040004 1.20560002 2.59290004 1.18420005 -2.53060007 1.34979999
		 -2.59310007 1.32299995 -2.53060007 1.32299995 -2.59310007 1.34979999 4.47039986 0.59460002
		 4.50040007 0.6038 4.47770023 0.61900002 4.49569988 0.58420002 -4.49569988 0.58420002
		 -4.47770023 0.61900002 -4.50040007 0.6038 -4.47039986 0.59460002 2.55320001 1.61539996
		 2.61570001 1.63559997 2.55320001 1.63559997 2.61570001 1.61539996 -2.5532999 1.86759996
		 -2.6157999 1.84220004 -2.5532999 1.84220004 -2.6157999 1.86759996 4.49119997 0.59850001
		 4.52019978 0.60049999 4.50089979 0.61979997 4.5138998 0.58329999 -4.5138998 0.58329999
		 -4.50089979 0.61979997 -4.52019978 0.60049999 -4.49119997 0.59850001 2.57270002 2.10660005
		 2.63520002 2.1249001 2.57270002 2.1249001 2.63520002 2.10660005 -2.57240009 2.43210006
		 -2.63490009 2.40869999 -2.57240009 2.40869999 -2.63490009 2.43210006 4.51830006 0.60250002
		 4.54530001 0.59719998 4.5302 0.62 4.53770018 0.58319998 -4.53770018 0.58319998 -4.5302
		 0.62 -4.54530001 0.59719998 -4.51830006 0.60250002 2.58719993 2.69050002 2.64969993
		 2.70650005 2.58719993 2.70650005 2.64969993 2.69050002 -2.58590007 3.057800055 -2.64840007
		 3.03670001 -2.58590007 3.03670001 -2.64840007 3.057800055 4.55079985 0.60640001 4.57469988
		 0.59420002 4.56430006 0.61940002 4.56599998 0.5837 -4.56599998 0.5837 -4.56430006
		 0.61940002 -4.57469988 0.59420002 -4.55079985 0.60640001 2.59450006 3.39100003 2.65700006
		 3.40470004 2.59450006 3.40470004 2.65700006 3.39100003 -2.8118 -2.64580011 -2.79299998
		 -2.70830011 -2.79299998 -2.64580011 -2.8118 -2.70830011 4.58729982 0.61019999 4.6072998
		 0.59140003;
	setAttr ".uvst[0].uvsp[250:367]" 4.60200024 0.6182 4.59779978 0.58490002 -4.59779978
		 0.58490002 -4.60200024 0.6182 -4.6072998 0.59140003 -4.58729982 0.61019999 -2.94650006
		 2.73850012 -2.95799994 2.80100012 -2.95799994 2.73850012 -2.94650006 2.80100012 -3.11059999
		 -2.63649988 -3.093899965 -2.69899988 -3.093899965 -2.63649988 -3.11059999 -2.69899988
		 4.62650013 0.61360002 4.64179993 0.58899999 4.64179993 0.61629999 4.63189983 0.58679998
		 -4.63189983 0.58679998 -4.64179993 0.61629999 -4.64179993 0.58899999 -4.62650013
		 0.61360002 -3.14540005 2.74309993 -3.15549994 2.80559993 -3.15549994 2.74309993 -3.14540005
		 2.80559993 -3.17630005 -2.63190007 -3.16079998 -2.69440007 -3.16079998 -2.63190007
		 -3.17630005 -2.69440007 4.67229986 0.61629999 4.68219995 0.58679998 4.6875 0.61360002
		 4.67229986 0.58899999 -4.67229986 0.58899999 -4.6875 0.61360002 -4.68219995 0.58679998
		 -4.67229986 0.61629999 -2.82680011 2.74309993 -2.8369 2.80559993 -2.8369 2.74309993
		 -2.82680011 2.80559993 -2.87019992 -2.63190007 -2.85470009 -2.69440007 -2.85470009
		 -2.63190007 -2.87019992 -2.69440007 -0.9052 -1.23140001 -1.016800046 -1.24839997
		 -0.9052 -1.24839997 -1.016800046 -1.23140001 1.89590001 22.22400093 1.97399998 22.13019943
		 1.97399998 22.22400093 1.89590001 22.13019943 -0.97409999 22.22400093 -0.89590001
		 22.13019943 -0.89590001 22.22400093 -0.97409999 22.13019943 -21.22400093 -0.38909999
		 -21.13019943 -0.40090001 -21.13019943 -0.38909999 -21.22400093 -0.40090001 22.13019943
		 -0.38909999 22.22400093 -0.40090001 22.22400093 -0.38909999 22.13019943 -0.40090001
		 1.97409999 -0.40090001 1.89590001 -0.38909999 1.89590001 -0.40090001 1.97409999 -0.38909999
		 -0.92750001 -1.24839997 -0.99529999 -2.20510006 -0.92750001 -2.20510006 -0.99529999
		 -1.24839997 1.91149998 22.20829964 1.95899999 22.14579964 1.95899999 22.20829964
		 1.91149998 22.14579964 -0.95899999 22.20829964 -0.91159999 22.14579964 -0.91159999
		 22.20829964 -0.95899999 22.14579964 -21.20829964 -0.40090001 -21.14579964 -1.06099999
		 -21.14579964 -0.40090001 -21.20829964 -1.06099999 22.14579964 -0.40090001 22.20829964
		 -1.06099999 22.20829964 -0.40090001 22.14579964 -1.06099999 1.95899999 -1.06099999
		 1.91159999 -0.40090001 1.91159999 -1.06099999 1.95899999 -0.40090001 -0.89399999
		 -2.20510006 -1.016800046 -2.25040007 -0.89399999 -2.25040007 -1.016800046 -2.20510006
		 1.88810003 22.23180008 1.97399998 22.13019943 1.97399998 22.23180008 1.88810003 22.13019943
		 -0.97409999 22.23180008 -0.88810003 22.13019943 -0.88810003 22.23180008 -0.97409999
		 22.13019943 -21.23180008 -1.06099999 -21.13019943 -1.092300057 -21.13019943 -1.06099999
		 -21.23180008 -1.092300057 22.13019943 -1.06099999 22.23180008 -1.092300057 22.23180008
		 -1.06099999 22.13019943 -1.092300057 1.97409999 -1.092300057 1.88810003 -1.06099999
		 1.88810003 -1.092300057 1.97409999 -1.06099999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 168 ".vt";
	setAttr ".vt[0:165]"  -165.1000061 474.98001099 1259.83996582 -158.65809631 455.78469849 1259.83996582
		 -155.18940735 473.22311401 1259.83996582 -165.1000061 457.20001221 1259.83996582
		 -165.1000061 457.20001221 1219.19995117 -155.18940735 473.22311401 1219.19995117
		 -158.65809631 455.78469849 1219.19995117 -165.1000061 474.98001099 1219.19995117
		 -175.010604858 473.22311401 1259.83996582 -165.1000061 457.20001221 1259.83996582
		 -165.1000061 474.98001099 1259.83996582 -171.54190063 455.78469849 1259.83996582
		 -171.54190063 455.78469849 1219.19995117 -165.1000061 474.98001099 1219.19995117
		 -165.1000061 457.20001221 1219.19995117 -175.010604858 473.22311401 1219.19995117
		 -184.54040527 468.019714355 1259.83996582 -171.54190063 455.78469849 1259.83996582
		 -175.010604858 473.22311401 1259.83996582 -177.73620605 451.59289551 1259.83996582
		 -177.73620605 451.59289551 1219.19995117 -175.010604858 473.22311401 1219.19995117
		 -171.54190063 455.78469849 1219.19995117 -184.54040527 468.019714355 1219.19995117
		 -193.32299805 459.5697937 1259.83996582 -177.73620605 451.59289551 1259.83996582
		 -184.54040527 468.019714355 1259.83996582 -183.44490051 444.7862854 1259.83996582
		 -183.44490051 444.7862854 1219.19995117 -184.54040527 468.019714355 1219.19995117
		 -177.73620605 451.59289551 1219.19995117 -193.32299805 459.5697937 1219.19995117
		 -201.021194458 448.19799805 1259.83996582 -183.44490051 444.78601074 1259.83996582
		 -193.32299805 459.5696106 1259.83996582 -188.44869995 435.62548828 1259.83996582
		 -188.44869995 435.62548828 1219.19995117 -193.32299805 459.5696106 1219.19995117
		 -183.44490051 444.78601074 1219.19995117 -201.021194458 448.19799805 1219.19995117
		 -207.33869934 434.3414917 1259.83996582 -188.44869995 435.62548828 1259.83996582
		 -201.021194458 448.19799805 1259.83996582 -192.55509949 424.4631958 1259.83996582
		 -192.55509949 424.4631958 1219.19995117 -201.021194458 448.19799805 1219.19995117
		 -188.44869995 435.62548828 1219.19995117 -207.33869934 434.3414917 1219.19995117
		 -212.033096313 418.53259277 1259.83996582 -192.55509949 424.4631958 1259.83996582
		 -207.33869934 434.3414917 1259.83996582 -195.60639954 411.72869873 1259.83996582
		 -195.60639954 411.72869873 1219.19995117 -207.33869934 434.3414917 1219.19995117
		 -192.55509949 424.4631958 1219.19995117 -212.033096313 418.53259277 1219.19995117
		 -214.92390442 401.37921143 1259.83996582 -195.60639954 411.72869873 1259.83996582
		 -212.033096313 418.53259277 1259.83996582 -197.48550415 397.91030884 1259.83996582
		 -197.48550415 397.91030884 1219.19995117 -212.033096313 418.53259277 1219.19995117
		 -195.60639954 411.72869873 1219.19995117 -214.92390442 401.37921143 1219.19995117
		 -215.8999939 383.54000854 1259.83996582 -197.48550415 397.91030884 1259.83996582
		 -214.92390442 401.37921143 1259.83996582 -198.11999512 383.54000854 1259.83996582
		 -198.11999512 383.54000854 1219.19995117 -214.92390442 401.37921143 1219.19995117
		 -197.48550415 397.91030884 1219.19995117 -215.8999939 383.54000854 1219.19995117
		 -216.14920044 383.54000854 1219.19995117 -234.56390381 397.91030884 1219.19995117
		 -217.12530518 401.37921143 1219.19995117 -233.92919922 383.54000854 1219.19995117
		 -233.92919922 383.54000854 1259.83996582 -217.12530518 401.37921143 1259.83996582
		 -234.56390381 397.91030884 1259.83996582 -216.14920044 383.54000854 1259.83996582
		 -217.12530518 401.37921143 1219.19995117 -236.44270325 411.72869873 1219.19995117
		 -220.016098022 418.53259277 1219.19995117 -234.56390381 397.91030884 1219.19995117
		 -234.56390381 397.91030884 1259.83996582 -220.016098022 418.53259277 1259.83996582
		 -236.44270325 411.72869873 1259.83996582 -217.12530518 401.37921143 1259.83996582
		 -220.016098022 418.53259277 1219.19995117 -239.49429321 424.4631958 1219.19995117
		 -224.71080017 434.3414917 1219.19995117 -236.44270325 411.72869873 1219.19995117
		 -236.44270325 411.72869873 1259.83996582 -224.71080017 434.3414917 1259.83996582
		 -239.49429321 424.4631958 1259.83996582 -220.016098022 418.53259277 1259.83996582
		 -224.71080017 434.3414917 1219.19995117 -243.60069275 435.62548828 1219.19995117
		 -231.028198242 448.19799805 1219.19995117 -239.49429321 424.4631958 1219.19995117
		 -239.49429321 424.4631958 1259.83996582 -231.028198242 448.19799805 1259.83996582
		 -243.60069275 435.62548828 1259.83996582 -224.71080017 434.3414917 1259.83996582
		 -231.028198242 448.19799805 1219.19995117 -248.60429382 444.78601074 1219.19995117
		 -238.72650146 459.5696106 1219.19995117 -243.60069275 435.62548828 1219.19995117
		 -243.60069275 435.62548828 1259.83996582 -238.72650146 459.5696106 1259.83996582
		 -248.60429382 444.78601074 1259.83996582 -231.028198242 448.19799805 1259.83996582
		 -238.72650146 459.5697937 1219.19995117 -254.31289673 451.59289551 1219.19995117
		 -247.50900269 468.019714355 1219.19995117 -248.60429382 444.7862854 1219.19995117
		 -248.60429382 444.7862854 1259.83996582 -247.50900269 468.019714355 1259.83996582
		 -254.31289673 451.59289551 1259.83996582 -238.72650146 459.5697937 1259.83996582
		 -247.50900269 468.019714355 1219.19995117 -260.50750732 455.78469849 1219.19995117
		 -257.038787842 473.22311401 1219.19995117 -254.31289673 451.59289551 1219.19995117
		 -254.31289673 451.59289551 1259.83996582 -257.038787842 473.22311401 1259.83996582
		 -260.50750732 455.78469849 1259.83996582 -247.50900269 468.019714355 1259.83996582
		 -257.038787842 473.22311401 1219.19995117 -266.94918823 457.20001221 1219.19995117
		 -266.94918823 474.98001099 1219.19995117 -260.50750732 455.78469849 1219.19995117
		 -260.50750732 455.78469849 1259.83996582 -266.94918823 474.98001099 1259.83996582
		 -266.94918823 457.20001221 1259.83996582 -257.038787842 473.22311401 1259.83996582
		 -266.94918823 474.98001099 1219.19995117 -273.39111328 455.78469849 1219.19995117
		 -276.85971069 473.22311401 1219.19995117 -266.94918823 457.20001221 1219.19995117
		 -266.94918823 457.20001221 1259.83996582 -276.85971069 473.22311401 1259.83996582
		 -273.39111328 455.78469849 1259.83996582 -266.94918823 474.98001099 1259.83996582
		 -190.5 383.54000854 1270 -241.30000305 375.92001343 1270 -190.5 375.92001343 1270
		 -241.30000305 383.54000854 1270 -190.5 375.92001343 1209.040039063 -241.30000305 375.92001343 1209.040039063
		 -241.30000305 383.54000854 1209.040039063 -190.5 383.54000854 1209.040039063 -200.66000366 375.92001343 1259.83996582
		 -231.53469849 -53.34000015 1259.83996582 -200.66000366 -53.34000015 1259.83996582
		 -231.53469849 375.92001343 1259.83996582 -200.66000366 -53.34000015 1219.19995117
		 -231.53469849 -53.34000015 1219.19995117 -231.53469849 375.92001343 1219.19995117
		 -200.66000366 375.92001343 1219.19995117 -185.41999817 -53.34000015 1270 -241.30000305 -73.66000366 1270
		 -185.41999817 -73.66000366 1270 -241.30000305 -53.34000015 1270 -185.41999817 -73.66000366 1203.95996094
		 -241.30000305 -73.66000366 1203.95996094;
	setAttr ".vt[166:167]" -241.30000305 -53.34000015 1203.95996094 -185.41999817 -53.34000015 1203.95996094;
	setAttr -s 344 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 0 2 0 1 0 3 0 3 1 1 4 5 1 5 6 0 6 4 1 4 7 0
		 7 5 1 3 6 1 6 1 0 3 4 0 2 7 1 7 0 0 2 5 0 8 9 1 9 10 0 10 8 1 8 11 0 11 9 1 12 13 1
		 13 14 0 14 12 1 12 15 0 15 13 1 11 14 1 14 9 0 11 12 0 10 15 1 15 8 0 10 13 0 16 17 1
		 17 18 0 18 16 1 16 19 0 19 17 1 20 21 1 21 22 0 22 20 1 20 23 0 23 21 1 19 22 1 22 17 0
		 19 20 0 18 23 1 23 16 0 18 21 0 24 25 1 25 26 0 26 24 1 24 27 0 27 25 1 28 29 1 29 30 0
		 30 28 1 28 31 0 31 29 1 27 30 1 30 25 0 27 28 0 26 31 1 31 24 0 26 29 0 32 33 1 33 34 0
		 34 32 1 32 35 0 35 33 1 36 37 1 37 38 0 38 36 1 36 39 0 39 37 1 35 38 1 38 33 0 35 36 0
		 34 39 1 39 32 0 34 37 0 40 41 1 41 42 0 42 40 1 40 43 0 43 41 1 44 45 1 45 46 0 46 44 1
		 44 47 0 47 45 1 43 46 1 46 41 0 43 44 0 42 47 1 47 40 0 42 45 0 48 49 1 49 50 0 50 48 1
		 48 51 0 51 49 1 52 53 1 53 54 0 54 52 1 52 55 0 55 53 1 51 54 1 54 49 0 51 52 0 50 55 1
		 55 48 0 50 53 0 56 57 1 57 58 0 58 56 1 56 59 0 59 57 1 60 61 1 61 62 0 62 60 1 60 63 0
		 63 61 1 59 62 1 62 57 0 59 60 0 58 63 1 63 56 0 58 61 0 64 65 1 65 66 0 66 64 1 64 67 1
		 67 65 1 68 69 1 69 70 0 70 68 1 68 71 1 71 69 1 67 70 1 70 65 0 67 68 1 66 71 1 71 64 1
		 66 69 0 64 68 1 72 73 1 73 74 0 74 72 1 72 75 1 75 73 1 76 77 1 77 78 0 78 76 1 76 79 1
		 79 77 1 75 78 1 78 73 0 75 76 1 74 79 1 79 72 1 74 77 0 72 76 1 80 81 1 81 82 0 82 80 1
		 80 83 0;
	setAttr ".ed[166:331]" 83 81 1 84 85 1 85 86 0 86 84 1 84 87 0 87 85 1 83 86 1
		 86 81 0 83 84 0 82 87 1 87 80 0 82 85 0 88 89 1 89 90 0 90 88 1 88 91 0 91 89 1 92 93 1
		 93 94 0 94 92 1 92 95 0 95 93 1 91 94 1 94 89 0 91 92 0 90 95 1 95 88 0 90 93 0 96 97 1
		 97 98 0 98 96 1 96 99 0 99 97 1 100 101 1 101 102 0 102 100 1 100 103 0 103 101 1
		 99 102 1 102 97 0 99 100 0 98 103 1 103 96 0 98 101 0 104 105 1 105 106 0 106 104 1
		 104 107 0 107 105 1 108 109 1 109 110 0 110 108 1 108 111 0 111 109 1 107 110 1 110 105 0
		 107 108 0 106 111 1 111 104 0 106 109 0 112 113 1 113 114 0 114 112 1 112 115 0 115 113 1
		 116 117 1 117 118 0 118 116 1 116 119 0 119 117 1 115 118 1 118 113 0 115 116 0 114 119 1
		 119 112 0 114 117 0 120 121 1 121 122 0 122 120 1 120 123 0 123 121 1 124 125 1 125 126 0
		 126 124 1 124 127 0 127 125 1 123 126 1 126 121 0 123 124 0 122 127 1 127 120 0 122 125 0
		 128 129 1 129 130 0 130 128 1 128 131 0 131 129 1 132 133 1 133 134 0 134 132 1 132 135 0
		 135 133 1 131 134 1 134 129 0 131 132 0 130 135 1 135 128 0 130 133 0 136 137 1 137 138 0
		 138 136 1 136 139 0 139 137 1 140 141 1 141 142 0 142 140 1 140 143 0 143 141 1 139 142 1
		 142 137 0 139 140 0 138 143 1 143 136 0 138 141 0 144 145 1 145 146 1 146 144 1 144 147 1
		 147 145 1 148 145 1 145 149 1 149 148 1 148 146 1 150 144 1 144 151 1 151 150 1 150 147 1
		 150 145 1 150 149 1 144 148 1 148 151 1 149 151 1 152 153 1 153 154 1 154 152 1 152 155 1
		 155 153 1 156 153 1 153 157 1 157 156 1 156 154 1 158 152 1 152 159 1 159 158 1 158 155 1
		 158 153 1 158 157 1 152 156 1 156 159 1 157 159 1 160 161 1 161 162 1 162 160 1 160 163 1
		 163 161 1 164 161 1;
	setAttr ".ed[332:343]" 161 165 1 165 164 1 164 162 1 166 160 1 160 167 1 167 166 1
		 166 163 1 166 161 1 166 165 1 160 164 1 164 167 1 165 167 1;
	setAttr -s 184 -ch 552 ".fc[0:183]" -type "polyFaces" 
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
		f 3 16 17 18
		mu 0 3 16 17 18
		f 3 19 20 -17
		mu 0 3 16 19 17
		f 3 21 22 23
		mu 0 3 20 21 22
		f 3 24 25 -22
		mu 0 3 20 23 21
		f 3 26 27 -21
		mu 0 3 24 25 26
		f 3 28 -24 -27
		mu 0 3 24 27 25
		f 3 29 30 -19
		mu 0 3 28 29 30
		f 3 31 -26 -30
		mu 0 3 28 31 29
		f 3 32 33 34
		mu 0 3 32 33 34
		f 3 35 36 -33
		mu 0 3 32 35 33
		f 3 37 38 39
		mu 0 3 36 37 38
		f 3 40 41 -38
		mu 0 3 36 39 37
		f 3 42 43 -37
		mu 0 3 40 41 42
		f 3 44 -40 -43
		mu 0 3 40 43 41
		f 3 45 46 -35
		mu 0 3 44 45 46
		f 3 47 -42 -46
		mu 0 3 44 47 45
		f 3 48 49 50
		mu 0 3 48 49 50
		f 3 51 52 -49
		mu 0 3 48 51 49
		f 3 53 54 55
		mu 0 3 52 53 54
		f 3 56 57 -54
		mu 0 3 52 55 53
		f 3 58 59 -53
		mu 0 3 56 57 58
		f 3 60 -56 -59
		mu 0 3 56 59 57
		f 3 61 62 -51
		mu 0 3 60 61 62
		f 3 63 -58 -62
		mu 0 3 60 63 61
		f 3 64 65 66
		mu 0 3 64 65 66
		f 3 67 68 -65
		mu 0 3 64 67 65
		f 3 69 70 71
		mu 0 3 68 69 70
		f 3 72 73 -70
		mu 0 3 68 71 69
		f 3 74 75 -69
		mu 0 3 72 73 74
		f 3 76 -72 -75
		mu 0 3 72 75 73
		f 3 77 78 -67
		mu 0 3 76 77 78
		f 3 79 -74 -78
		mu 0 3 76 79 77
		f 3 80 81 82
		mu 0 3 80 81 82
		f 3 83 84 -81
		mu 0 3 80 83 81
		f 3 85 86 87
		mu 0 3 84 85 86
		f 3 88 89 -86
		mu 0 3 84 87 85
		f 3 90 91 -85
		mu 0 3 88 89 90
		f 3 92 -88 -91
		mu 0 3 88 91 89
		f 3 93 94 -83
		mu 0 3 92 93 94
		f 3 95 -90 -94
		mu 0 3 92 95 93
		f 3 96 97 98
		mu 0 3 96 97 98
		f 3 99 100 -97
		mu 0 3 96 99 97
		f 3 101 102 103
		mu 0 3 100 101 102
		f 3 104 105 -102
		mu 0 3 100 103 101
		f 3 106 107 -101
		mu 0 3 104 105 106
		f 3 108 -104 -107
		mu 0 3 104 107 105
		f 3 109 110 -99
		mu 0 3 108 109 110
		f 3 111 -106 -110
		mu 0 3 108 111 109
		f 3 112 113 114
		mu 0 3 112 113 114
		f 3 115 116 -113
		mu 0 3 112 115 113
		f 3 117 118 119
		mu 0 3 116 117 118
		f 3 120 121 -118
		mu 0 3 116 119 117
		f 3 122 123 -117
		mu 0 3 120 121 122
		f 3 124 -120 -123
		mu 0 3 120 123 121
		f 3 125 126 -115
		mu 0 3 124 125 126
		f 3 127 -122 -126
		mu 0 3 124 127 125
		f 3 128 129 130
		mu 0 3 128 129 130
		f 3 131 132 -129
		mu 0 3 128 131 129
		f 3 133 134 135
		mu 0 3 132 133 134
		f 3 136 137 -134
		mu 0 3 132 135 133
		f 3 138 139 -133
		mu 0 3 136 137 138
		f 3 140 -136 -139
		mu 0 3 136 139 137
		f 3 141 142 -131
		mu 0 3 140 141 142
		f 3 143 -138 -142
		mu 0 3 140 143 141
		f 3 144 -141 -132
		mu 0 3 144 145 146
		f 3 -143 -137 -145
		mu 0 3 144 147 145
		f 3 145 146 147
		mu 0 3 148 149 150
		f 3 148 149 -146
		mu 0 3 148 151 149
		f 3 150 151 152
		mu 0 3 152 153 154
		f 3 153 154 -151
		mu 0 3 152 155 153
		f 3 155 156 -150
		mu 0 3 156 157 158
		f 3 157 -153 -156
		mu 0 3 156 159 157
		f 3 158 159 -148
		mu 0 3 160 161 162
		f 3 160 -155 -159
		mu 0 3 160 163 161
		f 3 161 -158 -149
		mu 0 3 164 165 166
		f 3 -160 -154 -162
		mu 0 3 164 167 165
		f 3 162 163 164
		mu 0 3 168 169 170
		f 3 165 166 -163
		mu 0 3 168 171 169
		f 3 167 168 169
		mu 0 3 172 173 174
		f 3 170 171 -168
		mu 0 3 172 175 173
		f 3 172 173 -167
		mu 0 3 176 177 178
		f 3 174 -170 -173
		mu 0 3 176 179 177
		f 3 175 176 -165
		mu 0 3 180 181 182
		f 3 177 -172 -176
		mu 0 3 180 183 181
		f 3 178 179 180
		mu 0 3 184 185 186
		f 3 181 182 -179
		mu 0 3 184 187 185
		f 3 183 184 185
		mu 0 3 188 189 190
		f 3 186 187 -184
		mu 0 3 188 191 189
		f 3 188 189 -183
		mu 0 3 192 193 194
		f 3 190 -186 -189
		mu 0 3 192 195 193
		f 3 191 192 -181
		mu 0 3 196 197 198
		f 3 193 -188 -192
		mu 0 3 196 199 197
		f 3 194 195 196
		mu 0 3 200 201 202
		f 3 197 198 -195
		mu 0 3 200 203 201
		f 3 199 200 201
		mu 0 3 204 205 206
		f 3 202 203 -200
		mu 0 3 204 207 205
		f 3 204 205 -199
		mu 0 3 208 209 210
		f 3 206 -202 -205
		mu 0 3 208 211 209
		f 3 207 208 -197
		mu 0 3 212 213 214
		f 3 209 -204 -208
		mu 0 3 212 215 213
		f 3 210 211 212
		mu 0 3 216 217 218
		f 3 213 214 -211
		mu 0 3 216 219 217
		f 3 215 216 217
		mu 0 3 220 221 222
		f 3 218 219 -216
		mu 0 3 220 223 221
		f 3 220 221 -215
		mu 0 3 224 225 226
		f 3 222 -218 -221
		mu 0 3 224 227 225
		f 3 223 224 -213
		mu 0 3 228 229 230
		f 3 225 -220 -224
		mu 0 3 228 231 229
		f 3 226 227 228
		mu 0 3 232 233 234
		f 3 229 230 -227
		mu 0 3 232 235 233
		f 3 231 232 233
		mu 0 3 236 237 238
		f 3 234 235 -232
		mu 0 3 236 239 237
		f 3 236 237 -231
		mu 0 3 240 241 242
		f 3 238 -234 -237
		mu 0 3 240 243 241
		f 3 239 240 -229
		mu 0 3 244 245 246
		f 3 241 -236 -240
		mu 0 3 244 247 245
		f 3 242 243 244
		mu 0 3 248 249 250
		f 3 245 246 -243
		mu 0 3 248 251 249
		f 3 247 248 249
		mu 0 3 252 253 254
		f 3 250 251 -248
		mu 0 3 252 255 253
		f 3 252 253 -247
		mu 0 3 256 257 258
		f 3 254 -250 -253
		mu 0 3 256 259 257
		f 3 255 256 -245
		mu 0 3 260 261 262
		f 3 257 -252 -256
		mu 0 3 260 263 261
		f 3 258 259 260
		mu 0 3 264 265 266
		f 3 261 262 -259
		mu 0 3 264 267 265
		f 3 263 264 265
		mu 0 3 268 269 270
		f 3 266 267 -264
		mu 0 3 268 271 269
		f 3 268 269 -263
		mu 0 3 272 273 274
		f 3 270 -266 -269
		mu 0 3 272 275 273
		f 3 271 272 -261
		mu 0 3 276 277 278
		f 3 273 -268 -272
		mu 0 3 276 279 277
		f 3 274 275 276
		mu 0 3 280 281 282
		f 3 277 278 -275
		mu 0 3 280 283 281
		f 3 279 280 281
		mu 0 3 284 285 286
		f 3 282 283 -280
		mu 0 3 284 287 285
		f 3 284 285 -279
		mu 0 3 288 289 290
		f 3 286 -282 -285
		mu 0 3 288 291 289
		f 3 287 288 -277
		mu 0 3 292 293 294
		f 3 289 -284 -288
		mu 0 3 292 295 293
		f 3 290 291 292
		mu 0 3 296 297 298
		f 3 293 294 -291
		mu 0 3 296 299 297
		f 3 295 296 297
		mu 0 3 300 301 302
		f 3 298 -292 -296
		mu 0 3 300 303 301
		f 3 299 300 301
		mu 0 3 304 305 306
		f 3 302 -294 -300
		mu 0 3 304 307 305
		f 3 303 -295 -303
		mu 0 3 308 309 310
		f 3 304 -297 -304
		mu 0 3 308 311 309
		f 3 305 306 -301
		mu 0 3 312 313 314
		f 3 -293 -299 -306
		mu 0 3 312 315 313
		f 3 307 -307 -298
		mu 0 3 316 317 318
		f 3 -305 -302 -308
		mu 0 3 316 319 317
		f 3 308 309 310
		mu 0 3 320 321 322
		f 3 311 312 -309
		mu 0 3 320 323 321
		f 3 313 314 315
		mu 0 3 324 325 326
		f 3 316 -310 -314
		mu 0 3 324 327 325
		f 3 317 318 319
		mu 0 3 328 329 330
		f 3 320 -312 -318
		mu 0 3 328 331 329
		f 3 321 -313 -321
		mu 0 3 332 333 334
		f 3 322 -315 -322
		mu 0 3 332 335 333
		f 3 323 324 -319
		mu 0 3 336 337 338
		f 3 -311 -317 -324
		mu 0 3 336 339 337
		f 3 325 -325 -316
		mu 0 3 340 341 342
		f 3 -323 -320 -326
		mu 0 3 340 343 341
		f 3 326 327 328
		mu 0 3 344 345 346
		f 3 329 330 -327
		mu 0 3 344 347 345
		f 3 331 332 333
		mu 0 3 348 349 350
		f 3 334 -328 -332
		mu 0 3 348 351 349
		f 3 335 336 337
		mu 0 3 352 353 354
		f 3 338 -330 -336
		mu 0 3 352 355 353
		f 3 339 -331 -339
		mu 0 3 356 357 358
		f 3 340 -333 -340
		mu 0 3 356 359 357
		f 3 341 342 -337
		mu 0 3 360 361 362
		f 3 -329 -335 -342
		mu 0 3 360 363 361
		f 3 343 -343 -334
		mu 0 3 364 365 366
		f 3 -341 -338 -344
		mu 0 3 364 367 365;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Bar";
	rename -uid "CA130B3D-4350-A8EE-AE19-049872D2CB4F";
	setAttr ".rp" -type "double3" -133.35000610351563 111.76000213623047 -713.739990234375 ;
	setAttr ".sp" -type "double3" -133.35000610351563 111.76000213623047 -713.739990234375 ;
createNode mesh -n "BarShape" -p "Bar";
	rename -uid "46E8FB8E-484E-57CF-A9BB-DCB23C58A254";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 100 ".uvst[0].uvsp[0:99]" -type "float2" -4.5703001 0.26949999
		 -2.68359995 0.2422 -2.68359995 0.26949999 -4.5703001 0.2422 4.5703001 0.2422 2.68359995
		 0.26949999 2.68359995 0.2422 4.5703001 0.26949999 2.68359995 -1.51559997 4.5703001
		 -1.36720002 2.68359995 -1.36720002 4.5703001 -1.51559997 -4.5703001 -1.51559997 -2.68359995
		 -1.36720002 -4.5703001 -1.36720002 -2.68359995 -1.51559997 1.36720002 0.2422 1.51559997
		 0.26949999 1.36720002 0.26949999 1.51559997 0.2422 -1.51559997 0.2422 -1.36720002
		 0.26949999 -1.51559997 0.26949999 -1.36720002 0.2422 0.46090001 0.2422 0.63279998
		 -0.0038999999 0.63279998 0.2422 0.46090001 -0.0038999999 -0.46090001 -0.0038999999
		 -0.63279998 0.2422 -0.63279998 -0.0038999999 -0.46090001 0.2422 1.76559997 -1.17970002
		 1.78910005 -1.35160005 1.78910005 -1.17970002 1.76559997 -1.35160005 -1.76559997
		 -1.35160005 -1.78910005 -1.17970002 -1.78910005 -1.35160005 -1.76559997 -1.17970002
		 -0.1328 -0.0038999999 -0.1094 0.2422 -0.1328 0.2422 -0.1094 -0.0038999999 0.1094
		 -0.0038999999 0.1328 0.2422 0.1094 0.2422 0.1328 -0.0038999999 0.46090001 0.2422
		 0.63279998 -0.0038999999 0.63279998 0.2422 0.46090001 -0.0038999999 -0.46090001 -0.0038999999
		 -0.63279998 0.2422 -0.63279998 -0.0038999999 -0.46090001 0.2422 3.61520004 -1.17970002
		 3.63870001 -1.35160005 3.63870001 -1.17970002 3.61520004 -1.35160005 -3.61520004
		 -1.35160005 -3.63870001 -1.17970002 -3.63870001 -1.35160005 -3.61520004 -1.17970002
		 -1.98239994 -0.0038999999 -1.95899999 0.2422 -1.98239994 0.2422 -1.95899999 -0.0038999999
		 1.95899999 -0.0038999999 1.98239994 0.2422 1.95899999 0.2422 1.98239994 -0.0038999999
		 -1.8477 -0.32170001 0.8477 -0.67830002 0.8477 -0.32170001 -1.8477 -0.67830002 0.4434
		 -0.62300003 -1.44340003 -0.377 -1.44340003 -0.62300003 0.4434 -0.377 -1.44340003
		 -0.51169997 0.4434 -0.4883 -1.44340003 -0.4883 0.4434 -0.51169997 -1.44340003 -0.51169997
		 0.4434 -0.4883 -1.44340003 -0.4883 -1.44340003 -0.51169997 0.4434 -0.51169997 0.4434
		 -0.4883 -0.51169997 -0.62300003 -0.4883 -0.377 -0.51169997 -0.377 -0.4883 -0.62300003
		 -0.51169997 -0.62300003 -0.4883 -0.377 -0.51169997 -0.377 -0.51169997 -0.62300003
		 -0.4883 -0.62300003 -0.4883 -0.377;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -746.76000977 200.66000366 -650.4296875 480.059997559 182.88000488 -650.4296875
		 480.059997559 200.66000366 -650.4296875 -746.76000977 182.88000488 -650.4296875 -746.76000977 182.88000488 -746.94970703
		 480.059997559 200.66000366 -746.94970703 480.059997559 182.88000488 -746.94970703
		 -746.76000977 200.66000366 -746.94970703 477.51998901 182.88000488 -665.47998047
		 477.51998901 22.86000061 -777.23999023 477.51998901 182.88000488 -777.23999023 477.51998901 22.86000061 -665.47998047
		 462.27999878 22.86000061 -665.47998047 462.27999878 182.88000488 -777.23999023 462.27999878 22.86000061 -777.23999023
		 462.27999878 182.88000488 -665.47998047 -725.16998291 182.88000488 -665.47998047
		 -725.16998291 22.86000061 -777.23999023 -725.16998291 182.88000488 -777.23999023
		 -725.16998291 22.86000061 -665.47998047 -740.40997314 22.86000061 -665.47998047 -740.40997314 182.88000488 -777.23999023
		 -740.40997314 22.86000061 -777.23999023 -740.40997314 182.88000488 -665.47998047
		 -746.76000977 182.88000488 -650.23999023 480.059997559 22.86000061 -650.23999023
		 480.059997559 182.88000488 -650.23999023 -746.76000977 22.86000061 -650.23999023
		 -746.76000977 22.86000061 -665.47998047 480.059997559 182.88000488 -665.47998047
		 480.059997559 22.86000061 -665.47998047 -746.76000977 182.88000488 -665.47998047;
	setAttr -s 72 ".ed[0:71]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1
		 6 4 1 4 7 1 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1 8 9 1 9 10 1 10 8 1
		 8 11 1 11 9 1 12 13 1 13 14 1 14 12 1 12 15 1 15 13 1 9 12 1 14 9 1 11 12 1 8 13 1
		 15 8 1 10 13 1 12 8 1 9 13 1 16 17 1 17 18 1 18 16 1 16 19 1 19 17 1 20 21 1 21 22 1
		 22 20 1 20 23 1 23 21 1 17 20 1 22 17 1 19 20 1 16 21 1 23 16 1 18 21 1 20 16 1 17 21 1
		 24 25 1 25 26 1 26 24 1 24 27 1 27 25 1 28 29 1 29 30 1 30 28 1 28 31 1 31 29 1 25 28 1
		 30 25 1 27 28 1 24 29 1 31 24 1 26 29 1 28 24 1 25 29 1;
	setAttr -s 48 -ch 144 ".fc[0:47]" -type "polyFaces" 
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
		mu 0 3 20 23 21
		f 3 18 19 20
		mu 0 3 24 25 26
		f 3 21 22 -19
		mu 0 3 24 27 25
		f 3 23 24 25
		mu 0 3 28 29 30
		f 3 26 27 -24
		mu 0 3 28 31 29
		f 3 28 -26 29
		mu 0 3 32 33 34
		f 3 -23 30 -29
		mu 0 3 32 35 33
		f 3 31 -28 32
		mu 0 3 36 37 38
		f 3 -21 33 -32
		mu 0 3 36 39 37
		f 3 34 -33 -27
		mu 0 3 40 41 42
		f 3 -31 -22 -35
		mu 0 3 40 43 41
		f 3 35 -34 -20
		mu 0 3 44 45 46
		f 3 -30 -25 -36
		mu 0 3 44 47 45
		f 3 36 37 38
		mu 0 3 48 49 50
		f 3 39 40 -37
		mu 0 3 48 51 49
		f 3 41 42 43
		mu 0 3 52 53 54
		f 3 44 45 -42
		mu 0 3 52 55 53
		f 3 46 -44 47
		mu 0 3 56 57 58
		f 3 -41 48 -47
		mu 0 3 56 59 57
		f 3 49 -46 50
		mu 0 3 60 61 62
		f 3 -39 51 -50
		mu 0 3 60 63 61
		f 3 52 -51 -45
		mu 0 3 64 65 66
		f 3 -49 -40 -53
		mu 0 3 64 67 65
		f 3 53 -52 -38
		mu 0 3 68 69 70
		f 3 -48 -43 -54
		mu 0 3 68 71 69
		f 3 54 55 56
		mu 0 3 72 73 74
		f 3 57 58 -55
		mu 0 3 72 75 73
		f 3 59 60 61
		mu 0 3 76 77 78
		f 3 62 63 -60
		mu 0 3 76 79 77
		f 3 64 -62 65
		mu 0 3 80 81 82
		f 3 -59 66 -65
		mu 0 3 80 83 81
		f 3 67 -64 68
		mu 0 3 84 85 86
		f 3 -57 69 -68
		mu 0 3 87 88 89
		f 3 70 -69 -63
		mu 0 3 90 91 92
		f 3 -67 -58 -71
		mu 0 3 90 93 91
		f 3 71 -70 -56
		mu 0 3 94 95 96
		f 3 -66 -61 -72
		mu 0 3 97 98 99;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs";
	rename -uid "8B290173-4C34-66BE-3E34-6294DCF027FE";
	setAttr ".t" -type "double3" 0 -23.906202923047317 30.846874759559512 ;
	setAttr ".s" -type "double3" 1 1.0919730149511417 1.2065041136400896 ;
	setAttr ".rp" -type "double3" -1083.3100280761719 265.43000411987305 -652.77996826171875 ;
	setAttr ".sp" -type "double3" -1083.3100280761719 265.43000411987305 -652.77996826171875 ;
	setAttr ".spt" -type "double3" 0 1.0658141036401503e-14 1.4210854715202004e-14 ;
createNode mesh -n "StairsShape" -p "Stairs";
	rename -uid "7012374B-4404-3EB4-CF66-D7A6C765FB0D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 314 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" -4.51170015 0.0625 -4.074200153
		 0 -4.074200153 0.0625 -4.51170015 0 4.51170015 0 4.074200153 0.0625 4.074200153 0
		 4.51170015 0.0625 -0.40619999 0.031300001 -0.031199999 -0.40619999 -0.031199999 0.031300001
		 -0.40619999 -0.40619999 0.40630001 -0.40619999 0.031300001 0.031300001 0.031300001
		 -0.40619999 0.40630001 0.031300001 -3.69919991 0.0625 -3.69919991 0 3.69919991 0
		 3.69919991 0.0625 -4.074200153 0 -4.074200153 0.0625 -4.074200153 0 -4.41800022 0.125
		 -4.043000221 0.0625 -4.043000221 0.125 -4.41800022 0.0625 4.41800022 0.0625 4.043000221
		 0.125 4.043000221 0.0625 4.41800022 0.125 -0.375 0 0 -0.375 0 0 -0.375 -0.375 0.375
		 -0.375 0 0 0 -0.375 0.375 0 0 0 -4.10550022 0.0625 -3.73049998 0.125 -4.10550022
		 0.125 -3.73049998 0.0625 3.73049998 0.0625 4.10550022 0.125 3.73049998 0.125 4.10550022
		 0.0625 -4.32420015 0.1875 -4.011700153 0.125 -4.011700153 0.1875 -4.32420015 0.125
		 4.32420015 0.125 4.011700153 0.1875 4.011700153 0.125 4.32420015 0.1875 -0.34369999
		 -0.031199999 0.031300001 -0.34369999 0.031300001 -0.031199999 -0.34369999 -0.34369999
		 0.34380001 -0.34369999 -0.031300001 -0.031199999 -0.031300001 -0.34369999 0.34380001
		 -0.031199999 -4.13670015 0.125 -3.76169991 0.1875 -4.13670015 0.1875 -3.76169991
		 0.125 3.76169991 0.125 4.13670015 0.1875 3.76169991 0.1875 4.13670015 0.125 -4.23050022
		 0.25 -3.98049998 0.1875 -3.98049998 0.25 -4.23050022 0.1875 4.23050022 0.1875 3.98049998
		 0.25 3.98049998 0.1875 4.23050022 0.25 -0.3125 -0.0625 0.0625 -0.3125 0.0625 -0.0625
		 -0.3125 -0.3125 0.3125 -0.3125 -0.0625 -0.0625 -0.0625 -0.3125 0.3125 -0.0625 -4.16800022
		 0.1875 -3.79299998 0.25 -4.16800022 0.25 -3.79299998 0.1875 3.79299998 0.1875 4.16800022
		 0.25 3.79299998 0.25 4.16800022 0.1875 -4.13670015 0.3125 -3.94919991 0.25 -3.94919991
		 0.3125 -4.13670015 0.25 4.13670015 0.25 3.94919991 0.3125 3.94919991 0.25 4.13670015
		 0.3125 -0.28119999 -0.093699999 0.093800001 -0.28119999 0.093800001 -0.093699999
		 -0.28119999 -0.28119999 0.28130001 -0.28119999 -0.093800001 -0.093699999 -0.093800001
		 -0.28119999 0.28130001 -0.093699999 -4.19920015 0.25 -3.82419991 0.3125 -4.19920015
		 0.3125 -3.82419991 0.25 3.82419991 0.25 4.19920015 0.3125 3.82419991 0.3125 4.19920015
		 0.25 -4.043000221 0.375 -3.91799998 0.3125 -3.91799998 0.375 -4.043000221 0.3125
		 4.043000221 0.3125 3.91799998 0.375 3.91799998 0.3125 4.043000221 0.375 -0.25 -0.125
		 0.125 -0.25 0.125 -0.125 -0.25 -0.25 0.25 -0.25 -0.125 -0.125 -0.125 -0.25 0.25 -0.125
		 -4.23050022 0.3125 -3.85549998 0.375 -4.23050022 0.375 -3.85549998 0.3125 3.85549998
		 0.3125 4.23050022 0.375 3.85549998 0.375 4.23050022 0.3125 -3.94919991 0.4375 -3.88669991
		 0.375 -3.88669991 0.4375 -3.94919991 0.375 3.94919991 0.375 3.88669991 0.4375 3.88669991
		 0.375 3.94919991 0.4375 -0.21870001 -0.15620001 0.15629999 -0.21870001 0.15629999
		 -0.15620001 -0.21870001 -0.21870001 0.21879999 -0.21870001 -0.15629999 -0.15620001
		 -0.15629999 -0.21870001 0.21879999 -0.15620001 -4.26170015 0.375 -3.88669991 0.4375
		 -4.26170015 0.4375 -3.88669991 0.375 -3.88669991 0.4375 3.88669991 0.375 4.26170015
		 0.4375 3.88669991 0.4375 3.88669991 0.375 4.26170015 0.375 -4.51170015 0.0625 -4.074200153
		 0 -4.074200153 0.0625 -4.51170015 0 4.51170015 0 4.074200153 0.0625 4.074200153 0
		 4.51170015 0.0625 -0.40619999 0.031300001 -0.031199999 -0.40619999 -0.031199999 0.031300001
		 -0.40619999 -0.40619999 0.40630001 -0.40619999 0.031300001 0.031300001 0.031300001
		 -0.40619999 0.40630001 0.031300001 -4.074200153 0 -3.69919991 0.0625 -4.074200153
		 0.0625 -4.074200153 0 -3.69919991 0 3.69919991 0 3.69919991 0.0625 -4.41800022 0.125
		 -4.043000221 0.0625 -4.043000221 0.125 -4.41800022 0.0625 4.41800022 0.0625 4.043000221
		 0.125 4.043000221 0.0625 4.41800022 0.125 -0.375 0 0 -0.375 0 0 -0.375 -0.375 0.375
		 -0.375 0 0 0 -0.375 0.375 0 0 0 -4.10550022 0.0625 -3.73049998 0.125 -4.10550022
		 0.125 -3.73049998 0.0625 3.73049998 0.0625 4.10550022 0.125 3.73049998 0.125 4.10550022
		 0.0625 -4.32420015 0.1875 -4.011700153 0.125 -4.011700153 0.1875 -4.32420015 0.125
		 4.32420015 0.125 4.011700153 0.1875 4.011700153 0.125 4.32420015 0.1875 -0.34369999
		 -0.031199999 0.031300001 -0.34369999 0.031300001 -0.031199999 -0.34369999 -0.34369999
		 0.34380001 -0.34369999 -0.031300001 -0.031199999 -0.031300001 -0.34369999 0.34380001
		 -0.031199999 -4.13670015 0.125 -3.76169991 0.1875 -4.13670015 0.1875 -3.76169991
		 0.125 3.76169991 0.125 4.13670015 0.1875 3.76169991 0.1875 4.13670015 0.125 -4.23050022
		 0.25 -3.98049998 0.1875 -3.98049998 0.25 -4.23050022 0.1875 4.23050022 0.1875 3.98049998
		 0.25 3.98049998 0.1875 4.23050022 0.25;
	setAttr ".uvst[0].uvsp[250:313]" -0.3125 -0.0625 0.0625 -0.3125 0.0625 -0.0625
		 -0.3125 -0.3125 0.3125 -0.3125 -0.0625 -0.0625 -0.0625 -0.3125 0.3125 -0.0625 -4.16800022
		 0.1875 -3.79299998 0.25 -4.16800022 0.25 -3.79299998 0.1875 3.79299998 0.1875 4.16800022
		 0.25 3.79299998 0.25 4.16800022 0.1875 -4.13670015 0.3125 -3.57809997 0.25 -3.57809997
		 0.3125 -4.13670015 0.25 4.13670015 0.25 3.57809997 0.3125 3.57809997 0.25 4.13670015
		 0.3125 -0.28119999 0.2773 0.093800001 -0.28130001 0.093800001 0.2773 -0.28119999
		 -0.28130001 0.28130001 -0.28119999 -0.093800001 0.2773 -0.093800001 -0.28119999 0.28130001
		 0.2773 -4.19920015 0.25 -3.82419991 0.3125 -4.19920015 0.3125 -3.82419991 0.25 3.82419991
		 0.25 4.19920015 0.3125 3.82419991 0.3125 4.19920015 0.25 -9.91409969 1.11720002 -9.8828001
		 2.093699932 -9.91409969 2.093699932 -9.8828001 1.11720002 -9.8828001 0.031199999
		 -9.91409969 0.7852 -9.91409969 0.031199999 -9.8828001 0.7852 9.91409969 1.11720002
		 9.8828001 2.093699932 9.8828001 1.11720002 9.91409969 2.093699932 -1.11720002 0.7852
		 -2.093800068 0.031199999 -1.11720002 0.031199999 -2.093800068 0.7852 1.11720002 0.7852
		 2.093699932 0.031199999 2.093699932 0.7852 1.11720002 0.031199999 9.91409969 0.031199999
		 9.8828001 0.7852 9.8828001 0.031199999 9.91409969 0.7852;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 104 ".vt[0:103]"  -972.82000732 60.95999908 -269.23999023 -972.82000732 20.31999969 -553.7199707
		 -972.82000732 60.95999908 -553.7199707 -972.82000732 20.31999969 -269.23999023 -1216.66003418 20.31999969 -269.23999023
		 -1216.66003418 60.95999908 -553.7199707 -1216.66003418 20.31999969 -553.7199707 -1216.66003418 60.95999908 -269.23999023
		 -972.82000732 101.59999847 -309.88000488 -972.82000732 60.95999908 -553.7199707 -972.82000732 101.59999847 -553.7199707
		 -972.82000732 60.95999908 -309.88000488 -1216.66003418 60.95999908 -309.88000488
		 -1216.66003418 101.59999847 -553.7199707 -1216.66003418 60.95999908 -553.7199707
		 -1216.66003418 101.59999847 -309.88000488 -972.82000732 142.24000549 -350.51998901
		 -972.82000732 101.59999847 -553.7199707 -972.82000732 142.24000549 -553.7199707 -972.82000732 101.59999847 -350.51998901
		 -1216.66003418 101.59999847 -350.51998901 -1216.66003418 142.24000549 -553.7199707
		 -1216.66003418 101.59999847 -553.7199707 -1216.66003418 142.24000549 -350.51998901
		 -972.82000732 182.88000488 -391.16000366 -972.82000732 142.24000549 -553.7199707
		 -972.82000732 182.88000488 -553.7199707 -972.82000732 142.24000549 -391.16000366
		 -1216.66003418 142.24000549 -391.16000366 -1216.66003418 182.88000488 -553.7199707
		 -1216.66003418 142.24000549 -553.7199707 -1216.66003418 182.88000488 -391.16000366
		 -972.82000732 223.52000427 -431.79998779 -972.82000732 182.88000488 -553.7199707
		 -972.82000732 223.52000427 -553.7199707 -972.82000732 182.88000488 -431.79998779
		 -1216.66003418 182.88000488 -431.79998779 -1216.66003418 223.52000427 -553.7199707
		 -1216.66003418 182.88000488 -553.7199707 -1216.66003418 223.52000427 -431.79998779
		 -972.82000732 264.16000366 -472.44000244 -972.82000732 223.52000427 -553.7199707
		 -972.82000732 264.16000366 -553.7199707 -972.82000732 223.52000427 -472.44000244
		 -1216.66003418 223.52000427 -472.44000244 -1216.66003418 264.16000366 -553.7199707
		 -1216.66003418 223.52000427 -553.7199707 -1216.66003418 264.16000366 -472.44000244
		 -972.82000732 304.79998779 -513.08001709 -972.82000732 264.16000366 -553.7199707
		 -972.82000732 304.79998779 -553.7199707 -972.82000732 264.16000366 -513.08001709
		 -1216.66003418 264.16000366 -513.08001709 -1216.66003418 304.79998779 -553.7199707
		 -1216.66003418 264.16000366 -553.7199707 -1216.66003418 304.79998779 -513.08001709
		 -972.82000732 345.44000244 -510.54000854 -972.82000732 304.79998779 -795.020019531
		 -972.82000732 345.44000244 -795.020019531 -972.82000732 304.79998779 -510.54000854
		 -1216.66003418 304.79998779 -510.54000854 -1216.66003418 345.44000244 -795.020019531
		 -1216.66003418 304.79998779 -795.020019531 -1216.66003418 345.44000244 -510.54000854
		 -972.82000732 386.079986572 -551.17999268 -972.82000732 345.44000244 -795.020019531
		 -972.82000732 386.079986572 -795.020019531 -972.82000732 345.44000244 -551.17999268
		 -1216.66003418 345.44000244 -551.17999268 -1216.66003418 386.079986572 -795.020019531
		 -1216.66003418 345.44000244 -795.020019531 -1216.66003418 386.079986572 -551.17999268
		 -972.82000732 426.72000122 -591.82000732 -972.82000732 386.079986572 -795.020019531
		 -972.82000732 426.72000122 -795.020019531 -972.82000732 386.079986572 -591.82000732
		 -1216.66003418 386.079986572 -591.82000732 -1216.66003418 426.72000122 -795.020019531
		 -1216.66003418 386.079986572 -795.020019531 -1216.66003418 426.72000122 -591.82000732
		 -972.82000732 467.35998535 -632.46002197 -972.82000732 426.72000122 -795.020019531
		 -972.82000732 467.35998535 -795.020019531 -972.82000732 426.72000122 -632.46002197
		 -1216.66003418 426.72000122 -632.46002197 -1216.66003418 467.35998535 -795.020019531
		 -1216.66003418 426.72000122 -795.020019531 -1216.66003418 467.35998535 -632.46002197
		 -972.82000732 508 -673.099975586 -972.82000732 467.35998535 -1036.31994629 -972.82000732 508 -1036.31994629
		 -972.82000732 467.35998535 -673.099975586 -1216.66003418 467.35998535 -673.099975586
		 -1216.66003418 508 -1036.31994629 -1216.66003418 467.35998535 -1036.31994629 -1216.66003418 508 -673.099975586
		 -949.96002197 20.31999969 -401.32000732 -970.2800293 20.31999969 -1036.31994629 -949.96002197 20.31999969 -1036.31994629
		 -970.2800293 20.31999969 -401.32000732 -949.96002197 510.54000854 -1036.31994629
		 -970.2800293 510.54000854 -1036.31994629 -949.96002197 510.54000854 -401.32000732
		 -970.2800293 510.54000854 -401.32000732;
	setAttr -s 234 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 5 1 5 6 1 6 4 1 4 7 1
		 7 5 1 1 4 1 6 1 1 3 4 1 0 5 1 7 0 1 2 5 1 4 0 1 1 5 1 8 9 1 9 10 1 10 8 1 8 11 1
		 11 9 1 12 13 1 13 14 1 14 12 1 12 15 1 15 13 1 9 12 1 14 9 1 11 12 1 8 13 1 15 8 1
		 10 13 1 12 8 1 9 13 1 16 17 1 17 18 1 18 16 1 16 19 1 19 17 1 20 21 1 21 22 1 22 20 1
		 20 23 1 23 21 1 17 20 1 22 17 1 19 20 1 16 21 1 23 16 1 18 21 1 20 16 1 17 21 1 24 25 1
		 25 26 1 26 24 1 24 27 1 27 25 1 28 29 1 29 30 1 30 28 1 28 31 1 31 29 1 25 28 1 30 25 1
		 27 28 1 24 29 1 31 24 1 26 29 1 28 24 1 25 29 1 32 33 1 33 34 1 34 32 1 32 35 1 35 33 1
		 36 37 1 37 38 1 38 36 1 36 39 1 39 37 1 33 36 1 38 33 1 35 36 1 32 37 1 39 32 1 34 37 1
		 36 32 1 33 37 1 40 41 1 41 42 1 42 40 1 40 43 1 43 41 1 44 45 1 45 46 1 46 44 1 44 47 1
		 47 45 1 41 44 1 46 41 1 43 44 1 40 45 1 47 40 1 42 45 1 44 40 1 41 45 1 48 49 1 49 50 1
		 50 48 1 48 51 1 51 49 1 52 53 1 53 54 1 54 52 1 52 55 1 55 53 1 49 52 1 54 49 1 51 52 1
		 48 53 1 55 48 1 50 53 1 52 48 1 49 53 1 56 57 1 57 58 1 58 56 1 56 59 1 59 57 1 60 61 1
		 61 62 1 62 60 1 60 63 1 63 61 1 57 60 1 62 57 1 59 60 1 56 61 1 63 56 1 58 61 1 60 56 1
		 57 61 1 64 65 1 65 66 1 66 64 1 64 67 1 67 65 1 68 69 1 69 70 1 70 68 1 68 71 1 71 69 1
		 65 68 1 70 65 1 67 68 1 64 69 1 71 64 1 66 69 1 68 64 1 65 69 1 72 73 1 73 74 1 74 72 1
		 72 75 1;
	setAttr ".ed[166:233]" 75 73 1 76 77 1 77 78 1 78 76 1 76 79 1 79 77 1 73 76 1
		 78 73 1 75 76 1 72 77 1 79 72 1 74 77 1 76 72 1 73 77 1 80 81 1 81 82 1 82 80 1 80 83 1
		 83 81 1 84 85 1 85 86 1 86 84 1 84 87 1 87 85 1 81 84 1 86 81 1 83 84 1 80 85 1 87 80 1
		 82 85 1 84 80 1 81 85 1 88 89 1 89 90 1 90 88 1 88 91 1 91 89 1 92 93 1 93 94 1 94 92 1
		 92 95 1 95 93 1 89 92 1 94 89 1 91 92 1 88 93 1 95 88 1 90 93 1 92 88 1 89 93 1 96 97 1
		 97 98 1 98 96 1 96 99 1 99 97 1 97 100 1 100 98 1 97 101 1 101 100 1 102 101 1 101 103 1
		 103 102 1 102 100 1 103 97 1 99 103 1 102 98 1 102 96 1 96 103 1;
	setAttr -s 156 -ch 468 ".fc[0:155]" -type "polyFaces" 
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
		mu 0 3 18 6 5
		f 3 18 19 20
		mu 0 3 23 24 25
		f 3 21 22 -19
		mu 0 3 23 26 24
		f 3 23 24 25
		mu 0 3 27 28 29
		f 3 26 27 -24
		mu 0 3 27 30 28
		f 3 28 -26 29
		mu 0 3 31 32 33
		f 3 -23 30 -29
		mu 0 3 31 34 32
		f 3 31 -28 32
		mu 0 3 35 36 37
		f 3 -21 33 -32
		mu 0 3 35 38 39
		f 3 34 -33 -27
		mu 0 3 40 41 42
		f 3 -31 -22 -35
		mu 0 3 40 43 41
		f 3 35 -34 -20
		mu 0 3 44 45 46
		f 3 -30 -25 -36
		mu 0 3 44 47 45
		f 3 36 37 38
		mu 0 3 48 49 50
		f 3 39 40 -37
		mu 0 3 48 51 49
		f 3 41 42 43
		mu 0 3 52 53 54
		f 3 44 45 -42
		mu 0 3 52 55 53
		f 3 46 -44 47
		mu 0 3 56 57 58
		f 3 -41 48 -47
		mu 0 3 56 59 57
		f 3 49 -46 50
		mu 0 3 60 61 62
		f 3 -39 51 -50
		mu 0 3 60 63 61
		f 3 52 -51 -45
		mu 0 3 64 65 66
		f 3 -49 -40 -53
		mu 0 3 64 67 65
		f 3 53 -52 -38
		mu 0 3 68 69 70
		f 3 -48 -43 -54
		mu 0 3 68 71 69
		f 3 54 55 56
		mu 0 3 72 73 74
		f 3 57 58 -55
		mu 0 3 72 75 73
		f 3 59 60 61
		mu 0 3 76 77 78
		f 3 62 63 -60
		mu 0 3 76 79 77
		f 3 64 -62 65
		mu 0 3 80 81 82
		f 3 -59 66 -65
		mu 0 3 80 83 81
		f 3 67 -64 68
		mu 0 3 84 85 86
		f 3 -57 69 -68
		mu 0 3 84 87 85
		f 3 70 -69 -63
		mu 0 3 88 89 90
		f 3 -67 -58 -71
		mu 0 3 88 91 89
		f 3 71 -70 -56
		mu 0 3 92 93 94
		f 3 -66 -61 -72
		mu 0 3 92 95 93
		f 3 72 73 74
		mu 0 3 96 97 98
		f 3 75 76 -73
		mu 0 3 96 99 97
		f 3 77 78 79
		mu 0 3 100 101 102
		f 3 80 81 -78
		mu 0 3 100 103 101
		f 3 82 -80 83
		mu 0 3 104 105 106
		f 3 -77 84 -83
		mu 0 3 104 107 105
		f 3 85 -82 86
		mu 0 3 108 109 110
		f 3 -75 87 -86
		mu 0 3 108 111 109
		f 3 88 -87 -81
		mu 0 3 112 113 114
		f 3 -85 -76 -89
		mu 0 3 112 115 113
		f 3 89 -88 -74
		mu 0 3 116 117 118
		f 3 -84 -79 -90
		mu 0 3 116 119 117
		f 3 90 91 92
		mu 0 3 120 121 122
		f 3 93 94 -91
		mu 0 3 120 123 121
		f 3 95 96 97
		mu 0 3 124 125 126
		f 3 98 99 -96
		mu 0 3 124 127 125
		f 3 100 -98 101
		mu 0 3 128 129 130
		f 3 -95 102 -101
		mu 0 3 128 131 129
		f 3 103 -100 104
		mu 0 3 132 133 134
		f 3 -93 105 -104
		mu 0 3 132 135 133
		f 3 106 -105 -99
		mu 0 3 136 137 138
		f 3 -103 -94 -107
		mu 0 3 136 139 137
		f 3 107 -106 -92
		mu 0 3 140 141 142
		f 3 -102 -97 -108
		mu 0 3 140 143 141
		f 3 108 109 110
		mu 0 3 144 145 146
		f 3 111 112 -109
		mu 0 3 144 147 145
		f 3 113 114 115
		mu 0 3 148 149 150
		f 3 116 117 -114
		mu 0 3 148 151 149
		f 3 118 -116 119
		mu 0 3 152 153 154
		f 3 -113 120 -119
		mu 0 3 152 155 153
		f 3 121 -118 122
		mu 0 3 156 157 158
		f 3 -111 123 -122
		mu 0 3 156 159 157
		f 3 124 -123 -117
		mu 0 3 160 161 162
		f 3 -121 -112 -125
		mu 0 3 160 163 164
		f 3 125 -124 -110
		mu 0 3 165 166 167
		f 3 -120 -115 -126
		mu 0 3 168 169 166
		f 3 126 127 128
		mu 0 3 170 171 172
		f 3 129 130 -127
		mu 0 3 170 173 171
		f 3 131 132 133
		mu 0 3 174 175 176
		f 3 134 135 -132
		mu 0 3 174 177 175
		f 3 136 -134 137
		mu 0 3 178 179 180
		f 3 -131 138 -137
		mu 0 3 178 181 179
		f 3 139 -136 140
		mu 0 3 182 183 184
		f 3 -129 141 -140
		mu 0 3 182 185 183
		f 3 142 -141 -135
		mu 0 3 186 187 188
		f 3 -139 -130 -143
		mu 0 3 189 190 187
		f 3 143 -142 -128
		mu 0 3 191 175 192
		f 3 -138 -133 -144
		mu 0 3 191 176 175
		f 3 144 145 146
		mu 0 3 193 194 195
		f 3 147 148 -145
		mu 0 3 193 196 194
		f 3 149 150 151
		mu 0 3 197 198 199
		f 3 152 153 -150
		mu 0 3 197 200 198
		f 3 154 -152 155
		mu 0 3 201 202 203
		f 3 -149 156 -155
		mu 0 3 201 204 202
		f 3 157 -154 158
		mu 0 3 205 206 207
		f 3 -147 159 -158
		mu 0 3 205 208 209
		f 3 160 -159 -153
		mu 0 3 210 211 212
		f 3 -157 -148 -161
		mu 0 3 210 213 211
		f 3 161 -160 -146
		mu 0 3 214 215 216
		f 3 -156 -151 -162
		mu 0 3 214 217 215
		f 3 162 163 164
		mu 0 3 218 219 220
		f 3 165 166 -163
		mu 0 3 218 221 219
		f 3 167 168 169
		mu 0 3 222 223 224
		f 3 170 171 -168
		mu 0 3 222 225 223
		f 3 172 -170 173
		mu 0 3 226 227 228
		f 3 -167 174 -173
		mu 0 3 226 229 227
		f 3 175 -172 176
		mu 0 3 230 231 232
		f 3 -165 177 -176
		mu 0 3 230 233 231
		f 3 178 -177 -171
		mu 0 3 234 235 236
		f 3 -175 -166 -179
		mu 0 3 234 237 235
		f 3 179 -178 -164
		mu 0 3 238 239 240
		f 3 -174 -169 -180
		mu 0 3 238 241 239
		f 3 180 181 182
		mu 0 3 242 243 244
		f 3 183 184 -181
		mu 0 3 242 245 243
		f 3 185 186 187
		mu 0 3 246 247 248
		f 3 188 189 -186
		mu 0 3 246 249 247
		f 3 190 -188 191
		mu 0 3 250 251 252
		f 3 -185 192 -191
		mu 0 3 250 253 251
		f 3 193 -190 194
		mu 0 3 254 255 256
		f 3 -183 195 -194
		mu 0 3 254 257 255
		f 3 196 -195 -189
		mu 0 3 258 259 260
		f 3 -193 -184 -197
		mu 0 3 258 261 259
		f 3 197 -196 -182
		mu 0 3 262 263 264
		f 3 -192 -187 -198
		mu 0 3 262 265 263
		f 3 198 199 200
		mu 0 3 266 267 268
		f 3 201 202 -199
		mu 0 3 266 269 267
		f 3 203 204 205
		mu 0 3 270 271 272
		f 3 206 207 -204
		mu 0 3 270 273 271
		f 3 208 -206 209
		mu 0 3 274 275 276
		f 3 -203 210 -209
		mu 0 3 274 277 275
		f 3 211 -208 212
		mu 0 3 278 279 280
		f 3 -201 213 -212
		mu 0 3 278 281 279
		f 3 214 -213 -207
		mu 0 3 282 283 284
		f 3 -211 -202 -215
		mu 0 3 282 285 283
		f 3 215 -214 -200
		mu 0 3 286 287 288
		f 3 -210 -205 -216
		mu 0 3 286 289 287
		f 3 216 217 218
		mu 0 3 290 291 292
		f 3 219 220 -217
		mu 0 3 290 293 291
		f 3 221 222 -218
		mu 0 3 294 295 296
		f 3 223 224 -222
		mu 0 3 294 297 295
		f 3 225 226 227
		mu 0 3 298 299 300
		f 3 228 -225 -226
		mu 0 3 298 301 299
		f 3 229 -221 230
		mu 0 3 302 303 304
		f 3 -227 -224 -230
		mu 0 3 302 305 303
		f 3 231 -223 -229
		mu 0 3 306 307 308
		f 3 232 -219 -232
		mu 0 3 306 309 307
		f 3 233 -231 -220
		mu 0 3 310 311 312
		f 3 -233 -228 -234
		mu 0 3 310 313 311;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Hearth";
	rename -uid "062B6B62-4C5B-DC7F-5581-689EFAD7488B";
	setAttr ".t" -type "double3" 2165.3950740739165 0 4.2632564145606005e-14 ;
	setAttr ".r" -type "double3" 0 -180 0 ;
	setAttr ".rp" -type "double3" -1149.3499755859375 90.170000553131104 81.280002593994141 ;
	setAttr ".sp" -type "double3" -1149.3499755859375 90.170000553131104 81.280002593994141 ;
createNode mesh -n "HearthShape" -p "Hearth";
	rename -uid "55B8E220-4603-D01B-FFDE-8EA70C3F2D19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 288 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" -16.39179993 3.8513 -16.41589928
		 3.80579996 -16.39459991 3.80579996 -16.41270065 3.86789989 16.41270065 3.86789989
		 16.39459991 3.80579996 16.41589928 3.80579996 16.39179993 3.8513 -52.074901581 2.73379993
		 -52.18230057 2.6882 -52.074901581 2.6882 -52.18230057 2.73379993 -29.74370003 -6.91540003
		 -29.85110092 -6.93669987 -29.74370003 -6.93669987 -29.85110092 -6.91540003 52.074901581
		 2.8671 52.18230057 2.92930007 52.074901581 2.92930007 52.18230057 2.8671 -16.36590004
		 3.89510012 -16.39509964 3.86789989 -16.37409973 3.8513 -16.38559914 3.92750001 16.38559914
		 3.92750001 16.37409973 3.8513 16.39509964 3.86789989 16.36590004 3.89510012 -52.06880188
		 0.40560001 -52.17620087 0.361 -52.06880188 0.361 -52.17620087 0.40560001 52.068698883
		 0.93279999 52.17620087 0.9932 52.068698883 0.9932 52.17620087 0.93279999 -16.31719971
		 3.93540001 -16.35040092 3.92750001 -16.33069992 3.89510012 -16.33499908 3.98250008
		 16.33499908 3.98250008 16.33069992 3.89510012 16.35040092 3.92750001 16.31719971
		 3.93540001 -52.056499481 -2.11919999 -52.16389847 -2.16170001 -52.056499481 -2.16170001
		 -52.16389847 -2.11919999 52.056499481 -1.21340001 52.16389847 -1.15629995 52.056499481
		 -1.15629995 52.16389847 -1.21340001 -16.24769974 3.97070003 -16.28359985 3.98250008
		 -16.26580048 3.93540001 -16.26280022 4.030700207 16.26280022 4.030700207 16.26580048
		 3.93540001 16.28359985 3.98250008 16.24769974 3.97070003 -52.038600922 -4.83920002
		 -52.14599991 -4.87890005 -52.038600922 -4.87890005 -52.14599991 -4.83920002 52.038600922
		 -3.63980007 52.14599991 -3.58739996 52.038600922 -3.58739996 52.14599991 -3.63980007
		 -16.15999985 3.99979997 -16.19709969 4.030700207 -16.18199921 3.97070003 -16.17180061
		 4.070300102 16.17180061 4.070300102 16.18199921 3.97070003 16.19709969 4.030700207
		 16.15999985 3.99979997 -52.81290054 -5.46099997 -52.92029953 -5.49739981 -52.81290054
		 -5.49739981 -52.92029953 -5.46099997 52.015800476 -6.40269995 52.12319946 -6.35580015
		 52.015800476 -6.35580015 52.12319946 -6.40280008 -16.05739975 4.021299839 -16.094499588
		 4.070300102 -16.08259964 3.99979997 -16.065599442 4.099699974 16.065599442 4.099699974
		 16.08259964 3.99979997 16.094499588 4.070300102 16.05739975 4.021299839 -57.27080154
		 7.51380014 -57.37820053 7.48059988 -57.27080154 7.48059988 -57.37820053 7.51380014
		 49.47359848 -8.43430042 49.58100128 -8.39309978 49.47359848 -8.39309978 49.58100128
		 -8.43430042 -15.94400024 4.034599781 -15.97949982 4.099699974 -15.97130013 4.021299839
		 -15.94820023 4.11780024 15.94820023 4.11780024 15.97130013 4.021299839 15.97949982
		 4.099699974 15.94400024 4.034599781 -59.36729813 7.14559984 -59.47470093 7.11530018
		 -59.36729813 7.11530018 -59.47470093 7.14559984 32.033500671 -5.78830004 32.14089966
		 -5.75209999 32.033500671 -5.75209999 32.14089966 -5.78830004 -15.82400036 4.03910017
		 -15.85659981 4.11780024 -15.85239983 4.034599781 -15.82400036 4.12389994 15.82400036
		 4.12389994 15.85239983 4.034599781 15.85659981 4.11780024 15.82400036 4.03910017
		 -60.8103981 6.75519991 -60.9178009 6.7263999 -60.8103981 6.7263999 -60.9178009 6.75519991
		 30.010900497 -6.34420013 30.11829948 -6.31110001 30.010900497 -6.31110001 30.11829948
		 -6.34420013 -15.69569969 4.034599781 -15.72410011 4.12389994 -15.72410011 4.03910017
		 -15.69159985 4.11780024 15.69159985 4.11780024 15.72410011 4.03910017 15.72410011
		 4.12389994 15.69569969 4.034599781 -61.0083007813 6.39650011 -61.11569977 6.36780024
		 -61.0083007813 6.36780024 -61.11569977 6.39650011 29.62280083 -6.88590002 29.73019981
		 -6.85279989 29.62280083 -6.85279989 29.73019981 -6.88590002 -15.57689953 4.021299839
		 -15.60000038 4.11780024 -15.60420036 4.034599781 -15.56869984 4.099699974 15.56869984
		 4.099699974 15.60420036 4.034599781 15.60000038 4.11780024 15.57689953 4.021299839
		 -59.97290039 6.067599773 -60.080299377 6.037199974 -59.97290039 6.037199974 -60.080299377
		 6.067599773 30.89529991 -7.3671999 31.0027008057 -7.33109999 30.89529991 -7.33109999
		 31.0027008057 -7.3671999 -15.46560001 3.99979997 -15.48260021 4.099699974 -15.49069977
		 4.021299839 -15.45370007 4.070300102 15.45370007 4.070300102 15.49069977 4.021299839
		 15.48260021 4.099699974 15.46560001 3.99979997 -58.14049911 5.6500001 -58.2478981
		 5.61689997 -58.14049911 5.61689997 -58.2478981 5.6500001 50.38560104 7.9124999 50.27819824
		 7.87130022 50.38560104 7.87130022 50.27819824 7.9124999 -15.36610031 3.97070003 -15.37629986
		 4.070300102 -15.38819981 3.99979997 -15.35099983 4.030700207 15.35099983 4.030700207
		 15.38819981 3.99979997 15.37629986 4.070300102 15.36610031 3.97070003 -57.22240067
		 7.93529987 -57.11489868 7.97170019 -57.22240067 7.97170019 -57.11489868 7.93529987
		 53.55360031 9.22560024 53.44609833 9.17860031 53.55360031 9.17860031 53.44609833
		 9.22560024 -15.28240013 3.93540001 -15.28540039 4.030700207 -15.30049992 3.97070003
		 -15.2645998 3.98250008 15.2645998 3.98250008 15.30049992 3.97070003 15.28540039 4.030700207
		 15.28240013 3.93540001 51.78070068 10.33259964 51.88819885 10.37230015 51.78070068
		 10.37230015 51.88819885 10.33259964 -51.78079987 9.68540001 -51.88819885 9.63290024
		 -51.78079987 9.63290024 -51.88819885 9.68540001 -15.21749973 3.89510012 -15.21319962
		 3.98250008 -15.23099995 3.93540001 -15.19779968 3.92750001 15.19779968 3.92750001
		 15.23099995 3.93540001 15.21319962 3.98250008 15.21749973 3.89510012 51.76290131
		 8.52439976 51.87030029 8.56690025 51.76290131 8.56690025 51.87030029 8.52439976 -51.76290131
		 7.99490023 -51.87030029 7.93779993 -51.76290131 7.93779993 -51.87030029 7.99490023
		 -15.16769981 3.8513 -15.15620041 3.92750001 -15.17599964 3.89510012 -15.14260006
		 3.8736999 15.14260006 3.8736999 15.17599964 3.89510012 15.15620041 3.92750001 15.16769981
		 3.8513 51.74840164 6.69220018 51.85580063 6.73670006 51.74840164 6.73670006 51.85580063
		 6.69220018 -51.74840164 7.5953002 -51.85580063 7.53980017 -51.74840164 7.53980017
		 -51.85580063 7.5953002 -15.15219975 3.80579996 -15.12989998 3.8736999 -15.15499973
		 3.8513 -15.12989998 3.80579996 15.12989998 3.80579996 15.15499973 3.8513;
	setAttr ".uvst[0].uvsp[250:287]" 15.12989998 3.8736999 15.15219975 3.80579996
		 51.74399948 4.78560019 51.85139847 4.83120012 51.74399948 4.83120012 51.85139847
		 4.78560019 -51.74399948 3.8736999 -51.85139847 3.80579996 -51.74399948 3.80579996
		 -51.85139847 3.8736999 -29.41279984 -6.27110004 -29.52020073 -6.29339981 -29.41279984
		 -6.29339981 -29.52020073 -6.27110004 4.21150017 -0.38280001 4.65789986 -0.44530001
		 4.65789986 -0.38280001 4.21150017 -0.44530001 -11.25979996 -1.93159997 -11.17770004
		 -2.24410009 -11.17770004 -1.93159997 -11.25979996 -2.24410009 11.25979996 -2.24410009
		 11.17770004 -1.93159997 11.17770004 -2.24410009 11.25979996 -1.93159997 -3.34179997
		 -0.1953 -3.42379999 -0.22660001 -3.34179997 -0.22660001 -3.42379999 -0.1953 3.34179997
		 -0.1953 3.42379999 -0.22660001 3.42379999 -0.1953 3.34179997 -0.22660001 5.78849983
		 -1.28149998 5.34210014 -1.23619998 5.34210014 -1.28149998 5.78849983 -1.23619998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 136 ".vt[0:135]"  -1122.67993164 48.65319824 141.40029907 -1122.67993164 27.94000053 152.3999939
		 -1122.67993164 27.94000053 142.67359924 -1122.67993164 56.18510056 150.94030762 -1171.57495117 56.18510056 150.94030762
		 -1171.57495117 27.94000053 142.67359924 -1171.57495117 27.94000053 152.3999939 -1171.57495117 48.65319824 141.40029907
		 -1122.67993164 68.57009888 137.63020325 -1122.67993164 56.18510056 150.94030762 -1122.67993164 48.65319824 141.40100098
		 -1122.67993164 83.34480286 146.61560059 -1171.57495117 83.34480286 146.61560059 -1171.57495117 48.65319824 141.40100098
		 -1171.57495117 56.18510056 150.94030762 -1171.57495117 68.57009888 137.63020325 -1122.67993164 86.92590332 131.50650024
		 -1122.67993164 83.34500122 146.61560059 -1122.67993164 68.57009888 137.63020325 -1122.67993164 108.37550354 139.5933075
		 -1171.57495117 108.37550354 139.59460449 -1171.57495117 68.57009888 137.63020325
		 -1171.57495117 83.34500122 146.61619568 -1171.57495117 86.92590332 131.50700378 -1122.67993164 103.01499939 123.2661972
		 -1122.67993164 108.37550354 139.59410095 -1122.67993164 86.92590332 131.50700378
		 -1122.67993164 130.31500244 130.14399719 -1171.57495117 130.31500244 130.14399719
		 -1171.57495117 86.92590332 131.50700378 -1171.57495117 108.37550354 139.59410095
		 -1171.57495117 103.01499939 123.2661972 -1122.67993164 116.21869659 113.22480011
		 -1122.67993164 130.31500244 130.14399719 -1122.67993164 103.01499939 123.26570129
		 -1122.67993164 148.32029724 118.62840271 -1171.57495117 148.32029724 118.62889862
		 -1171.57495117 103.01499939 123.2661972 -1171.57495117 130.31500244 130.14399719
		 -1171.57495117 116.21869659 113.22480011 -1122.67993164 126.029998779 101.76940155
		 -1122.67993164 148.32029724 118.62889862 -1122.67993164 116.21869659 113.22480011
		 -1122.67993164 161.69920349 105.49130249 -1171.57495117 161.69920349 105.4917984
		 -1171.57495117 116.21869659 113.22480011 -1171.57495117 148.32029724 118.62889862
		 -1171.57495117 126.029998779 101.76940155 -1122.67993164 132.071899414 89.33969879
		 -1122.67993164 161.69920349 105.4917984 -1122.67993164 126.029998779 101.76989746
		 -1122.67993164 169.9382019 91.23729706 -1171.57495117 169.9382019 91.23729706 -1171.57495117 126.029998779 101.76989746
		 -1171.57495117 161.69920349 105.49259949 -1171.57495117 132.071899414 89.34020233
		 -1122.67993164 134.11199951 76.41259766 -1122.67993164 169.93789673 91.23600006 -1122.67993164 132.071899414 89.33840179
		 -1122.67993164 172.72000122 76.41259766 -1171.57495117 172.72000122 76.41259766 -1171.57495117 132.071899414 89.33969879
		 -1171.57495117 169.93789673 91.23600006 -1171.57495117 134.11199951 76.41259766 -1122.67993164 132.071899414 63.48500061
		 -1122.67993164 172.72000122 76.41210175 -1122.67993164 134.11199951 76.41210175 -1122.67993164 169.93789673 61.58890152
		 -1171.57495117 169.93789673 61.58890152 -1171.57495117 134.11199951 76.41210175 -1171.57495117 172.72000122 76.41210175
		 -1171.57495117 132.071899414 63.48630142 -1122.67993164 126.029998779 51.055500031
		 -1122.67993164 169.9382019 61.58810043 -1122.67993164 132.071899414 63.48500061 -1122.67993164 161.69920349 47.332901
		 -1171.57495117 161.69920349 47.33369827 -1171.57495117 132.071899414 63.4858017 -1171.57495117 169.9382019 61.58810043
		 -1171.57495117 126.029998779 51.055500031 -1122.67993164 116.21869659 39.60010147
		 -1122.67993164 161.69920349 47.332901 -1122.67993164 126.029998779 51.055999756 -1122.67993164 148.32029724 34.19630051
		 -1171.57495117 148.32029724 34.19630051 -1171.57495117 126.029998779 51.055999756
		 -1171.57495117 161.69920349 47.33420181 -1171.57495117 116.21869659 39.60010147 -1122.67993164 103.01499939 29.55850029
		 -1122.67993164 148.32029724 34.19630051 -1122.67993164 116.21869659 39.60010147 -1122.67993164 130.31500244 22.6807003
		 -1171.57495117 130.31500244 22.6807003 -1171.57495117 116.21869659 39.60010147 -1171.57495117 148.32029724 34.19630051
		 -1171.57495117 103.01499939 29.55920029 -1122.67993164 86.92590332 21.31850052 -1122.67993164 130.31500244 22.6814003
		 -1122.67993164 103.01499939 29.55920029 -1122.67993164 108.37550354 13.23139954 -1171.57495117 108.37550354 13.23139954
		 -1171.57495117 103.01499939 29.55920029 -1171.57495117 130.31500244 22.6814003 -1171.57495117 86.92590332 21.31850052
		 -1122.67993164 68.57009888 15.1953001 -1122.67993164 108.37550354 13.23089981 -1122.67993164 86.92620087 21.31850052
		 -1122.67993164 83.34500122 6.20930004 -1171.57495117 83.34500122 6.20979977 -1171.57495117 86.92620087 21.31900024
		 -1171.57495117 108.37550354 13.23209953 -1171.57495117 68.57009888 15.1953001 -1122.67993164 48.65319824 11.42490005
		 -1122.67993164 83.34480286 6.20930004 -1122.67993164 68.57009888 15.1953001 -1122.67993164 58.85380173 0
		 -1171.57495117 58.85380173 0 -1171.57495117 68.57009888 15.1953001 -1171.57495117 83.34480286 6.20930004
		 -1171.57495117 48.65319824 11.42490005 -1122.67993164 27.94000053 10.15060043 -1122.67993164 58.85380173 -0.00050000002
		 -1122.67993164 48.65319824 11.42440033 -1122.67993164 27.94000053 -0.00050000002
		 -1171.57495117 27.94000053 -0.00050000002 -1171.57495117 48.65319824 11.42440033
		 -1171.57495117 58.85380173 -0.00050000002 -1171.57495117 27.94000053 10.15060043
		 -1176.020019531 27.94000053 -20.31999969 -1176.020019531 7.61999989 182.88000488
		 -1176.020019531 27.94000053 182.88000488 -1176.020019531 7.61999989 -20.31999969
		 -1122.67993164 7.61999989 -20.31999969 -1122.67993164 7.61999989 182.88000488 -1122.67993164 27.94000053 182.88000488
		 -1122.67993164 27.94000053 -20.31999969;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 0 1 0 3 0 3 1 1 4 5 1 5 6 1 6 4 1 4 7 0
		 7 5 1 7 2 1 2 5 1 7 0 0 5 1 1 1 6 1 6 3 1 3 4 0 8 9 1 9 10 0 10 8 1 8 11 0 11 9 1
		 12 13 1 13 14 0 14 12 1 12 15 0 15 13 1 15 10 1 10 13 0 15 8 0 14 11 1 11 12 0 14 9 0
		 16 17 1 17 18 0 18 16 1 16 19 0 19 17 1 20 21 1 21 22 0 22 20 1 20 23 0 23 21 1 23 18 1
		 18 21 0 23 16 0 22 19 1 19 20 0 22 17 0 24 25 1 25 26 0 26 24 1 24 27 0 27 25 1 28 29 1
		 29 30 0 30 28 1 28 31 0 31 29 1 31 26 1 26 29 0 31 24 0 30 27 1 27 28 0 30 25 0 32 33 1
		 33 34 0 34 32 1 32 35 0 35 33 1 36 37 1 37 38 0 38 36 1 36 39 0 39 37 1 39 34 1 34 37 0
		 39 32 0 38 35 1 35 36 0 38 33 0 40 41 1 41 42 0 42 40 1 40 43 0 43 41 1 44 45 1 45 46 0
		 46 44 1 44 47 0 47 45 1 47 42 1 42 45 0 47 40 0 46 43 1 43 44 0 46 41 0 48 49 1 49 50 0
		 50 48 1 48 51 0 51 49 1 52 53 1 53 54 0 54 52 1 52 55 0 55 53 1 55 50 1 50 53 0 55 48 0
		 54 51 1 51 52 0 54 49 0 56 57 1 57 58 0 58 56 1 56 59 0 59 57 1 60 61 1 61 62 0 62 60 1
		 60 63 0 63 61 1 63 58 1 58 61 0 63 56 0 62 59 1 59 60 0 62 57 0 64 65 1 65 66 0 66 64 1
		 64 67 0 67 65 1 68 69 1 69 70 0 70 68 1 68 71 0 71 69 1 71 66 1 66 69 0 71 64 0 70 67 1
		 67 68 0 70 65 0 72 73 1 73 74 0 74 72 1 72 75 0 75 73 1 76 77 1 77 78 0 78 76 1 76 79 0
		 79 77 1 79 74 1 74 77 0 79 72 0 78 75 1 75 76 0 78 73 0 80 81 1 81 82 0 82 80 1 80 83 0
		 83 81 1;
	setAttr ".ed[166:275]" 84 85 1 85 86 0 86 84 1 84 87 0 87 85 1 87 82 1 82 85 0
		 87 80 0 86 83 1 83 84 0 86 81 0 88 89 1 89 90 0 90 88 1 88 91 0 91 89 1 92 93 1 93 94 0
		 94 92 1 92 95 0 95 93 1 95 90 1 90 93 0 95 88 0 94 91 1 91 92 0 94 89 0 96 97 1 97 98 0
		 98 96 1 96 99 0 99 97 1 100 101 1 101 102 0 102 100 1 100 103 0 103 101 1 103 98 1
		 98 101 0 103 96 0 102 99 1 99 100 0 102 97 0 104 105 1 105 106 0 106 104 1 104 107 0
		 107 105 1 108 109 1 109 110 0 110 108 1 108 111 0 111 109 1 111 106 1 106 109 0 111 104 0
		 110 107 1 107 108 0 110 105 0 112 113 1 113 114 0 114 112 1 112 115 0 115 113 1 116 117 1
		 117 118 0 118 116 1 116 119 0 119 117 1 119 114 1 114 117 0 119 112 0 118 115 1 115 116 0
		 118 113 0 120 121 1 121 122 0 122 120 1 120 123 1 123 121 1 124 125 1 125 126 0 126 124 1
		 124 127 1 127 125 1 127 122 1 122 125 0 127 120 1 126 123 1 123 124 1 126 121 0 124 120 1
		 128 129 1 129 130 1 130 128 1 128 131 1 131 129 1 132 129 1 131 132 1 132 133 1 133 129 1
		 134 128 1 130 134 1 134 135 1 135 128 1 134 129 1 133 134 1 135 131 1 135 132 1 132 134 1;
	setAttr -s 144 -ch 432 ".fc[0:143]" -type "polyFaces" 
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
		mu 0 3 16 19 17
		f 3 17 18 19
		mu 0 3 20 21 22
		f 3 20 21 -18
		mu 0 3 20 23 21
		f 3 22 23 24
		mu 0 3 24 25 26
		f 3 25 26 -23
		mu 0 3 24 27 25
		f 3 27 28 -27
		mu 0 3 28 29 30
		f 3 29 -20 -28
		mu 0 3 28 31 29
		f 3 30 31 -25
		mu 0 3 32 33 34
		f 3 32 -22 -31
		mu 0 3 32 35 33
		f 3 33 34 35
		mu 0 3 36 37 38
		f 3 36 37 -34
		mu 0 3 36 39 37
		f 3 38 39 40
		mu 0 3 40 41 42
		f 3 41 42 -39
		mu 0 3 40 43 41
		f 3 43 44 -43
		mu 0 3 44 45 46
		f 3 45 -36 -44
		mu 0 3 44 47 45
		f 3 46 47 -41
		mu 0 3 48 49 50
		f 3 48 -38 -47
		mu 0 3 48 51 49
		f 3 49 50 51
		mu 0 3 52 53 54
		f 3 52 53 -50
		mu 0 3 52 55 53
		f 3 54 55 56
		mu 0 3 56 57 58
		f 3 57 58 -55
		mu 0 3 56 59 57
		f 3 59 60 -59
		mu 0 3 60 61 62
		f 3 61 -52 -60
		mu 0 3 60 63 61
		f 3 62 63 -57
		mu 0 3 64 65 66
		f 3 64 -54 -63
		mu 0 3 64 67 65
		f 3 65 66 67
		mu 0 3 68 69 70
		f 3 68 69 -66
		mu 0 3 68 71 69
		f 3 70 71 72
		mu 0 3 72 73 74
		f 3 73 74 -71
		mu 0 3 72 75 73
		f 3 75 76 -75
		mu 0 3 76 77 78
		f 3 77 -68 -76
		mu 0 3 76 79 77
		f 3 78 79 -73
		mu 0 3 80 81 82
		f 3 80 -70 -79
		mu 0 3 80 83 81
		f 3 81 82 83
		mu 0 3 84 85 86
		f 3 84 85 -82
		mu 0 3 84 87 85
		f 3 86 87 88
		mu 0 3 88 89 90
		f 3 89 90 -87
		mu 0 3 88 91 89
		f 3 91 92 -91
		mu 0 3 92 93 94
		f 3 93 -84 -92
		mu 0 3 92 95 93
		f 3 94 95 -89
		mu 0 3 96 97 98
		f 3 96 -86 -95
		mu 0 3 96 99 97
		f 3 97 98 99
		mu 0 3 100 101 102
		f 3 100 101 -98
		mu 0 3 100 103 101
		f 3 102 103 104
		mu 0 3 104 105 106
		f 3 105 106 -103
		mu 0 3 104 107 105
		f 3 107 108 -107
		mu 0 3 108 109 110
		f 3 109 -100 -108
		mu 0 3 108 111 109
		f 3 110 111 -105
		mu 0 3 112 113 114
		f 3 112 -102 -111
		mu 0 3 112 115 113
		f 3 113 114 115
		mu 0 3 116 117 118
		f 3 116 117 -114
		mu 0 3 116 119 117
		f 3 118 119 120
		mu 0 3 120 121 122
		f 3 121 122 -119
		mu 0 3 120 123 121
		f 3 123 124 -123
		mu 0 3 124 125 126
		f 3 125 -116 -124
		mu 0 3 124 127 125
		f 3 126 127 -121
		mu 0 3 128 129 130
		f 3 128 -118 -127
		mu 0 3 128 131 129
		f 3 129 130 131
		mu 0 3 132 133 134
		f 3 132 133 -130
		mu 0 3 132 135 133
		f 3 134 135 136
		mu 0 3 136 137 138
		f 3 137 138 -135
		mu 0 3 136 139 137
		f 3 139 140 -139
		mu 0 3 140 141 142
		f 3 141 -132 -140
		mu 0 3 140 143 141
		f 3 142 143 -137
		mu 0 3 144 145 146
		f 3 144 -134 -143
		mu 0 3 144 147 145
		f 3 145 146 147
		mu 0 3 148 149 150
		f 3 148 149 -146
		mu 0 3 148 151 149
		f 3 150 151 152
		mu 0 3 152 153 154
		f 3 153 154 -151
		mu 0 3 152 155 153
		f 3 155 156 -155
		mu 0 3 156 157 158
		f 3 157 -148 -156
		mu 0 3 156 159 157
		f 3 158 159 -153
		mu 0 3 160 161 162
		f 3 160 -150 -159
		mu 0 3 160 163 161
		f 3 161 162 163
		mu 0 3 164 165 166
		f 3 164 165 -162
		mu 0 3 164 167 165
		f 3 166 167 168
		mu 0 3 168 169 170
		f 3 169 170 -167
		mu 0 3 168 171 169
		f 3 171 172 -171
		mu 0 3 172 173 174
		f 3 173 -164 -172
		mu 0 3 172 175 173
		f 3 174 175 -169
		mu 0 3 176 177 178
		f 3 176 -166 -175
		mu 0 3 176 179 177
		f 3 177 178 179
		mu 0 3 180 181 182
		f 3 180 181 -178
		mu 0 3 180 183 181
		f 3 182 183 184
		mu 0 3 184 185 186
		f 3 185 186 -183
		mu 0 3 184 187 185
		f 3 187 188 -187
		mu 0 3 188 189 190
		f 3 189 -180 -188
		mu 0 3 188 191 189
		f 3 190 191 -185
		mu 0 3 192 193 194
		f 3 192 -182 -191
		mu 0 3 192 195 193
		f 3 193 194 195
		mu 0 3 196 197 198
		f 3 196 197 -194
		mu 0 3 196 199 197
		f 3 198 199 200
		mu 0 3 200 201 202
		f 3 201 202 -199
		mu 0 3 200 203 201
		f 3 203 204 -203
		mu 0 3 204 205 206
		f 3 205 -196 -204
		mu 0 3 204 207 205
		f 3 206 207 -201
		mu 0 3 208 209 210
		f 3 208 -198 -207
		mu 0 3 208 211 209
		f 3 209 210 211
		mu 0 3 212 213 214
		f 3 212 213 -210
		mu 0 3 212 215 213
		f 3 214 215 216
		mu 0 3 216 217 218
		f 3 217 218 -215
		mu 0 3 216 219 217
		f 3 219 220 -219
		mu 0 3 220 221 222
		f 3 221 -212 -220
		mu 0 3 220 223 221
		f 3 222 223 -217
		mu 0 3 224 225 226
		f 3 224 -214 -223
		mu 0 3 224 227 225
		f 3 225 226 227
		mu 0 3 228 229 230
		f 3 228 229 -226
		mu 0 3 228 231 229
		f 3 230 231 232
		mu 0 3 232 233 234
		f 3 233 234 -231
		mu 0 3 232 235 233
		f 3 235 236 -235
		mu 0 3 236 237 238
		f 3 237 -228 -236
		mu 0 3 236 239 237
		f 3 238 239 -233
		mu 0 3 240 241 242
		f 3 240 -230 -239
		mu 0 3 240 243 241
		f 3 241 242 243
		mu 0 3 244 245 246
		f 3 244 245 -242
		mu 0 3 244 247 245
		f 3 246 247 248
		mu 0 3 248 249 250
		f 3 249 250 -247
		mu 0 3 248 251 249
		f 3 251 252 -251
		mu 0 3 252 253 254
		f 3 253 -244 -252
		mu 0 3 252 255 253
		f 3 254 255 -249
		mu 0 3 256 257 258
		f 3 256 -246 -255
		mu 0 3 256 259 257
		f 3 257 -254 -250
		mu 0 3 260 261 262
		f 3 -256 -245 -258
		mu 0 3 260 263 261
		f 3 258 259 260
		mu 0 3 264 265 266
		f 3 261 262 -259
		mu 0 3 264 267 265
		f 3 263 -263 264
		mu 0 3 268 269 270
		f 3 265 266 -264
		mu 0 3 268 271 269
		f 3 267 -261 268
		mu 0 3 272 273 274
		f 3 269 270 -268
		mu 0 3 272 275 273
		f 3 271 -267 272
		mu 0 3 276 277 278
		f 3 -269 -260 -272
		mu 0 3 276 279 277
		f 3 273 -262 -271
		mu 0 3 280 281 282
		f 3 274 -265 -274
		mu 0 3 280 283 281
		f 3 275 -273 -266
		mu 0 3 284 285 286
		f 3 -275 -270 -276
		mu 0 3 284 287 285;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Top_Floor1";
	rename -uid "B21C82FA-4F9E-038D-3F2F-308312263231";
	setAttr ".t" -type "double3" -1143.7017490381018 0.12681762811439168 533.18000520195028 ;
	setAttr ".s" -type "double3" 0.12792721718092473 1.0116055076260484 0.4573803855280722 ;
	setAttr ".rp" -type "double3" 63.499969482421875 500.3800048828125 -152.39996337890625 ;
	setAttr ".sp" -type "double3" 63.499969482421875 500.3800048828125 -152.39996337890625 ;
createNode mesh -n "Top_Floor1Shape" -p "Top_Floor1";
	rename -uid "0D759EA1-4C58-886D-87B7-B6A8BCA33288";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 11.472699642181396 0.73434996604919434 ;
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
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 0 2 0 0 0 3 0 3 1 0 1 4 1 4 2 1
		 1 5 0 5 4 1 6 5 1 5 7 0 7 6 1 6 4 1 7 1 1 3 7 0 6 2 1 6 0 1 0 7 1;
	setAttr -s 12 -ch 36 ".fc[0:11]" -type "polyFaces" 
		f 3 -3 -2 -1
		mu 0 3 0 2 1
		f 3 0 -5 -4
		mu 0 3 0 1 3
		f 3 5 6 -2
		mu 0 3 4 5 6
		f 3 7 8 -6
		mu 0 3 4 7 5
		f 3 9 10 11
		mu 0 3 8 9 10
		f 3 12 -9 -10
		mu 0 3 8 11 9
		f 3 -15 4 -14
		mu 0 3 12 14 13
		f 3 13 7 10
		mu 0 3 12 13 15
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
createNode mesh -n "polySurfaceShape3" -p "Top_Floor1";
	rename -uid "0482A96C-4AB6-89ED-92AE-24903FC070BF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -11.472650051116943 0.73440003395080566 ;
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
createNode transform -n "Front_Wall";
	rename -uid "67ED194E-4544-944E-8397-4F88A8052C65";
	setAttr ".t" -type "double3" -100.81957855509931 238.85491987069466 1550.1002313626529 ;
	setAttr ".s" -type "double3" 2460.4799781219517 543.65657134813853 26.251542288270155 ;
createNode mesh -n "Front_WallShape" -p "Front_Wall";
	rename -uid "2235D5EF-47FD-33C1-DB20-CF96DA51FCC5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.56906294822692871 0.084573112428188324 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "Front_Wall";
	rename -uid "FDE15898-4BE5-5EF2-E5A2-08929B94A1B1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[1:8]" "f[10:21]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[9]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 46 ".uvst[0].uvsp[0:45]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.49505675 0.5 0.49505675 0.75 0.49505675 0 0.49505675
		 1 0.49505675 0.25 0.5131259 0.5 0.5131259 0.75 0.5131259 0 0.5131259 1 0.5131259
		 0.25 0.375 0.16914622 0.125 0.16914622 0.375 0.58085376 0.49505675 0.58085376 0.5131259
		 0.58085376 0.625 0.58085376 0.875 0.16914622 0.625 0.16914622 0.5131259 0.16914622
		 0.49505675 0.16914622 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[0]" -type "float3" 0.013237426 -0.016339995 -0.0023563437 ;
	setAttr ".pt[1]" -type "float3" 0.0014158491 -0.014066911 -0.0017288268 ;
	setAttr ".pt[2]" -type "float3" 0.012870771 -0.0118924 0.008829846 ;
	setAttr ".pt[3]" -type "float3" 0.0013548716 -0.012539214 0 ;
	setAttr ".pt[4]" -type "float3" 0.012870771 -0.0118924 0.008829846 ;
	setAttr ".pt[5]" -type "float3" 0.0013548716 -0.012539214 0 ;
	setAttr ".pt[6]" -type "float3" 0.013237426 -0.016339995 -0.0023563437 ;
	setAttr ".pt[7]" -type "float3" 0.0014158491 -0.014066911 -0.0017288268 ;
	setAttr ".pt[16]" -type "float3" 0.012870771 -0.0118924 0.008829846 ;
	setAttr ".pt[17]" -type "float3" 0.012870771 -0.0118924 0.008829846 ;
	setAttr ".pt[20]" -type "float3" 0.0013548716 -0.012539214 0 ;
	setAttr ".pt[21]" -type "float3" 0.0013548716 -0.012539214 0 ;
	setAttr -s 25 ".vt[0:24]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.49999619 0.5 0.5 -0.49999619 -0.5 -0.5 -0.49999619 0.5 -0.5 -0.49999619
		 -0.019773133 0.5 -0.49999619 -0.019773133 -0.5 -0.49999619 -0.019773133 -0.5 0.5
		 -0.019773133 0.5 0.5 0.052503444 0.5 -0.49999619 0.052503444 -0.5 -0.49999619 0.052503444 -0.5 0.5
		 0.052503444 0.5 0.5 -0.5 0.17658487 0.5 -0.5 0.17658487 -0.49999619 -0.019773133 0.17658487 -0.49999619
		 0.052503444 0.17658487 -0.49999619 0.5 0.17658487 -0.49999619 0.5 0.17658487 0.5
		 0.052503444 0.17658487 0.49999985 -0.019773133 0.17658487 0.49999985 0.052503444 0.17658487 -0.49999619;
	setAttr -s 46 ".ed[0:45]"  0 10 0 2 11 0 4 8 0 6 9 0 0 16 0 1 21 0 2 4 0
		 3 5 0 4 17 0 5 20 0 6 0 0 7 1 0 8 12 0 8 18 1 9 10 0 11 15 0 10 23 0 11 8 1 12 5 0
		 13 7 0 12 19 1 14 1 0 13 14 0 15 3 0 14 22 0 15 12 1 16 2 0 17 6 0 16 17 1 18 9 0
		 17 18 1 19 13 0 18 19 0 20 7 0 19 20 1 21 3 0 20 21 1 22 15 1 21 22 1 23 11 1 22 23 0
		 23 16 1 23 18 0 22 24 0 13 24 0 19 22 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 16 41 -5
		mu 0 4 0 16 33 24
		f 4 1 17 -3 -7
		mu 0 4 2 18 14 4
		f 4 30 29 -4 -28
		mu 0 4 26 27 15 6
		f 4 3 14 -1 -11
		mu 0 4 6 15 17 8
		f 4 -12 -34 36 -6
		mu 0 4 1 10 30 31
		f 4 10 4 28 27
		mu 0 4 12 0 24 25
		f 4 -18 15 25 -13
		mu 0 4 14 18 23 19
		f 4 34 33 -20 -32
		mu 0 4 28 29 7 20
		f 4 -23 19 11 -22
		mu 0 4 22 20 7 9
		f 4 -25 21 5 38
		mu 0 4 32 21 1 31
		f 4 -26 23 7 -19
		mu 0 4 19 23 3 5
		f 4 -29 26 6 8
		mu 0 4 25 24 2 13
		f 4 2 13 -31 -9
		mu 0 4 4 14 27 26
		f 4 12 20 -33 -14
		mu 0 4 14 19 28 27
		f 4 18 9 -35 -21
		mu 0 4 19 5 29 28
		f 4 -37 -10 -8 -36
		mu 0 4 31 30 11 3
		f 4 -38 -39 35 -24
		mu 0 4 23 32 31 3
		f 4 -40 -41 37 -16
		mu 0 4 18 33 32 23
		f 4 -42 39 -2 -27
		mu 0 4 24 33 18 2
		f 4 -17 -15 -30 -43
		mu 0 4 34 35 36 37
		f 4 24 43 -45 22
		mu 0 4 38 39 40 41
		f 4 32 45 40 42
		mu 0 4 42 43 44 45;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Sidewall_L_Wall1";
	rename -uid "951C5F55-4C87-D8D4-54A2-9F9EA08E16DB";
	setAttr ".t" -type "double3" 2385.7398699813893 0 1.7053025658242402e-13 ;
	setAttr ".r" -type "double3" 0 -180 0 ;
	setAttr ".rp" -type "double3" -1270 233.68000030517578 -150.33929443359375 ;
	setAttr ".sp" -type "double3" -1270 233.68000030517578 -150.33929443359375 ;
createNode mesh -n "Sidewall_L_Wall1Shape" -p "Sidewall_L_Wall1";
	rename -uid "88244C04-4BC9-FCBD-3009-C2A9B5525D90";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 0;
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" -7.7053747177124023 0.12189999222755432 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -5.94194984 -0.53750002
		 9.46879959 0.78130001 9.375 -0.0625 9.46879959 -0.0625 9.375 0.78130001 -9.46879959
		 0.78130001 -9.375 -0.0625 -9.375 0.78130001 -9.46879959 -0.0625 -9.46870041 2.093699932
		 -9.375 -0.71880001 -9.46870041 -0.71880001 9.46879959 -0.71880001 9.375 2.093699932
		 9.375 -0.71880001 9.46879959 2.093699932 2.45539999 -0.029999999 -1.5625 1.19280005
		 -1.5625 -0.029999999 2.45539999 1.19280005 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 6 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 -26.708286 ;
	setAttr ".pt[2]" -type "float3" 0 0 -26.708286 ;
	setAttr ".pt[6]" -type "float3" 0 0 -26.708286 ;
	setAttr ".pt[7]" -type "float3" 0 0 -26.708286 ;
	setAttr -s 8 ".vt[0:7]"  -1300.47998047 -40.63999939 792.47998047
		 -1300.47998047 508 -1093.15856934 -1300.47998047 -40.63999939 -1093.15856934 -1300.47998047 508 792.47998047
		 -1239.52001953 508 792.47998047 -1239.52001953 -40.63999939 792.47998047 -1239.52001953 508 -1093.15856934
		 -1239.52001953 -40.63999939 -1093.15856934;
	setAttr -s 12 ".ed[0:11]"  2 0 0 0 3 0 3 1 0 0 5 0 5 4 0 4 3 0 1 6 0
		 6 7 0 7 5 0 4 6 0 1 2 0 7 2 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 3 4 5 -2
		mu 0 4 2 3 1 4
		f 4 -11 6 7 11
		mu 0 4 0 7 5 8
		f 4 -3 -6 9 -7
		mu 0 4 13 14 12 15
		f 4 -5 -9 -8 -10
		mu 0 4 17 18 16 19
		f 4 -1 -12 8 -4
		mu 0 4 10 6 9 11
		f 4 2 10 0 1
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "Sidewall_L_Wall1";
	rename -uid "04BE5A21-4C37-03C9-E2B9-BE9CF01EC0BA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -9.4218997955322266 0.35940000414848328 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 1.50890005 -1.012500048
		 -2.50889993 -1.012500048 1.50890005 0.2104 9.46879959 0.78130001 9.375 -0.0625 9.46879959
		 -0.0625 9.375 0.78130001 -9.46879959 0.78130001 -9.375 -0.0625 -9.375 0.78130001
		 -9.46879959 -0.0625 -9.46870041 2.093699932 -9.375 -0.71880001 -9.46870041 -0.71880001
		 9.46879959 -0.71880001 9.375 2.093699932 9.375 -0.71880001 9.46879959 2.093699932
		 2.45539999 -0.029999999 -1.5625 1.19280005 -1.5625 -0.029999999 2.45539999 1.19280005
		 -9.375 -0.0625 -9.375 0.78130001 -9.46879959 0.78130001 -9.46879959 -0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 11 ".pt[0:10]" -type "float3"  6.1035156e-05 0 0 6.1035156e-05 
		0 0 6.1035156e-05 0 0 6.1035156e-05 0 0 0.00012207031 0 0 0.00012207031 0 0 0.00012207031 
		0 0 0.00012207031 0 0 0 0 0 6.1035156e-05 0 0 6.1035156e-05 0 0;
	setAttr -s 12 ".vt[0:11]"  -1300.47998047 -40.63999939 792.47998047
		 -1300.47998047 508 -1093.15856934 -1300.47998047 -40.63999939 -1036.31994629 -1300.47998047 508 792.47998047
		 -1239.52001953 508 792.47998047 -1239.52001953 -40.63999939 792.47998047 -1239.52001953 508 -1036.31994629
		 -1239.52001953 -40.63999939 -1036.31994629 -1239.52001953 508 -1093.15856934 -1300.47998047 -40.63999939 -1093.15856934
		 -1300.47998047 508 -1093.15856934 -1239.52001953 -40.63999939 -1093.15856934;
	setAttr -s 23 ".ed[0:22]"  2 0 1 0 3 1 3 1 1 4 0 1 0 5 1 5 4 1 4 3 1
		 1 6 1 6 7 1 7 0 1 7 5 1 4 1 1 4 6 1 7 4 1 6 8 0 2 9 0 8 9 1 1 10 0 10 9 0 10 8 0
		 7 11 0 8 11 0 11 9 0;
	setAttr -s 13 -ch 46 ".fc[0:12]" -type "polyFaces" 
		f 6 17 18 -16 0 1 2
		mu 0 6 9 23 22 1 0 2
		f 3 3 4 5
		mu 0 3 3 4 5
		f 3 6 -2 -4
		mu 0 3 3 6 4
		f 3 16 -19 19
		mu 0 3 24 22 23
		f 3 21 22 -17
		mu 0 3 24 25 22
		f 3 10 -5 -10
		mu 0 3 11 13 12
		f 3 11 -3 -7
		mu 0 3 14 15 16
		f 3 12 -8 -12
		mu 0 3 14 17 15
		f 3 13 -6 -11
		mu 0 3 18 19 20
		f 3 -9 -13 -14
		mu 0 3 18 21 19
		f 4 7 14 -20 -18
		mu 0 4 9 7 24 23
		f 4 8 20 -22 -15
		mu 0 4 7 10 25 24
		f 5 15 -23 -21 9 -1
		mu 0 5 8 22 25 11 12;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Back_wall1";
	rename -uid "C6DB2B78-4241-728D-A1D8-D0A05B84E17B";
	setAttr ".t" -type "double3" 0 0 2951.5046593597558 ;
	setAttr ".s" -type "double3" 1 1 0.31019347939531428 ;
	setAttr ".rp" -type "double3" -81.280029296875 233.68000030517578 -1066.799987792969 ;
	setAttr ".sp" -type "double3" -81.280029296875 233.68000030517578 -1066.7999877929688 ;
	setAttr ".spt" -type "double3" 0 0 -1.1368683772161603e-13 ;
createNode mesh -n "Back_wall1Shape" -p "Back_wall1";
	rename -uid "940F1C7A-43ED-7B57-1678-F68FDD6E588B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -11.25 0.35940000414848328 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
createNode mesh -n "polySurfaceShape6" -p "Back_wall1";
	rename -uid "923BA2CE-4E96-ED62-0180-6D8D7F7F46C6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -1.1785500049591064 -0.43229998648166656 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" -13.125 0.78130001
		 -9.375 -0.0625 -9.375 0.78130001 -13.125 -0.0625 -13.125 2.093800068 -9.375 2.1875
		 -13.125 2.1875 -9.375 2.093699932 -2.093800068 0.78130001 -2.1875 -0.0625 -2.093800068
		 -0.0625 -2.1875 0.78130001 2.093800068 0.78130001 2.1875 -0.0625 2.1875 0.78130001
		 2.093800068 -0.0625 9.375 2.093699932 13.125 2.1875 9.375 2.1875 13.125 2.093699932
		 1.5 -1.04369998 -3.85710001 0.17910001 -3.85710001 -1.04369998 1.5 0.17910001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 3 ".pt";
	setAttr ".pt[6]" -type "float3" 0 0 -1.6212463e-05 ;
	setAttr ".pt[7]" -type "float3" 0 0 -1.6212463e-05 ;
	setAttr -s 8 ".vt[0:7]"  1137.91992188 508 -1097.2800293 -1300.47998047 -40.63999939 -1097.2800293
		 -1300.47998047 508 -1097.2800293 1137.91992188 -40.63999939 -1097.2800293 1137.91992188 -40.63999939 -1036.31994629
		 -1300.47998047 -40.63999939 -1036.31994629 -1300.47998047 508 -1036.31994629 1137.91992188 508 -1036.31994629;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 0 1 0 3 1 3 1 1 4 1 1 3 4 1
		 4 5 1 5 1 1 6 1 1 5 6 1 6 2 1 7 3 1 0 7 1 7 4 1 6 0 1 6 7 1 4 6 1;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E4D25047-4957-7BFE-BA68-6286F5EDE130";
	setAttr -s 30 ".lnk";
	setAttr -s 30 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "AC5C9BF6-4A96-1214-7352-08B7759ADBAC";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "985A07F5-4D3E-86F1-CB5A-3E90F5342C4C";
createNode displayLayerManager -n "layerManager";
	rename -uid "0E27E157-45C2-D484-85FE-41983CC3E761";
createNode displayLayer -n "defaultLayer";
	rename -uid "CE5E5885-41D2-07FE-4BA0-829C544E665F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8317C324-40EB-7F4D-BAED-7FBEB8FEB95C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B0208775-4FB2-892A-4978-0F9345E9604C";
	setAttr ".g" yes;
createNode renderLayerManager -n "Tavern_renderLayerManager";
	rename -uid "3F3A869F-4DAF-E1E6-5FC3-BC88B522A8E3";
createNode renderLayer -n "Tavern_defaultRenderLayer";
	rename -uid "320106DD-4340-D5AC-BBC0-1F8643A86C6A";
	setAttr ".g" yes;
createNode shadingEngine -n "Mat_9";
	rename -uid "DCFB2934-4C06-49C4-2D26-408A7191526B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "2584F2A7-4A6C-B828-7A9D-088019DE8B1A";
createNode file -n "Mat_10F";
	rename -uid "E6DE7BB9-4ADF-4C48-B585-6FAA7C21BAA1";
	setAttr ".ftn" -type "string" "mapswr8.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_10P2D";
	rename -uid "329C4D3F-4C5C-9126-85DB-8B8256FD6A16";
createNode file -n "Mat_10F1";
	rename -uid "4CC7C7F5-4547-DE9E-2FC9-D7A13B54E4D1";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/wr8.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_10P2D1";
	rename -uid "71643D5A-4985-8EBA-147C-A1B934576EC3";
createNode shadingEngine -n "Mat_1";
	rename -uid "6585596B-4D27-383D-D251-FF8053374CF2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "9FBF670C-4049-D5FF-5406-699260C3F0B0";
createNode file -n "Mat_11F";
	rename -uid "957F7370-41E3-5E33-CCEF-31A54F02B1FD";
	setAttr ".ftn" -type "string" "mapscs.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_11P2D";
	rename -uid "D2DCAA25-485B-2A07-F58D-09A88A9881D4";
createNode file -n "Mat_11F1";
	rename -uid "7CDE435F-44F2-6548-70B1-CD9DD8DDD541";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/cs.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_11P2D1";
	rename -uid "CA6B87E8-4E46-57A6-D97E-41B66A01B44E";
createNode shadingEngine -n "Mat_12";
	rename -uid "5365D955-4153-68F6-30F4-8D87EBDF86F0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "2148CC12-451A-D236-6880-3DACAA5D4B12";
createNode file -n "Mat_13F";
	rename -uid "17534A95-44D0-1272-A472-43B01056875A";
	setAttr ".ftn" -type "string" "mapsmw64.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_13P2D";
	rename -uid "743782DE-4FAB-4034-3816-3A8558E932B3";
createNode file -n "Mat_13F1";
	rename -uid "F5F4E2FB-4908-89E2-B5BC-F9993A73A770";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/mw64.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_13P2D1";
	rename -uid "CF1123F2-4F69-56B0-1F6E-4B8987F52FA4";
createNode shadingEngine -n "Mat_8";
	rename -uid "6C279BD8-4C52-1451-C935-DC8FF52D7BDF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "ABE7071C-4408-D132-3E12-F48FEDCADC66";
createNode file -n "Mat_14F";
	rename -uid "1C43E82E-4389-C747-E08E-0ABA5E2EFA4F";
	setAttr ".ftn" -type "string" "mapsmw55.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_14P2D";
	rename -uid "371E6A49-40EB-93D0-4E85-C0AFA63C9BFC";
createNode file -n "Mat_14F1";
	rename -uid "2B547D4D-4A17-7BDE-1123-739C9669CE98";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/mw55.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_14P2D1";
	rename -uid "A8A6DEC6-4595-80DC-F74A-1C98C0A6B67A";
createNode shadingEngine -n "Mat_2";
	rename -uid "26C05B75-44B1-8D8E-D63B-4CAADB53774C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "80886A49-4411-0766-E5AC-F783555BAA0E";
createNode file -n "Mat_15F";
	rename -uid "1E21A2D8-4DF3-0A9D-079F-A48EA0587785";
	setAttr ".ftn" -type "string" "mapsw1.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_15P2D";
	rename -uid "AF96C0A8-4DCA-0AF3-B1BE-35AEA72E978B";
createNode file -n "Mat_15F1";
	rename -uid "25162D1D-48C4-561A-25E2-C5BCCE477BC0";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/w1.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_15P2D1";
	rename -uid "A9FDA499-4CFC-9D09-1FB6-D8BF9529515E";
createNode shadingEngine -n "Mat_7";
	rename -uid "36196561-46F6-B124-B2E7-449BC091122B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "F385E5B7-46F0-7C8C-3768-DAB99B440A84";
createNode file -n "Mat_16F";
	rename -uid "B5E0B8C1-47F9-7307-D737-0F8CE89BEBDD";
	setAttr ".ftn" -type "string" "mapsw2.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_16P2D";
	rename -uid "BD55B4A9-40E6-995C-2E33-1C9971B61148";
createNode file -n "Mat_16F1";
	rename -uid "6A628123-4105-3408-4969-BF8C3FBC8B1C";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/w2.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_16P2D1";
	rename -uid "BB44E6D3-4EF2-3649-B102-629D2C268638";
createNode shadingEngine -n "Mat_17";
	rename -uid "000A2779-48F0-FC52-C5FE-C59ADCB2965D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "E1075786-48AE-DC37-E538-DAA72577F1BB";
createNode file -n "Mat_18F";
	rename -uid "710F01C4-431D-B2FA-F123-398F7B2F436B";
	setAttr ".ftn" -type "string" "mapsmw65.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_18P2D";
	rename -uid "A2E18275-4445-0F3D-7037-11BF552FDEF3";
createNode file -n "Mat_18F1";
	rename -uid "341B2EDC-4994-9B07-A541-2292BAD03F4B";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/mw65.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_18P2D1";
	rename -uid "CDB1665D-426A-B7F5-5B4D-46AD625D8FF5";
createNode shadingEngine -n "Mat_19";
	rename -uid "E3490F8C-4354-9754-F7B7-C8BF93165B2A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "B6717445-460D-28FB-2792-2896ADBF3A46";
createNode file -n "Mat_20F";
	rename -uid "8FD8C200-48A5-5471-691B-7F965257EA93";
	setAttr ".ftn" -type "string" "mapsmw18.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_20P2D";
	rename -uid "723201AB-4BB3-5935-F7ED-FBBAA16C3690";
createNode file -n "Mat_20F1";
	rename -uid "E2C7919D-4272-36C1-21F7-4CA1C3A00AD3";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/mw18.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_20P2D1";
	rename -uid "AB79AC46-4689-A4AE-D393-2690A357D2EC";
createNode shadingEngine -n "Mat_5";
	rename -uid "C16DE9A8-4C27-FE4B-1322-ADB4258A3693";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "B90FFC6B-42FB-272D-FD16-EFAAD8CAC796";
createNode file -n "Mat_21F";
	rename -uid "83F9B17D-463F-09D3-1170-84B79392A8D6";
	setAttr ".ftn" -type "string" "mapsw2.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_21P2D";
	rename -uid "FFD454A5-44CF-DA3C-75A7-C99961FB7FC4";
createNode file -n "Mat_21F1";
	rename -uid "C30049AE-4D64-FC1A-490C-4080A5F0B32E";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/w2.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_21P2D1";
	rename -uid "6AB9C9AA-47B0-BDC7-8E8D-5AA5764023F4";
createNode shadingEngine -n "Mat_3";
	rename -uid "C185BDC8-4617-5FEC-A195-829907C40A4F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "C7092A49-4D6C-28D0-1492-D2A89F72707B";
createNode file -n "Mat_22F";
	rename -uid "84105DA6-449F-D9E0-3512-8686C1B8284E";
	setAttr ".ftn" -type "string" "mapsmd13.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_22P2D";
	rename -uid "8EA54E75-4BC9-F4D0-9709-319AA42E7567";
createNode file -n "Mat_22F1";
	rename -uid "6F3B7206-4AD2-51F2-4018-A289ABAEF49C";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/md13.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_22P2D1";
	rename -uid "72A01B29-4B86-E10F-5DAE-A4A23F77E740";
createNode shadingEngine -n "Mat_23";
	rename -uid "720D9547-4955-29B3-D2F6-0DB0D15E339D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "EDD65A26-474A-3D7A-89A6-769F26D26052";
createNode file -n "Mat_24F";
	rename -uid "80B5A800-4A0C-D3BE-52F6-D2B918AC7F21";
	setAttr ".ftn" -type "string" "mapsmw3.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_24P2D";
	rename -uid "DE709374-40D2-3472-E6ED-4FBB09B28650";
createNode file -n "Mat_24F1";
	rename -uid "8B594747-44AD-C2CB-E8E0-A0BB3B180228";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/mw3.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_24P2D1";
	rename -uid "DDB8A6D2-4E2D-4803-4E69-0FBC9716E738";
createNode shadingEngine -n "Mat_6";
	rename -uid "8EE889F0-4199-D28D-5726-F5B966C43BC3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "51C32286-4477-C8CA-9DBC-E4B6D4522EA9";
createNode file -n "Mat_25F";
	rename -uid "EC951BEC-48E0-95BB-549A-F9B141EAEEA5";
	setAttr ".ftn" -type "string" "mapsmd49.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_25P2D";
	rename -uid "3719A620-47B7-C040-0FB3-A28405507C76";
createNode file -n "Mat_25F1";
	rename -uid "D74D195B-407A-8A92-7441-66A1C57BA20B";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/md49.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_25P2D1";
	rename -uid "8F0784AA-4703-D9D1-B667-4BA259B9229D";
createNode shadingEngine -n "Mat_4";
	rename -uid "8433741C-46A1-F733-93CA-CD8607FBD573";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "332B20D8-4540-A9C9-59F9-1D946E101F52";
createNode file -n "Mat_26F";
	rename -uid "AC001DFD-43AB-3F38-8B2F-A69FD5AA9039";
	setAttr ".ftn" -type "string" "mapsdoor16.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_26P2D";
	rename -uid "7B335B98-49A0-097B-B291-408445C4E8EC";
createNode file -n "Mat_26F1";
	rename -uid "676D9D73-415B-F19F-F8A7-C996F953159A";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/door16.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_26P2D1";
	rename -uid "36D6842B-40E9-8B5D-A4CC-1DBB43A32ECE";
createNode shadingEngine -n "Mat_0";
	rename -uid "A41B1488-4317-571C-D1BB-F192977C938B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "A82E7064-4B18-2482-DC0F-3D9D92A62AF8";
createNode file -n "Mat_27F";
	rename -uid "6F435A97-4C6F-4DC4-DA96-F4A03895041F";
	setAttr ".ftn" -type "string" "mapsw1.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_27P2D";
	rename -uid "8F86A922-4667-A0A6-0E6C-C8AB21F2021C";
createNode file -n "Mat_27F1";
	rename -uid "0D6C9F12-4757-160E-93E7-EF9E30B590C0";
	setAttr ".ftn" -type "string" "D:/Tavern/texture/tavern/images/w1.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Mat_27P2D1";
	rename -uid "FAE9B2DB-4328-A7AE-83D9-08BC002D36E1";
createNode shadingEngine -n "wire_181181181";
	rename -uid "DF64F7BB-40E6-AB6F-BC26-17ADBE01B47E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
	rename -uid "C6588CFB-478C-F2CD-C347-8C8B1E37FBC0";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "542214E7-4E8C-DE47-2BFB-F2B2C77A6751";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1294\n            -height 736\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1294\\n    -height 736\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1294\\n    -height 736\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1078E0AB-4228-891E-301F-FB9401E1FF6B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "BB517EDB-48C4-2847-F801-50BDE474BAF5";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
createNode lambert -n "lambert2";
	rename -uid "4F432068-4C72-0719-5C64-049A56CA3374";
createNode shadingEngine -n "lambert2SG";
	rename -uid "CD8823BA-4D53-28BC-A7D4-238C4F2D97A1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
	rename -uid "09D9E477-47D6-C250-2154-EBB63D3B28D9";
createNode lambert -n "lambert3";
	rename -uid "73FBC776-4554-E87C-37AC-56B4ACDE42D7";
createNode shadingEngine -n "lambert3SG";
	rename -uid "50464A1E-463F-B179-852F-8C8ED8DE3C76";
	setAttr ".ihi" 0;
	setAttr -s 14 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo17";
	rename -uid "B653B757-4D87-C751-1DFC-65A7A2226587";
createNode lambert -n "lambert4";
	rename -uid "71225F7A-4BB6-F6CB-6979-818C4FCA1747";
createNode shadingEngine -n "lambert4SG";
	rename -uid "8E11315F-436D-035A-57EA-C2B0EE44FDB8";
	setAttr ".ihi" 0;
	setAttr -s 17 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo18";
	rename -uid "BB3CC1AA-42FE-7395-3334-1FB3765412FA";
createNode lambert -n "lambert5";
	rename -uid "A8AF4382-47B2-A936-B4A4-43A687834858";
createNode shadingEngine -n "lambert5SG";
	rename -uid "0B63A180-471F-9C00-A534-348BDFF77FA0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo19";
	rename -uid "44ABD257-450C-8BC0-95C8-DD9D43902021";
createNode lambert -n "lambert6";
	rename -uid "BE8BB562-4B7F-77BA-DFCA-4EBF5DC3F029";
createNode shadingEngine -n "lambert6SG";
	rename -uid "729AEA62-4D0A-2A7D-8637-AE880F9A6EF9";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo20";
	rename -uid "9ABD66BF-4338-F62F-B049-4F8B589BCE05";
createNode lambert -n "lambert7";
	rename -uid "0A2F77A2-40CF-454C-92E2-089BEA54E490";
createNode shadingEngine -n "lambert7SG";
	rename -uid "D0547048-4678-A5D7-939E-6C964446360D";
	setAttr ".ihi" 0;
	setAttr -s 18 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo21";
	rename -uid "9075CD1C-4AE1-9B9C-BCD2-08B6E2EADF7A";
createNode shadingEngine -n "lambert8SG";
	rename -uid "145186BC-4582-5AB6-12DA-6FBA0BB233B5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo22";
	rename -uid "6EF73E05-45D1-742B-33D3-CABD6ABEF534";
createNode shadingEngine -n "lambert9SG";
	rename -uid "32CEC9AE-4766-83F8-2B6D-78A3EFC9A2EC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo23";
	rename -uid "F00E976C-40CF-AACC-E038-A689B24B94E0";
createNode lambert -n "lambert10";
	rename -uid "B6DC1096-414D-B80C-7E39-F0A3D75C64B5";
createNode shadingEngine -n "lambert10SG";
	rename -uid "A075D227-4BCB-12EA-EC16-F780F4222786";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo24";
	rename -uid "50BC7A3D-47B7-FEE5-D720-01BBED1FAAA8";
createNode lambert -n "lambert11";
	rename -uid "82C561F0-440A-77F7-EB4C-E39C788AA15B";
createNode shadingEngine -n "lambert11SG";
	rename -uid "E0E60619-41B7-DF4C-E62A-86B278A20B45";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo25";
	rename -uid "A45F9ED4-4EBC-DC00-1186-89AA8A9E17C7";
createNode lambert -n "lambert12";
	rename -uid "C00ECC6A-46F6-9FF6-0E16-A4A48BFBCCF6";
createNode shadingEngine -n "lambert12SG";
	rename -uid "298FF787-4946-04C9-3674-9AB36D759BD2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo26";
	rename -uid "504FDEE4-49F9-6F48-38BF-17A4C84FD2FB";
createNode lambert -n "lambert13";
	rename -uid "552E713B-435D-4F90-6F61-1DBDEEE9E173";
createNode shadingEngine -n "lambert13SG";
	rename -uid "F9B7496A-4373-2B75-4D44-048230DDDE4B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo27";
	rename -uid "991E68C1-455D-D001-C0ED-8BAC981C9E66";
createNode file -n "file1";
	rename -uid "ACBF8FC0-47D2-4119-5F5A-2C8589E7EE88";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/cs.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "ED43D7BB-4586-CCEC-1D88-EE9DF0F1B39F";
createNode file -n "file2";
	rename -uid "8717FC85-4DA8-1421-9B60-F3BACEF20E52";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/md13.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "1C88235B-40E8-F58B-3499-35A0545AF47B";
createNode file -n "file3";
	rename -uid "5CDF5FCA-4911-CF0E-397D-4BACFEDEC979";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/md49.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "9CF57C46-4FEF-8B2D-8919-C083B25B8913";
createNode file -n "file4";
	rename -uid "086AC370-40B5-C0E2-8455-62B5E8930DCD";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/mw18.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "7A929F0B-4F1B-262E-F057-EBA5D7CBBE8B";
createNode file -n "file5";
	rename -uid "4B197A73-4465-6047-A06A-7D84366920DE";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/mw3.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "AEFDB5FD-4700-28CD-F999-6CB6A1071821";
createNode file -n "file6";
	rename -uid "72D21ADF-4558-2002-ABB5-47B4718C8290";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/mw55.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "F95EBCDF-4985-13CD-6E76-BD8EE0DF719D";
createNode file -n "file7";
	rename -uid "EFC36835-467A-F1BD-BB61-F4A41D2D3C50";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/mw64.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "0C9212DE-4D7C-201E-9B8F-908B47F549A3";
createNode file -n "file8";
	rename -uid "DBDCB5D2-4CB0-EF83-721B-07B2176A3364";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/mw65.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "217AC1ED-4D48-4EB8-E3B9-61ABCFC437D6";
createNode file -n "file9";
	rename -uid "2735F67A-4C05-DC77-AC07-A99170C3F807";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/w1.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "D22A9F14-45A9-1369-E6B5-FDADFE65C3F7";
createNode file -n "file10";
	rename -uid "B3A05852-484B-6BCD-29E2-66A5D47FAD45";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/w2.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "349418A6-42BA-8900-4293-C1B67D26EBB0";
createNode file -n "file11";
	rename -uid "EB23FFB3-401B-01D0-7556-7D8A0A6B74D7";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/wr8.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture11";
	rename -uid "F94D0A91-47BC-F637-D0BF-D2A66CCB8766";
createNode file -n "file12";
	rename -uid "6D9F2564-4E8C-47FC-BBD5-04865136C4B9";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture12";
	rename -uid "0E190CEB-4F0E-8005-CFB3-9A993CA19411";
createNode file -n "file13";
	rename -uid "C18DE0B6-459F-3D4E-8A24-61894DD3BAA0";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture13";
	rename -uid "3345BE2E-46A3-6F3C-29EF-6DAD11E8FB35";
createNode file -n "cs_1";
	rename -uid "45CF256A-4BDF-A229-7590-A480F4D2A545";
	setAttr ".ftn" -type "string" "C:/Users/s162464/Documents/GitHub/The_Beyond/The Beyond/Assets/Models/Objects/tavern/texture/cs.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture14";
	rename -uid "495A4706-4EC7-EBE9-19A4-079D034AA2EC";
createNode lambert -n "lambert14";
	rename -uid "DDD1AF8A-4318-5821-FD9D-A497E4277AA9";
createNode shadingEngine -n "lambert14SG";
	rename -uid "5B6F504D-4250-502A-40D5-7C81FE52225F";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo28";
	rename -uid "ECAD8FFF-4B9D-3FA0-085B-3088D843C11D";
createNode groupId -n "groupId2";
	rename -uid "8A651D56-41C7-EE1D-6D76-4AB5CB7CA0B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "0F702F48-4C1D-F055-42EB-629184C8A422";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "F420B1B4-4119-EC4D-3008-65A31D24010E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "F66DA801-4BD8-DBBB-3C81-F4BC7D3804EB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "B980562B-424E-C7A2-26A3-48B920C882C1";
	setAttr ".ihi" 0;
createNode polyNormal -n "polyNormal18";
	rename -uid "2DEAB518-4346-6897-612D-208C14CC6D30";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[9]" "f[16:18]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal19";
	rename -uid "AF5A1302-4DE1-FB18-1CED-2D912E47C0EE";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[9]" "f[16:18]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal20";
	rename -uid "EE478B91-4552-16FA-0AFE-04B195FAD739";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[9]" "f[16:18]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal21";
	rename -uid "70B30639-424A-AE63-1B76-6BA2438490AF";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[9]" "f[16:18]";
	setAttr ".unm" no;
createNode groupId -n "groupId12";
	rename -uid "61F180CB-4EFA-BF6E-305E-C4AD1E29FABE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "2E87F621-4E44-B15B-D4E1-81A6DFE08D61";
	setAttr ".ihi" 0;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "C4354C36-4148-4EE0-2BCE-80B0534EB3FF";
	setAttr ".ics" -type "componentList" 1 "e[17]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "CFDF6F2A-47F1-C5CB-D2D6-A9B7901BBAB1";
	setAttr ".dc" -type "componentList" 1 "e[0]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "E6D6408B-41F7-0C38-2297-479F25E8BBF2";
	setAttr ".dc" -type "componentList" 1 "e[11]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "AD167DCD-4E05-A7F6-0007-2C8441EB0E70";
	setAttr ".dc" -type "componentList" 1 "e[8]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "92A777F7-4049-E6BA-D590-888AF683C13A";
	setAttr ".dc" -type "componentList" 1 "e[4]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "67EB3C68-45DD-7346-1329-A3AD30A734C8";
	setAttr ".dc" -type "componentList" 1 "e[11]";
createNode polyNormal -n "polyNormal22";
	rename -uid "FA3C7BAA-4B81-7D72-DD08-E9A2CFD96D69";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".unm" no;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "47C98529-4F35-AC05-DD57-888B146CF056";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -342.85712923322467 -2.3809522863418562 ;
	setAttr ".tgi[0].vh" -type "double2" 585.71426244009194 349.99998609225014 ;
	setAttr -s 52 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 104.28571319580078;
	setAttr ".tgi[0].ni[0].y" 317.14285278320313;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 411.42855834960938;
	setAttr ".tgi[0].ni[1].y" 294.28570556640625;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 104.28571319580078;
	setAttr ".tgi[0].ni[2].y" 317.14285278320313;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 411.42855834960938;
	setAttr ".tgi[0].ni[3].y" 294.28570556640625;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 104.28571319580078;
	setAttr ".tgi[0].ni[4].y" 317.14285278320313;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 411.42855834960938;
	setAttr ".tgi[0].ni[5].y" 294.28570556640625;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 104.28571319580078;
	setAttr ".tgi[0].ni[6].y" 317.14285278320313;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 411.42855834960938;
	setAttr ".tgi[0].ni[7].y" 294.28570556640625;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 104.28571319580078;
	setAttr ".tgi[0].ni[8].y" 317.14285278320313;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 411.42855834960938;
	setAttr ".tgi[0].ni[9].y" 294.28570556640625;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 104.28571319580078;
	setAttr ".tgi[0].ni[10].y" 317.14285278320313;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 411.42855834960938;
	setAttr ".tgi[0].ni[11].y" 294.28570556640625;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" 411.42855834960938;
	setAttr ".tgi[0].ni[12].y" 294.28570556640625;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" 411.42855834960938;
	setAttr ".tgi[0].ni[13].y" 294.28570556640625;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" 104.28571319580078;
	setAttr ".tgi[0].ni[14].y" 317.14285278320313;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 411.42855834960938;
	setAttr ".tgi[0].ni[15].y" 294.28570556640625;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" 104.28571319580078;
	setAttr ".tgi[0].ni[16].y" 317.14285278320313;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" 411.42855834960938;
	setAttr ".tgi[0].ni[17].y" 294.28570556640625;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" 104.28571319580078;
	setAttr ".tgi[0].ni[18].y" 317.14285278320313;
	setAttr ".tgi[0].ni[18].nvs" 1923;
	setAttr ".tgi[0].ni[19].x" 411.42855834960938;
	setAttr ".tgi[0].ni[19].y" 294.28570556640625;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" 104.28571319580078;
	setAttr ".tgi[0].ni[20].y" 244.28572082519531;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[0].ni[21].x" 104.28571319580078;
	setAttr ".tgi[0].ni[21].y" 317.14285278320313;
	setAttr ".tgi[0].ni[21].nvs" 1923;
	setAttr ".tgi[0].ni[22].x" 411.42855834960938;
	setAttr ".tgi[0].ni[22].y" 294.28570556640625;
	setAttr ".tgi[0].ni[22].nvs" 1923;
	setAttr ".tgi[0].ni[23].x" -202.85714721679688;
	setAttr ".tgi[0].ni[23].y" 221.42857360839844;
	setAttr ".tgi[0].ni[23].nvs" 1923;
	setAttr ".tgi[0].ni[24].x" -510;
	setAttr ".tgi[0].ni[24].y" 294.28570556640625;
	setAttr ".tgi[0].ni[24].nvs" 1923;
	setAttr ".tgi[0].ni[25].x" -510;
	setAttr ".tgi[0].ni[25].y" 294.28570556640625;
	setAttr ".tgi[0].ni[25].nvs" 1923;
	setAttr ".tgi[0].ni[26].x" -510;
	setAttr ".tgi[0].ni[26].y" 294.28570556640625;
	setAttr ".tgi[0].ni[26].nvs" 1923;
	setAttr ".tgi[0].ni[27].x" -510;
	setAttr ".tgi[0].ni[27].y" 294.28570556640625;
	setAttr ".tgi[0].ni[27].nvs" 1923;
	setAttr ".tgi[0].ni[28].x" -510;
	setAttr ".tgi[0].ni[28].y" 294.28570556640625;
	setAttr ".tgi[0].ni[28].nvs" 1923;
	setAttr ".tgi[0].ni[29].x" -510;
	setAttr ".tgi[0].ni[29].y" 294.28570556640625;
	setAttr ".tgi[0].ni[29].nvs" 1923;
	setAttr ".tgi[0].ni[30].x" -202.85714721679688;
	setAttr ".tgi[0].ni[30].y" 317.14285278320313;
	setAttr ".tgi[0].ni[30].nvs" 1923;
	setAttr ".tgi[0].ni[31].x" -202.85714721679688;
	setAttr ".tgi[0].ni[31].y" 317.14285278320313;
	setAttr ".tgi[0].ni[31].nvs" 1923;
	setAttr ".tgi[0].ni[32].x" -202.85714721679688;
	setAttr ".tgi[0].ni[32].y" 317.14285278320313;
	setAttr ".tgi[0].ni[32].nvs" 1923;
	setAttr ".tgi[0].ni[33].x" -202.85714721679688;
	setAttr ".tgi[0].ni[33].y" 317.14285278320313;
	setAttr ".tgi[0].ni[33].nvs" 1923;
	setAttr ".tgi[0].ni[34].x" -202.85714721679688;
	setAttr ".tgi[0].ni[34].y" 317.14285278320313;
	setAttr ".tgi[0].ni[34].nvs" 1923;
	setAttr ".tgi[0].ni[35].x" -202.85714721679688;
	setAttr ".tgi[0].ni[35].y" 317.14285278320313;
	setAttr ".tgi[0].ni[35].nvs" 1923;
	setAttr ".tgi[0].ni[36].x" -202.85714721679688;
	setAttr ".tgi[0].ni[36].y" 317.14285278320313;
	setAttr ".tgi[0].ni[36].nvs" 1923;
	setAttr ".tgi[0].ni[37].x" -510;
	setAttr ".tgi[0].ni[37].y" 294.28570556640625;
	setAttr ".tgi[0].ni[37].nvs" 1923;
	setAttr ".tgi[0].ni[38].x" 104.28571319580078;
	setAttr ".tgi[0].ni[38].y" 312.85714721679688;
	setAttr ".tgi[0].ni[38].nvs" 1923;
	setAttr ".tgi[0].ni[39].x" -202.85714721679688;
	setAttr ".tgi[0].ni[39].y" 312.85714721679688;
	setAttr ".tgi[0].ni[39].nvs" 1923;
	setAttr ".tgi[0].ni[40].x" -202.85714721679688;
	setAttr ".tgi[0].ni[40].y" 221.42857360839844;
	setAttr ".tgi[0].ni[40].nvs" 1923;
	setAttr ".tgi[0].ni[41].x" 104.28571319580078;
	setAttr ".tgi[0].ni[41].y" 244.28572082519531;
	setAttr ".tgi[0].ni[41].nvs" 1923;
	setAttr ".tgi[0].ni[42].x" -202.85714721679688;
	setAttr ".tgi[0].ni[42].y" 317.14285278320313;
	setAttr ".tgi[0].ni[42].nvs" 1923;
	setAttr ".tgi[0].ni[43].x" -510;
	setAttr ".tgi[0].ni[43].y" 294.28570556640625;
	setAttr ".tgi[0].ni[43].nvs" 1923;
	setAttr ".tgi[0].ni[44].x" -202.85714721679688;
	setAttr ".tgi[0].ni[44].y" 317.14285278320313;
	setAttr ".tgi[0].ni[44].nvs" 1923;
	setAttr ".tgi[0].ni[45].x" -510;
	setAttr ".tgi[0].ni[45].y" 294.28570556640625;
	setAttr ".tgi[0].ni[45].nvs" 1923;
	setAttr ".tgi[0].ni[46].x" -202.85714721679688;
	setAttr ".tgi[0].ni[46].y" 317.14285278320313;
	setAttr ".tgi[0].ni[46].nvs" 1923;
	setAttr ".tgi[0].ni[47].x" -510;
	setAttr ".tgi[0].ni[47].y" 294.28570556640625;
	setAttr ".tgi[0].ni[47].nvs" 1923;
	setAttr ".tgi[0].ni[48].x" -202.85714721679688;
	setAttr ".tgi[0].ni[48].y" 317.14285278320313;
	setAttr ".tgi[0].ni[48].nvs" 1923;
	setAttr ".tgi[0].ni[49].x" -510;
	setAttr ".tgi[0].ni[49].y" 294.28570556640625;
	setAttr ".tgi[0].ni[49].nvs" 1923;
	setAttr ".tgi[0].ni[50].x" -202.85714721679688;
	setAttr ".tgi[0].ni[50].y" 317.14285278320313;
	setAttr ".tgi[0].ni[50].nvs" 1923;
	setAttr ".tgi[0].ni[51].x" -510;
	setAttr ".tgi[0].ni[51].y" 294.28570556640625;
	setAttr ".tgi[0].ni[51].nvs" 1923;
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
	setAttr -s 30 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 15 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 42 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 42 ".tx";
select -ne :lambert1;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId12.id" "Sidewall_L_WallShape.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "Sidewall_L_WallShape.iog.og[1].gco";
connectAttr "groupId13.id" "Sidewall_L_WallShape.iog.og[3].gid";
connectAttr "lambert3SG.mwc" "Sidewall_L_WallShape.iog.og[3].gco";
connectAttr "groupId2.id" "Sidewall_L_WallShape.ciog.cog[0].cgid";
connectAttr "polyNormal21.out" "Front_WallShape.i";
connectAttr "groupId5.id" "Sidewall_L_Wall1Shape.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "Sidewall_L_Wall1Shape.iog.og[1].gco";
connectAttr "groupId6.id" "Sidewall_L_Wall1Shape.iog.og[2].gid";
connectAttr "lambert4SG.mwc" "Sidewall_L_Wall1Shape.iog.og[2].gco";
connectAttr "groupId7.id" "Sidewall_L_Wall1Shape.iog.og[3].gid";
connectAttr "lambert3SG.mwc" "Sidewall_L_Wall1Shape.iog.og[3].gco";
connectAttr "groupId8.id" "Sidewall_L_Wall1Shape.ciog.cog[1].cgid";
connectAttr "polyNormal22.out" "Back_wall1Shape.i";
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
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
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
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert11SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert12SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert14SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Tavern_renderLayerManager.rlmi[0]" "Tavern_defaultRenderLayer.rlid"
		;
connectAttr "Mat_9.msg" "materialInfo1.sg";
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
connectAttr "Mat_1.msg" "materialInfo2.sg";
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
connectAttr "Mat_12.msg" "materialInfo3.sg";
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
connectAttr "Mat_8.msg" "materialInfo4.sg";
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
connectAttr "Mat_2.msg" "materialInfo5.sg";
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
connectAttr "Mat_7.msg" "materialInfo6.sg";
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
connectAttr "Mat_17.msg" "materialInfo7.sg";
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
connectAttr "Mat_19.msg" "materialInfo8.sg";
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
connectAttr "Mat_5.msg" "materialInfo9.sg";
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
connectAttr "Mat_3.msg" "materialInfo10.sg";
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
connectAttr "Mat_23.msg" "materialInfo11.sg";
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
connectAttr "Mat_6.msg" "materialInfo12.sg";
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
connectAttr "Mat_4.msg" "materialInfo13.sg";
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
connectAttr "Mat_0.msg" "materialInfo14.sg";
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
connectAttr "wire_181181181.msg" "materialInfo15.sg";
connectAttr "file6.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo16.sg";
connectAttr "lambert2.msg" "materialInfo16.m";
connectAttr "file6.msg" "materialInfo16.t" -na;
connectAttr "file7.oc" "lambert3.c";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "Top_HearthShape.iog" "lambert3SG.dsm" -na;
connectAttr "Sidewall_R_TopShape.iog" "lambert3SG.dsm" -na;
connectAttr "Sidewall_R_MidShape.iog" "lambert3SG.dsm" -na;
connectAttr "Sidewall_R_BottomShape.iog" "lambert3SG.dsm" -na;
connectAttr "Sidewall_L_Wall1Shape.iog.og[3]" "lambert3SG.dsm" -na;
connectAttr "Sidewall_L_WallShape.iog.og[3]" "lambert3SG.dsm" -na;
connectAttr "Large_R_WallShape.iog" "lambert3SG.dsm" -na;
connectAttr "Large_Wall_roof_FrontShape.iog" "lambert3SG.dsm" -na;
connectAttr "Large_L_WallShape.iog" "lambert3SG.dsm" -na;
connectAttr "Small_Wall_LShape.iog" "lambert3SG.dsm" -na;
connectAttr "Small_Wall_RShape.iog" "lambert3SG.dsm" -na;
connectAttr "Sidewall_L_BottomShape.iog" "lambert3SG.dsm" -na;
connectAttr "Sidewall_L_MidShape.iog" "lambert3SG.dsm" -na;
connectAttr "Sidewall_L_TopShape.iog" "lambert3SG.dsm" -na;
connectAttr "groupId7.msg" "lambert3SG.gn" -na;
connectAttr "groupId13.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo17.sg";
connectAttr "lambert3.msg" "materialInfo17.m";
connectAttr "file7.msg" "materialInfo17.t" -na;
connectAttr "file8.oc" "lambert4.c";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "Bottom_HarthShape.iog" "lambert4SG.dsm" -na;
connectAttr "Sidewall_R_WallShape.iog" "lambert4SG.dsm" -na;
connectAttr "Sidewall_L_WallShape.ciog.cog[0]" "lambert4SG.dsm" -na;
connectAttr "Sidewall_L_Wall1Shape.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "Sidewall_L_Wall1Shape.iog.og[2]" "lambert4SG.dsm" -na;
connectAttr "Sidewall_L_Wall1Shape.ciog.cog[1]" "lambert4SG.dsm" -na;
connectAttr "Sidewall_L_WallShape.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "Back_wallShape.iog" "lambert4SG.dsm" -na;
connectAttr "Large_Bottom_roof_FrontShape.iog" "lambert4SG.dsm" -na;
connectAttr "Large_Mid_roof_FrontShape.iog" "lambert4SG.dsm" -na;
connectAttr "Large_top_roof_FrontShape.iog" "lambert4SG.dsm" -na;
connectAttr "Small_Bottom_roof_FrontShape.iog" "lambert4SG.dsm" -na;
connectAttr "Small_Mid_roof_FrontShape.iog" "lambert4SG.dsm" -na;
connectAttr "Small_top_roof_FrontShape.iog" "lambert4SG.dsm" -na;
connectAttr "Front_WallShape.iog" "lambert4SG.dsm" -na;
connectAttr "Back_wall1Shape.iog" "lambert4SG.dsm" -na;
connectAttr "groupId2.msg" "lambert4SG.gn" -na;
connectAttr "groupId5.msg" "lambert4SG.gn" -na;
connectAttr "groupId6.msg" "lambert4SG.gn" -na;
connectAttr "groupId8.msg" "lambert4SG.gn" -na;
connectAttr "groupId12.msg" "lambert4SG.gn" -na;
connectAttr "lambert4SG.msg" "materialInfo18.sg";
connectAttr "lambert4.msg" "materialInfo18.m";
connectAttr "file8.msg" "materialInfo18.t" -na;
connectAttr "file9.oc" "lambert5.c";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "lambert5SG.msg" "materialInfo19.sg";
connectAttr "lambert5.msg" "materialInfo19.m";
connectAttr "file9.msg" "materialInfo19.t" -na;
connectAttr "file10.oc" "lambert6.c";
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "L_PillerShape.iog" "lambert6SG.dsm" -na;
connectAttr "R_PillerShape.iog" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo20.sg";
connectAttr "lambert6.msg" "materialInfo20.m";
connectAttr "file10.msg" "materialInfo20.t" -na;
connectAttr "file11.oc" "lambert7.c";
connectAttr "lambert7.oc" "lambert7SG.ss";
connectAttr "Roof_r_Top1Shape.iog" "lambert7SG.dsm" -na;
connectAttr "Roof_r_Mid1Shape.iog" "lambert7SG.dsm" -na;
connectAttr "Roof_r_Bottom1Shape.iog" "lambert7SG.dsm" -na;
connectAttr "Large_top_roof_RShape.iog" "lambert7SG.dsm" -na;
connectAttr "Large_Mid_roof_RShape.iog" "lambert7SG.dsm" -na;
connectAttr "Large_Bottom_roof_RShape.iog" "lambert7SG.dsm" -na;
connectAttr "Small_top_roof_LShape.iog" "lambert7SG.dsm" -na;
connectAttr "Small_Bottom_roof_RShape.iog" "lambert7SG.dsm" -na;
connectAttr "Small_Mid_roof_RShape.iog" "lambert7SG.dsm" -na;
connectAttr "Small_top_roof_RShape.iog" "lambert7SG.dsm" -na;
connectAttr "Small_mid_roof_LShape.iog" "lambert7SG.dsm" -na;
connectAttr "Small_Bottem_roof_LShape.iog" "lambert7SG.dsm" -na;
connectAttr "Large_top_roof_LShape.iog" "lambert7SG.dsm" -na;
connectAttr "Large_Mid_roof_LShape.iog" "lambert7SG.dsm" -na;
connectAttr "Large_Bottom_roof_LShape.iog" "lambert7SG.dsm" -na;
connectAttr "Roof_L_TopShape.iog" "lambert7SG.dsm" -na;
connectAttr "Roof_L_MidShape.iog" "lambert7SG.dsm" -na;
connectAttr "Roof_L_BottomShape.iog" "lambert7SG.dsm" -na;
connectAttr "lambert7SG.msg" "materialInfo21.sg";
connectAttr "lambert7.msg" "materialInfo21.m";
connectAttr "file11.msg" "materialInfo21.t" -na;
connectAttr "lambert8SG.msg" "materialInfo22.sg";
connectAttr "lambert9SG.msg" "materialInfo23.sg";
connectAttr "file2.oc" "lambert10.c";
connectAttr "lambert10.oc" "lambert10SG.ss";
connectAttr "Large_WindowShape.iog" "lambert10SG.dsm" -na;
connectAttr "Small_WindowShape.iog" "lambert10SG.dsm" -na;
connectAttr "Small_Face_roof_FrontShape.iog" "lambert10SG.dsm" -na;
connectAttr "Front_window_3Shape.iog" "lambert10SG.dsm" -na;
connectAttr "Front_window_2Shape.iog" "lambert10SG.dsm" -na;
connectAttr "Front_window_1Shape.iog" "lambert10SG.dsm" -na;
connectAttr "Side_R_windowShape.iog" "lambert10SG.dsm" -na;
connectAttr "lambert10SG.msg" "materialInfo24.sg";
connectAttr "lambert10.msg" "materialInfo24.m";
connectAttr "file2.msg" "materialInfo24.t" -na;
connectAttr "file3.oc" "lambert11.c";
connectAttr "lambert11.oc" "lambert11SG.ss";
connectAttr "lambert11SG.msg" "materialInfo25.sg";
connectAttr "lambert11.msg" "materialInfo25.m";
connectAttr "file3.msg" "materialInfo25.t" -na;
connectAttr "file4.oc" "lambert12.c";
connectAttr "lambert12.oc" "lambert12SG.ss";
connectAttr "lambert12SG.msg" "materialInfo26.sg";
connectAttr "lambert12.msg" "materialInfo26.m";
connectAttr "file4.msg" "materialInfo26.t" -na;
connectAttr "file5.oc" "lambert13.c";
connectAttr "lambert13.oc" "lambert13SG.ss";
connectAttr "lambert13SG.msg" "materialInfo27.sg";
connectAttr "lambert13.msg" "materialInfo27.m";
connectAttr "file5.msg" "materialInfo27.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "place2dTexture8.c" "file8.c";
connectAttr "place2dTexture8.tf" "file8.tf";
connectAttr "place2dTexture8.rf" "file8.rf";
connectAttr "place2dTexture8.mu" "file8.mu";
connectAttr "place2dTexture8.mv" "file8.mv";
connectAttr "place2dTexture8.s" "file8.s";
connectAttr "place2dTexture8.wu" "file8.wu";
connectAttr "place2dTexture8.wv" "file8.wv";
connectAttr "place2dTexture8.re" "file8.re";
connectAttr "place2dTexture8.of" "file8.of";
connectAttr "place2dTexture8.r" "file8.ro";
connectAttr "place2dTexture8.n" "file8.n";
connectAttr "place2dTexture8.vt1" "file8.vt1";
connectAttr "place2dTexture8.vt2" "file8.vt2";
connectAttr "place2dTexture8.vt3" "file8.vt3";
connectAttr "place2dTexture8.vc1" "file8.vc1";
connectAttr "place2dTexture8.o" "file8.uv";
connectAttr "place2dTexture8.ofs" "file8.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "place2dTexture9.c" "file9.c";
connectAttr "place2dTexture9.tf" "file9.tf";
connectAttr "place2dTexture9.rf" "file9.rf";
connectAttr "place2dTexture9.mu" "file9.mu";
connectAttr "place2dTexture9.mv" "file9.mv";
connectAttr "place2dTexture9.s" "file9.s";
connectAttr "place2dTexture9.wu" "file9.wu";
connectAttr "place2dTexture9.wv" "file9.wv";
connectAttr "place2dTexture9.re" "file9.re";
connectAttr "place2dTexture9.of" "file9.of";
connectAttr "place2dTexture9.r" "file9.ro";
connectAttr "place2dTexture9.n" "file9.n";
connectAttr "place2dTexture9.vt1" "file9.vt1";
connectAttr "place2dTexture9.vt2" "file9.vt2";
connectAttr "place2dTexture9.vt3" "file9.vt3";
connectAttr "place2dTexture9.vc1" "file9.vc1";
connectAttr "place2dTexture9.o" "file9.uv";
connectAttr "place2dTexture9.ofs" "file9.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "place2dTexture10.c" "file10.c";
connectAttr "place2dTexture10.tf" "file10.tf";
connectAttr "place2dTexture10.rf" "file10.rf";
connectAttr "place2dTexture10.mu" "file10.mu";
connectAttr "place2dTexture10.mv" "file10.mv";
connectAttr "place2dTexture10.s" "file10.s";
connectAttr "place2dTexture10.wu" "file10.wu";
connectAttr "place2dTexture10.wv" "file10.wv";
connectAttr "place2dTexture10.re" "file10.re";
connectAttr "place2dTexture10.of" "file10.of";
connectAttr "place2dTexture10.r" "file10.ro";
connectAttr "place2dTexture10.n" "file10.n";
connectAttr "place2dTexture10.vt1" "file10.vt1";
connectAttr "place2dTexture10.vt2" "file10.vt2";
connectAttr "place2dTexture10.vt3" "file10.vt3";
connectAttr "place2dTexture10.vc1" "file10.vc1";
connectAttr "place2dTexture10.o" "file10.uv";
connectAttr "place2dTexture10.ofs" "file10.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file11.ws";
connectAttr "place2dTexture11.c" "file11.c";
connectAttr "place2dTexture11.tf" "file11.tf";
connectAttr "place2dTexture11.rf" "file11.rf";
connectAttr "place2dTexture11.mu" "file11.mu";
connectAttr "place2dTexture11.mv" "file11.mv";
connectAttr "place2dTexture11.s" "file11.s";
connectAttr "place2dTexture11.wu" "file11.wu";
connectAttr "place2dTexture11.wv" "file11.wv";
connectAttr "place2dTexture11.re" "file11.re";
connectAttr "place2dTexture11.of" "file11.of";
connectAttr "place2dTexture11.r" "file11.ro";
connectAttr "place2dTexture11.n" "file11.n";
connectAttr "place2dTexture11.vt1" "file11.vt1";
connectAttr "place2dTexture11.vt2" "file11.vt2";
connectAttr "place2dTexture11.vt3" "file11.vt3";
connectAttr "place2dTexture11.vc1" "file11.vc1";
connectAttr "place2dTexture11.o" "file11.uv";
connectAttr "place2dTexture11.ofs" "file11.fs";
connectAttr "place2dTexture12.c" "file12.c";
connectAttr "place2dTexture12.tf" "file12.tf";
connectAttr "place2dTexture12.rf" "file12.rf";
connectAttr "place2dTexture12.mu" "file12.mu";
connectAttr "place2dTexture12.mv" "file12.mv";
connectAttr "place2dTexture12.s" "file12.s";
connectAttr "place2dTexture12.wu" "file12.wu";
connectAttr "place2dTexture12.wv" "file12.wv";
connectAttr "place2dTexture12.re" "file12.re";
connectAttr "place2dTexture12.of" "file12.of";
connectAttr "place2dTexture12.r" "file12.ro";
connectAttr "place2dTexture12.n" "file12.n";
connectAttr "place2dTexture12.vt1" "file12.vt1";
connectAttr "place2dTexture12.vt2" "file12.vt2";
connectAttr "place2dTexture12.vt3" "file12.vt3";
connectAttr "place2dTexture12.vc1" "file12.vc1";
connectAttr "place2dTexture12.o" "file12.uv";
connectAttr "place2dTexture12.ofs" "file12.fs";
connectAttr "place2dTexture13.c" "file13.c";
connectAttr "place2dTexture13.tf" "file13.tf";
connectAttr "place2dTexture13.rf" "file13.rf";
connectAttr "place2dTexture13.mu" "file13.mu";
connectAttr "place2dTexture13.mv" "file13.mv";
connectAttr "place2dTexture13.s" "file13.s";
connectAttr "place2dTexture13.wu" "file13.wu";
connectAttr "place2dTexture13.wv" "file13.wv";
connectAttr "place2dTexture13.re" "file13.re";
connectAttr "place2dTexture13.of" "file13.of";
connectAttr "place2dTexture13.r" "file13.ro";
connectAttr "place2dTexture13.n" "file13.n";
connectAttr "place2dTexture13.vt1" "file13.vt1";
connectAttr "place2dTexture13.vt2" "file13.vt2";
connectAttr "place2dTexture13.vt3" "file13.vt3";
connectAttr "place2dTexture13.vc1" "file13.vc1";
connectAttr "place2dTexture13.o" "file13.uv";
connectAttr "place2dTexture13.ofs" "file13.fs";
connectAttr "place2dTexture14.c" "cs_1.c";
connectAttr "place2dTexture14.tf" "cs_1.tf";
connectAttr "place2dTexture14.rf" "cs_1.rf";
connectAttr "place2dTexture14.mu" "cs_1.mu";
connectAttr "place2dTexture14.mv" "cs_1.mv";
connectAttr "place2dTexture14.s" "cs_1.s";
connectAttr "place2dTexture14.wu" "cs_1.wu";
connectAttr "place2dTexture14.wv" "cs_1.wv";
connectAttr "place2dTexture14.re" "cs_1.re";
connectAttr "place2dTexture14.of" "cs_1.of";
connectAttr "place2dTexture14.r" "cs_1.ro";
connectAttr "place2dTexture14.n" "cs_1.n";
connectAttr "place2dTexture14.vt1" "cs_1.vt1";
connectAttr "place2dTexture14.vt2" "cs_1.vt2";
connectAttr "place2dTexture14.vt3" "cs_1.vt3";
connectAttr "place2dTexture14.vc1" "cs_1.vc1";
connectAttr "place2dTexture14.o" "cs_1.uv";
connectAttr "place2dTexture14.ofs" "cs_1.fs";
connectAttr "lambert14.oc" "lambert14SG.ss";
connectAttr "Model_9Shape.iog" "lambert14SG.dsm" -na;
connectAttr "Hearth_panelShape.iog" "lambert14SG.dsm" -na;
connectAttr "Top_Floor1Shape.iog" "lambert14SG.dsm" -na;
connectAttr "Top_FloorShape.iog" "lambert14SG.dsm" -na;
connectAttr "FloorShape.iog" "lambert14SG.dsm" -na;
connectAttr "BarShape.iog" "lambert14SG.dsm" -na;
connectAttr "HearthShape.iog" "lambert14SG.dsm" -na;
connectAttr "StairsShape.iog" "lambert14SG.dsm" -na;
connectAttr "lambert14SG.msg" "materialInfo28.sg";
connectAttr "lambert14.msg" "materialInfo28.m";
connectAttr "polySurfaceShape5.o" "polyNormal18.ip";
connectAttr "polyNormal18.out" "polyNormal19.ip";
connectAttr "polyNormal19.out" "polyNormal20.ip";
connectAttr "polyNormal20.out" "polyNormal21.ip";
connectAttr "polySurfaceShape6.o" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyNormal22.ip";
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[1].dn"
		;
connectAttr "lambert3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[2].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[3].dn"
		;
connectAttr "lambert4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[4].dn"
		;
connectAttr "lambert4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[5].dn"
		;
connectAttr "lambert5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[6].dn"
		;
connectAttr "lambert5SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[7].dn"
		;
connectAttr "lambert6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[8].dn"
		;
connectAttr "lambert6SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[9].dn"
		;
connectAttr "lambert7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[10].dn"
		;
connectAttr "lambert7SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[11].dn"
		;
connectAttr "lambert8SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[12].dn"
		;
connectAttr "lambert9SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[13].dn"
		;
connectAttr "lambert10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[14].dn"
		;
connectAttr "lambert10SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[15].dn"
		;
connectAttr "lambert11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[16].dn"
		;
connectAttr "lambert11SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[17].dn"
		;
connectAttr "lambert12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[18].dn"
		;
connectAttr "lambert12SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[19].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[20].dn"
		;
connectAttr "lambert13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[21].dn"
		;
connectAttr "lambert13SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[22].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[23].dn"
		;
connectAttr "place2dTexture7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[24].dn"
		;
connectAttr "place2dTexture5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[25].dn"
		;
connectAttr "place2dTexture3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[26].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[27].dn"
		;
connectAttr "place2dTexture4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[28].dn"
		;
connectAttr "place2dTexture6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[29].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[30].dn"
		;
connectAttr "file3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[31].dn"
		;
connectAttr "file4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[32].dn"
		;
connectAttr "file5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[33].dn"
		;
connectAttr "file6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[34].dn"
		;
connectAttr "file7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[35].dn"
		;
connectAttr "file8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[36].dn"
		;
connectAttr "place2dTexture8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[37].dn"
		;
connectAttr "lambert14SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[38].dn"
		;
connectAttr "lambert14.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[39].dn"
		;
connectAttr "place2dTexture14.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[40].dn"
		;
connectAttr "cs_1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[41].dn"
		;
connectAttr "file10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[42].dn"
		;
connectAttr "place2dTexture10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[43].dn"
		;
connectAttr "file11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[44].dn"
		;
connectAttr "place2dTexture11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[45].dn"
		;
connectAttr "file12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[46].dn"
		;
connectAttr "place2dTexture12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[47].dn"
		;
connectAttr "file13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[48].dn"
		;
connectAttr "place2dTexture13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[49].dn"
		;
connectAttr "file9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[50].dn"
		;
connectAttr "place2dTexture9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[51].dn"
		;
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
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "lambert10SG.pa" ":renderPartition.st" -na;
connectAttr "lambert11SG.pa" ":renderPartition.st" -na;
connectAttr "lambert12SG.pa" ":renderPartition.st" -na;
connectAttr "lambert13SG.pa" ":renderPartition.st" -na;
connectAttr "lambert14SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert7.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert10.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert11.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert12.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert13.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert14.msg" ":defaultShaderList1.s" -na;
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
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Tavern_defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
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
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "cs_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.oc" ":lambert1.c";
connectAttr "Chimney_capShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Chimney_topShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Chimney_MidShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Chimney_BottomShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "file1.msg" ":initialMaterialInfo.t" -na;
// End of TavernFix.ma
