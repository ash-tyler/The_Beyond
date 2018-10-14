//Maya ASCII 2017ff05 scene
//Name: Male Pirate Character.ma
//Last modified: Sun, Sep 16, 2018 06:42:08 PM
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
	rename -uid "DDB3B893-4096-404D-B676-709B306CC67F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -29.099411300757239 108.90288027450336 327.25397179241583 ;
	setAttr ".r" -type "double3" -5.7383527295853405 -367.79999999979293 1.0032051520636194e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FBD11BA8-4D1A-75A3-97B7-FFA193A4FA21";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 326.25053603322164;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 15.476637840270996 100.86506652832031 1.6329317092895508 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "BCF51955-4F1E-DEED-E1B5-7296CD8EA11D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F4491C5E-4E7F-A561-5483-D49C660370A4";
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
	rename -uid "A50F4CC9-471F-420F-9BA5-EC92DD492461";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F97F2E7D-4F94-CF1A-6374-229A8AF0FBCC";
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
	rename -uid "681854BE-4253-DA23-4ADD-DCA4ACCA3760";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "884C74F3-41DF-7CA9-0A07-49A5BF2B30B6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "cadnav_com";
	rename -uid "45F576D0-47CD-08E6-61FA-0F94E2D2F1ED";
createNode mesh -n "cadnav_comShape" -p "cadnav_com";
	rename -uid "D34B82C8-4B74-410F-ED10-149BDA9F867A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52504999190568924 0.77925002574920654 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 521 ".pt";
	setAttr ".pt[71]" -type "float3" 0.13370255 1.5844597 0 ;
	setAttr ".pt[72]" -type "float3" 0.039783113 1.9836689 0 ;
	setAttr ".pt[73]" -type "float3" -0.18400186 1.93861 0 ;
	setAttr ".pt[74]" -type "float3" -0.15471469 1.5878474 0 ;
	setAttr ".pt[75]" -type "float3" 0.59827024 1.6871303 0 ;
	setAttr ".pt[76]" -type "float3" 0.45192227 2.0976417 0 ;
	setAttr ".pt[77]" -type "float3" 0.14481574 2.1545663 0 ;
	setAttr ".pt[78]" -type "float3" 0.53116846 2.2290745 0 ;
	setAttr ".pt[79]" -type "float3" 0.66960418 2.0059869 0 ;
	setAttr ".pt[80]" -type "float3" 0.19657874 1.8798891 0 ;
	setAttr ".pt[81]" -type "float3" 1.0445321 2.045783 0 ;
	setAttr ".pt[82]" -type "float3" 0.84665787 2.4166615 0 ;
	setAttr ".pt[83]" -type "float3" 0.81174618 2.3281913 0 ;
	setAttr ".pt[84]" -type "float3" 1.0364853 1.9105407 0 ;
	setAttr ".pt[85]" -type "float3" -0.95246792 4.2345314 0 ;
	setAttr ".pt[86]" -type "float3" -0.72843546 4.3075819 0 ;
	setAttr ".pt[87]" -type "float3" -0.72366846 4.3547163 0 ;
	setAttr ".pt[88]" -type "float3" -0.94442797 4.2692542 0 ;
	setAttr ".pt[89]" -type "float3" -1.1959796 3.9988799 0 ;
	setAttr ".pt[90]" -type "float3" -1.3131952 4.0580673 0 ;
	setAttr ".pt[91]" -type "float3" -1.1023407 4.3324122 0 ;
	setAttr ".pt[92]" -type "float3" -1.003633 4.2011728 0 ;
	setAttr ".pt[93]" -type "float3" -0.99634284 4.2362695 0 ;
	setAttr ".pt[94]" -type "float3" -1.2254919 4.0180998 0 ;
	setAttr ".pt[95]" -type "float3" -1.0542588 4.3695645 0 ;
	setAttr ".pt[96]" -type "float3" -0.73636407 4.5070114 0 ;
	setAttr ".pt[97]" -type "float3" -0.40519822 4.1749954 0 ;
	setAttr ".pt[98]" -type "float3" -0.36294696 4.2217112 0 ;
	setAttr ".pt[99]" -type "float3" -0.65398276 4.3533134 0 ;
	setAttr ".pt[100]" -type "float3" -0.67300153 4.3078303 0 ;
	setAttr ".pt[101]" -type "float3" -0.21528672 4.3940635 0 ;
	setAttr ".pt[102]" -type "float3" -0.62848938 4.5345311 0 ;
	setAttr ".pt[103]" -type "float3" -0.69909942 4.5322361 0 ;
	setAttr ".pt[104]" -type "float3" -1.0343699 4.4015861 0 ;
	setAttr ".pt[105]" -type "float3" -0.30363634 4.3118138 0 ;
	setAttr ".pt[106]" -type "float3" -0.65788376 4.5047865 0 ;
	setAttr ".pt[107]" -type "float3" -1.0856444 4.3670483 0 ;
	setAttr ".pt[108]" -type "float3" -1.339161 4.0966148 0 ;
	setAttr ".pt[109]" -type "float3" -1.2006651 4.6101117 0 ;
	setAttr ".pt[110]" -type "float3" -1.6326755 4.4782891 0 ;
	setAttr ".pt[111]" -type "float3" -1.7188722 4.6406989 0 ;
	setAttr ".pt[112]" -type "float3" -1.2313957 4.8183579 0 ;
	setAttr ".pt[113]" -type "float3" -1.1278043 4.6133313 0 ;
	setAttr ".pt[114]" -type "float3" -0.77749616 4.5346408 0 ;
	setAttr ".pt[115]" -type "float3" -0.7440868 4.5187616 0 ;
	setAttr ".pt[116]" -type "float3" -1.1101247 4.5978794 0 ;
	setAttr ".pt[117]" -type "float3" -1.1969382 4.7895212 0 ;
	setAttr ".pt[118]" -type "float3" -1.7141074 4.6049566 0 ;
	setAttr ".pt[119]" -type "float3" -1.6293612 4.4428573 0 ;
	setAttr ".pt[120]" -type "float3" -1.1824698 4.5941148 0 ;
	setAttr ".pt[121]" -type "float3" -0.63151777 4.6861749 0 ;
	setAttr ".pt[122]" -type "float3" -1.1242312 4.7938232 0 ;
	setAttr ".pt[123]" -type "float3" -0.54027045 4.6463199 0 ;
	setAttr ".pt[124]" -type "float3" -0.65362954 4.4779572 0 ;
	setAttr ".pt[125]" -type "float3" -0.34855136 4.204905 0 ;
	setAttr ".pt[126]" -type "float3" -0.16200815 4.3631363 0 ;
	setAttr ".pt[127]" -type "float3" -1.1589142 4.8272848 0 ;
	setAttr ".pt[128]" -type "float3" -0.65809667 4.7692027 0 ;
	setAttr ".pt[129]" -type "float3" -0.68826008 4.4959054 0 ;
	setAttr ".pt[130]" -type "float3" -0.33932656 4.2344241 0 ;
	setAttr ".pt[131]" -type "float3" -1.0290197 3.8434992 0 ;
	setAttr ".pt[132]" -type "float3" -0.96263468 3.8602839 0 ;
	setAttr ".pt[133]" -type "float3" -1.1934512 4.1684504 0 ;
	setAttr ".pt[134]" -type "float3" -1.2491225 4.1874294 0 ;
	setAttr ".pt[135]" -type "float3" -0.94462585 3.7675943 0 ;
	setAttr ".pt[136]" -type "float3" -0.98472565 3.7314658 0 ;
	setAttr ".pt[137]" -type "float3" -0.76180297 3.4344134 0 ;
	setAttr ".pt[138]" -type "float3" -0.72842062 3.5311756 0 ;
	setAttr ".pt[139]" -type "float3" -0.90073955 3.4817014 0 ;
	setAttr ".pt[140]" -type "float3" -1.0511345 3.7529783 0 ;
	setAttr ".pt[141]" -type "float3" -1.1672176 3.6617928 0 ;
	setAttr ".pt[142]" -type "float3" -1.0375288 3.4078736 0 ;
	setAttr ".pt[143]" -type "float3" -1.1258776 3.2682438 0 ;
	setAttr ".pt[144]" -type "float3" -1.2743866 3.6039495 0 ;
	setAttr ".pt[145]" -type "float3" -1.3549129 3.7066708 0 ;
	setAttr ".pt[146]" -type "float3" -1.2351472 3.7790756 0 ;
	setAttr ".pt[147]" -type "float3" -1.2647202 4.1544681 0 ;
	setAttr ".pt[148]" -type "float3" -1.3452319 4.193377 0 ;
	setAttr ".pt[149]" -type "float3" -1.4662926 4.0838385 0 ;
	setAttr ".pt[150]" -type "float3" -1.4036539 4.0907998 0 ;
	setAttr ".pt[151]" -type "float3" -1.081283 3.8297229 0 ;
	setAttr ".pt[152]" -type "float3" -0.95017296 3.2794294 0 ;
	setAttr ".pt[153]" -type "float3" -1.1958086 3.6411595 0 ;
	setAttr ".pt[154]" -type "float3" -0.68726867 2.8760614 0 ;
	setAttr ".pt[155]" -type "float3" -0.40879214 3.247592 0 ;
	setAttr ".pt[156]" -type "float3" -0.41433001 2.6039109 0 ;
	setAttr ".pt[157]" -type "float3" -0.098849438 2.8844118 0 ;
	setAttr ".pt[158]" -type "float3" -1.2474118 3.7490492 0 ;
	setAttr ".pt[159]" -type "float3" -1.4142852 4.1370373 0 ;
	setAttr ".pt[160]" -type "float3" -0.61776763 2.603519 0 ;
	setAttr ".pt[161]" -type "float3" -0.93807071 2.8871408 0 ;
	setAttr ".pt[162]" -type "float3" -0.59467059 4.8453603 0 ;
	setAttr ".pt[163]" -type "float3" -1.1293237 4.8999038 0 ;
	setAttr ".pt[164]" -type "float3" -0.1097745 4.479075 0 ;
	setAttr ".pt[165]" -type "float3" -0.47525921 4.7865806 0 ;
	setAttr ".pt[166]" -type "float3" -0.56778461 4.7341771 0 ;
	setAttr ".pt[167]" -type "float3" -0.17748049 4.4213781 0 ;
	setAttr ".pt[168]" -type "float3" 0.062596798 4.4244576 0 ;
	setAttr ".pt[169]" -type "float3" -0.0065036453 4.3441739 0 ;
	setAttr ".pt[170]" -type "float3" 0.20388128 4.1949644 0 ;
	setAttr ".pt[171]" -type "float3" 0.18564504 4.263587 0 ;
	setAttr ".pt[172]" -type "float3" -0.19656308 4.4242244 0 ;
	setAttr ".pt[173]" -type "float3" -0.082783103 4.5338173 0 ;
	setAttr ".pt[174]" -type "float3" -0.57329392 4.8227334 0 ;
	setAttr ".pt[175]" -type "float3" -0.59319025 4.7114253 0 ;
	setAttr ".pt[176]" -type "float3" -1.1333706 4.6956172 0 ;
	setAttr ".pt[177]" -type "float3" -0.67112756 4.7330761 0 ;
	setAttr ".pt[178]" -type "float3" -0.65106016 4.8416357 0 ;
	setAttr ".pt[179]" -type "float3" -1.187654 4.8136864 0 ;
	setAttr ".pt[180]" -type "float3" -1.1962454 4.6712294 0 ;
	setAttr ".pt[181]" -type "float3" -1.2476132 4.7900376 0 ;
	setAttr ".pt[182]" -type "float3" -1.6461673 4.4573741 0 ;
	setAttr ".pt[183]" -type "float3" -1.5857595 4.3812313 0 ;
	setAttr ".pt[184]" -type "float3" -1.2285544 4.8945951 0 ;
	setAttr ".pt[185]" -type "float3" -1.7763975 4.6871486 0 ;
	setAttr ".pt[186]" -type "float3" -0.046860747 4.3788619 0 ;
	setAttr ".pt[187]" -type "float3" 0.073466495 4.2590404 0 ;
	setAttr ".pt[188]" -type "float3" -0.016755741 4.2680998 0 ;
	setAttr ".pt[189]" -type "float3" -0.14434893 4.3757524 0 ;
	setAttr ".pt[190]" -type "float3" -0.42906836 4.7241478 0 ;
	setAttr ".pt[191]" -type "float3" -0.34716088 4.7203794 0 ;
	setAttr ".pt[192]" -type "float3" -0.45914847 4.7999196 0 ;
	setAttr ".pt[193]" -type "float3" -0.518112 4.7852645 0 ;
	setAttr ".pt[194]" -type "float3" -0.94395739 4.9536624 0 ;
	setAttr ".pt[195]" -type "float3" -0.91541463 5.0035386 0 ;
	setAttr ".pt[196]" -type "float3" -1.0156013 5.0273447 0 ;
	setAttr ".pt[197]" -type "float3" -1.0233605 4.9721332 0 ;
	setAttr ".pt[198]" -type "float3" -1.5692142 5.0245042 0 ;
	setAttr ".pt[199]" -type "float3" -1.5271599 5.0634522 0 ;
	setAttr ".pt[200]" -type "float3" 0.24176109 4.0666413 0 ;
	setAttr ".pt[201]" -type "float3" 0.41793099 3.669981 0 ;
	setAttr ".pt[202]" -type "float3" 0.39884347 3.5019779 0 ;
	setAttr ".pt[203]" -type "float3" -0.064592227 4.0759401 0 ;
	setAttr ".pt[204]" -type "float3" 0.061387718 3.8888335 0 ;
	setAttr ".pt[205]" -type "float3" -0.15428039 4.2227955 0 ;
	setAttr ".pt[206]" -type "float3" -0.46297508 4.5945745 0 ;
	setAttr ".pt[207]" -type "float3" -0.96811527 4.8631182 0 ;
	setAttr ".pt[208]" -type "float3" -0.54700494 4.6548805 0 ;
	setAttr ".pt[209]" -type "float3" -1.0466527 4.88587 0 ;
	setAttr ".pt[210]" -type "float3" -1.577971 4.9457746 0 ;
	setAttr ".pt[211]" -type "float3" -0.32702813 3.9897447 0 ;
	setAttr ".pt[212]" -type "float3" -0.38731188 4.1405115 0 ;
	setAttr ".pt[213]" -type "float3" -0.48655912 3.470191 0 ;
	setAttr ".pt[214]" -type "float3" -0.30220661 3.7662816 0 ;
	setAttr ".pt[215]" -type "float3" 0.22620404 3.2323012 0 ;
	setAttr ".pt[216]" -type "float3" -0.12576547 2.3167174 0 ;
	setAttr ".pt[217]" -type "float3" -0.35249421 2.3155074 0 ;
	setAttr ".pt[218]" -type "float3" -0.050005112 2.1401711 0 ;
	setAttr ".pt[219]" -type "float3" 0.39091557 2.4575045 0 ;
	setAttr ".pt[220]" -type "float3" 0.71520704 2.6601534 0 ;
	setAttr ".pt[221]" -type "float3" 0.1400125 4.2764511 0 ;
	setAttr ".pt[222]" -type "float3" 0.31768641 3.7974668 0 ;
	setAttr ".pt[223]" -type "float3" 0.083898149 3.6019063 0 ;
	setAttr ".pt[224]" -type "float3" -0.098299682 4.1264424 0 ;
	setAttr ".pt[225]" -type "float3" 0.39665094 3.7694817 0 ;
	setAttr ".pt[226]" -type "float3" -0.19803579 4.4529061 0 ;
	setAttr ".pt[227]" -type "float3" -0.62443739 4.7426105 0 ;
	setAttr ".pt[228]" -type "float3" -0.70276171 4.7621589 0 ;
	setAttr ".pt[229]" -type "float3" -1.1762156 4.7182941 0 ;
	setAttr ".pt[230]" -type "float3" -1.2364018 4.6932144 0 ;
	setAttr ".pt[231]" -type "float3" -1.608573 4.3834987 0 ;
	setAttr ".pt[232]" -type "float3" -0.70005089 3.1598821 0 ;
	setAttr ".pt[233]" -type "float3" -0.92784971 3.1722689 0 ;
	setAttr ".pt[234]" -type "float3" -0.68703979 3.4072204 0 ;
	setAttr ".pt[235]" -type "float3" -0.31609395 4.0595293 0 ;
	setAttr ".pt[236]" -type "float3" -0.32920307 4.1867933 0 ;
	setAttr ".pt[237]" -type "float3" -0.19673575 3.3254299 0 ;
	setAttr ".pt[238]" -type "float3" -0.29326928 3.9571071 0 ;
	setAttr ".pt[239]" -type "float3" -0.33287865 4.0621433 0 ;
	setAttr ".pt[240]" -type "float3" -0.3195715 4.0845785 0 ;
	setAttr ".pt[241]" -type "float3" -0.3189522 4.1166015 0 ;
	setAttr ".pt[242]" -type "float3" -0.37771636 4.2509866 0 ;
	setAttr ".pt[243]" -type "float3" -0.31053001 4.1021423 0 ;
	setAttr ".pt[244]" -type "float3" -0.33913773 4.2716813 0 ;
	setAttr ".pt[245]" -type "float3" -0.52166349 3.1593552 0 ;
	setAttr ".pt[246]" -type "float3" -0.18917869 2.4043834 0 ;
	setAttr ".pt[247]" -type "float3" -0.099850006 2.0609415 0 ;
	setAttr ".pt[248]" -type "float3" -0.57580602 4.5283332 0 ;
	setAttr ".pt[249]" -type "float3" -0.64522898 4.434371 0 ;
	setAttr ".pt[250]" -type "float3" -1.5481316 4.8584709 0 ;
	setAttr ".pt[251]" -type "float3" -1.1124882 4.7811589 0 ;
	setAttr ".pt[252]" -type "float3" -1.1631492 4.7172041 0 ;
	setAttr ".pt[253]" -type "float3" -1.5564899 4.809278 0 ;
	setAttr ".pt[254]" -type "float3" -1.0341815 4.7573504 0 ;
	setAttr ".pt[255]" -type "float3" -0.66143775 4.5937743 0 ;
	setAttr ".pt[256]" -type "float3" -0.71531165 4.5072227 0 ;
	setAttr ".pt[257]" -type "float3" -1.0857131 4.6906495 0 ;
	setAttr ".pt[258]" -type "float3" -0.7385093 4.6337738 0 ;
	setAttr ".pt[259]" -type "float3" -1.1050782 4.4679704 0 ;
	setAttr ".pt[260]" -type "float3" -1.1740777 4.4133267 0 ;
	setAttr ".pt[261]" -type "float3" -1.3999888 4.1359086 0 ;
	setAttr ".pt[262]" -type "float3" -0.64474028 4.6407523 0 ;
	setAttr ".pt[263]" -type "float3" -0.14489034 4.4582858 0 ;
	setAttr ".pt[264]" -type "float3" -0.0080688316 4.3795419 0 ;
	setAttr ".pt[265]" -type "float3" -0.044236898 4.3211122 0 ;
	setAttr ".pt[266]" -type "float3" -1.1114919 4.5095744 0 ;
	setAttr ".pt[267]" -type "float3" -0.7481705 4.496006 0 ;
	setAttr ".pt[268]" -type "float3" -0.67004102 4.4724727 0 ;
	setAttr ".pt[269]" -type "float3" -0.69042879 4.4991751 0 ;
	setAttr ".pt[270]" -type "float3" -1.1059968 4.5310168 0 ;
	setAttr ".pt[271]" -type "float3" -0.76715147 4.5260692 0 ;
	setAttr ".pt[272]" -type "float3" -1.1751683 4.4919958 0 ;
	setAttr ".pt[273]" -type "float3" -1.4674206 4.3087187 0 ;
	setAttr ".pt[274]" -type "float3" -1.4840671 4.2919598 0 ;
	setAttr ".pt[275]" -type "float3" -1.1691052 4.5100174 0 ;
	setAttr ".pt[276]" -type "float3" -0.17506199 4.2199235 0 ;
	setAttr ".pt[277]" -type "float3" 0.032909393 4.3704205 0 ;
	setAttr ".pt[278]" -type "float3" -0.33340317 3.2179465 0 ;
	setAttr ".pt[279]" -type "float3" -0.32068637 3.9306631 0 ;
	setAttr ".pt[280]" -type "float3" -0.36735377 3.8652043 0 ;
	setAttr ".pt[281]" -type "float3" -0.34054664 3.9369574 0 ;
	setAttr ".pt[282]" -type "float3" -0.31767869 3.9542279 0 ;
	setAttr ".pt[283]" -type "float3" 0.66908419 2.8525431 0 ;
	setAttr ".pt[284]" -type "float3" 0.75648731 2.6388874 0 ;
	setAttr ".pt[285]" -type "float3" -0.061570026 1.6978914 0 ;
	setAttr ".pt[286]" -type "float3" 0.093125105 2.4072905 0 ;
	setAttr ".pt[287]" -type "float3" 0.035883214 2.6168387 0 ;
	setAttr ".pt[288]" -type "float3" 0.35986432 2.6949053 0 ;
	setAttr ".pt[289]" -type "float3" 0.25114182 2.459372 0 ;
	setAttr ".pt[290]" -type "float3" 0.20079988 1.5784591 0 ;
	setAttr ".pt[291]" -type "float3" -0.047182694 1.5781673 0 ;
	setAttr ".pt[292]" -type "float3" 0.58692795 1.6637875 0 ;
	setAttr ".pt[293]" -type "float3" 0.95868933 1.8523277 0 ;
	setAttr ".pt[294]" -type "float3" 0.65359706 1.9277657 0 ;
	setAttr ".pt[295]" -type "float3" 0.95782709 1.9618787 0 ;
	setAttr ".pt[296]" -type "float3" 0.030228602 1.6696252 0 ;
	setAttr ".pt[297]" -type "float3" 0.25487661 1.8241831 0 ;
	setAttr ".pt[298]" -type "float3" 0.55837667 2.5685828 0 ;
	setAttr ".pt[299]" -type "float3" 0.61670625 2.413424 0 ;
	setAttr ".pt[300]" -type "float3" 0.48190889 2.3813913 0 ;
	setAttr ".pt[301]" -type "float3" 0.42267269 2.5556736 0 ;
	setAttr ".pt[302]" -type "float3" 0.3038103 2.3323045 0 ;
	setAttr ".pt[303]" -type "float3" 0.3195135 2.8224964 0 ;
	setAttr ".pt[304]" -type "float3" 0.41417608 0.67143977 0 ;
	setAttr ".pt[305]" -type "float3" 0.48138714 -0.60278547 0 ;
	setAttr ".pt[306]" -type "float3" -0.17992288 -0.53502512 0 ;
	setAttr ".pt[307]" -type "float3" -0.03966146 0.60675186 0 ;
	setAttr ".pt[308]" -type "float3" 1.1146747 0.78188169 0 ;
	setAttr ".pt[309]" -type "float3" 1.4344419 -0.57564914 0 ;
	setAttr ".pt[310]" -type "float3" 1.3789415 0.62551636 0 ;
	setAttr ".pt[311]" -type "float3" 1.7443441 -0.69284999 0 ;
	setAttr ".pt[312]" -type "float3" 0.89171231 0.5872795 0 ;
	setAttr ".pt[313]" -type "float3" 1.2038944 -0.78137827 0 ;
	setAttr ".pt[314]" -type "float3" 0.22806044 0.58166546 0 ;
	setAttr ".pt[315]" -type "float3" 0.14679079 -0.63927114 0 ;
	setAttr ".pt[316]" -type "float3" 0.9358933 1.9635249 0 ;
	setAttr ".pt[317]" -type "float3" 0.58983111 1.8220505 0 ;
	setAttr ".pt[318]" -type "float3" 0.15229511 1.7047783 0 ;
	setAttr ".pt[319]" -type "float3" -0.019220458 1.7517196 0 ;
	setAttr ".pt[320]" -type "float3" 0.73602986 2.0498841 0 ;
	setAttr ".pt[321]" -type "float3" 0.30790943 1.9549721 0 ;
	setAttr ".pt[335]" -type "float3" 0 -1.4676342 -0.91237974 ;
	setAttr ".pt[337]" -type "float3" 0 -2.4459457 0 ;
	setAttr ".pt[343]" -type "float3" 0 -1.8820019 0 ;
	setAttr ".pt[344]" -type "float3" 0 -1.8820019 0 ;
	setAttr ".pt[429]" -type "float3" -0.42553598 1.8183661 -0.06115976 ;
	setAttr ".pt[430]" -type "float3" -0.371858 1.979619 -0.070894822 ;
	setAttr ".pt[431]" -type "float3" -0.40751269 1.8933649 -0.066539936 ;
	setAttr ".pt[432]" -type "float3" -0.46872932 1.6897035 -0.053436834 ;
	setAttr ".pt[785]" -type "float3" -0.1396444 1.3217187 0.024225941 ;
	setAttr ".pt[786]" -type "float3" 0.10350184 1.2898927 0.057302725 ;
	setAttr ".pt[787]" -type "float3" 0.11710612 1.58244 0.029354431 ;
	setAttr ".pt[788]" -type "float3" -0.074549787 1.6554928 -0.0015740934 ;
	setAttr ".pt[789]" -type "float3" -0.41320369 1.732758 -0.050978206 ;
	setAttr ".pt[790]" -type "float3" -0.52109116 1.3899226 -0.029515116 ;
	setAttr ".pt[791]" -type "float3" -0.14102241 1.6622052 -0.010415478 ;
	setAttr ".pt[792]" -type "float3" -0.17387268 1.4250627 0.0095602451 ;
	setAttr ".pt[793]" -type "float3" -0.56213516 1.5082709 -0.04653668 ;
	setAttr ".pt[794]" -type "float3" -0.45663932 1.7028484 -0.053283259 ;
	setAttr ".pt[795]" -type "float3" -0.87422717 1.5575644 -0.089847438 ;
	setAttr ".pt[796]" -type "float3" -0.72385645 1.8729162 -0.10331173 ;
	setAttr ".pt[797]" -type "float3" -0.87564826 1.5105811 -0.085265145 ;
	setAttr ".pt[798]" -type "float3" -0.70422345 1.862834 -0.099880405 ;
	setAttr ".pt[799]" -type "float3" 0.69271553 3.427187 -0.086739168 ;
	setAttr ".pt[800]" -type "float3" 0.68086505 3.479135 -0.093453623 ;
	setAttr ".pt[801]" -type "float3" 0.49911371 3.5388179 -0.12181247 ;
	setAttr ".pt[802]" -type "float3" 0.50870997 3.4762077 -0.11429521 ;
	setAttr ".pt[803]" -type "float3" 0.89597136 3.2513089 -0.043975867 ;
	setAttr ".pt[804]" -type "float3" 0.73508465 3.4029174 -0.07907971 ;
	setAttr ".pt[805]" -type "float3" 0.81231076 3.5120578 -0.080647402 ;
	setAttr ".pt[806]" -type "float3" 0.98997247 3.3034372 -0.037711676 ;
	setAttr ".pt[807]" -type "float3" 0.91575795 3.2884669 -0.045308437 ;
	setAttr ".pt[808]" -type "float3" 0.72391981 3.4547195 -0.085695222 ;
	setAttr ".pt[809]" -type "float3" 0.51079428 3.634254 -0.13004051 ;
	setAttr ".pt[810]" -type "float3" 0.77236682 3.5394378 -0.088323891 ;
	setAttr ".pt[811]" -type "float3" 0.24937978 3.3535066 -0.13371421 ;
	setAttr ".pt[812]" -type "float3" 0.46370268 3.4734945 -0.11954679 ;
	setAttr ".pt[813]" -type "float3" 0.44244319 3.5347915 -0.12836303 ;
	setAttr ".pt[814]" -type "float3" 0.2088021 3.4169383 -0.14511864 ;
	setAttr ".pt[815]" -type "float3" 0.41653496 3.6835861 -0.14660867 ;
	setAttr ".pt[816]" -type "float3" 0.083640136 3.5538292 -0.17434601 ;
	setAttr ".pt[817]" -type "float3" 0.75016773 3.5929489 -0.096467376 ;
	setAttr ".pt[818]" -type "float3" 0.47406158 3.6845956 -0.13964756 ;
	setAttr ".pt[819]" -type "float3" 0.16433865 3.4542379 -0.15435451 ;
	setAttr ".pt[820]" -type "float3" 0.44708738 3.6286192 -0.13729225 ;
	setAttr ".pt[821]" -type "float3" 1.0058695 3.3589659 -0.041381706 ;
	setAttr ".pt[822]" -type "float3" 0.79275751 3.5671582 -0.088626765 ;
	setAttr ".pt[823]" -type "float3" 0.86920613 3.8287086 -0.10572053 ;
	setAttr ".pt[824]" -type "float3" 0.88906735 3.9978714 -0.12040854 ;
	setAttr ".pt[825]" -type "float3" 1.2895634 3.8780379 -0.059101433 ;
	setAttr ".pt[826]" -type "float3" 1.2237242 3.7419357 -0.053405855 ;
	setAttr ".pt[827]" -type "float3" 0.80991542 3.8278346 -0.11291203 ;
	setAttr ".pt[828]" -type "float3" 0.79086351 3.8422151 -0.1167072 ;
	setAttr ".pt[829]" -type "float3" 0.49528283 3.7613878 -0.14481667 ;
	setAttr ".pt[830]" -type "float3" 0.52740049 3.7465277 -0.13936865 ;
	setAttr ".pt[831]" -type "float3" 0.85563207 4.0065117 -0.12538864 ;
	setAttr ".pt[832]" -type "float3" 0.84975976 3.8424983 -0.10950434 ;
	setAttr ".pt[833]" -type "float3" 1.2168604 3.7407408 -0.054127708 ;
	setAttr ".pt[834]" -type "float3" 1.2813795 3.8773437 -0.060035948 ;
	setAttr ".pt[835]" -type "float3" 0.3983281 3.898314 -0.1705842 ;
	setAttr ".pt[836]" -type "float3" 0.79634011 4.0070648 -0.13272484 ;
	setAttr ".pt[837]" -type "float3" 0.32518527 3.8616629 -0.17585433 ;
	setAttr ".pt[838]" -type "float3" 0.025172446 3.613308 -0.18754672 ;
	setAttr ".pt[839]" -type "float3" 0.18212754 3.4866633 -0.15545315 ;
	setAttr ".pt[840]" -type "float3" 0.42287293 3.7236714 -0.14988887 ;
	setAttr ".pt[841]" -type "float3" 0.42452353 3.9302673 -0.17060281 ;
	setAttr ".pt[842]" -type "float3" 0.82995915 4.0015559 -0.12803914 ;
	setAttr ".pt[843]" -type "float3" 0.4559685 3.7103601 -0.14447755 ;
	setAttr ".pt[844]" -type "float3" 0.17952517 3.4793601 -0.15503322 ;
	setAttr ".pt[845]" -type "float3" 0.73361838 3.2845397 -0.067274787 ;
	setAttr ".pt[846]" -type "float3" 0.90497917 3.5668592 -0.074817412 ;
	setAttr ".pt[847]" -type "float3" 0.86240906 3.5369134 -0.077012584 ;
	setAttr ".pt[848]" -type "float3" 0.6830045 3.2744684 -0.072469674 ;
	setAttr ".pt[849]" -type "float3" 0.67060596 3.1991849 -0.066370033 ;
	setAttr ".pt[850]" -type "float3" 0.70063245 3.1907964 -0.061833911 ;
	setAttr ".pt[851]" -type "float3" 0.50119752 2.9958253 -0.066581815 ;
	setAttr ".pt[852]" -type "float3" 0.5280239 2.9341149 -0.057040118 ;
	setAttr ".pt[853]" -type "float3" 0.64647448 2.9422193 -0.04331677 ;
	setAttr ".pt[854]" -type "float3" 0.76060998 3.1756096 -0.052932076 ;
	setAttr ".pt[855]" -type "float3" 0.8574664 3.1061482 -0.034006998 ;
	setAttr ".pt[856]" -type "float3" 0.94356441 3.0778284 -0.020568296 ;
	setAttr ".pt[857]" -type "float3" 0.83219528 2.7945352 -0.0055609969 ;
	setAttr ".pt[858]" -type "float3" 0.75979471 2.8873754 -0.023850134 ;
	setAttr ".pt[859]" -type "float3" 0.91037059 3.2006717 -0.03708116 ;
	setAttr ".pt[860]" -type "float3" 1.0066836 3.1632671 -0.021468392 ;
	setAttr ".pt[861]" -type "float3" 0.98530644 3.5633121 -0.064595334 ;
	setAttr ".pt[862]" -type "float3" 0.92251784 3.5189748 -0.06781593 ;
	setAttr ".pt[863]" -type "float3" 1.037625 3.470818 -0.048806988 ;
	setAttr ".pt[864]" -type "float3" 1.0868647 3.4781842 -0.043506883 ;
	setAttr ".pt[865]" -type "float3" 0.78353822 3.237154 -0.056347836 ;
	setAttr ".pt[866]" -type "float3" 0.68546265 2.8152285 -0.025672577 ;
	setAttr ".pt[867]" -type "float3" 0.87514126 3.1239839 -0.033642553 ;
	setAttr ".pt[868]" -type "float3" 0.24602504 2.7652869 -0.074572474 ;
	setAttr ".pt[869]" -type "float3" 0.48389664 2.4659438 -0.015058794 ;
	setAttr ".pt[870]" -type "float3" 0.0074724667 2.4340091 -0.070323102 ;
	setAttr ".pt[871]" -type "float3" 0.27358609 2.2075498 -0.014720882 ;
	setAttr ".pt[872]" -type "float3" 0.91436565 3.2136812 -0.037907746 ;
	setAttr ".pt[873]" -type "float3" 1.0408288 3.5320082 -0.054608736 ;
	setAttr ".pt[874]" -type "float3" 0.44574761 2.179673 0.0092402957 ;
	setAttr ".pt[875]" -type "float3" 0.6936779 2.4527678 0.01203311 ;
	setAttr ".pt[876]" -type "float3" 0.80026734 4.0796943 -0.13959585 ;
	setAttr ".pt[877]" -type "float3" 0.36701721 4.0108857 -0.1858259 ;
	setAttr ".pt[878]" -type "float3" 0.27143416 3.9578471 -0.19219217 ;
	setAttr ".pt[879]" -type "float3" -0.017178304 3.6881342 -0.20032245 ;
	setAttr ".pt[880]" -type "float3" 0.3520802 3.8972602 -0.17615606 ;
	setAttr ".pt[881]" -type "float3" 0.043648448 3.6209292 -0.18604979 ;
	setAttr ".pt[882]" -type "float3" -0.14780393 3.5917006 -0.20659791 ;
	setAttr ".pt[883]" -type "float3" -0.24162088 3.4440866 -0.20317224 ;
	setAttr ".pt[884]" -type "float3" -0.26419273 3.4394789 -0.20547722 ;
	setAttr ".pt[885]" -type "float3" -0.093259007 3.5498314 -0.19566172 ;
	setAttr ".pt[886]" -type "float3" 0.059800364 3.6202517 -0.18399794 ;
	setAttr ".pt[887]" -type "float3" 0.37500244 3.87075 -0.17065755 ;
	setAttr ".pt[888]" -type "float3" 0.35916308 3.9427319 -0.17989007 ;
	setAttr ".pt[889]" -type "float3" -0.032238543 3.6860781 -0.20196345 ;
	setAttr ".pt[890]" -type "float3" 0.81497252 3.8804355 -0.11761661 ;
	setAttr ".pt[891]" -type "float3" 0.85868186 3.9644947 -0.12076026 ;
	setAttr ".pt[892]" -type "float3" 0.42189273 3.9616842 -0.17410664 ;
	setAttr ".pt[893]" -type "float3" 0.43785098 3.8916364 -0.16505536 ;
	setAttr ".pt[894]" -type "float3" 0.86671603 3.863513 -0.10954996 ;
	setAttr ".pt[895]" -type "float3" 1.1905057 3.6477904 -0.047952861 ;
	setAttr ".pt[896]" -type "float3" 1.2401767 3.6985841 -0.046996657 ;
	setAttr ".pt[897]" -type "float3" 0.90800041 3.9482431 -0.11305929 ;
	setAttr ".pt[898]" -type "float3" 0.88119924 4.0792561 -0.12961438 ;
	setAttr ".pt[899]" -type "float3" 1.3323715 3.9334664 -0.059457034 ;
	setAttr ".pt[900]" -type "float3" -0.074019253 3.6490216 -0.2033418 ;
	setAttr ".pt[901]" -type "float3" 0.0094079282 3.6286101 -0.19103168 ;
	setAttr ".pt[902]" -type "float3" -0.09061937 3.530302 -0.19336036 ;
	setAttr ".pt[903]" -type "float3" -0.16827194 3.5435791 -0.2042391 ;
	setAttr ".pt[904]" -type "float3" 0.16014369 3.9464936 -0.20470746 ;
	setAttr ".pt[905]" -type "float3" 0.2306017 3.9316339 -0.19455184 ;
	setAttr ".pt[906]" -type "float3" 0.2491122 4.0163584 -0.20085685 ;
	setAttr ".pt[907]" -type "float3" 0.61503327 4.2012849 -0.17465015 ;
	setAttr ".pt[908]" -type "float3" 0.64270753 4.1447277 -0.16552617 ;
	setAttr ".pt[909]" -type "float3" 0.3012403 3.9863482 -0.19141807 ;
	setAttr ".pt[910]" -type "float3" 0.69586718 4.2252159 -0.16714796 ;
	setAttr ".pt[911]" -type "float3" 1.1112189 4.2757883 -0.12126927 ;
	setAttr ".pt[912]" -type "float3" 1.1489079 4.2324862 -0.11225764 ;
	setAttr ".pt[913]" -type "float3" 0.70673692 4.1636086 -0.15957594 ;
	setAttr ".pt[914]" -type "float3" -0.29952574 3.3763428 -0.20342344 ;
	setAttr ".pt[915]" -type "float3" -0.42243591 2.9911356 -0.179515 ;
	setAttr ".pt[916]" -type "float3" -0.40830749 2.8867927 -0.16721609 ;
	setAttr ".pt[917]" -type "float3" -0.15190628 3.2598677 -0.1735056 ;
	setAttr ".pt[918]" -type "float3" -0.054037161 3.4160705 -0.17730343 ;
	setAttr ".pt[919]" -type "float3" 0.014778234 3.5411458 -0.18151703 ;
	setAttr ".pt[920]" -type "float3" 0.25521544 3.8623242 -0.18451245 ;
	setAttr ".pt[921]" -type "float3" 0.3218568 3.9157763 -0.18174165 ;
	setAttr ".pt[922]" -type "float3" 0.6589576 4.1035237 -0.15935917 ;
	setAttr ".pt[923]" -type "float3" 0.7222811 4.1252809 -0.15378678 ;
	setAttr ".pt[924]" -type "float3" 1.1533158 4.1948366 -0.10790455 ;
	setAttr ".pt[925]" -type "float3" 0.16353245 3.3472109 -0.14361759 ;
	setAttr ".pt[926]" -type "float3" 0.20834996 3.4740653 -0.1509579 ;
	setAttr ".pt[927]" -type "float3" 0.3062636 2.9345818 -0.084316134 ;
	setAttr ".pt[928]" -type "float3" 0.14860219 3.1674242 -0.12724842 ;
	setAttr ".pt[929]" -type "float3" -0.26458782 2.6952548 -0.1301775 ;
	setAttr ".pt[930]" -type "float3" 0.049792629 1.9425783 -0.015372456 ;
	setAttr ".pt[931]" -type "float3" 0.24343398 1.9013047 0.012582407 ;
	setAttr ".pt[932]" -type "float3" -0.0075685731 1.797483 -0.0077255066 ;
	setAttr ".pt[933]" -type "float3" -0.37422854 2.0351129 -0.076804318 ;
	setAttr ".pt[934]" -type "float3" -0.63557738 2.1438105 -0.11989886 ;
	setAttr ".pt[935]" -type "float3" -0.19851163 3.4220443 -0.19564748 ;
	setAttr ".pt[936]" -type "float3" 0.002741463 3.291265 -0.15769604 ;
	setAttr ".pt[937]" -type "float3" -0.13060823 2.8501186 -0.1294059 ;
	setAttr ".pt[938]" -type "float3" -0.32967579 3.0198617 -0.17103381 ;
	setAttr ".pt[939]" -type "float3" -0.39967039 3.0291147 -0.18056484 ;
	setAttr ".pt[940]" -type "float3" 0.4061999 3.8615069 -0.16589105 ;
	setAttr ".pt[941]" -type "float3" 0.066978395 3.6069365 -0.18176849 ;
	setAttr ".pt[942]" -type "float3" 0.85498261 3.8693614 -0.11158277 ;
	setAttr ".pt[943]" -type "float3" 0.4693445 3.8811488 -0.16012664 ;
	setAttr ".pt[944]" -type "float3" 1.2142248 3.6221085 -0.042440441 ;
	setAttr ".pt[945]" -type "float3" 0.90447235 3.8522172 -0.1037705 ;
	setAttr ".pt[946]" -type "float3" 0.49956813 2.6282983 -0.029571993 ;
	setAttr ".pt[947]" -type "float3" 0.67943925 2.6760879 -0.012325011 ;
	setAttr ".pt[948]" -type "float3" 0.47639745 2.8624635 -0.056124821 ;
	setAttr ".pt[949]" -type "float3" 0.15842342 3.3729606 -0.14685187 ;
	setAttr ".pt[950]" -type "float3" 0.16519718 3.4801893 -0.15687644 ;
	setAttr ".pt[951]" -type "float3" 0.10305746 2.6472468 -0.080175772 ;
	setAttr ".pt[952]" -type "float3" 0.16435882 3.1695023 -0.12552415 ;
	setAttr ".pt[953]" -type "float3" 0.17719939 3.3029222 -0.13745552 ;
	setAttr ".pt[954]" -type "float3" 0.1935081 3.2584925 -0.13095479 ;
	setAttr ".pt[955]" -type "float3" 0.21736705 3.4560528 -0.14802714 ;
	setAttr ".pt[956]" -type "float3" 0.17062217 3.3575397 -0.14379281 ;
	setAttr ".pt[957]" -type "float3" 0.15716615 3.3834939 -0.14807267 ;
	setAttr ".pt[958]" -type "float3" 0.18036984 3.4989243 -0.15691023 ;
	setAttr ".pt[959]" -type "float3" 0.36060151 2.58672 -0.042425379 ;
	setAttr ".pt[960]" -type "float3" 0.11648309 1.9217553 -0.005075702 ;
	setAttr ".pt[961]" -type "float3" 0.053014632 1.6371517 0.015945783 ;
	setAttr ".pt[962]" -type "float3" 0.35532892 3.7772632 -0.16360812 ;
	setAttr ".pt[963]" -type "float3" 0.40964127 3.7289457 -0.15204753 ;
	setAttr ".pt[964]" -type "float3" 1.1361821 4.0959601 -0.099997506 ;
	setAttr ".pt[965]" -type "float3" 1.140414 4.0773106 -0.097589858 ;
	setAttr ".pt[966]" -type "float3" 0.82301486 3.9844818 -0.1271632 ;
	setAttr ".pt[967]" -type "float3" 0.78436041 4.0113029 -0.13462488 ;
	setAttr ".pt[968]" -type "float3" 0.72139382 3.987946 -0.13999139 ;
	setAttr ".pt[969]" -type "float3" 0.42304978 3.8354349 -0.16118261 ;
	setAttr ".pt[970]" -type "float3" 0.46458277 3.7921715 -0.15170288 ;
	setAttr ".pt[971]" -type "float3" 0.76068318 3.9597254 -0.13231014 ;
	setAttr ".pt[972]" -type "float3" 0.80888069 3.6340356 -0.093418032 ;
	setAttr ".pt[973]" -type "float3" 0.50671107 3.7512684 -0.14238898 ;
	setAttr ".pt[974]" -type "float3" 0.86642116 3.5926194 -0.082159847 ;
	setAttr ".pt[975]" -type "float3" 1.0569038 3.3794618 -0.037190542 ;
	setAttr ".pt[976]" -type "float3" 0.43020809 3.7531228 -0.15197009 ;
	setAttr ".pt[977]" -type "float3" 0.028514842 3.582232 -0.18399011 ;
	setAttr ".pt[978]" -type "float3" -0.054094754 3.489769 -0.184772 ;
	setAttr ".pt[979]" -type "float3" -0.080775246 3.5125127 -0.19035061 ;
	setAttr ".pt[980]" -type "float3" 0.50729597 3.6988425 -0.13700928 ;
	setAttr ".pt[981]" -type "float3" 0.80254805 3.7252603 -0.10343154 ;
	setAttr ".pt[982]" -type "float3" 0.4653804 3.6709113 -0.13932803 ;
	setAttr ".pt[983]" -type "float3" 0.4443849 3.6761765 -0.14243905 ;
	setAttr ".pt[984]" -type "float3" 0.52699834 3.69661 -0.13436401 ;
	setAttr ".pt[985]" -type "float3" 0.80221832 3.7168455 -0.10262007 ;
	setAttr ".pt[986]" -type "float3" 0.85473913 3.7140517 -0.095888436 ;
	setAttr ".pt[987]" -type "float3" 1.0965416 3.5814281 -0.052771457 ;
	setAttr ".pt[988]" -type "float3" 0.85398501 3.703104 -0.094872653 ;
	setAttr ".pt[989]" -type "float3" 1.1152685 3.5426149 -0.046542533 ;
	setAttr ".pt[990]" -type "float3" 0.062325805 3.3729253 -0.15864757 ;
	setAttr ".pt[991]" -type "float3" -0.1300734 3.5917072 -0.20442161 ;
	setAttr ".pt[992]" -type "float3" 0.18239748 3.1762218 -0.12398959 ;
	setAttr ".pt[993]" -type "float3" 0.21080549 2.5996485 -0.062126964 ;
	setAttr ".pt[994]" -type "float3" 0.2059837 3.2127113 -0.1247879 ;
	setAttr ".pt[995]" -type "float3" 0.17413065 3.2236681 -0.12980831 ;
	setAttr ".pt[996]" -type "float3" 0.18649074 3.2470865 -0.13066162 ;
	setAttr ".pt[997]" -type "float3" -0.59237009 2.243953 -0.12473251 ;
	setAttr ".pt[998]" -type "float3" -0.65704179 2.0616455 -0.11421569 ;
	setAttr ".pt[999]" -type "float3" 0.032273646 1.3349857 0.043991622 ;
	setAttr ".pt[1000]" -type "float3" -0.10572474 1.8709574 -0.027216379 ;
	setAttr ".pt[1001]" -type "float3" -0.067041926 2.0571189 -0.041314509 ;
	setAttr ".pt[1002]" -type "float3" -0.23558348 1.9062986 -0.04673915 ;
	setAttr ".pt[1003]" -type "float3" -0.33071271 2.0962386 -0.077649832 ;
	setAttr ".pt[1004]" -type "float3" -0.19210464 1.3032262 0.019656885 ;
	setAttr ".pt[1005]" -type "float3" 0.016813911 1.2744839 0.04821888 ;
	setAttr ".pt[1006]" -type "float3" -0.5091455 1.3599086 -0.025009573 ;
	setAttr ".pt[1007]" -type "float3" -0.81006527 1.4622985 -0.072324254 ;
	setAttr ".pt[1008]" -type "float3" -0.54838234 1.4524589 -0.039197434 ;
	setAttr ".pt[1009]" -type "float3" -0.80264527 1.4992453 -0.075153843 ;
	setAttr ".pt[1010]" -type "float3" -0.042384226 1.311959 0.037156098 ;
	setAttr ".pt[1011]" -type "float3" -0.22144683 1.3859692 0.0076768957 ;
	setAttr ".pt[1012]" -type "float3" -0.49011207 1.9914937 -0.086616822 ;
	setAttr ".pt[1013]" -type "float3" -0.53323418 1.8612094 -0.078721069 ;
	setAttr ".pt[1014]" -type "float3" -0.37606227 1.9687119 -0.070306756 ;
	setAttr ".pt[1015]" -type "float3" -0.41945538 1.8229899 -0.060881265 ;
	setAttr ".pt[1016]" -type "float3" -0.27494672 1.7997274 -0.040782638 ;
	setAttr ".pt[1017]" -type "float3" -0.30101392 2.2006881 -0.084578104 ;
	setAttr ".pt[1018]" -type "float3" -0.31464741 0.40661794 0.095386729 ;
	setAttr ".pt[1019]" -type "float3" 0.043119084 0.44502968 0.13542601 ;
	setAttr ".pt[1020]" -type "float3" 0.25857776 -0.85281414 0.25686273 ;
	setAttr ".pt[1022]" -type "float3" -0.88971204 0.47911602 0.017437713 ;
	setAttr ".pt[1024]" -type "float3" -1.3078243 -1.0358558 0.083064578 ;
	setAttr ".pt[1025]" -type "float3" -1.1136025 0.41138715 -0.0031954956 ;
	setAttr ".pt[1026]" -type "float3" -0.72781813 0.46434337 0.038811415 ;
	setAttr ".pt[1027]" -type "float3" -0.88073629 -1.0035391 0.13223255 ;
	setAttr ".pt[1028]" -type "float3" -0.18614329 0.47927755 0.10380875 ;
	setAttr ".pt[1029]" -type "float3" -0.0208496 -0.86236638 0.22352047 ;
	setAttr ".pt[1030]" -type "float3" -0.51427913 1.4811622 -0.037916083 ;
	setAttr ".pt[1031]" -type "float3" -0.79020393 1.5307437 -0.076815277 ;
	setAttr ".pt[1032]" -type "float3" -0.15527727 1.4044881 0.01392655 ;
	setAttr ".pt[1033]" -type "float3" -0.011276742 1.4189568 0.030142726 ;
	setAttr ".pt[1034]" -type "float3" -0.62170511 1.5650793 -0.059602503 ;
	setAttr ".pt[1035]" -type "float3" -0.26888165 1.4949371 -0.0091797048 ;
	setAttr ".pt[1276]" -type "float3" -0.4319188 1.8717604 -0.06734927 ;
	setAttr ".pt[1277]" -type "float3" -0.38588369 1.9976983 -0.074447379 ;
	setAttr ".pt[1278]" -type "float3" -0.28495485 2.3096981 -0.09364295 ;
	setAttr ".pt[1279]" -type "float3" -0.34834149 2.117743 -0.081991561 ;
	setAttr ".pt[1280]" -type "float3" 0.48874658 2.3707345 0 ;
	setAttr ".pt[1281]" -type "float3" 0.55524689 2.2719712 0 ;
	setAttr ".pt[1282]" -type "float3" 0.47302911 2.5239909 0 ;
	setAttr ".pt[1283]" -type "float3" 0.41633552 2.5637989 0 ;
	setAttr ".pt[1284]" -type "float3" 0.49450576 2.4368076 0 ;
	setAttr ".pt[1285]" -type "float3" 0.39153209 2.7950435 0 ;
	setAttr ".pt[1286]" -type "float3" 0.30415788 3.0128732 0 ;
	setAttr ".pt[1287]" -type "float3" 0.43072745 2.5728061 0 ;
createNode mesh -n "polySurfaceShape1" -p "cadnav_com";
	rename -uid "9BC77186-4F6F-D2E1-2B1A-78853D7BA7C3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.047100000083446503 0.56120002269744873 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4248 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.0294 0.54589999 0.0623 0.5449
		 0.0286 0.52920002 0.0142 0.52719998 0.18440001 0.59289998 0.15449999 0.58969998 0.1541
		 0.62760001 0.1813 0.62819999 0.2164 0.58569998 0.2138 0.61369997 0.25260001 0.59469998
		 0.2445 0.57380003 0.15000001 0.53079998 0.1123 0.53299999 0.1164 0.57849997 0.18889999
		 0.53219998 0.2262 0.53210002 0.26499999 0.53780001 0.30309999 0.48159999 0.26949999
		 0.4761 0.29750001 0.52899998 0.2265 0.47659999 0.1917 0.48469999 0.148 0.48100001
		 0.1052 0.48730001 0.073600002 0.5327 0.035599999 0.51929998 0.067199998 0.48679999
		 0.0288 0.48550001 0.148 0.4463 0.1031 0.4427 0.19050001 0.4522 0.2255 0.45159999
		 0.2712 0.4522 0.30759999 0.44459999 0.3382 0.47909999 0.3396 0.4391 0.2739 0.4294
		 0.2721 0.41960001 0.23019999 0.42039999 0.22660001 0.4348 0.1913 0.43959999 0.1876
		 0.42660001 0.156 0.4235 0.15000001 0.43399999 0.060600001 0.44960001 0.021199999
		 0.44369999 0.022500001 0.42860001 0.056200001 0.43279999 0.0559 0.41620001 0.0173
		 0.4122 0.021299999 0.3847 0.061999999 0.39120001 0.061900001 0.36930001 0.0177 0.35859999
		 0.1088 0.39140001 0.1103 0.41280001 0.18719999 0.4005 0.15459999 0.39680001 0.2298
		 0.3976 0.273 0.39770001 0.26980001 0.3741 0.23019999 0.37490001 0.18709999 0.35100001
		 0.1874 0.37650001 0.2221 0.35299999 0.1096 0.3531 0.107 0.37400001 0.15449999 0.3696
		 0.15109999 0.34959999 0.059799999 0.35210001 0.022600001 0.33970001 0.2647 0.3545
		 0.3251 0.36520001 0.31040001 0.3497 0.29100001 0.35330001 0.3028 0.36750001 0.30809999
		 0.41150001 0.30939999 0.426 0.3391 0.42480001 0.34009999 0.40830001 0.33739999 0.38440001
		 0.3037 0.3888 0.078599997 0.57200003 0.3373 0.5151 0.33759999 0.53939998 0.3326 0.52219999
		 0.2965 0.54329997 0.1071 0.6081 0.106 0.42460001 0.27810001 0.57139999 0.2834 0.79500002
		 0.27090001 0.79360002 0.2757 0.81 0.28650001 0.80870003 0.2868 0.7845 0.2746 0.78070003
		 0.31889999 0.74049997 0.3096 0.74769998 0.31439999 0.75480002 0.32550001 0.7482 0.3053
		 0.76120001 0.29640001 0.75269997 0.28310001 0.76380002 0.2958 0.77209997 0.237 0.8836
		 0.2394 0.87690002 0.2323 0.87410003 0.23 0.88090003 0.28760001 0.67390001 0.28470001
		 0.671 0.278 0.67940003 0.28209999 0.68150002 0.2331 0.89300001 0.23639999 0.88529998
		 0.2295 0.88270003 0.2269 0.89170003 0.28080001 0.6832 0.27700001 0.68080002 0.27070001
		 0.68879998 0.27630001 0.6904 0.2439 0.86729997 0.23649999 0.86320001 0.233 0.8721
		 0.2401 0.87540001 0.25870001 0.6839 0.25139999 0.68989998 0.2481 0.70039999 0.26120001
		 0.68699998 0.26629999 0.67439997 0.2606 0.68199998 0.26269999 0.68550003 0.26969999
		 0.67629999 0.2658 0.70249999 0.2723 0.70169997 0.2753 0.69209999 0.26949999 0.69080001
		 0.2748 0.66280001 0.2676 0.67250001 0.27079999 0.67460001 0.2782 0.66530001 0.2879
		 0.66799998 0.28209999 0.6631 0.1894 0.69220001 0.1753 0.685 0.17200001 0.68919998
		 0.1874 0.6972 0.2076 0.87800002 0.2138 0.8689 0.20649999 0.86430001 0.2005 0.87379998
		 0.18260001 0.70499998 0.1674 0.6972 0.1657 0.70179999 0.1795 0.70910001 0.198 0.71520001
		 0.1846 0.7062 0.18179999 0.71039999 0.19310001 0.71810001 0.19930001 0.87559998 0.1913
		 0.88700002 0.1989 0.89090002 0.20640001 0.87980002 0.2007 0.71689999 0.1957 0.71990001
		 0.20190001 0.72670001 0.21269999 0.72790003 0.20389999 0.70020002 0.19149999 0.69370002
		 0.1895 0.69840002 0.20379999 0.7069 0.2155 0.86650002 0.223 0.85519999 0.21529999
		 0.85089999 0.20829999 0.8617 0.2076 0.78719997 0.2079 0.77990001 0.1972 0.78399998
		 0.1964 0.78850001 0.2106 0.78039998 0.21080001 0.7877 0.22130001 0.78560001 0.2191
		 0.77869999 0.21789999 0.81510001 0.2077 0.81169999 0.2057 0.8168 0.21160001 0.82139999
		 0.20999999 0.80729997 0.21950001 0.81059998 0.22139999 0.8021 0.21070001 0.801 0.2071
		 0.80049998 0.2059 0.8064 0.1929 0.81099999 0.1945 0.80790001 0.1903 0.80659997 0.18780001
		 0.81089997 0.1963 0.79689997 0.1962 0.80059999 0.2054 0.81089997 0.2034 0.8161 0.22229999
		 0.79390001 0.2106 0.79460001 0.23469999 0.79259998 0.23100001 0.77749997 0.2472 0.79339999
		 0.24529999 0.778 0.2075 0.79409999 0.1974 0.79299998 0.2485 0.80779999 0.23379999
		 0.80559999 0.20110001 0.71100003 0.1873 0.70319998 0.2184 0.72060001 0.2045 0.71310002
		 0.20640001 0.70840001 0.22480001 0.71240002 0.2379 0.71160001 0.22939999 0.71640003
		 0.23 0.72600001 0.2447 0.71390003 0.22589999 0.71090001 0.2359 0.70749998 0.2325
		 0.69230002 0.2277 0.6929 0.2235 0.67409998 0.2272 0.69019997 0.2318 0.68989998 0.2278
		 0.67320001 0.223 0.67180002 0.2273 0.67110002 0.22409999 0.6584 0.2199 0.6573 0.1846
		 0.70169997 0.1714 0.69440001 0.2139 0.73890001 0.2189 0.7378 0.2191 0.7288 0.2124
		 0.73019999 0.1979 0.7428 0.2017 0.74620003 0.19769999 0.74860001 0.1948 0.74510002
		 0.18179999 0.7529 0.18430001 0.75700003 0.18170001 0.7586 0.1795 0.7543 0.1663 0.76359999
		 0.1699 0.76569998 0.226 0.73909998;
	setAttr ".uvst[0].uvsp[250:499]" 0.2476 0.73720002 0.2445 0.74800003 0.21969999
		 0.7471 0.22579999 0.74970001 0.215 0.74650002 0.2023 0.75150001 0.18610001 0.7622
		 0.1992 0.75349998 0.1839 0.76340002 0.1699 0.77069998 0.2175 0.7568 0.21349999 0.75559998
		 0.22409999 0.77329999 0.22220001 0.76160002 0.24439999 0.76130003 0.2606 0.79280001
		 0.26359999 0.81190002 0.26539999 0.79229999 0.26460001 0.77530003 0.27399999 0.759
		 0.2561 0.7112 0.26710001 0.72250003 0.2791 0.71969998 0.26719999 0.70929998 0.257
		 0.7281 0.24429999 0.70160002 0.2367 0.68870002 0.2357 0.6864 0.23190001 0.67140001
		 0.2314 0.66930002 0.22750001 0.65499997 0.2366 0.8211 0.22830001 0.81279999 0.2227
		 0.82209998 0.2156 0.84619999 0.2075 0.84219998 0.205 0.84649998 0.2131 0.8495 0.29210001
		 0.71539998 0.27630001 0.70639998 0.24600001 0.86409998 0.23890001 0.85960001 0.23109999
		 0.85549998 0.2323 0.86150002 0.22149999 0.84979999 0.2252 0.85769999 0.2017 0.72890002
		 0.2203 0.70300001 0.2167 0.70359999 0.2456 0.82950002 0.27239999 0.8258 0.2818 0.82260001
		 0.2049 0.86000001 0.1978 0.85610002 0.19400001 0.73860002 0.18340001 0.88169998 0.1927
		 0.87290001 0.18629999 0.86930001 0.17820001 0.87769997 0.1777 0.7493 0.19069999 0.74110001
		 0.19589999 0.85839999 0.18780001 0.86750001 0.1944 0.87120003 0.20280001 0.86250001
		 0.1753 0.75089997 0.1647 0.75940001 0.20280001 0.75929999 0.1866 0.7687 0.1996 0.7608
		 0.1727 0.77389997 0.18430001 0.76969999 0.26679999 0.68690002 0.27340001 0.6785 0.27489999
		 0.6767 0.27990001 0.67030001 0.2483 0.69 0.2651 0.68889999 0.2561 0.7026 0.25569999
		 0.70679998 0.2471 0.70709997 0.2186 0.67390001 0.22059999 0.68849999 0.2203 0.86860001
		 0.2274 0.87269998 0.2192 0.87080002 0.2141 0.88059998 0.2211 0.88380003 0.2262 0.87480003
		 0.24089999 0.68099999 0.2366 0.6692 0.2183 0.67150003 0.2167 0.65990001 0.213 0.88230002
		 0.2071 0.8908 0.2138 0.89490002 0.22 0.8854 0.22660001 0.6505 0.2198 0.65319997 0.2359
		 0.66680002 0.2317 0.65439999 0.26589999 0.70639998 0.2421 0.68370003 0.2068 0.70190001
		 0.2212 0.69150001 0.1672 0.68660003 0.1626 0.69419998 0.2234 0.72240001 0.2483 0.86180001
		 0.2599 0.84820002 0.25260001 0.83780003 0.24160001 0.85600001 0.2191 0.84069997 0.212
		 0.82709998 0.2087 0.83600003 0.2246 0.84530002 0.234 0.85140002 0.28560001 0.74379998
		 0.29089999 0.74779999 0.27399999 0.70459998 0.29179999 0.81830001 0.29100001 0.83450001
		 0.30019999 0.83149999 0.19320001 0.79290003 0.1945 0.80360001 0.19059999 0.80190003
		 0.1626 0.7665 0.16580001 0.77200001 0.28479999 0.83829999 0.2771 0.83829999 0.3127
		 0.73430002 0.30770001 0.72899997 0.29969999 0.73659998 0.30849999 0.73720002 0.28709999
		 0.7956 0.2897 0.8082 0.2902 0.78579998 0.29809999 0.77420002 0.3163 0.75739998 0.3073
		 0.76440001 0.29460001 0.81669998 0.3265 0.75150001 0.30180001 0.82870001 0.29859999
		 0.74360001 0.3019 0.74730003 0.3066 0.7439 0.3039 0.74080002 0.31110001 0.74059999
		 0.29679999 0.73400003 0.1964 0.9497 0.1829 0.97439998 0.206 0.97869998 0.2156 0.95499998
		 0.28080001 0.95520002 0.2904 0.9835 0.30860001 0.9734 0.29460001 0.94910002 0.26480001
		 0.96109998 0.27039999 0.98970002 0.2462 0.96030003 0.24789999 0.99080002 0.2317 0.95779997
		 0.2263 0.98390001 0.2597 0.93150002 0.2455 0.93300003 0.2359 0.93339998 0.22840001
		 0.93150002 0.2701 0.92790002 0.2791 0.92449999 0.2105 0.92449999 0.18870001 0.38730001
		 0.15279999 0.3856 0.0471 0.56120002 0.3096 0.90179998 0.29229999 0.89660001 0.31169999
		 0.87620002 0.3414 0.87949997 0.32949999 0.89950001 0.33199999 0.85409999 0.3096 0.84969997
		 0.28830001 0.87370002 0.29229999 0.85890001 0.3012 0.85180002 0.029999999 0.54699999
		 0.0137 0.5266 0.028100001 0.52920002 0.063500002 0.54430002 0.078100003 0.57200003
		 0.046 0.5607 0.2861 0.85909998 0.30230001 0.85119998 0.30899999 0.87739998 0.32229999
		 0.84969997 0.33790001 0.86699998 0.3344 0.89389998 0.31380001 0.90380001 0.28549999
		 0.88249999 0.30059999 0.90289998 0.2911 0.89679998 0.72250003 0.94400001 0.70740002
		 0.9454 0.7076 0.93900001 0.72439998 0.93470001 0.66460001 0.95520002 0.67339998 0.96289998
		 0.67119998 0.9813 0.66610003 0.97839999 0.73979998 0.94419998 0.74019998 0.93419999
		 0.70160002 0.92989999 0.7202 0.92610002 0.6882 0.94620001 0.67760003 0.9357 0.74049997
		 0.92500001 0.65240002 0.93599999 0.77170002 0.94059998 0.77179998 0.94770002 0.75709999
		 0.94529998 0.7561 0.93580002 0.77630001 0.93120003 0.7608 0.92760003 0.80080003 0.93790001
		 0.79070002 0.9483 0.82849997 0.93760002 0.81449997 0.95649999 0.68790001 0.95209998
		 0.81419998 0.9874 0.80549997 0.96640003 0.78960001 0.95520002 0.65390003 0.9874 0.85820001
		 0.57050002 0.86610001 0.56770003 0.86900002 0.59030002 0.85820001 0.59109998 0.45719999
		 0.2044 0.45500001 0.1666 0.50209999 0.1742 0.50550002 0.2017 0.45460001 0.1277 0.5029
		 0.1259 0.42840001 0.077200003 0.4553 0.073899999 0.42840001 0.1304 0.42699999 0.0309
		 0.45469999 0.028899999 0.42649999 0.016000001 0.45750001 0.015 0.428 0.1629 0.43169999
		 0.1893 0.49329999 0.0196;
	setAttr ".uvst[0].uvsp[500:749]" 0.50700003 0.031500001 0.50129998 0.079899997
		 0.41240001 0.2076 0.3585 0.20739999 0.36140001 0.1767 0.4084 0.16859999 0.3583 0.13060001
		 0.4059 0.1294 0.40099999 0.075499997 0.39840001 0.0297 0.4007 0.0138 0.35049999 0.0363
		 0.35980001 0.015 0.35229999 0.088600002 0.4289 0.1869 0.4761 0.2272 0.39019999 0.2315
		 0.51300001 0.40630001 0.5061 0.41530001 0.52429998 0.42539999 0.53060001 0.41769999
		 0.53659999 0.4366 0.5438 0.42910001 0.55699998 0.40889999 0.54250002 0.3998 0.53549999
		 0.4113 0.54930001 0.42179999 0.5248 0.38699999 0.5187 0.3978 0.47330001 0.3962 0.46990001
		 0.41429999 0.40849999 0.41409999 0.42019999 0.43939999 0.4382 0.42449999 0.43149999
		 0.40939999 0.4233 0.38330001 0.40470001 0.38049999 0.389 0.414 0.3926 0.3779 0.463
		 0.36849999 0.44139999 0.3793 0.4497 0.4034 0.49880001 0.38350001 0.4752 0.35859999
		 0.50660002 0.3743 0.45899999 0.3405 0.4454 0.34560001 0.48089999 0.34720001 0.46129999
		 0.33379999 0.44139999 0.33539999 0.4429 0.32749999 0.4217 0.3276 0.42460001 0.3378
		 0.40560001 0.33610001 0.39379999 0.34850001 0.4007 0.35249999 0.41249999 0.34380001
		 0.4066 0.359 0.41580001 0.3524 0.38209999 0.37400001 0.42879999 0.3479 0.37619999
		 0.4102 0.36770001 0.43270001 0.36039999 0.45159999 0.37360001 0.45660001 0.38010001
		 0.43650001 0.3917 0.4393 0.38150001 0.4603 0.3917 0.4623 0.37540001 0.47850001 0.3863
		 0.4797 0.3536 0.46869999 0.36700001 0.4745 0.9303 0.64459997 0.95819998 0.64410001
		 0.95959997 0.60869998 0.93790001 0.61110002 0.9404 0.67830002 0.9544 0.68080002 0.95529997
		 0.6649 0.93099999 0.6688 0.45289999 0.4183 0.97680002 0.6063 0.97600001 0.5855 0.95810002
		 0.58740002 0.98030001 0.64139998 0.97109997 0.67640001 0.98030001 0.66289997 0.95520002
		 0.56230003 0.94129997 0.57090002 0.93839997 0.5887 0.96939999 0.56720001 0.82690001
		 0.2737 0.77780002 0.27430001 0.82389998 0.40270001 0.84990001 0.40169999 0.87339997
		 0.27849999 0.87339997 0.4014 0.92000002 0.2737 0.89700001 0.40169999 0.92299998 0.40270001
		 0.9691 0.27430001 0.8527 0.47189999 0.82999998 0.47130001 0.83130002 0.48210001 0.85320002
		 0.4842 0.93720001 0.46810001 0.93720001 0.47780001 0.9483 0.47729999 0.94749999 0.4673
		 0.89240003 0.47130001 0.89139998 0.4844 0.90719998 0.48179999 0.90810001 0.4702 0.8707
		 0.47310001 0.87080002 0.48390001 0.86790001 0.52410001 0.88489997 0.5248 0.8901 0.5079
		 0.86979997 0.50700003 0.9228 0.4799 0.92339998 0.46919999 0.829 0.4971 0.85180002
		 0.498 0.83029997 0.4646 0.85170001 0.46290001 0.84740001 0.42070001 0.82800001 0.4249
		 0.96700001 0.4754 0.96689999 0.4657 0.93910003 0.50849998 0.95249999 0.50669998 0.95039999
		 0.49450001 0.93889999 0.49579999 0.92409998 0.50989997 0.92439997 0.4975 0.90619999
		 0.5097 0.90289998 0.52460003 0.86989999 0.49869999 0.8502 0.50709999 0.93620002 0.4208
		 0.93650001 0.46070001 0.94700003 0.46039999 0.94630003 0.41999999 0.90670002 0.42030001
		 0.9084 0.4603 0.9235 0.4603 0.92049998 0.421 0.96539998 0.45899999 0.96649998 0.41780001
		 0.90700001 0.4984 0.97070003 0.50120002 0.96990001 0.4903 0.94230002 0.53259999 0.92290002
		 0.53439999 0.92610002 0.54960001 0.94410002 0.54750001 0.88090003 0.53560001 0.86580002
		 0.53500003 0.86580002 0.551 0.87980002 0.5517 0.82590002 0.5183 0.82550001 0.5298
		 0.84930003 0.53369999 0.8484 0.51980001 0.84750003 0.55140001 0.94230002 0.52389997
		 0.92259997 0.52530003 0.95389998 0.52219999 0.95569998 0.53109998 0.9763 0.52429998
		 0.9734 0.51270002 0.9576 0.5449 0.98869997 0.54070002 0.8258 0.54860002 0.89249998
		 0.4192 0.8933 0.4605 0.87120003 0.41780001 0.8707 0.46070001 0.89060003 0.4991 0.82920003
		 0.50700003 0.89999998 0.55059999 0.90039998 0.53549999 0.61449999 0.0504 0.58749998
		 0.072400004 0.59280002 0.0788 0.61769998 0.060199998 0.57779998 0.1982 0.59119999
		 0.20999999 0.5934 0.2044 0.58410001 0.1935 0.56410003 0.1582 0.5679 0.1798 0.57340002
		 0.1752 0.56849998 0.15700001 0.61330003 0.226 0.61769998 0.2175 0.56110001 0.1366
		 0.56739998 0.1371 0.56950003 0.1042 0.57440001 0.1073 0.59299999 0.022299999 0.56279999
		 0.046599999 0.55299997 0.21709999 0.57300001 0.236 0.53179997 0.1662 0.53939998 0.19419999
		 0.59570003 0.25440001 0.52950001 0.1356 0.53899997 0.090099998 0.57840002 0.88529998
		 0.62 0.85829997 0.66280001 0.9059 0.62029999 0.94919997 0.4436 0.9698 0.38370001
		 0.95569998 0.40380001 0.92009997 0.4531 0.93150002 0.4524 0.88059998 0.4808 0.88080001
		 0.4826 0.93120003 0.36950001 0.86860001 0.3734 0.82080001 0.4118 0.82160002 0.41209999
		 0.88010001 0.4427 0.74699998 0.44220001 0.78399998 0.40220001 0.78329998 0.39739999
		 0.75300002 0.4463 0.8215 0.4786 0.81870002 0.47729999 0.77920002 0.5636 0.78420001
		 0.52829999 0.89590001 0.4973 0.80779999 0.61290002 0.78049999 0.5007 0.72710001 0.56269997
		 0.72460002 0.6293 0.71399999 0.68559998 0.70929998 0.67199999 0.74519998 0.63300002
		 0.75160003 0.62129998 0.66469997 0.56190002 0.65359998 0.49290001 0.64200002 0.50400001
		 0.5848 0.55299997 0.5952 0.62840003 0.60640001 0.4761 0.74650002 0.3538 0.65530002;
	setAttr ".uvst[0].uvsp[750:999]" 0.39480001 0.66350001 0.396 0.70249999 0.34599999
		 0.70880002 0.4348 0.66670001 0.43700001 0.70829999 0.47330001 0.66619998 0.47440001
		 0.7001 0.3486 0.74419999 0.68629998 0.66960001 0.66979998 0.60939997 0.36739999 0.79229999
		 0.35749999 0.90539998 0.33930001 0.92379999 0.58969998 0.97259998 0.48390001 0.9684
		 0.62480003 0.85409999 0.66680002 0.89840001 0.36410001 0.86790001 0.36700001 0.82139999
		 0.3369 0.91670001 0.3531 0.90039998 0.40880001 0.98049998 0.3303 0.77340001 0.63260001
		 0.1229 0.68089998 0.066699997 0.68180001 0.205 0.63319999 0.2045 0.74239999 0.033100002
		 0.73259997 0.2036 0.81459999 0.029999999 0.7712 0.2096 0.93879998 0.073299997 0.85250002
		 0.2393 0.80430001 0.219 0.87480003 0.0429 0.9928 0.1088 0.89340001 0.2622 0.954 0.73089999
		 0.90859997 0.77630001 0.86500001 0.73460001 0.9149 0.68360001 0.97939998 0.76319999
		 0.92720002 0.79759997 0.82990003 0.70550001 0.801 0.68269998 0.85360003 0.6063 0.88859999
		 0.64960003 0.4242 0.55699998 0.3928 0.55870003 0.38699999 0.49219999 0.4294 0.4808
		 0.48789999 0.461 0.47479999 0.55849999 0.53750002 0.5643 0.56669998 0.4425 0.35210001
		 0.56529999 0.3484 0.50220001 0.72320002 0.49829999 0.76719999 0.52219999 0.72500002
		 0.62910002 0.67799997 0.60280001 0.6857 0.4736 0.6408 0.58829999 0.76630002 0.65579998
		 0.8132 0.56209999 0.60079998 0.5751 0.63270003 0.4359 0.69139999 0.46219999 0.73110002
		 0.48899999 0.72479999 0.80089998 0.76599997 0.80500001 0.76599997 0.89840001 0.72100002
		 0.88620001 0.67439997 0.87489998 0.68480003 0.80089998 0.73790002 0.75370002 0.72600001
		 0.75230002 0.71240002 0.75220001 0.75599998 0.67799997 0.73869997 0.72009999 0.72680002
		 0.7191 0.72930002 0.67140001 0.71390003 0.71929997 0.70300001 0.67869997 0.1042 0.1551
		 0.069700003 0.17470001 0.063000001 0.1056 0.096199997 0.097499996 0.13410001 0.1505
		 0.13339999 0.099399999 0.1743 0.146 0.17309999 0.1029 0.21349999 0.1017 0.2067 0.1461
		 0.2999 0.109 0.28639999 0.168 0.26140001 0.15889999 0.271 0.1076 0.2427 0.105 0.2342
		 0.1538 0.018999999 0.079899997 0.063600004 0.063000001 0.024900001 0.1173 0.034499999
		 0.1848 0.3299 0.1177 0.30579999 0.062799998 0.33739999 0.081600003 0.31400001 0.1811
		 0.23 0.18350001 0.2042 0.17839999 0.1373 0.18350001 0.1733 0.1787 0.1117 0.1876 0.079800002
		 0.1927 0.052999999 0.21529999 0.27410001 0.1988 0.25220001 0.1884 0.29820001 0.2128
		 0.1007 0.22679999 0.080799997 0.2427 0.24070001 0.2177 0.22499999 0.2124 0.2043 0.2114
		 0.1728 0.2084 0.2588 0.2286 0.27489999 0.2411 0.1419 0.2113 0.1192 0.21699999 0.13699999
		 0.029999999 0.17659999 0.038699999 0.092799999 0.0232 0.2219 0.036499999 0.2764 0.028999999
		 0.2471 0.0359 0.018200001 0.0788 0.051800001 0.055300001 0.31459999 0.0561 0.33840001
		 0.080700003 0.30059999 0.0135 0.068300001 0.0135 0.87919998 0.59179997 0.88749999
		 0.59130001 0.88749999 0.61970001 0.87690002 0.61750001 0.40889999 0.59460002 0.4781
		 0.5952 0.47760001 0.6135 0.40669999 0.61180001 0.479 0.63200003 0.40599999 0.6293
		 0.345 0.61369997 0.3502 0.59740001 0.3452 0.62809998 0.2498 0.6099 0.26499999 0.59859997
		 0.2649 0.62580001 0.41260001 0.59680003 0.47870001 0.59619999 0.47760001 0.61250001
		 0.41060001 0.61360002 0.47940001 0.6329 0.41029999 0.6318 0.3418 0.61189997 0.3466
		 0.59579998 0.34220001 0.6304 0.2502 0.60939997 0.26820001 0.59850001 0.26359999 0.62559998
		 0.41580001 0.59420002 0.47839999 0.5977 0.47850001 0.611 0.40830001 0.6103 0.4795
		 0.63010001 0.40779999 0.62970001 0.34310001 0.61199999 0.34959999 0.59530002 0.34380001
		 0.63029999 0.24869999 0.61059999 0.2676 0.59729999 0.2647 0.62629998 0.41679999 0.59369999
		 0.4777 0.59509999 0.47909999 0.61580002 0.41460001 0.61040002 0.48019999 0.6347 0.4111
		 0.62989998 0.34439999 0.61180001 0.34900001 0.59539998 0.3452 0.6293 0.2494 0.61199999
		 0.27110001 0.59689999 0.26370001 0.62440002 0.41499999 0.59509999 0.477 0.59649998
		 0.47679999 0.61409998 0.41249999 0.6117 0.47760001 0.63300002 0.40869999 0.6311 0.34119999
		 0.61009997 0.3457 0.59670001 0.3423 0.62889999 0.24969999 0.61140001 0.26890001 0.59740001
		 0.26539999 0.62660003 0.41639999 0.5952 0.47780001 0.59579998 0.47850001 0.61299998
		 0.4152 0.6117 0.4808 0.63139999 0.4131 0.63090003 0.3439 0.6124 0.34670001 0.59619999
		 0.34810001 0.63150001 0.2482 0.61110002 0.26840001 0.59820002 0.2658 0.6261 0.41659999
		 0.59490001 0.47839999 0.59619999 0.47940001 0.6092 0.41429999 0.6124 0.4808 0.63099998
		 0.41069999 0.63050002 0.3441 0.61150002 0.3477 0.59649998 0.3461 0.62889999 0.2494
		 0.60939997 0.26789999 0.59799999 0.26530001 0.6261 0.46160001 0.616 0.46239999 0.60170001
		 0.39050001 0.59780002 0.38780001 0.61510003 0.46419999 0.61489999 0.46560001 0.60070002
		 0.3978 0.5977 0.39320001 0.61650002 0.46650001 0.61400002 0.46869999 0.59680003 0.36829999
		 0.59799999 0.36669999 0.61150002 0.3258 0.61290002 0.33329999 0.597 0.32890001 0.5959
		 0.31420001 0.61320001 0.333 0.59420002 0.33090001 0.61269999 0.33759999 0.61290002
		 0.33989999 0.59469998 0.26449999 0.59560001 0.2494 0.61229998;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.47679999 0.61549997 0.4799 0.59909999 0.3971
		 0.59450001 0.39430001 0.61250001 0.46180001 0.61189997 0.4632 0.59609997 0.38999999
		 0.59560001 0.38749999 0.61189997 0.2494 0.61260003 0.3202 0.61229998 0.32839999 0.59450001
		 0.26660001 0.59740001 0.24969999 0.61089998 0.27430001 0.59530002 0.26320001 0.59469998
		 0.2492 0.60729998 0.26449999 0.59500003 0.2484 0.60829997 0.33950001 0.63050002 0.39539999
		 0.63069999 0.3369 0.62980002 0.3881 0.62989998 0.46129999 0.62800002 0.3883 0.62989998
		 0.46560001 0.62919998 0.39289999 0.63050002 0.3671 0.62910002 0.46619999 0.62840003
		 0.32679999 0.6286 0.32870001 0.63080001 0.33399999 0.62819999 0.36680001 0.62910002
		 0.2665 0.62650001 0.47839999 0.6304 0.4621 0.6286 0.2642 0.62580001 0.2726 0.63010001
		 0.26230001 0.62580001 0.26350001 0.62400001 0.0142 0.66399997 0.0126 0.64850003 0.0405
		 0.65149999 0.035700001 0.66939998 0.096699998 0.68910003 0.108 0.65700001 0.12970001
		 0.66619998 0.1211 0.69819999 0.092 0.62300003 0.0601 0.62889999 0.0341 0.62110001
		 0.033 0.6124 0.0115 0.60299999 0.0101 0.5679 0.032099999 0.57239997 0.075300001 0.58270001
		 0.076099999 0.66189998 0.0126 0.61809999 0.076200001 0.69630003 0.055 0.68760002
		 0.092900001 0.70200002 0.1178 0.72479999 0.1564 0.70929998 0.14650001 0.73339999
		 0.0071 0.9756 0.0071 0.9623 0.0174 0.96109998 0.0198 0.9756 0.046799999 0.84450001
		 0.027000001 0.84369999 0.029100001 0.8204 0.0473 0.82489997 0.047200002 0.85619998
		 0.0274 0.85960001 0.094400004 0.88080001 0.077600002 0.86089998 0.093400002 0.83920002
		 0.13869999 0.8642 0.068400003 0.83310002 0.065700002 0.85250002 0.030300001 0.95679998
		 0.031300001 0.97030002 0.027100001 0.91549999 0.030200001 0.92180002 0.023800001
		 0.92339998 0.0218 0.91890001 0.082599998 0.90920001 0.074500002 0.89469999 0.1016
		 0.90390003 0.040399998 0.96539998 0.040800001 0.94800001 0.057300001 0.94370002 0.055599999
		 0.96020001 0.1128 0.81040001 0.1485 0.8466 0.056699999 0.87129998 0.045299999 0.86809999
		 0.060400002 0.86220002 0.089100003 0.97189999 0.073700003 0.96020001 0.0814 0.94270003
		 0.1059 0.9522 0.033399999 0.90969998 0.0178 0.9059 0.016899999 0.89749998 0.031399999
		 0.89560002 0.0184 0.87159997 0.0071 0.87290001 0.0071 0.86449999 0.024599999 0.98320001
		 0.034699999 0.97680002 0.047400001 0.98430002 0.0359 0.9932 0.1132 0.74790001 0.104
		 0.7859 0.067000002 0.76740003 0.082900003 0.73019999 0.038899999 0.74720001 0.048999999
		 0.72890002 0.015699999 0.92549998 0.0071 0.92540002 0.0071 0.921 0.0148 0.92119998
		 0.0071 0.88239998 0.0071 0.87959999 0.0174 0.87959999 0.0154 0.88380003 0.016000001
		 0.889 0.0071 0.88749999 0.1433 0.75919998 0.13410001 0.79820001 0.064900003 0.88090003
		 0.0766 0.88139999 0.0616 0.88739997 0.055799998 0.88029999 0.044300001 0.8786 0.045600001
		 0.87629998 0.055399999 0.87879997 0.070699997 0.8689 0.063500002 0.87580001 0.055300001
		 0.88090003 0.044399999 0.88099998 0.0071 0.93669999 0.0162 0.93730003 0.040199999
		 0.93049997 0.057399999 0.92390001 0.0071 0.89770001 0.052499998 0.90759999 0.046599999
		 0.89170003 0.0385 0.92000002 0.028899999 0.88480002 0.029300001 0.88129997 0.0297
		 0.87779999 0.031800002 0.86979997 0.0071 0.9041 0.0071 0.85799998 0.0071 0.81339997
		 0.0184 0.91240001 0.0096000005 0.91420001 0.0286 0.93370003 0.043299999 0.97329998
		 0.051899999 0.97780001 0.068099998 0.9777 0.079099998 0.99190003 0.0071 0.99250001
		 0.0071 0.91439998 0.082000002 0.92699999 0.1048 0.92860001 0.1652 0.88739997 0.1777
		 0.9217 0.083700001 0.7809 0.037 0.79259998 0.1083 0.97610003 0.18080001 0.96030003
		 0.054200001 0.70990002 0.58389997 0.27289999 0.56339997 0.33160001 0.48210001 0.31819999
		 0.49649999 0.25729999 0.64999998 0.29539999 0.62190002 0.35409999 0.41249999 0.31470001
		 0.41780001 0.25260001 0.71670002 0.42809999 0.66540003 0.3804 0.7008 0.32359999 0.7608
		 0.3777 0.82020003 0.4479 0.76520002 0.48800001 0.2403 0.25909999 0.3044 0.2527 0.30599999
		 0.31720001 0.24250001 0.3256 0.19159999 0.2588 0.199 0.3258 0.35679999 0.3193 0.359
		 0.24349999 0.41389999 0.24510001 0.40849999 0.32069999 0.12630001 0.32089999 0.035700001
		 0.33289999 0.0198 0.2667 0.12 0.25690001 0.35429999 0.2509 0.35210001 0.31310001
		 0.63260001 0.80970001 0.63270003 0.78920001 0.6473 0.79280001 0.6476 0.80930001 0.63209999
		 0.82410002 0.64999998 0.81800002 0.66570002 0.78390002 0.66979998 0.80540001 0.65100002
		 0.77029997 0.66710001 0.82480001 0.64670002 0.83810002 0.7712 0.98430002 0.77429998
		 0.97070003 0.79909998 0.97659999 0.80140001 0.98519999 0.72610003 0.98729998 0.72799999
		 0.96520001 0.68660003 0.98729998 0.68879998 0.96039999 0.93769997 0.9684 0.98400003
		 0.96869999 0.98229998 0.97979999 0.93980002 0.98589998 0.89780003 0.99159998 0.89380002
		 0.9684 0.83749998 0.99540001 0.83319998 0.9684 0.8409 0.83960003 0.82690001 0.80440003
		 0.84039998 0.79250002 0.86729997 0.82419997 0.89429998 0.86290002 0.86870003 0.8775
		 0.93589997 0.84320003 0.89679998 0.79720002 0.90759999 0.7888 0.949 0.83710003 0.85460001
		 0.76889998 0.80269998 0.78149998 0.80599999 0.81279999 0.78140002 0.81330001 0.78119999
		 0.77939999 0.824 0.78399998 0.83209997 0.75910002 0.91140002 0.89560002 0.91600001
		 0.92659998;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.88450003 0.921 0.89130002 0.89719999 0.81840003
		 0.84909999 0.8513 0.89279997 0.80680001 0.75059998 0.95599997 0.88529998 0.96359998
		 0.92140001 0.91670001 0.96149999 0.96850002 0.958 0.86129999 0.75880003 0.83670002
		 0.74730003 0.80870003 0.73909998 0.9691 0.87989998 0.97820002 0.91930002 0.98259997
		 0.9576 0.87660003 0.95560002 0.82130003 0.92269999 0.78130001 0.86000001 0.78109998
		 0.7482 0.78109998 0.73680001 0.18440001 0.59289998 0.1813 0.62819999 0.1541 0.62760001
		 0.15449999 0.58969998 0.2164 0.58569998 0.2445 0.57380003 0.25260001 0.59469998 0.2138
		 0.61369997 0.15000001 0.53079998 0.15449999 0.58969998 0.1164 0.57849997 0.1123 0.53299999
		 0.15449999 0.58969998 0.15000001 0.53079998 0.18889999 0.53219998 0.18440001 0.59289998
		 0.18440001 0.59289998 0.18889999 0.53219998 0.2262 0.53210002 0.2164 0.58569998 0.2445
		 0.57380003 0.2164 0.58569998 0.2262 0.53210002 0.26499999 0.53780001 0.30309999 0.48159999
		 0.29750001 0.52899998 0.26499999 0.53780001 0.26949999 0.4761 0.26949999 0.4761 0.26499999
		 0.53780001 0.2262 0.53210002 0.2265 0.47659999 0.1917 0.48469999 0.2265 0.47659999
		 0.2262 0.53210002 0.18889999 0.53219998 0.148 0.48100001 0.1917 0.48469999 0.18889999
		 0.53219998 0.15000001 0.53079998 0.148 0.48100001 0.15000001 0.53079998 0.1123 0.53299999
		 0.1052 0.48730001 0.035599999 0.51929998 0.073600002 0.5327 0.073600002 0.5327 0.035599999
		 0.51929998 0.0288 0.48550001 0.067199998 0.48679999 0.1123 0.53299999 0.073600002
		 0.5327 0.067199998 0.48679999 0.1052 0.48730001 0.148 0.4463 0.148 0.48100001 0.1052
		 0.48730001 0.1031 0.4427 0.148 0.48100001 0.148 0.4463 0.19050001 0.4522 0.1917 0.48469999
		 0.2265 0.47659999 0.1917 0.48469999 0.19050001 0.4522 0.2255 0.45159999 0.2265 0.47659999
		 0.2255 0.45159999 0.2712 0.4522 0.26949999 0.4761 0.30309999 0.48159999 0.26949999
		 0.4761 0.2712 0.4522 0.30759999 0.44459999 0.30309999 0.48159999 0.30759999 0.44459999
		 0.3396 0.4391 0.3382 0.47909999 0.2739 0.4294 0.22660001 0.4348 0.23019999 0.42039999
		 0.2721 0.41960001 0.1913 0.43959999 0.15000001 0.43399999 0.156 0.4235 0.1876 0.42660001
		 0.1031 0.4427 0.1052 0.48730001 0.067199998 0.48679999 0.060600001 0.44960001 0.021199999
		 0.44369999 0.060600001 0.44960001 0.067199998 0.48679999 0.0288 0.48550001 0.022500001
		 0.42860001 0.0173 0.4122 0.0559 0.41620001 0.056200001 0.43279999 0.021299999 0.3847
		 0.0177 0.35859999 0.061900001 0.36930001 0.061999999 0.39120001 0.1088 0.39140001
		 0.1103 0.41280001 0.0559 0.41620001 0.061999999 0.39120001 0.18719999 0.4005 0.1876
		 0.42660001 0.156 0.4235 0.15459999 0.39680001 0.2298 0.3976 0.23019999 0.37490001
		 0.26980001 0.3741 0.273 0.39770001 0.18709999 0.35100001 0.2221 0.35299999 0.23019999
		 0.37490001 0.1874 0.37650001 0.1096 0.3531 0.15109999 0.34959999 0.15449999 0.3696
		 0.107 0.37400001 0.1096 0.3531 0.107 0.37400001 0.061900001 0.36930001 0.059799999
		 0.35210001 0.022600001 0.33970001 0.059799999 0.35210001 0.061900001 0.36930001 0.0177
		 0.35859999 0.26980001 0.3741 0.23019999 0.37490001 0.2221 0.35299999 0.2647 0.3545
		 0.3251 0.36520001 0.3028 0.36750001 0.29100001 0.35330001 0.31040001 0.3497 0.30809999
		 0.41150001 0.34009999 0.40830001 0.3391 0.42480001 0.30939999 0.426 0.1876 0.42660001
		 0.23019999 0.42039999 0.22660001 0.4348 0.1913 0.43959999 0.33739999 0.38440001 0.34009999
		 0.40830001 0.30809999 0.41150001 0.3037 0.3888 0.1164 0.57849997 0.073600002 0.5327
		 0.1123 0.53299999 0.15109999 0.34959999 0.18709999 0.35100001 0.1874 0.37650001 0.15449999
		 0.3696 0.29750001 0.52899998 0.30309999 0.48159999 0.3382 0.47909999 0.3373 0.5151
		 0.33759999 0.53939998 0.2965 0.54329997 0.29750001 0.52899998 0.3326 0.52219999 0.18440001
		 0.59289998 0.2164 0.58569998 0.2138 0.61369997 0.1813 0.62819999 0.2739 0.4294 0.2721
		 0.41960001 0.30809999 0.41150001 0.30939999 0.426 0.2647 0.3545 0.29100001 0.35330001
		 0.3028 0.36750001 0.26980001 0.3741 0.15449999 0.58969998 0.1541 0.62760001 0.1071
		 0.6081 0.1164 0.57849997 0.1031 0.4427 0.060600001 0.44960001 0.056200001 0.43279999
		 0.106 0.42460001 0.273 0.39770001 0.3037 0.3888 0.30809999 0.41150001 0.2721 0.41960001
		 0.25260001 0.59469998 0.2445 0.57380003 0.26499999 0.53780001 0.27810001 0.57139999
		 0.2965 0.54329997 0.27810001 0.57139999 0.26499999 0.53780001 0.29750001 0.52899998
		 0.106 0.42460001 0.15000001 0.43399999 0.148 0.4463 0.1031 0.4427 0.15459999 0.39680001
		 0.156 0.4235 0.1103 0.41280001 0.1088 0.39140001 0.22660001 0.4348 0.2739 0.4294
		 0.2712 0.4522 0.2255 0.45159999 0.15000001 0.43399999 0.1913 0.43959999 0.19050001
		 0.4522 0.148 0.4463 0.021199999 0.44369999 0.022500001 0.42860001 0.056200001 0.43279999
		 0.060600001 0.44960001 0.30939999 0.426 0.3391 0.42480001 0.3396 0.4391 0.30759999
		 0.44459999 0.1913 0.43959999 0.22660001 0.4348 0.2255 0.45159999 0.19050001 0.4522
		 0.2712 0.4522 0.2739 0.4294 0.30939999 0.426 0.30759999 0.44459999 0.106 0.42460001;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.056200001 0.43279999 0.0559 0.41620001 0.1103
		 0.41280001 0.156 0.4235 0.15000001 0.43399999 0.106 0.42460001 0.1103 0.41280001
		 0.0173 0.4122 0.021299999 0.3847 0.061999999 0.39120001 0.0559 0.41620001 0.107 0.37400001
		 0.1088 0.39140001 0.061999999 0.39120001 0.061900001 0.36930001 0.18870001 0.38730001
		 0.18719999 0.4005 0.15459999 0.39680001 0.15279999 0.3856 0.2298 0.3976 0.273 0.39770001
		 0.2721 0.41960001 0.23019999 0.42039999 0.3251 0.36520001 0.33739999 0.38440001 0.3037
		 0.3888 0.3028 0.36750001 0.18719999 0.4005 0.2298 0.3976 0.23019999 0.42039999 0.1876
		 0.42660001 0.3037 0.3888 0.273 0.39770001 0.26980001 0.3741 0.3028 0.36750001 0.15449999
		 0.3696 0.15279999 0.3856 0.1088 0.39140001 0.107 0.37400001 0.1874 0.37650001 0.18870001
		 0.38730001 0.15279999 0.3856 0.15449999 0.3696 0.23019999 0.37490001 0.2298 0.3976
		 0.18870001 0.38730001 0.1874 0.37650001 0.1164 0.57849997 0.1071 0.6081 0.3326 0.52219999
		 0.29750001 0.52899998 0.3373 0.5151 0.2298 0.3976 0.18719999 0.4005 0.18870001 0.38730001
		 0.073600002 0.5327 0.1088 0.39140001 0.15279999 0.3856 0.15459999 0.39680001 0.57840002
		 0.88529998 0.62029999 0.94919997 0.66280001 0.9059 0.62 0.85829997 0.4436 0.9698
		 0.4531 0.93150002 0.40380001 0.92009997 0.38370001 0.95569998 0.4524 0.88059998 0.4531
		 0.93150002 0.36950001 0.86860001 0.41209999 0.88010001 0.4118 0.82160002 0.3734 0.82080001
		 0.4427 0.74699998 0.39739999 0.75300002 0.40220001 0.78329998 0.44220001 0.78399998
		 0.4118 0.82160002 0.4463 0.8215 0.44220001 0.78399998 0.40220001 0.78329998 0.44220001
		 0.78399998 0.4463 0.8215 0.4524 0.88059998 0.4463 0.8215 0.5636 0.78420001 0.4973
		 0.80779999 0.52829999 0.89590001 0.57840002 0.88529998 0.5636 0.78420001 0.57840002
		 0.88529998 0.62 0.85829997 0.61290002 0.78049999 0.4973 0.80779999 0.5636 0.78420001
		 0.56269997 0.72460002 0.5007 0.72710001 0.6293 0.71399999 0.63300002 0.75160003 0.67199999
		 0.74519998 0.68559998 0.70929998 0.62129998 0.66469997 0.56190002 0.65359998 0.56269997
		 0.72460002 0.6293 0.71399999 0.5007 0.72710001 0.56269997 0.72460002 0.56190002 0.65359998
		 0.49290001 0.64200002 0.50400001 0.5848 0.49290001 0.64200002 0.56190002 0.65359998
		 0.55299997 0.5952 0.56190002 0.65359998 0.62129998 0.66469997 0.62840003 0.60640001
		 0.55299997 0.5952 0.4427 0.74699998 0.44220001 0.78399998 0.3538 0.65530002 0.34599999
		 0.70880002 0.396 0.70249999 0.39480001 0.66350001 0.396 0.70249999 0.43700001 0.70829999
		 0.4348 0.66670001 0.39480001 0.66350001 0.43700001 0.70829999 0.4348 0.66670001 0.4118
		 0.82160002 0.41209999 0.88010001 0.4524 0.88059998 0.4463 0.8215 0.3486 0.74419999
		 0.39739999 0.75300002 0.396 0.70249999 0.34599999 0.70880002 0.43700001 0.70829999
		 0.396 0.70249999 0.39739999 0.75300002 0.4427 0.74699998 0.43700001 0.70829999 0.4427
		 0.74699998 0.68629998 0.66960001 0.62129998 0.66469997 0.6293 0.71399999 0.68559998
		 0.70929998 0.62840003 0.60640001 0.62129998 0.66469997 0.68629998 0.66960001 0.66979998
		 0.60939997 0.39739999 0.75300002 0.3486 0.74419999 0.36739999 0.79229999 0.40220001
		 0.78329998 0.35749999 0.90539998 0.33930001 0.92379999 0.38370001 0.95569998 0.40380001
		 0.92009997 0.41209999 0.88010001 0.36950001 0.86860001 0.35749999 0.90539998 0.40380001
		 0.92009997 0.4531 0.93150002 0.4524 0.88059998 0.41209999 0.88010001 0.40380001 0.92009997
		 0.57840002 0.88529998 0.52829999 0.89590001 0.58969998 0.97259998 0.62029999 0.94919997
		 0.3734 0.82080001 0.4118 0.82160002 0.40220001 0.78329998 0.36739999 0.79229999 0.4531
		 0.93150002 0.4436 0.9698 0.62480003 0.85409999 0.62 0.85829997 0.66280001 0.9059
		 0.66680002 0.89840001 0.36410001 0.86790001 0.36950001 0.86860001 0.3734 0.82080001
		 0.36700001 0.82139999 0.3369 0.91670001 0.33930001 0.92379999 0.35749999 0.90539998
		 0.3531 0.90039998 0.3531 0.90039998 0.35749999 0.90539998 0.36950001 0.86860001 0.36410001
		 0.86790001 0.63300002 0.75160003 0.6293 0.71399999 0.56269997 0.72460002 0.5636 0.78420001
		 0.40880001 0.98049998 0.4436 0.9698 0.38370001 0.95569998 0.5636 0.78420001 0.61290002
		 0.78049999 0.63300002 0.75160003 0.62 0.85829997 0.62480003 0.85409999 0.61290002
		 0.78049999 0.36739999 0.79229999 0.36700001 0.82139999 0.3734 0.82080001 0.36739999
		 0.79229999 0.3486 0.74419999 0.3303 0.77340001 0.63260001 0.1229 0.63319999 0.2045
		 0.68180001 0.205 0.68089998 0.066699997 0.68089998 0.066699997 0.68180001 0.205 0.73259997
		 0.2036 0.74239999 0.033100002 0.74239999 0.033100002 0.73259997 0.2036 0.7712 0.2096
		 0.81459999 0.029999999 0.93879998 0.073299997 0.87480003 0.0429 0.80430001 0.219
		 0.85250002 0.2393 0.93879998 0.073299997 0.85250002 0.2393 0.87480003 0.0429 0.81459999
		 0.029999999 0.7712 0.2096 0.80430001 0.219 0.2834 0.79500002 0.28650001 0.80870003
		 0.2757 0.81 0.27090001 0.79360002 0.2834 0.79500002 0.27090001 0.79360002 0.2746
		 0.78070003 0.2868 0.7845 0.31889999 0.74049997 0.32550001 0.7482 0.31439999 0.75480002
		 0.3096 0.74769998 0.3053 0.76120001 0.29640001 0.75269997 0.3096 0.74769998 0.31439999
		 0.75480002;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.29640001 0.75269997 0.3053 0.76120001 0.2958
		 0.77209997 0.28310001 0.76380002 0.237 0.8836 0.23 0.88090003 0.2323 0.87410003 0.2394
		 0.87690002 0.28760001 0.67390001 0.28209999 0.68150002 0.278 0.67940003 0.28470001
		 0.671 0.2331 0.89300001 0.2269 0.89170003 0.2295 0.88270003 0.23639999 0.88529998
		 0.28080001 0.6832 0.27630001 0.6904 0.27070001 0.68879998 0.27700001 0.68080002 0.2439
		 0.86729997 0.2401 0.87540001 0.233 0.8721 0.23649999 0.86320001 0.25870001 0.6839
		 0.26120001 0.68699998 0.2481 0.70039999 0.25139999 0.68989998 0.26629999 0.67439997
		 0.26969999 0.67629999 0.26269999 0.68550003 0.2606 0.68199998 0.2658 0.70249999 0.26949999
		 0.69080001 0.2753 0.69209999 0.2723 0.70169997 0.2748 0.66280001 0.2782 0.66530001
		 0.27079999 0.67460001 0.2676 0.67250001 0.2879 0.66799998 0.28470001 0.671 0.2782
		 0.66530001 0.28209999 0.6631 0.1894 0.69220001 0.1874 0.6972 0.17200001 0.68919998
		 0.1753 0.685 0.2076 0.87800002 0.2005 0.87379998 0.20649999 0.86430001 0.2138 0.8689
		 0.18260001 0.70499998 0.1795 0.70910001 0.1657 0.70179999 0.1674 0.6972 0.198 0.71520001
		 0.19310001 0.71810001 0.18179999 0.71039999 0.1846 0.7062 0.19930001 0.87559998 0.20640001
		 0.87980002 0.1989 0.89090002 0.1913 0.88700002 0.2007 0.71689999 0.21269999 0.72790003
		 0.20190001 0.72670001 0.1957 0.71990001 0.20389999 0.70020002 0.20379999 0.7069 0.1895
		 0.69840002 0.19149999 0.69370002 0.2155 0.86650002 0.20829999 0.8617 0.21529999 0.85089999
		 0.223 0.85519999 0.2076 0.78719997 0.1964 0.78850001 0.1972 0.78399998 0.2079 0.77990001
		 0.2106 0.78039998 0.21080001 0.7877 0.2076 0.78719997 0.2079 0.77990001 0.2106 0.78039998
		 0.2191 0.77869999 0.22130001 0.78560001 0.21080001 0.7877 0.21789999 0.81510001 0.21160001
		 0.82139999 0.2057 0.8168 0.2077 0.81169999 0.20999999 0.80729997 0.21070001 0.801
		 0.22139999 0.8021 0.21950001 0.81059998 0.20999999 0.80729997 0.2059 0.8064 0.2071
		 0.80049998 0.21070001 0.801 0.1929 0.81099999 0.18780001 0.81089997 0.1903 0.80659997
		 0.1945 0.80790001 0.2059 0.8064 0.1962 0.80059999 0.1963 0.79689997 0.2071 0.80049998
		 0.2054 0.81089997 0.2034 0.8161 0.1929 0.81099999 0.1945 0.80790001 0.2057 0.8168
		 0.2034 0.8161 0.2054 0.81089997 0.2077 0.81169999 0.22229999 0.79390001 0.2106 0.79460001
		 0.21080001 0.7877 0.22130001 0.78560001 0.22130001 0.78560001 0.23100001 0.77749997
		 0.23469999 0.79259998 0.22229999 0.79390001 0.23469999 0.79259998 0.23100001 0.77749997
		 0.24529999 0.778 0.2472 0.79339999 0.2075 0.79409999 0.1974 0.79299998 0.1964 0.78850001
		 0.2076 0.78719997 0.21080001 0.7877 0.2106 0.79460001 0.2075 0.79409999 0.2076 0.78719997
		 0.2485 0.80779999 0.23379999 0.80559999 0.23469999 0.79259998 0.2472 0.79339999 0.1963
		 0.79689997 0.1974 0.79299998 0.2075 0.79409999 0.2071 0.80049998 0.2075 0.79409999
		 0.2106 0.79460001 0.21070001 0.801 0.2071 0.80049998 0.22229999 0.79390001 0.22139999
		 0.8021 0.21070001 0.801 0.2106 0.79460001 0.198 0.71520001 0.1846 0.7062 0.1873 0.70319998
		 0.20110001 0.71100003 0.2007 0.71689999 0.2045 0.71310002 0.2184 0.72060001 0.21269999
		 0.72790003 0.20379999 0.7069 0.20110001 0.71100003 0.1873 0.70319998 0.1895 0.69840002
		 0.20640001 0.70840001 0.22480001 0.71240002 0.2184 0.72060001 0.2045 0.71310002 0.2379
		 0.71160001 0.2447 0.71390003 0.23 0.72600001 0.22939999 0.71640003 0.22589999 0.71090001
		 0.2277 0.6929 0.2325 0.69230002 0.2359 0.70749998 0.2235 0.67409998 0.2278 0.67320001
		 0.2318 0.68989998 0.2272 0.69019997 0.223 0.67180002 0.2199 0.6573 0.22409999 0.6584
		 0.2273 0.67110002 0.1846 0.70169997 0.1714 0.69440001 0.17200001 0.68919998 0.1874
		 0.6972 0.1846 0.70169997 0.18260001 0.70499998 0.1674 0.6972 0.1714 0.69440001 0.2139
		 0.73890001 0.2124 0.73019999 0.2191 0.7288 0.2189 0.7378 0.2139 0.73890001 0.2017
		 0.74620003 0.1979 0.7428 0.2124 0.73019999 0.19769999 0.74860001 0.18430001 0.75700003
		 0.18179999 0.7529 0.1948 0.74510002 0.18170001 0.7586 0.1699 0.76569998 0.1663 0.76359999
		 0.1795 0.7543 0.226 0.73909998 0.2189 0.7378 0.2191 0.7288 0.23 0.72600001 0.2476
		 0.73720002 0.2445 0.74800003 0.226 0.73909998 0.23 0.72600001 0.226 0.73909998 0.22579999
		 0.74970001 0.21969999 0.7471 0.2189 0.7378 0.215 0.74650002 0.2023 0.75150001 0.2017
		 0.74620003 0.2139 0.73890001 0.18430001 0.75700003 0.19769999 0.74860001 0.1992 0.75349998
		 0.18610001 0.7622 0.1839 0.76340002 0.1699 0.77069998 0.1699 0.76569998 0.18170001
		 0.7586 0.2175 0.7568 0.21349999 0.75559998 0.215 0.74650002 0.21969999 0.7471 0.22409999
		 0.77329999 0.22220001 0.76160002 0.22579999 0.74970001 0.23100001 0.77749997 0.23100001
		 0.77749997 0.22579999 0.74970001 0.24439999 0.76130003 0.24529999 0.778 0.24439999
		 0.76130003 0.22579999 0.74970001 0.226 0.73909998 0.2445 0.74800003 0.2606 0.79280001
		 0.26359999 0.81190002;
	setAttr ".uvst[0].uvsp[2000:2249]" 0.2485 0.80779999 0.2472 0.79339999 0.26539999
		 0.79229999 0.26460001 0.77530003 0.2746 0.78070003 0.27090001 0.79360002 0.26460001
		 0.77530003 0.27399999 0.759 0.28310001 0.76380002 0.2746 0.78070003 0.2561 0.7112
		 0.26719999 0.70929998 0.2791 0.71969998 0.26710001 0.72250003 0.257 0.7281 0.2447
		 0.71390003 0.2561 0.7112 0.26710001 0.72250003 0.2359 0.70749998 0.2325 0.69230002
		 0.2367 0.68870002 0.24429999 0.70160002 0.2318 0.68989998 0.2278 0.67320001 0.23190001
		 0.67140001 0.2357 0.6864 0.2273 0.67110002 0.22409999 0.6584 0.22750001 0.65499997
		 0.2314 0.66930002 0.2476 0.73720002 0.23 0.72600001 0.2447 0.71390003 0.257 0.7281
		 0.2366 0.8211 0.22830001 0.81279999 0.23379999 0.80559999 0.2485 0.80779999 0.23379999
		 0.80559999 0.22830001 0.81279999 0.21950001 0.81059998 0.22139999 0.8021 0.21950001
		 0.81059998 0.22830001 0.81279999 0.2227 0.82209998 0.21789999 0.81510001 0.23100001
		 0.77749997 0.22130001 0.78560001 0.2191 0.77869999 0.22409999 0.77329999 0.2156 0.84619999
		 0.2131 0.8495 0.205 0.84649998 0.2075 0.84219998 0.29210001 0.71539998 0.2791 0.71969998
		 0.26719999 0.70929998 0.27630001 0.70639998 0.2439 0.86729997 0.23649999 0.86320001
		 0.23890001 0.85960001 0.24600001 0.86409998 0.23649999 0.86320001 0.2323 0.86150002
		 0.23109999 0.85549998 0.23890001 0.85960001 0.2156 0.84619999 0.22149999 0.84979999
		 0.21529999 0.85089999 0.2131 0.8495 0.22149999 0.84979999 0.23109999 0.85549998 0.2252
		 0.85769999 0.223 0.85519999 0.20190001 0.72670001 0.21269999 0.72790003 0.2124 0.73019999
		 0.2017 0.72890002 0.22480001 0.71240002 0.2167 0.70359999 0.2203 0.70300001 0.22589999
		 0.71090001 0.2366 0.8211 0.2485 0.80779999 0.26359999 0.81190002 0.2456 0.82950002
		 0.27239999 0.8258 0.26359999 0.81190002 0.2757 0.81 0.2818 0.82260001 0.2757 0.81
		 0.26359999 0.81190002 0.26539999 0.79229999 0.27090001 0.79360002 0.2049 0.86000001
		 0.1978 0.85610002 0.205 0.84649998 0.2131 0.8495 0.1979 0.7428 0.19400001 0.73860002
		 0.2017 0.72890002 0.2124 0.73019999 0.18340001 0.88169998 0.17820001 0.87769997 0.18629999
		 0.86930001 0.1927 0.87290001 0.1777 0.7493 0.19069999 0.74110001 0.1948 0.74510002
		 0.18179999 0.7529 0.19589999 0.85839999 0.20280001 0.86250001 0.1944 0.87120003 0.18780001
		 0.86750001 0.1753 0.75089997 0.1795 0.7543 0.1663 0.76359999 0.1647 0.75940001 0.2023
		 0.75150001 0.215 0.74650002 0.21349999 0.75559998 0.20280001 0.75929999 0.1866 0.7687
		 0.18610001 0.7622 0.1992 0.75349998 0.1996 0.7608 0.1727 0.77389997 0.1699 0.77069998
		 0.1839 0.76340002 0.18430001 0.76969999 0.26269999 0.68550003 0.26969999 0.67629999
		 0.27340001 0.6785 0.26679999 0.68690002 0.27489999 0.6767 0.27990001 0.67030001 0.28470001
		 0.671 0.278 0.67940003 0.27489999 0.6767 0.27079999 0.67460001 0.2782 0.66530001
		 0.27990001 0.67030001 0.25139999 0.68989998 0.2481 0.70039999 0.24429999 0.70160002
		 0.2483 0.69 0.27700001 0.68080002 0.27070001 0.68879998 0.26679999 0.68690002 0.27340001
		 0.6785 0.2651 0.68889999 0.2561 0.7026 0.2481 0.70039999 0.26120001 0.68699998 0.2561
		 0.7112 0.2447 0.71390003 0.2471 0.70709997 0.25569999 0.70679998 0.2561 0.7026 0.2651
		 0.68889999 0.26949999 0.69080001 0.2658 0.70249999 0.2235 0.67409998 0.2272 0.69019997
		 0.22059999 0.68849999 0.2186 0.67390001 0.2252 0.85769999 0.2323 0.86150002 0.2274
		 0.87269998 0.2203 0.86860001 0.2192 0.87080002 0.2262 0.87480003 0.2211 0.88380003
		 0.2141 0.88059998 0.23190001 0.67140001 0.2366 0.6692 0.24089999 0.68099999 0.2357
		 0.6864 0.2183 0.67150003 0.2167 0.65990001 0.2199 0.6573 0.223 0.67180002 0.213 0.88230002
		 0.22 0.8854 0.2138 0.89490002 0.2071 0.8908 0.22750001 0.65499997 0.2199 0.6573 0.2198
		 0.65319997 0.22660001 0.6505 0.22750001 0.65499997 0.2317 0.65439999 0.2359 0.66680002
		 0.2314 0.66930002 0.2561 0.7112 0.25569999 0.70679998 0.26589999 0.70639998 0.26719999
		 0.70929998 0.2367 0.68870002 0.2421 0.68370003 0.2483 0.69 0.24429999 0.70160002
		 0.2068 0.70190001 0.2167 0.70359999 0.22480001 0.71240002 0.20640001 0.70840001 0.2203
		 0.70300001 0.2212 0.69150001 0.2277 0.6929 0.22589999 0.71090001 0.22139999 0.8021
		 0.22229999 0.79390001 0.23469999 0.79259998 0.23379999 0.80559999 0.1672 0.68660003
		 0.17200001 0.68919998 0.1674 0.6972 0.1626 0.69419998 0.2561 0.7026 0.2658 0.70249999
		 0.26589999 0.70639998 0.25569999 0.70679998 0.2561 0.7026 0.25569999 0.70679998 0.2471
		 0.70709997 0.2481 0.70039999 0.2359 0.70749998 0.24429999 0.70160002 0.2471 0.70709997
		 0.2379 0.71160001 0.22939999 0.71640003 0.22589999 0.71090001 0.2359 0.70749998 0.2379
		 0.71160001 0.22939999 0.71640003 0.2234 0.72240001 0.2184 0.72060001 0.22480001 0.71240002
		 0.2184 0.72060001 0.2234 0.72240001 0.2191 0.7288 0.21269999 0.72790003 0.2139 0.73890001
		 0.2189 0.7378 0.21969999 0.7471 0.215 0.74650002 0.2483 0.86180001 0.24160001 0.85600001
		 0.25260001 0.83780003 0.2599 0.84820002;
	setAttr ".uvst[0].uvsp[2250:2499]" 0.2191 0.84069997 0.2087 0.83600003 0.212
		 0.82709998 0.2227 0.82209998 0.25260001 0.83780003 0.234 0.85140002 0.2246 0.84530002
		 0.2456 0.82950002 0.27399999 0.759 0.2476 0.73720002 0.257 0.7281 0.28560001 0.74379998
		 0.29089999 0.74779999 0.29640001 0.75269997 0.28310001 0.76380002 0.27399999 0.759
		 0.26589999 0.70639998 0.2658 0.70249999 0.2723 0.70169997 0.27399999 0.70459998 0.2757
		 0.81 0.28650001 0.80870003 0.29179999 0.81830001 0.2818 0.82260001 0.28310001 0.76380002
		 0.2958 0.77209997 0.2868 0.7845 0.2746 0.78070003 0.29179999 0.81830001 0.30019999
		 0.83149999 0.29100001 0.83450001 0.2818 0.82260001 0.1974 0.79299998 0.1963 0.79689997
		 0.19320001 0.79290003 0.1964 0.78850001 0.21789999 0.81510001 0.2077 0.81169999 0.20999999
		 0.80729997 0.21950001 0.81059998 0.2059 0.8064 0.2054 0.81089997 0.1945 0.80790001
		 0.1945 0.80360001 0.20999999 0.80729997 0.2077 0.81169999 0.2054 0.81089997 0.2059
		 0.8064 0.21160001 0.82139999 0.21789999 0.81510001 0.2227 0.82209998 0.212 0.82709998
		 0.2366 0.8211 0.2456 0.82950002 0.2246 0.84530002 0.2191 0.84069997 0.27399999 0.70459998
		 0.27630001 0.70639998 0.26719999 0.70929998 0.26589999 0.70639998 0.24600001 0.86409998
		 0.23890001 0.85960001 0.24160001 0.85600001 0.2483 0.86180001 0.2191 0.84069997 0.2246
		 0.84530002 0.22149999 0.84979999 0.2156 0.84619999 0.22579999 0.74970001 0.22220001
		 0.76160002 0.2175 0.7568 0.21969999 0.7471 0.26460001 0.77530003 0.2606 0.79280001
		 0.2472 0.79339999 0.24529999 0.778 0.27399999 0.759 0.26460001 0.77530003 0.24439999
		 0.76130003 0.2445 0.74800003 0.1903 0.80659997 0.19059999 0.80190003 0.1945 0.80360001
		 0.1945 0.80790001 0.2191 0.84069997 0.2156 0.84619999 0.2075 0.84219998 0.2087 0.83600003
		 0.1626 0.7665 0.1663 0.76359999 0.1699 0.77069998 0.16580001 0.77200001 0.24160001
		 0.85600001 0.23890001 0.85960001 0.23109999 0.85549998 0.234 0.85140002 0.2246 0.84530002
		 0.234 0.85140002 0.23109999 0.85549998 0.22149999 0.84979999 0.2456 0.82950002 0.26359999
		 0.81190002 0.27239999 0.8258 0.25260001 0.83780003 0.27239999 0.8258 0.2818 0.82260001
		 0.29100001 0.83450001 0.28479999 0.83829999 0.27239999 0.8258 0.2771 0.83829999 0.2599
		 0.84820002 0.25260001 0.83780003 0.1948 0.74510002 0.1979 0.7428 0.2017 0.74620003
		 0.19769999 0.74860001 0.19769999 0.74860001 0.2017 0.74620003 0.2023 0.75150001 0.1992
		 0.75349998 0.2049 0.86000001 0.20280001 0.86250001 0.19589999 0.85839999 0.1978 0.85610002
		 0.19069999 0.74110001 0.19400001 0.73860002 0.1979 0.7428 0.1948 0.74510002 0.1992
		 0.75349998 0.2023 0.75150001 0.20280001 0.75929999 0.1996 0.7608 0.1795 0.7543 0.18179999
		 0.7529 0.18430001 0.75700003 0.18170001 0.7586 0.18170001 0.7586 0.18430001 0.75700003
		 0.18610001 0.7622 0.1839 0.76340002 0.18629999 0.86930001 0.18780001 0.86750001 0.1944
		 0.87120003 0.1927 0.87290001 0.1753 0.75089997 0.1777 0.7493 0.18179999 0.7529 0.1795
		 0.7543 0.1839 0.76340002 0.18610001 0.7622 0.1866 0.7687 0.18430001 0.76969999 0.20649999
		 0.86430001 0.20829999 0.8617 0.2155 0.86650002 0.2138 0.8689 0.1957 0.71990001 0.19310001
		 0.71810001 0.198 0.71520001 0.2007 0.71689999 0.20640001 0.70840001 0.20379999 0.7069
		 0.20389999 0.70020002 0.2068 0.70190001 0.2007 0.71689999 0.198 0.71520001 0.20110001
		 0.71100003 0.2045 0.71310002 0.2045 0.71310002 0.20110001 0.71100003 0.20379999 0.7069
		 0.20640001 0.70840001 0.1895 0.69840002 0.1874 0.6972 0.1894 0.69220001 0.19149999
		 0.69370002 0.2076 0.87800002 0.20640001 0.87980002 0.19930001 0.87559998 0.2005 0.87379998
		 0.18179999 0.71039999 0.1795 0.70910001 0.18260001 0.70499998 0.1846 0.7062 0.1846
		 0.70169997 0.1873 0.70319998 0.1846 0.7062 0.18260001 0.70499998 0.1874 0.6972 0.1895
		 0.69840002 0.1873 0.70319998 0.1846 0.70169997 0.2318 0.68989998 0.2325 0.69230002
		 0.2277 0.6929 0.2272 0.69019997 0.2357 0.6864 0.2367 0.68870002 0.2325 0.69230002
		 0.2318 0.68989998 0.2212 0.69150001 0.22059999 0.68849999 0.2272 0.69019997 0.2277
		 0.6929 0.2274 0.87269998 0.2262 0.87480003 0.2192 0.87080002 0.2203 0.86860001 0.2367
		 0.68870002 0.2357 0.6864 0.24089999 0.68099999 0.2421 0.68370003 0.2273 0.67110002
		 0.2278 0.67320001 0.2235 0.67409998 0.223 0.67180002 0.2314 0.66930002 0.23190001
		 0.67140001 0.2278 0.67320001 0.2273 0.67110002 0.223 0.67180002 0.2235 0.67409998
		 0.2186 0.67390001 0.2183 0.67150003 0.2211 0.88380003 0.22 0.8854 0.213 0.88230002
		 0.2141 0.88059998 0.2359 0.66680002 0.2366 0.6692 0.23190001 0.67140001 0.2314 0.66930002
		 0.2323 0.87410003 0.233 0.8721 0.2401 0.87540001 0.2394 0.87690002 0.26949999 0.69080001
		 0.27070001 0.68879998 0.27630001 0.6904 0.2753 0.69209999 0.26269999 0.68550003 0.26120001
		 0.68699998 0.25870001 0.6839 0.2606 0.68199998 0.26120001 0.68699998 0.26269999 0.68550003
		 0.26679999 0.68690002 0.2651 0.68889999 0.2651 0.68889999 0.26679999 0.68690002;
	setAttr ".uvst[0].uvsp[2500:2749]" 0.27070001 0.68879998 0.26949999 0.69080001
		 0.237 0.8836 0.23639999 0.88529998 0.2295 0.88270003 0.23 0.88090003 0.27700001 0.68080002
		 0.278 0.67940003 0.28209999 0.68150002 0.28080001 0.6832 0.27079999 0.67460001 0.26969999
		 0.67629999 0.26629999 0.67439997 0.2676 0.67250001 0.27489999 0.6767 0.27340001 0.6785
		 0.26969999 0.67629999 0.27079999 0.67460001 0.27340001 0.6785 0.27489999 0.6767 0.278
		 0.67940003 0.27700001 0.68080002 0.3127 0.73430002 0.30849999 0.73720002 0.29969999
		 0.73659998 0.30770001 0.72899997 0.28709999 0.7956 0.2897 0.8082 0.28650001 0.80870003
		 0.2834 0.79500002 0.2902 0.78579998 0.28709999 0.7956 0.2834 0.79500002 0.2868 0.7845
		 0.29809999 0.77420002 0.2902 0.78579998 0.2868 0.7845 0.2958 0.77209997 0.3163 0.75739998
		 0.3073 0.76440001 0.3053 0.76120001 0.31439999 0.75480002 0.2897 0.8082 0.29460001
		 0.81669998 0.29179999 0.81830001 0.28650001 0.80870003 0.3265 0.75150001 0.3163 0.75739998
		 0.31439999 0.75480002 0.32550001 0.7482 0.3073 0.76440001 0.29809999 0.77420002 0.2958
		 0.77209997 0.3053 0.76120001 0.29460001 0.81669998 0.30180001 0.82870001 0.30019999
		 0.83149999 0.29179999 0.81830001 0.29859999 0.74360001 0.3019 0.74730003 0.29640001
		 0.75269997 0.29089999 0.74779999 0.3019 0.74730003 0.29859999 0.74360001 0.3039 0.74080002
		 0.3066 0.7439 0.30849999 0.73720002 0.31110001 0.74059999 0.3066 0.7439 0.3039 0.74080002
		 0.30849999 0.73720002 0.3127 0.73430002 0.31889999 0.74049997 0.31110001 0.74059999
		 0.29679999 0.73400003 0.28560001 0.74379998 0.26710001 0.72250003 0.2791 0.71969998
		 0.29210001 0.71539998 0.30770001 0.72899997 0.29679999 0.73400003 0.2791 0.71969998
		 0.1964 0.9497 0.2156 0.95499998 0.206 0.97869998 0.1829 0.97439998 0.28080001 0.95520002
		 0.29460001 0.94910002 0.30860001 0.9734 0.2904 0.9835 0.2904 0.9835 0.27039999 0.98970002
		 0.26480001 0.96109998 0.28080001 0.95520002 0.2462 0.96030003 0.26480001 0.96109998
		 0.27039999 0.98970002 0.24789999 0.99080002 0.2317 0.95779997 0.2462 0.96030003 0.24789999
		 0.99080002 0.2263 0.98390001 0.2156 0.95499998 0.2317 0.95779997 0.2263 0.98390001
		 0.206 0.97869998 0.26480001 0.96109998 0.2462 0.96030003 0.2455 0.93300003 0.2597
		 0.93150002 0.2455 0.93300003 0.2462 0.96030003 0.2317 0.95779997 0.2359 0.93339998
		 0.2359 0.93339998 0.2317 0.95779997 0.2156 0.95499998 0.22840001 0.93150002 0.2701
		 0.92790002 0.28080001 0.95520002 0.26480001 0.96109998 0.2597 0.93150002 0.2791 0.92449999
		 0.29460001 0.94910002 0.28080001 0.95520002 0.2701 0.92790002 0.1964 0.9497 0.2105
		 0.92449999 0.22840001 0.93150002 0.2156 0.95499998 0.22939999 0.71640003 0.23 0.72600001
		 0.2234 0.72240001 0.23 0.72600001 0.2191 0.7288 0.2234 0.72240001 0.29969999 0.73659998
		 0.28560001 0.74379998 0.29679999 0.73400003 0.27399999 0.759 0.2445 0.74800003 0.2476
		 0.73720002 0.3066 0.7439 0.3096 0.74769998 0.3019 0.74730003 0.2379 0.71160001 0.2471
		 0.70709997 0.2447 0.71390003 0.24160001 0.85600001 0.234 0.85140002 0.25260001 0.83780003
		 0.21529999 0.85089999 0.22149999 0.84979999 0.223 0.85519999 0.2252 0.85769999 0.23109999
		 0.85549998 0.2323 0.86150002 0.31889999 0.74049997 0.3096 0.74769998 0.31110001 0.74059999
		 0.29969999 0.73659998 0.29679999 0.73400003 0.30770001 0.72899997 0.257 0.7281 0.26710001
		 0.72250003 0.28560001 0.74379998 0.27990001 0.67030001 0.2782 0.66530001 0.28470001
		 0.671 0.1714 0.69440001 0.1674 0.6972 0.17200001 0.68919998 0.22409999 0.6584 0.2199
		 0.6573 0.22750001 0.65499997 0.1699 0.76569998 0.1699 0.77069998 0.1663 0.76359999
		 0.2191 0.84069997 0.2227 0.82209998 0.2366 0.8211 0.24439999 0.76130003 0.26460001
		 0.77530003 0.24529999 0.778 0.22480001 0.71240002 0.22589999 0.71090001 0.22939999
		 0.71640003 0.2481 0.70039999 0.2471 0.70709997 0.24429999 0.70160002 0.2124 0.73019999
		 0.21269999 0.72790003 0.2191 0.7288 0.26359999 0.81190002 0.2606 0.79280001 0.26539999
		 0.79229999 0.29969999 0.73659998 0.3039 0.74080002 0.29859999 0.74360001 0.28479999
		 0.83829999 0.2771 0.83829999 0.27239999 0.8258 0.3096 0.74769998 0.3066 0.7439 0.31110001
		 0.74059999 0.30849999 0.73720002 0.3039 0.74080002 0.29969999 0.73659998 0.3096 0.74769998
		 0.29640001 0.75269997 0.3019 0.74730003 0.29859999 0.74360001 0.28560001 0.74379998
		 0.29969999 0.73659998 0.26539999 0.79229999 0.2606 0.79280001 0.26460001 0.77530003
		 0.27399999 0.759 0.28560001 0.74379998 0.29089999 0.74779999 0.29089999 0.74779999
		 0.28560001 0.74379998 0.29859999 0.74360001 0.22830001 0.81279999 0.2366 0.8211 0.2227
		 0.82209998 0.51300001 0.40630001 0.53060001 0.41769999 0.52429998 0.42539999 0.5061
		 0.41530001 0.53060001 0.41769999 0.5438 0.42910001 0.53659999 0.4366 0.52429998 0.42539999
		 0.55699998 0.40889999 0.54930001 0.42179999 0.53549999 0.4113 0.54250002 0.3998 0.5248
		 0.38699999 0.54250002 0.3998 0.53549999 0.4113 0.5187 0.3978 0.47330001 0.3962 0.51300001
		 0.40630001 0.5061 0.41530001 0.46990001 0.41429999 0.40849999 0.41409999 0.43149999
		 0.40939999 0.4382 0.42449999 0.42019999 0.43939999;
	setAttr ".uvst[0].uvsp[2750:2999]" 0.43149999 0.40939999 0.40849999 0.41409999
		 0.40470001 0.38049999 0.4233 0.38330001 0.389 0.414 0.3926 0.3779 0.40470001 0.38049999
		 0.40849999 0.41409999 0.463 0.36849999 0.47330001 0.3962 0.4497 0.4034 0.44139999
		 0.3793 0.47330001 0.3962 0.463 0.36849999 0.4752 0.35859999 0.49880001 0.38350001
		 0.5248 0.38699999 0.5187 0.3978 0.49880001 0.38350001 0.50660002 0.3743 0.45899999
		 0.3405 0.4752 0.35859999 0.463 0.36849999 0.4454 0.34560001 0.4752 0.35859999 0.45899999
		 0.3405 0.46129999 0.33379999 0.48089999 0.34720001 0.44139999 0.33539999 0.42460001
		 0.3378 0.4217 0.3276 0.4429 0.32749999 0.40560001 0.33610001 0.41249999 0.34380001
		 0.4007 0.35249999 0.39379999 0.34850001 0.4007 0.35249999 0.41249999 0.34380001 0.41580001
		 0.3524 0.4066 0.359 0.4066 0.359 0.41580001 0.3524 0.4233 0.38330001 0.40470001 0.38049999
		 0.4007 0.35249999 0.4066 0.359 0.40470001 0.38049999 0.3926 0.3779 0.4007 0.35249999
		 0.3926 0.3779 0.38209999 0.37400001 0.39379999 0.34850001 0.4454 0.34560001 0.42879999
		 0.3479 0.42460001 0.3378 0.44139999 0.33539999 0.4454 0.34560001 0.463 0.36849999
		 0.44139999 0.3793 0.42879999 0.3479 0.37619999 0.4102 0.38209999 0.37400001 0.3926
		 0.3779 0.389 0.414 0.36770001 0.43270001 0.38010001 0.43650001 0.37360001 0.45660001
		 0.36039999 0.45159999 0.3917 0.4393 0.42019999 0.43939999 0.3917 0.4623 0.38150001
		 0.4603 0.38150001 0.4603 0.3917 0.4623 0.3863 0.4797 0.37540001 0.47850001 0.36039999
		 0.45159999 0.37360001 0.45660001 0.36700001 0.4745 0.3536 0.46869999 0.9303 0.64459997
		 0.93790001 0.61110002 0.95959997 0.60869998 0.95819998 0.64410001 0.9404 0.67830002
		 0.93099999 0.6688 0.95529997 0.6649 0.9544 0.68080002 0.50660002 0.3743 0.49880001
		 0.38350001 0.4752 0.35859999 0.48089999 0.34720001 0.51300001 0.40630001 0.47330001
		 0.3962 0.49880001 0.38350001 0.5187 0.3978 0.53060001 0.41769999 0.51300001 0.40630001
		 0.5187 0.3978 0.53549999 0.4113 0.5438 0.42910001 0.53060001 0.41769999 0.53549999
		 0.4113 0.54930001 0.42179999 0.37360001 0.45660001 0.38150001 0.4603 0.37540001 0.47850001
		 0.36700001 0.4745 0.3917 0.4393 0.38150001 0.4603 0.37360001 0.45660001 0.38010001
		 0.43650001 0.43149999 0.40939999 0.4497 0.4034 0.45289999 0.4183 0.4382 0.42449999
		 0.4497 0.4034 0.43149999 0.40939999 0.4233 0.38330001 0.44139999 0.3793 0.40560001
		 0.33610001 0.4217 0.3276 0.42460001 0.3378 0.41249999 0.34380001 0.42879999 0.3479
		 0.41580001 0.3524 0.41249999 0.34380001 0.42460001 0.3378 0.44139999 0.3793 0.4233
		 0.38330001 0.41580001 0.3524 0.42879999 0.3479 0.47330001 0.3962 0.46990001 0.41429999
		 0.45289999 0.4183 0.4497 0.4034 0.45899999 0.3405 0.44139999 0.33539999 0.4429 0.32749999
		 0.46129999 0.33379999 0.97680002 0.6063 0.95959997 0.60869998 0.95810002 0.58740002
		 0.97600001 0.5855 0.98030001 0.64139998 0.95819998 0.64410001 0.95959997 0.60869998
		 0.97680002 0.6063 0.95529997 0.6649 0.98030001 0.66289997 0.97109997 0.67640001 0.9544
		 0.68080002 0.95810002 0.58740002 0.93839997 0.5887 0.94129997 0.57090002 0.95520002
		 0.56230003 0.95810002 0.58740002 0.95520002 0.56230003 0.96939999 0.56720001 0.97600001
		 0.5855 0.38010001 0.43650001 0.389 0.414 0.40849999 0.41409999 0.3917 0.4393 0.37619999
		 0.4102 0.389 0.414 0.38010001 0.43650001 0.36770001 0.43270001 0.95959997 0.60869998
		 0.93790001 0.61110002 0.93839997 0.5887 0.95810002 0.58740002 0.95529997 0.6649 0.93099999
		 0.6688 0.9303 0.64459997 0.95819998 0.64410001 0.98030001 0.66289997 0.95529997 0.6649
		 0.95819998 0.64410001 0.98030001 0.64139998 0.3917 0.4393 0.40849999 0.41409999 0.42019999
		 0.43939999 0.4454 0.34560001 0.44139999 0.33539999 0.45899999 0.3405 0.8527 0.47189999
		 0.85320002 0.4842 0.83130002 0.48210001 0.82999998 0.47130001 0.93720001 0.46810001
		 0.94749999 0.4673 0.9483 0.47729999 0.93720001 0.47780001 0.89240003 0.47130001 0.90810001
		 0.4702 0.90719998 0.48179999 0.89139998 0.4844 0.89139998 0.4844 0.87080002 0.48390001
		 0.8707 0.47310001 0.89240003 0.47130001 0.86790001 0.52410001 0.86979997 0.50700003
		 0.8901 0.5079 0.88489997 0.5248 0.90810001 0.4702 0.92339998 0.46919999 0.9228 0.4799
		 0.90719998 0.48179999 0.85320002 0.4842 0.8527 0.47189999 0.8707 0.47310001 0.87080002
		 0.48390001 0.83130002 0.48210001 0.85320002 0.4842 0.85180002 0.498 0.829 0.4971
		 0.83029997 0.4646 0.82800001 0.4249 0.84740001 0.42070001 0.85170001 0.46290001 0.9483
		 0.47729999 0.94749999 0.4673 0.96689999 0.4657 0.96700001 0.4754 0.93910003 0.50849998
		 0.93889999 0.49579999 0.95039999 0.49450001 0.95249999 0.50669998 0.92409998 0.50989997
		 0.92439997 0.4975 0.93889999 0.49579999 0.93910003 0.50849998 0.90619999 0.5097 0.90289998
		 0.52460003 0.88489997 0.5248 0.8901 0.5079 0.86989999 0.49869999 0.86979997 0.50700003
		 0.8502 0.50709999 0.85180002 0.498 0.93620002 0.4208 0.94630003 0.41999999 0.94700003
		 0.46039999 0.93650001 0.46070001 0.90670002 0.42030001 0.92049998 0.421 0.9235 0.4603
		 0.9084 0.4603;
	setAttr ".uvst[0].uvsp[3000:3249]" 0.94630003 0.41999999 0.96649998 0.41780001
		 0.96539998 0.45899999 0.94700003 0.46039999 0.92049998 0.421 0.93620002 0.4208 0.93650001
		 0.46070001 0.9235 0.4603 0.92339998 0.46919999 0.93720001 0.46810001 0.93720001 0.47780001
		 0.9228 0.4799 0.90619999 0.5097 0.90700001 0.4984 0.92439997 0.4975 0.92409998 0.50989997
		 0.95249999 0.50669998 0.95039999 0.49450001 0.96990001 0.4903 0.97070003 0.50120002
		 0.94230002 0.53259999 0.94410002 0.54750001 0.92610002 0.54960001 0.92290002 0.53439999
		 0.88090003 0.53560001 0.87980002 0.5517 0.86580002 0.551 0.86580002 0.53500003 0.82590002
		 0.5183 0.8484 0.51980001 0.84930003 0.53369999 0.82550001 0.5298 0.8484 0.51980001
		 0.86790001 0.52410001 0.86580002 0.53500003 0.84930003 0.53369999 0.84930003 0.53369999
		 0.86580002 0.53500003 0.86580002 0.551 0.84750003 0.55140001 0.88090003 0.53560001
		 0.86580002 0.53500003 0.86790001 0.52410001 0.88489997 0.5248 0.94230002 0.52389997
		 0.94230002 0.53259999 0.92290002 0.53439999 0.92259997 0.52530003 0.95389998 0.52219999
		 0.9734 0.51270002 0.9763 0.52429998 0.95569998 0.53109998 0.9763 0.52429998 0.98869997
		 0.54070002 0.9576 0.5449 0.95569998 0.53109998 0.84750003 0.55140001 0.8258 0.54860002
		 0.82550001 0.5298 0.84930003 0.53369999 0.89249998 0.4192 0.90670002 0.42030001 0.9084
		 0.4603 0.8933 0.4605 0.89249998 0.4192 0.8933 0.4605 0.8707 0.46070001 0.87120003
		 0.41780001 0.85170001 0.46290001 0.84740001 0.42070001 0.87120003 0.41780001 0.8707
		 0.46070001 0.89060003 0.4991 0.8901 0.5079 0.86979997 0.50700003 0.86989999 0.49869999
		 0.8502 0.50709999 0.8484 0.51980001 0.82590002 0.5183 0.82920003 0.50700003 0.93910003
		 0.50849998 0.95249999 0.50669998 0.95389998 0.52219999 0.94230002 0.52389997 0.92409998
		 0.50989997 0.93910003 0.50849998 0.94230002 0.52389997 0.92259997 0.52530003 0.90719998
		 0.48179999 0.90700001 0.4984 0.89060003 0.4991 0.89139998 0.4844 0.86979997 0.50700003
		 0.86790001 0.52410001 0.8484 0.51980001 0.8502 0.50709999 0.90619999 0.5097 0.92409998
		 0.50989997 0.92259997 0.52530003 0.90289998 0.52460003 0.95249999 0.50669998 0.97070003
		 0.50120002 0.9734 0.51270002 0.95389998 0.52219999 0.94410002 0.54750001 0.94230002
		 0.53259999 0.95569998 0.53109998 0.9576 0.5449 0.94230002 0.53259999 0.94230002 0.52389997
		 0.95389998 0.52219999 0.95569998 0.53109998 0.87980002 0.5517 0.88090003 0.53560001
		 0.90039998 0.53549999 0.89999998 0.55059999 0.88489997 0.5248 0.90289998 0.52460003
		 0.90039998 0.53549999 0.88090003 0.53560001 0.92259997 0.52530003 0.92290002 0.53439999
		 0.90039998 0.53549999 0.90289998 0.52460003 0.92610002 0.54960001 0.89999998 0.55059999
		 0.90039998 0.53549999 0.92290002 0.53439999 0.85180002 0.498 0.8502 0.50709999 0.82920003
		 0.50700003 0.829 0.4971 0.95039999 0.49450001 0.93889999 0.49579999 0.93720001 0.47780001
		 0.9483 0.47729999 0.92439997 0.4975 0.9228 0.4799 0.93720001 0.47780001 0.93889999
		 0.49579999 0.86989999 0.49869999 0.85180002 0.498 0.85320002 0.4842 0.87080002 0.48390001
		 0.90700001 0.4984 0.90719998 0.48179999 0.9228 0.4799 0.92439997 0.4975 0.95039999
		 0.49450001 0.9483 0.47729999 0.96700001 0.4754 0.96990001 0.4903 0.86989999 0.49869999
		 0.87080002 0.48390001 0.89139998 0.4844 0.89060003 0.4991 0.90700001 0.4984 0.90619999
		 0.5097 0.8901 0.5079 0.89060003 0.4991 0.83029997 0.4646 0.85170001 0.46290001 0.8527
		 0.47189999 0.82999998 0.47130001 0.93650001 0.46070001 0.94700003 0.46039999 0.94749999
		 0.4673 0.93720001 0.46810001 0.9235 0.4603 0.92339998 0.46919999 0.90810001 0.4702
		 0.9084 0.4603 0.94700003 0.46039999 0.96539998 0.45899999 0.96689999 0.4657 0.94749999
		 0.4673 0.9235 0.4603 0.93650001 0.46070001 0.93720001 0.46810001 0.92339998 0.46919999
		 0.9084 0.4603 0.90810001 0.4702 0.89240003 0.47130001 0.8933 0.4605 0.8933 0.4605
		 0.89240003 0.47130001 0.8707 0.47310001 0.8707 0.46070001 0.8707 0.46070001 0.8707
		 0.47310001 0.8527 0.47189999 0.85170001 0.46290001 0.61449999 0.0504 0.61769998 0.060199998
		 0.59280002 0.0788 0.58749998 0.072400004 0.57779998 0.1982 0.58410001 0.1935 0.5934
		 0.2044 0.59119999 0.20999999 0.56410003 0.1582 0.56849998 0.15700001 0.57340002 0.1752
		 0.5679 0.1798 0.59119999 0.20999999 0.5934 0.2044 0.61769998 0.2175 0.61330003 0.226
		 0.5679 0.1798 0.57340002 0.1752 0.58410001 0.1935 0.57779998 0.1982 0.56110001 0.1366
		 0.56739998 0.1371 0.56849998 0.15700001 0.56410003 0.1582 0.56950003 0.1042 0.57440001
		 0.1073 0.56739998 0.1371 0.56110001 0.1366 0.58749998 0.072400004 0.59280002 0.0788
		 0.57440001 0.1073 0.56950003 0.1042 0.59299999 0.022299999 0.61449999 0.0504 0.58749998
		 0.072400004 0.56279999 0.046599999 0.55299997 0.21709999 0.57779998 0.1982 0.59119999
		 0.20999999 0.57300001 0.236 0.53179997 0.1662 0.56410003 0.1582 0.5679 0.1798 0.53939998
		 0.19419999 0.57300001 0.236 0.59119999 0.20999999 0.61330003 0.226 0.59570003 0.25440001
		 0.53939998 0.19419999 0.5679 0.1798 0.57779998 0.1982 0.55299997 0.21709999 0.52950001
		 0.1356 0.56110001 0.1366 0.56410003 0.1582 0.53179997 0.1662 0.53899997 0.090099998
		 0.56950003 0.1042;
	setAttr ".uvst[0].uvsp[3250:3499]" 0.56110001 0.1366 0.52950001 0.1356 0.56279999
		 0.046599999 0.58749998 0.072400004 0.56950003 0.1042 0.53899997 0.090099998 0.1042
		 0.1551 0.096199997 0.097499996 0.063000001 0.1056 0.069700003 0.17470001 0.13410001
		 0.1505 0.13339999 0.099399999 0.096199997 0.097499996 0.1042 0.1551 0.1743 0.146
		 0.2067 0.1461 0.21349999 0.1017 0.17309999 0.1029 0.2999 0.109 0.271 0.1076 0.26140001
		 0.15889999 0.28639999 0.168 0.2067 0.1461 0.2342 0.1538 0.2427 0.105 0.21349999 0.1017
		 0.018999999 0.079899997 0.024900001 0.1173 0.063000001 0.1056 0.063600004 0.063000001
		 0.024900001 0.1173 0.034499999 0.1848 0.069700003 0.17470001 0.063000001 0.1056 0.3299
		 0.1177 0.33739999 0.081600003 0.30579999 0.062799998 0.2999 0.109 0.28639999 0.168
		 0.31400001 0.1811 0.3299 0.1177 0.2999 0.109 0.2342 0.1538 0.26140001 0.15889999
		 0.271 0.1076 0.2427 0.105 0.1743 0.146 0.17309999 0.1029 0.13339999 0.099399999 0.13410001
		 0.1505 0.2067 0.1461 0.2042 0.17839999 0.23 0.18350001 0.2342 0.1538 0.1373 0.18350001
		 0.1733 0.1787 0.1743 0.146 0.13410001 0.1505 0.069700003 0.17470001 0.079800002 0.1927
		 0.1117 0.1876 0.1042 0.1551 0.034499999 0.1848 0.052999999 0.21529999 0.079800002
		 0.1927 0.069700003 0.17470001 0.26140001 0.15889999 0.25220001 0.1884 0.27410001
		 0.1988 0.28639999 0.168 0.2342 0.1538 0.23 0.18350001 0.25220001 0.1884 0.26140001
		 0.15889999 0.27410001 0.1988 0.29820001 0.2128 0.31400001 0.1811 0.28639999 0.168
		 0.1733 0.1787 0.2042 0.17839999 0.2067 0.1461 0.1743 0.146 0.1117 0.1876 0.1373 0.18350001
		 0.13410001 0.1505 0.1042 0.1551 0.1007 0.22679999 0.079800002 0.1927 0.052999999
		 0.21529999 0.080799997 0.2427 0.25220001 0.1884 0.23 0.18350001 0.22499999 0.2124
		 0.24070001 0.2177 0.2042 0.17839999 0.1733 0.1787 0.1728 0.2084 0.2043 0.2114 0.27410001
		 0.1988 0.25220001 0.1884 0.24070001 0.2177 0.2588 0.2286 0.29820001 0.2128 0.27410001
		 0.1988 0.2588 0.2286 0.27489999 0.2411 0.23 0.18350001 0.2042 0.17839999 0.2043 0.2114
		 0.22499999 0.2124 0.1733 0.1787 0.1373 0.18350001 0.1419 0.2113 0.1728 0.2084 0.1419
		 0.2113 0.1373 0.18350001 0.1117 0.1876 0.1192 0.21699999 0.1192 0.21699999 0.1117
		 0.1876 0.079800002 0.1927 0.1007 0.22679999 0.13699999 0.029999999 0.13339999 0.099399999
		 0.17309999 0.1029 0.17659999 0.038699999 0.092799999 0.0232 0.096199997 0.097499996
		 0.13339999 0.099399999 0.13699999 0.029999999 0.063600004 0.063000001 0.063000001
		 0.1056 0.096199997 0.097499996 0.092799999 0.0232 0.17309999 0.1029 0.21349999 0.1017
		 0.2219 0.036499999 0.17659999 0.038699999 0.271 0.1076 0.2999 0.109 0.30579999 0.062799998
		 0.2764 0.028999999 0.2427 0.105 0.271 0.1076 0.2764 0.028999999 0.2471 0.0359 0.21349999
		 0.1017 0.2427 0.105 0.2471 0.0359 0.2219 0.036499999 0.018999999 0.079899997 0.063600004
		 0.063000001 0.30579999 0.062799998 0.33739999 0.081600003 0.2764 0.028999999 0.30579999
		 0.062799998 0.063600004 0.063000001 0.092799999 0.0232 0.85820001 0.57050002 0.85820001
		 0.59109998 0.86900002 0.59030002 0.86610001 0.56770003 0.87919998 0.59179997 0.87690002
		 0.61750001 0.88749999 0.61970001 0.88749999 0.59130001 0.40889999 0.59460002 0.40669999
		 0.61180001 0.47760001 0.6135 0.4781 0.5952 0.40669999 0.61180001 0.40599999 0.6293
		 0.479 0.63200003 0.47760001 0.6135 0.40889999 0.59460002 0.3502 0.59740001 0.345
		 0.61369997 0.40669999 0.61180001 0.40599999 0.6293 0.40669999 0.61180001 0.345 0.61369997
		 0.3452 0.62809998 0.3502 0.59740001 0.26499999 0.59859997 0.2498 0.6099 0.345 0.61369997
		 0.3452 0.62809998 0.345 0.61369997 0.2498 0.6099 0.2649 0.62580001 0.41260001 0.59680003
		 0.41060001 0.61360002 0.47760001 0.61250001 0.47870001 0.59619999 0.41060001 0.61360002
		 0.41029999 0.6318 0.47940001 0.6329 0.47760001 0.61250001 0.41260001 0.59680003 0.3466
		 0.59579998 0.3418 0.61189997 0.41060001 0.61360002 0.41029999 0.6318 0.41060001 0.61360002
		 0.3418 0.61189997 0.34220001 0.6304 0.3466 0.59579998 0.26820001 0.59850001 0.2502
		 0.60939997 0.3418 0.61189997 0.34220001 0.6304 0.3418 0.61189997 0.2502 0.60939997
		 0.26359999 0.62559998 0.41580001 0.59420002 0.40830001 0.6103 0.47850001 0.611 0.47839999
		 0.5977 0.40830001 0.6103 0.40779999 0.62970001 0.4795 0.63010001 0.47850001 0.611
		 0.41580001 0.59420002 0.34959999 0.59530002 0.34310001 0.61199999 0.40830001 0.6103
		 0.40779999 0.62970001 0.40830001 0.6103 0.34310001 0.61199999 0.34380001 0.63029999
		 0.34959999 0.59530002 0.2676 0.59729999 0.24869999 0.61059999 0.34310001 0.61199999
		 0.34380001 0.63029999 0.34310001 0.61199999 0.24869999 0.61059999 0.2647 0.62629998
		 0.41679999 0.59369999 0.41460001 0.61040002 0.47909999 0.61580002 0.4777 0.59509999
		 0.41460001 0.61040002 0.4111 0.62989998 0.48019999 0.6347 0.47909999 0.61580002 0.41679999
		 0.59369999 0.34900001 0.59539998 0.34439999 0.61180001 0.41460001 0.61040002;
	setAttr ".uvst[0].uvsp[3500:3749]" 0.4111 0.62989998 0.41460001 0.61040002 0.34439999
		 0.61180001 0.3452 0.6293 0.34900001 0.59539998 0.27110001 0.59689999 0.2494 0.61199999
		 0.34439999 0.61180001 0.3452 0.6293 0.34439999 0.61180001 0.2494 0.61199999 0.26370001
		 0.62440002 0.41499999 0.59509999 0.41249999 0.6117 0.47679999 0.61409998 0.477 0.59649998
		 0.41249999 0.6117 0.40869999 0.6311 0.47760001 0.63300002 0.47679999 0.61409998 0.41499999
		 0.59509999 0.3457 0.59670001 0.34119999 0.61009997 0.41249999 0.6117 0.40869999 0.6311
		 0.41249999 0.6117 0.34119999 0.61009997 0.3423 0.62889999 0.3457 0.59670001 0.26890001
		 0.59740001 0.24969999 0.61140001 0.34119999 0.61009997 0.3423 0.62889999 0.34119999
		 0.61009997 0.24969999 0.61140001 0.26539999 0.62660003 0.41639999 0.5952 0.4152 0.6117
		 0.47850001 0.61299998 0.47780001 0.59579998 0.4152 0.6117 0.4131 0.63090003 0.4808
		 0.63139999 0.47850001 0.61299998 0.41639999 0.5952 0.34670001 0.59619999 0.3439 0.6124
		 0.4152 0.6117 0.4131 0.63090003 0.4152 0.6117 0.3439 0.6124 0.34810001 0.63150001
		 0.34670001 0.59619999 0.26840001 0.59820002 0.2482 0.61110002 0.3439 0.6124 0.34810001
		 0.63150001 0.3439 0.6124 0.2482 0.61110002 0.2658 0.6261 0.41659999 0.59490001 0.41429999
		 0.6124 0.47940001 0.6092 0.47839999 0.59619999 0.41429999 0.6124 0.41069999 0.63050002
		 0.4808 0.63099998 0.47940001 0.6092 0.41659999 0.59490001 0.3477 0.59649998 0.3441
		 0.61150002 0.41429999 0.6124 0.41069999 0.63050002 0.41429999 0.6124 0.3441 0.61150002
		 0.3461 0.62889999 0.3477 0.59649998 0.26789999 0.59799999 0.2494 0.60939997 0.3441
		 0.61150002 0.3461 0.62889999 0.3441 0.61150002 0.2494 0.60939997 0.26530001 0.6261
		 0.46160001 0.616 0.38780001 0.61510003 0.39050001 0.59780002 0.46239999 0.60170001
		 0.46419999 0.61489999 0.39320001 0.61650002 0.3978 0.5977 0.46560001 0.60070002 0.46650001
		 0.61400002 0.36669999 0.61150002 0.36829999 0.59799999 0.46869999 0.59680003 0.3258
		 0.61290002 0.33329999 0.597 0.39050001 0.59780002 0.38780001 0.61510003 0.39320001
		 0.61650002 0.31420001 0.61320001 0.32890001 0.5959 0.3978 0.5977 0.36669999 0.61150002
		 0.33090001 0.61269999 0.333 0.59420002 0.36829999 0.59799999 0.33759999 0.61290002
		 0.2494 0.61229998 0.26449999 0.59560001 0.33989999 0.59469998 0.47679999 0.61549997
		 0.39430001 0.61250001 0.3971 0.59450001 0.4799 0.59909999 0.46180001 0.61189997 0.38749999
		 0.61189997 0.38999999 0.59560001 0.4632 0.59609997 0.2494 0.61260003 0.26660001 0.59740001
		 0.32839999 0.59450001 0.3202 0.61229998 0.24969999 0.61089998 0.27430001 0.59530002
		 0.33329999 0.597 0.3258 0.61290002 0.31420001 0.61320001 0.2492 0.60729998 0.26320001
		 0.59469998 0.32890001 0.5959 0.33090001 0.61269999 0.2484 0.60829997 0.26449999 0.59500003
		 0.333 0.59420002 0.33759999 0.61290002 0.39430001 0.61250001 0.39539999 0.63069999
		 0.33950001 0.63050002 0.38749999 0.61189997 0.3881 0.62989998 0.3369 0.62980002 0.3202
		 0.61229998 0.46129999 0.62800002 0.3883 0.62989998 0.38780001 0.61510003 0.46160001
		 0.616 0.46560001 0.62919998 0.39289999 0.63050002 0.39320001 0.61650002 0.46419999
		 0.61489999 0.46650001 0.61400002 0.36669999 0.61150002 0.38780001 0.61510003 0.3883
		 0.62989998 0.32679999 0.6286 0.3258 0.61290002 0.39289999 0.63050002 0.32870001 0.63080001
		 0.31420001 0.61320001 0.39320001 0.61650002 0.36669999 0.61150002 0.33399999 0.62819999
		 0.33950001 0.63050002 0.2665 0.62650001 0.2494 0.61229998 0.33759999 0.61290002 0.47839999
		 0.6304 0.39539999 0.63069999 0.39430001 0.61250001 0.47679999 0.61549997 0.4621 0.6286
		 0.3881 0.62989998 0.38749999 0.61189997 0.46180001 0.61189997 0.3202 0.61229998 0.3369
		 0.62980002 0.2642 0.62580001 0.2494 0.61260003 0.3258 0.61290002 0.32679999 0.6286
		 0.2726 0.63010001 0.24969999 0.61089998 0.32870001 0.63080001 0.26230001 0.62580001
		 0.2492 0.60729998 0.31420001 0.61320001 0.33399999 0.62819999 0.26350001 0.62400001
		 0.2484 0.60829997 0.33090001 0.61269999 0.33759999 0.61290002 0.33989999 0.59469998
		 0.3971 0.59450001 0.39430001 0.61250001 0.3202 0.61229998 0.32839999 0.59450001 0.38999999
		 0.59560001 0.38749999 0.61189997 0.33090001 0.61269999 0.36669999 0.61150002 0.33399999
		 0.62819999 0.035700001 0.66939998 0.0405 0.65149999 0.096699998 0.68910003 0.1211
		 0.69819999 0.12970001 0.66619998 0.108 0.65700001 0.092 0.62300003 0.033 0.6124 0.0341
		 0.62110001 0.0601 0.62889999 0.033 0.6124 0.032099999 0.57239997 0.092 0.62300003
		 0.075300001 0.58270001 0.032099999 0.57239997 0.033 0.6124 0.0405 0.65149999 0.076099999
		 0.66189998 0.0601 0.62889999 0.0341 0.62110001 0.076099999 0.66189998 0.108 0.65700001
		 0.092 0.62300003 0.0601 0.62889999 0.0341 0.62110001 0.0405 0.65149999 0.033 0.6124
		 0.0341 0.62110001 0.076099999 0.66189998 0.0405 0.65149999 0.055 0.68760002 0.076200001
		 0.69630003 0.096699998 0.68910003 0.076099999 0.66189998 0.076200001 0.69630003 0.092900001
		 0.70200002 0.1211 0.69819999 0.096699998 0.68910003 0.092900001 0.70200002 0.1178
		 0.72479999 0.1211 0.69819999 0.1178 0.72479999 0.0198 0.9756 0.0174 0.96109998 0.046799999
		 0.84450001 0.0473 0.82489997 0.029100001 0.8204;
	setAttr ".uvst[0].uvsp[3750:3999]" 0.027000001 0.84369999 0.047200002 0.85619998
		 0.046799999 0.84450001 0.027000001 0.84369999 0.0274 0.85960001 0.094400004 0.88080001
		 0.13869999 0.8642 0.093400002 0.83920002 0.077600002 0.86089998 0.046799999 0.84450001
		 0.065700002 0.85250002 0.068400003 0.83310002 0.0473 0.82489997 0.030300001 0.95679998
		 0.0174 0.96109998 0.0198 0.9756 0.031300001 0.97030002 0.027100001 0.91549999 0.0218
		 0.91890001 0.023800001 0.92339998 0.030200001 0.92180002 0.082599998 0.90920001 0.1016
		 0.90390003 0.094400004 0.88080001 0.074500002 0.89469999 0.040399998 0.96539998 0.055599999
		 0.96020001 0.057300001 0.94370002 0.040800001 0.94800001 0.13869999 0.8642 0.1485
		 0.8466 0.1128 0.81040001 0.093400002 0.83920002 0.056699999 0.87129998 0.060400002
		 0.86220002 0.047200002 0.85619998 0.045299999 0.86809999 0.089100003 0.97189999 0.1059
		 0.9522 0.0814 0.94270003 0.073700003 0.96020001 0.033399999 0.90969998 0.031399999
		 0.89560002 0.016899999 0.89749998 0.0178 0.9059 0.0184 0.87159997 0.0274 0.85960001
		 0.024599999 0.98320001 0.0359 0.9932 0.047400001 0.98430002 0.034699999 0.97680002
		 0.1132 0.74790001 0.082900003 0.73019999 0.067000002 0.76740003 0.104 0.7859 0.082900003
		 0.73019999 0.048999999 0.72890002 0.038899999 0.74720001 0.067000002 0.76740003 0.015699999
		 0.92549998 0.0148 0.92119998 0.0154 0.88380003 0.0174 0.87959999 0.016000001 0.889
		 0.0154 0.88380003 0.1132 0.74790001 0.104 0.7859 0.064900003 0.88090003 0.0616 0.88739997
		 0.074500002 0.89469999 0.0766 0.88139999 0.055799998 0.88029999 0.055399999 0.87879997
		 0.045600001 0.87629998 0.044300001 0.8786 0.070699997 0.8689 0.0766 0.88139999 0.094400004
		 0.88080001 0.077600002 0.86089998 0.070699997 0.8689 0.063500002 0.87580001 0.064900003
		 0.88090003 0.0766 0.88139999 0.055300001 0.88090003 0.055799998 0.88029999 0.044300001
		 0.8786 0.044399999 0.88099998 0.0174 0.96109998 0.0162 0.93730003 0.057300001 0.94370002
		 0.057399999 0.92390001 0.040199999 0.93049997 0.040800001 0.94800001 0.016000001
		 0.889 0.016899999 0.89749998 0.074500002 0.89469999 0.0616 0.88739997 0.046599999
		 0.89170003 0.052499998 0.90759999 0.0385 0.92000002 0.040199999 0.93049997 0.057399999
		 0.92390001 0.052499998 0.90759999 0.031399999 0.89560002 0.033399999 0.90969998 0.052499998
		 0.90759999 0.046599999 0.89170003 0.028899999 0.88480002 0.031399999 0.89560002 0.046599999
		 0.89170003 0.044399999 0.88099998 0.029300001 0.88129997 0.028899999 0.88480002 0.044399999
		 0.88099998 0.044300001 0.8786 0.0297 0.87779999 0.029300001 0.88129997 0.044300001
		 0.8786 0.045600001 0.87629998 0.045299999 0.86809999 0.047200002 0.85619998 0.0274
		 0.85960001 0.031800002 0.86979997 0.0616 0.88739997 0.055300001 0.88090003 0.044399999
		 0.88099998 0.046599999 0.89170003 0.074500002 0.89469999 0.052499998 0.90759999 0.057399999
		 0.92390001 0.082599998 0.90920001 0.016899999 0.89749998 0.0178 0.9059 0.0274 0.85960001
		 0.027000001 0.84369999 0.027000001 0.84369999 0.029100001 0.8204 0.016000001 0.889
		 0.016899999 0.89749998 0.031399999 0.89560002 0.028899999 0.88480002 0.0154 0.88380003
		 0.016000001 0.889 0.028899999 0.88480002 0.029300001 0.88129997 0.0174 0.87959999
		 0.0154 0.88380003 0.029300001 0.88129997 0.0297 0.87779999 0.045600001 0.87629998
		 0.055399999 0.87879997 0.056699999 0.87129998 0.045299999 0.86809999 0.031800002
		 0.86979997 0.0297 0.87779999 0.045600001 0.87629998 0.045299999 0.86809999 0.0184
		 0.87159997 0.0174 0.87959999 0.0297 0.87779999 0.031800002 0.86979997 0.0174 0.87959999
		 0.0184 0.87159997 0.015699999 0.92549998 0.0162 0.93730003 0.0184 0.91240001 0.0178
		 0.9059 0.0096000005 0.91420001 0.0184 0.91240001 0.027100001 0.91549999 0.033399999
		 0.90969998 0.0178 0.9059 0.030200001 0.92180002 0.0385 0.92000002 0.033399999 0.90969998
		 0.027100001 0.91549999 0.040199999 0.93049997 0.0385 0.92000002 0.030200001 0.92180002
		 0.0286 0.93370003 0.030300001 0.95679998 0.040800001 0.94800001 0.040199999 0.93049997
		 0.0286 0.93370003 0.030300001 0.95679998 0.031300001 0.97030002 0.040399998 0.96539998
		 0.040800001 0.94800001 0.034699999 0.97680002 0.047400001 0.98430002 0.051899999
		 0.97780001 0.043299999 0.97329998 0.068099998 0.9777 0.051899999 0.97780001 0.047400001
		 0.98430002 0.079099998 0.99190003 0.0198 0.9756 0.024599999 0.98320001 0.031300001
		 0.97030002 0.0198 0.9756 0.024599999 0.98320001 0.034699999 0.97680002 0.040399998
		 0.96539998 0.031300001 0.97030002 0.034699999 0.97680002 0.043299999 0.97329998 0.0174
		 0.96109998 0.030300001 0.95679998 0.0286 0.93370003 0.0162 0.93730003 0.023800001
		 0.92339998 0.015699999 0.92549998 0.0162 0.93730003 0.0286 0.93370003 0.0148 0.92119998
		 0.015699999 0.92549998 0.023800001 0.92339998 0.0218 0.91890001 0.0148 0.92119998
		 0.0096000005 0.91420001 0.0814 0.94270003 0.1059 0.9522 0.1048 0.92860001 0.082000002
		 0.92699999 0.0814 0.94270003 0.082000002 0.92699999 0.057399999 0.92390001 0.057300001
		 0.94370002 0.1652 0.88739997 0.1016 0.90390003 0.1048 0.92860001 0.1777 0.9217 0.068099998
		 0.9777 0.073700003 0.96020001 0.055599999 0.96020001 0.051899999 0.97780001 0.0814
		 0.94270003 0.057300001 0.94370002 0.055599999 0.96020001 0.073700003 0.96020001 0.092900001
		 0.70200002 0.082900003 0.73019999 0.1132 0.74790001 0.1178 0.72479999 0.1178 0.72479999
		 0.1132 0.74790001 0.064900003 0.88090003 0.055799998 0.88029999 0.055300001 0.88090003
		 0.0616 0.88739997;
	setAttr ".uvst[0].uvsp[4000:4247]" 0.063500002 0.87580001 0.055399999 0.87879997
		 0.055799998 0.88029999 0.064900003 0.88090003 0.070699997 0.8689 0.060400002 0.86220002
		 0.056699999 0.87129998 0.063500002 0.87580001 0.068400003 0.83310002 0.065700002
		 0.85250002 0.077600002 0.86089998 0.093400002 0.83920002 0.055 0.68760002 0.0405
		 0.65149999 0.035700001 0.66939998 0.076099999 0.66189998 0.096699998 0.68910003 0.108
		 0.65700001 0.1777 0.9217 0.1048 0.92860001 0.1059 0.9522 0.082000002 0.92699999 0.1048
		 0.92860001 0.082599998 0.90920001 0.1128 0.81040001 0.0473 0.82489997 0.027100001
		 0.91549999 0.0184 0.91240001 0.0218 0.91890001 0.079099998 0.99190003 0.047400001
		 0.98430002 0.0359 0.9932 0.024599999 0.98320001 0.0359 0.9932 0.082599998 0.90920001
		 0.057399999 0.92390001 0.082000002 0.92699999 0.0473 0.82489997 0.1652 0.88739997
		 0.13869999 0.8642 0.1016 0.90390003 0.13869999 0.8642 0.1652 0.88739997 0.1485 0.8466
		 0.089100003 0.97189999 0.1083 0.97610003 0.1059 0.9522 0.068099998 0.9777 0.089100003
		 0.97189999 0.073700003 0.96020001 0.13869999 0.8642 0.094400004 0.88080001 0.1016
		 0.90390003 0.1128 0.81040001 0.068400003 0.83310002 0.093400002 0.83920002 0.0473
		 0.82489997 0.068400003 0.83310002 0.1128 0.81040001 0.068099998 0.9777 0.079099998
		 0.99190003 0.089100003 0.97189999 0.1059 0.9522 0.1083 0.97610003 0.18080001 0.96030003
		 0.074500002 0.89469999 0.094400004 0.88080001 0.0766 0.88139999 0.048999999 0.72890002
		 0.082900003 0.73019999 0.054200001 0.70990002 0.065700002 0.85250002 0.046799999
		 0.84450001 0.047200002 0.85619998 0.029100001 0.8204 0.0473 0.82489997 0.040399998
		 0.96539998 0.043299999 0.97329998 0.055599999 0.96020001 0.029100001 0.8204 0.0385
		 0.92000002 0.052499998 0.90759999 0.033399999 0.90969998 0.0184 0.87159997 0.031800002
		 0.86979997 0.0274 0.85960001 0.023800001 0.92339998 0.0286 0.93370003 0.030200001
		 0.92180002 0.079099998 0.99190003 0.1083 0.97610003 0.089100003 0.97189999 0.0218
		 0.91890001 0.0184 0.91240001 0.0096000005 0.91420001 0.0096000005 0.91420001 0.0218
		 0.91890001 0.0096000005 0.91420001 0.0148 0.92119998 0.082900003 0.73019999 0.092900001
		 0.70200002 0.076200001 0.69630003 0.076200001 0.69630003 0.055 0.68760002 0.054200001
		 0.70990002 0.055599999 0.96020001 0.043299999 0.97329998 0.051899999 0.97780001 0.047200002
		 0.85619998 0.060400002 0.86220002 0.065700002 0.85250002 0.055399999 0.87879997 0.063500002
		 0.87580001 0.056699999 0.87129998 0.070699997 0.8689 0.065700002 0.85250002 0.060400002
		 0.86220002 0.070699997 0.8689 0.077600002 0.86089998 0.065700002 0.85250002 0.082900003
		 0.73019999 0.076200001 0.69630003 0.054200001 0.70990002 0.1777 0.9217 0.1059 0.9522
		 0.18080001 0.96030003 0.082599998 0.90920001 0.1048 0.92860001 0.1016 0.90390003
		 0.6476 0.80930001 0.6473 0.79280001 0.64999998 0.81800002 0.6476 0.80930001 0.66570002
		 0.78390002 0.6473 0.79280001 0.6476 0.80930001 0.66979998 0.80540001 0.6473 0.79280001
		 0.66570002 0.78390002 0.66979998 0.80540001 0.6476 0.80930001 0.64999998 0.81800002
		 0.66710001 0.82480001 0.66710001 0.82480001 0.64999998 0.81800002 0.8409 0.83960003
		 0.86729997 0.82419997 0.84039998 0.79250002 0.82690001 0.80440003 0.8409 0.83960003
		 0.86870003 0.8775 0.89429998 0.86290002 0.86729997 0.82419997 0.93589997 0.84320003
		 0.949 0.83710003 0.90759999 0.7888 0.89679998 0.79720002 0.89679998 0.79720002 0.85460001
		 0.76889998 0.84039998 0.79250002 0.86729997 0.82419997 0.80269998 0.78149998 0.80599999
		 0.81279999 0.85460001 0.76889998 0.83209997 0.75910002 0.824 0.78399998 0.84039998
		 0.79250002 0.80269998 0.78149998 0.80599999 0.81279999 0.82690001 0.80440003 0.824
		 0.78399998 0.91140002 0.89560002 0.89130002 0.89719999 0.88450003 0.921 0.91600001
		 0.92659998 0.80599999 0.81279999 0.81840003 0.84909999 0.8409 0.83960003 0.82690001
		 0.80440003 0.81840003 0.84909999 0.8513 0.89279997 0.86870003 0.8775 0.8409 0.83960003
		 0.89130002 0.89719999 0.86870003 0.8775 0.8513 0.89279997 0.88450003 0.921 0.83209997
		 0.75910002 0.80680001 0.75059998 0.80269998 0.78149998 0.824 0.78399998 0.91140002
		 0.89560002 0.95599997 0.88529998 0.93589997 0.84320003 0.89429998 0.86290002 0.91600001
		 0.92659998 0.96359998 0.92140001 0.95599997 0.88529998 0.91140002 0.89560002 0.96359998
		 0.92140001 0.91600001 0.92659998 0.89679998 0.79720002 0.86729997 0.82419997 0.89429998
		 0.86290002 0.93589997 0.84320003 0.90759999 0.7888 0.86129999 0.75880003 0.85460001
		 0.76889998 0.89679998 0.79720002 0.86129999 0.75880003 0.83670002 0.74730003 0.83209997
		 0.75910002 0.85460001 0.76889998 0.83670002 0.74730003 0.80870003 0.73909998 0.80680001
		 0.75059998 0.83209997 0.75910002 0.95599997 0.88529998 0.9691 0.87989998 0.949 0.83710003
		 0.93589997 0.84320003 0.96359998 0.92140001 0.97820002 0.91930002 0.9691 0.87989998
		 0.95599997 0.88529998 0.97820002 0.91930002 0.96359998 0.92140001 0.91600001 0.92659998
		 0.88450003 0.921 0.8513 0.89279997 0.81840003 0.84909999 0.88450003 0.921 0.8513
		 0.89279997 0.81840003 0.84909999 0.80599999 0.81279999 0.80269998 0.78149998 0.80680001
		 0.75059998 0.80680001 0.75059998 0.80870003 0.73909998 0.84039998 0.79250002 0.824
		 0.78399998 0.82690001 0.80440003 0.91140002 0.89560002 0.89429998 0.86290002 0.89130002
		 0.89719999 0.89130002 0.89719999 0.89429998 0.86290002 0.86870003 0.8775;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 692 ".pt";
	setAttr ".pt[0]" -type "float3" -1.5297995 0.56839931 -0.73289996 ;
	setAttr ".pt[1]" -type "float3" -11.170458 1.3099192 -0.53984028 ;
	setAttr ".pt[2]" -type "float3" -4.4830356 0.45462748 -0.8675794 ;
	setAttr ".pt[3]" -type "float3" -0.99329948 0.96739674 -0.14319819 ;
	setAttr ".pt[4]" -type "float3" -0.089694455 0.62416184 0.42960271 ;
	setAttr ".pt[5]" -type "float3" -0.47639462 0.46342573 0.38551602 ;
	setAttr ".pt[6]" -type "float3" -2.2295084 -1.6705465 0.45737085 ;
	setAttr ".pt[7]" -type "float3" -2.3919001 -0.92699671 1.0124 ;
	setAttr ".pt[8]" -type "float3" -3.0779548 0.59209746 0.15611205 ;
	setAttr ".pt[9]" -type "float3" -2.6766 0.90499943 1.2746999 ;
	setAttr ".pt[10]" -type "float3" -3.3135996 1.8520045 0.059803009 ;
	setAttr ".pt[11]" -type "float3" -6.8052273 0.78519529 -0.17206922 ;
	setAttr ".pt[12]" -type "float3" -4.4856048 6.8341351 0.37479362 ;
	setAttr ".pt[13]" -type "float3" -6.8586607 4.96737 0.055342995 ;
	setAttr ".pt[14]" -type "float3" -4.0624022 0.23361522 0.046691023 ;
	setAttr ".pt[15]" -type "float3" -4.2892857 7.1076803 0.40783605 ;
	setAttr ".pt[16]" -type "float3" -6.1870155 6.4651279 0.19959602 ;
	setAttr ".pt[17]" -type "float3" -9.7807884 4.0687757 -0.2602616 ;
	setAttr ".pt[18]" -type "float3" -16.131092 7.3029284 -0.65804887 ;
	setAttr ".pt[19]" -type "float3" -14.606857 9.8429403 -0.37838826 ;
	setAttr ".pt[20]" -type "float3" -11.886772 3.8341804 -0.46477896 ;
	setAttr ".pt[21]" -type "float3" -9.7336617 13.101555 0.245689 ;
	setAttr ".pt[22]" -type "float3" -6.9951496 12.972914 0.48754761 ;
	setAttr ".pt[23]" -type "float3" -7.268929 12.75558 0.45058379 ;
	setAttr ".pt[24]" -type "float3" -10.145773 9.6689491 0.017576762 ;
	setAttr ".pt[25]" -type "float3" -10.703884 3.0605092 -0.40019241 ;
	setAttr ".pt[26]" -type "float3" -12.631941 3.8470054 -0.53182161 ;
	setAttr ".pt[27]" -type "float3" -14.173616 7.2504888 -0.48297533 ;
	setAttr ".pt[28]" -type "float3" -15.881174 6.7917423 -0.66371489 ;
	setAttr ".pt[29]" -type "float3" -9.4099083 17.0222 0.4928728 ;
	setAttr ".pt[30]" -type "float3" -13.325937 14.509842 -0.0027271137 ;
	setAttr ".pt[31]" -type "float3" -9.2665119 16.937149 0.5011887 ;
	setAttr ".pt[32]" -type "float3" -11.639997 16.078569 0.23769292 ;
	setAttr ".pt[33]" -type "float3" -16.67075 12.360114 -0.42624992 ;
	setAttr ".pt[34]" -type "float3" -19.202333 10.791747 -0.74354136 ;
	setAttr ".pt[35]" -type "float3" -19.66114 10.105248 -0.82338601 ;
	setAttr ".pt[36]" -type "float3" -18.216251 14.666784 -0.43866798 ;
	setAttr ".pt[37]" -type "float3" -18.970503 15.708995 -0.44936636 ;
	setAttr ".pt[38]" -type "float3" -13.794218 19.167997 0.21339998 ;
	setAttr ".pt[39]" -type "float3" -13.053261 17.728344 0.20081612 ;
	setAttr ".pt[40]" -type "float3" -10.230347 18.267406 0.48742983 ;
	setAttr ".pt[41]" -type "float3" -9.51647 20.01837 0.64958686 ;
	setAttr ".pt[42]" -type "float3" -9.8959332 19.900423 0.60853285 ;
	setAttr ".pt[43]" -type "float3" -10.412689 18.290968 0.47215995 ;
	setAttr ".pt[44]" -type "float3" -17.650778 10.781693 -0.60302287 ;
	setAttr ".pt[45]" -type "float3" -20.324497 11.875915 -0.78536236 ;
	setAttr ".pt[46]" -type "float3" -18.69084 12.451019 -0.60488015 ;
	setAttr ".pt[47]" -type "float3" -20.176655 13.329806 -0.69117332 ;
	setAttr ".pt[48]" -type "float3" -22.337032 12.711413 -0.92195207 ;
	setAttr ".pt[49]" -type "float3" -23.286745 15.537749 -0.85133654 ;
	setAttr ".pt[50]" -type "float3" -21.16283 16.386925 -0.6110546 ;
	setAttr ".pt[51]" -type "float3" -22.949392 18.446976 -0.65908784 ;
	setAttr ".pt[52]" -type "float3" -24.965031 17.614334 -0.88860589 ;
	setAttr ".pt[53]" -type "float3" -15.935892 19.87137 0.057729803 ;
	setAttr ".pt[54]" -type "float3" -14.119116 17.990219 0.1184456 ;
	setAttr ".pt[55]" -type "float3" -11.664822 22.977299 0.61858004 ;
	setAttr ".pt[56]" -type "float3" -11.847937 22.696486 0.58633393 ;
	setAttr ".pt[57]" -type "float3" -15.57616 21.530275 0.18257234 ;
	setAttr ".pt[58]" -type "float3" -20.476349 17.876959 -0.46588206 ;
	setAttr ".pt[59]" -type "float3" -22.151709 20.447641 -0.47544453 ;
	setAttr ".pt[60]" -type "float3" -17.416649 23.988144 0.15173045 ;
	setAttr ".pt[61]" -type "float3" -16.401731 25.923252 0.35148594 ;
	setAttr ".pt[62]" -type "float3" -13.61997 24.83993 0.54425353 ;
	setAttr ".pt[63]" -type "float3" -18.191521 25.223898 0.14990637 ;
	setAttr ".pt[64]" -type "float3" -18.867767 23.113588 -0.028785817 ;
	setAttr ".pt[65]" -type "float3" -17.506296 21.429419 0.0014712289 ;
	setAttr ".pt[66]" -type "float3" -13.757704 24.953533 0.53803903 ;
	setAttr ".pt[67]" -type "float3" -16.302246 26.009262 0.36530814 ;
	setAttr ".pt[68]" -type "float3" -23.403912 20.025597 -0.61274171 ;
	setAttr ".pt[69]" -type "float3" -24.548662 19.677891 -0.73614007 ;
	setAttr ".pt[70]" -type "float3" -21.849546 21.934166 -0.36541054 ;
	setAttr ".pt[71]" -type "float3" -24.061731 20.410341 -0.65118641 ;
	setAttr ".pt[72]" -type "float3" -25.052855 18.379417 -0.85409957 ;
	setAttr ".pt[73]" -type "float3" -21.880306 13.758479 -0.82227105 ;
	setAttr ".pt[74]" -type "float3" -20.259922 12.794928 -0.72845048 ;
	setAttr ".pt[75]" -type "float3" -23.178827 16.440132 -0.79140681 ;
	setAttr ".pt[76]" -type "float3" -1.4596996 -2.589998 -0.22369936 ;
	setAttr ".pt[77]" -type "float3" -0.98509979 0.96799159 -0.14319927 ;
	setAttr ".pt[78]" -type "float3" -0.99260044 0.14990437 -0.6159001 ;
	setAttr ".pt[79]" -type "float3" -2.8188972 -0.13299561 -0.86859894 ;
	setAttr ".pt[80]" -type "float3" -14.274485 16.581854 0.026100837 ;
	setAttr ".pt[81]" -type "float3" -2.8387995 -0.054000854 -0.86239964 ;
	setAttr ".pt[82]" -type "float3" -26.175978 26.68256 -0.49507758 ;
	setAttr ".pt[83]" -type "float3" -27.577938 27.813839 -0.55972183 ;
	setAttr ".pt[84]" -type "float3" -28.442255 27.138563 -0.67581505 ;
	setAttr ".pt[85]" -type "float3" -27.402733 25.999695 -0.64454746 ;
	setAttr ".pt[86]" -type "float3" -24.821238 28.32921 -0.28044322 ;
	setAttr ".pt[87]" -type "float3" -26.447546 29.359592 -0.37109002 ;
	setAttr ".pt[88]" -type "float3" -28.265444 29.007456 -0.55594319 ;
	setAttr ".pt[89]" -type "float3" -27.141853 30.355534 -0.37890932 ;
	setAttr ".pt[90]" -type "float3" -26.079346 29.973356 -0.30352429 ;
	setAttr ".pt[91]" -type "float3" -27.382225 28.212013 -0.51981336 ;
	setAttr ".pt[92]" -type "float3" -24.734026 31.082209 -0.11961674 ;
	setAttr ".pt[93]" -type "float3" -26.418947 31.823391 -0.23165619 ;
	setAttr ".pt[94]" -type "float3" -26.021643 31.273268 -0.22608307 ;
	setAttr ".pt[95]" -type "float3" -24.104155 30.437073 -0.098175637 ;
	setAttr ".pt[96]" -type "float3" -37.685429 33.205952 -1.179288 ;
	setAttr ".pt[97]" -type "float3" -37.110649 34.089989 -1.0779299 ;
	setAttr ".pt[98]" -type "float3" -37.112087 34.211872 -1.0712904 ;
	setAttr ".pt[99]" -type "float3" -37.643303 33.294323 -1.1705493 ;
	setAttr ".pt[100]" -type "float3" -37.859901 31.684649 -1.2796414 ;
	setAttr ".pt[101]" -type "float3" -38.435204 31.568378 -1.3384111 ;
	setAttr ".pt[102]" -type "float3" -38.481415 33.13509 -1.2556 ;
	setAttr ".pt[103]" -type "float3" -37.768612 32.944263 -1.2013876 ;
	setAttr ".pt[104]" -type "float3" -37.732311 33.032951 -1.1931593 ;
	setAttr ".pt[105]" -type "float3" -37.923004 31.622532 -1.2888322 ;
	setAttr ".pt[106]" -type "float3" -38.419884 33.401817 -1.2351921 ;
	setAttr ".pt[107]" -type "float3" -37.707397 34.780315 -1.0938472 ;
	setAttr ".pt[108]" -type "float3" -35.625957 34.52742 -0.91863823 ;
	setAttr ".pt[109]" -type "float3" -35.48325 34.74596 -0.89352423 ;
	setAttr ".pt[110]" -type "float3" -36.865337 34.401115 -1.038344 ;
	setAttr ".pt[111]" -type "float3" -36.920925 34.246754 -1.0519718 ;
	setAttr ".pt[112]" -type "float3" -35.429882 35.757462 -0.83249444 ;
	setAttr ".pt[113]" -type "float3" -37.263836 35.104259 -1.0355263 ;
	setAttr ".pt[114]" -type "float3" -37.50383 34.899525 -1.068718 ;
	setAttr ".pt[115]" -type "float3" -38.30965 33.503719 -1.2195071 ;
	setAttr ".pt[116]" -type "float3" -35.677319 35.30685 -0.88001949 ;
	setAttr ".pt[117]" -type "float3" -37.430336 34.992523 -1.0568725 ;
	setAttr ".pt[118]" -type "float3" -38.392548 33.238869 -1.2417541 ;
	setAttr ".pt[119]" -type "float3" -38.526409 31.577629 -1.3461893 ;
	setAttr ".pt[120]" -type "float3" -39.192657 33.63562 -1.2924707 ;
	setAttr ".pt[121]" -type "float3" -40.3241 31.961861 -1.4883063 ;
	setAttr ".pt[122]" -type "float3" -41.069355 32.29232 -1.5377166 ;
	setAttr ".pt[123]" -type "float3" -39.879456 34.286484 -1.3187735 ;
	setAttr ".pt[124]" -type "float3" -38.949734 33.851109 -1.2584164 ;
	setAttr ".pt[125]" -type "float3" -37.525002 34.556782 -1.0896786 ;
	setAttr ".pt[126]" -type "float3" -37.231911 34.525768 -1.0647522 ;
	setAttr ".pt[127]" -type "float3" -38.719402 33.781219 -1.2413533 ;
	setAttr ".pt[128]" -type "float3" -39.527157 34.20253 -1.2914004 ;
	setAttr ".pt[129]" -type "float3" -40.824127 32.112934 -1.5253823 ;
	setAttr ".pt[130]" -type "float3" -40.088474 31.781429 -1.4769044 ;
	setAttr ".pt[131]" -type "float3" -38.959553 33.56551 -1.2751696 ;
	setAttr ".pt[132]" -type "float3" -37.275398 35.416004 -1.0192637 ;
	setAttr ".pt[133]" -type "float3" -39.285278 34.42012 -1.257324 ;
	setAttr ".pt[134]" -type "float3" -36.849751 35.531036 -0.97417551 ;
	setAttr ".pt[135]" -type "float3" -36.807907 34.636005 -1.0200768 ;
	setAttr ".pt[136]" -type "float3" -35.003788 34.530334 -0.86190337 ;
	setAttr ".pt[137]" -type "float3" -34.763065 35.593811 -0.78095025 ;
	setAttr ".pt[138]" -type "float3" -39.654007 34.521202 -1.2852359 ;
	setAttr ".pt[139]" -type "float3" -37.763718 35.720009 -1.0467794 ;
	setAttr ".pt[140]" -type "float3" -37.111828 34.671364 -1.0457468 ;
	setAttr ".pt[141]" -type "float3" -35.193943 34.732361 -0.86797291 ;
	setAttr ".pt[142]" -type "float3" -36.091042 31.213213 -1.1449902 ;
	setAttr ".pt[143]" -type "float3" -36.001499 31.506369 -1.1205673 ;
	setAttr ".pt[144]" -type "float3" -37.643585 31.942654 -1.2456453 ;
	setAttr ".pt[145]" -type "float3" -37.83419 31.825766 -1.2694678 ;
	setAttr ".pt[146]" -type "float3" -35.679844 31.228306 -1.1067632 ;
	setAttr ".pt[147]" -type "float3" -35.632038 30.944149 -1.1181989 ;
	setAttr ".pt[148]" -type "float3" -34.064457 30.533403 -0.99847561 ;
	setAttr ".pt[149]" -type "float3" -34.285503 31.003555 -0.99246413 ;
	setAttr ".pt[150]" -type "float3" -34.843494 30.39723 -1.0768746 ;
	setAttr ".pt[151]" -type "float3" -36.084282 30.917747 -1.1607848 ;
	setAttr ".pt[152]" -type "float3" -36.238499 30.273598 -1.2105843 ;
	setAttr ".pt[153]" -type "float3" -35.119278 29.757292 -1.137491 ;
	setAttr ".pt[154]" -type "float3" -34.965221 28.979683 -1.1666701 ;
	setAttr ".pt[155]" -type "float3" -36.387745 29.737926 -1.2539041 ;
	setAttr ".pt[156]" -type "float3" -36.957573 29.878452 -1.2979102 ;
	setAttr ".pt[157]" -type "float3" -36.814705 30.505713 -1.2500837 ;
	setAttr ".pt[158]" -type "float3" -37.896954 31.717148 -1.2812068 ;
	setAttr ".pt[159]" -type "float3" -38.241924 31.607826 -1.318645 ;
	setAttr ".pt[160]" -type "float3" -38.367294 30.8874 -1.3700569 ;
	setAttr ".pt[161]" -type "float3" -38.215736 31.110872 -1.3438628 ;
	setAttr ".pt[162]" -type "float3" -36.410187 31.108849 -1.1798056 ;
	setAttr ".pt[163]" -type "float3" -34.297535 29.464497 -1.0790342 ;
	setAttr ".pt[164]" -type "float3" -36.128906 30.043037 -1.2134241 ;
	setAttr ".pt[165]" -type "float3" -32.318501 28.801426 -0.93591571 ;
	setAttr ".pt[166]" -type "float3" -32.330383 30.864775 -0.82240099 ;
	setAttr ".pt[167]" -type "float3" -30.735859 28.66428 -0.79962814 ;
	setAttr ".pt[168]" -type "float3" -30.356066 30.504042 -0.66291761 ;
	setAttr ".pt[169]" -type "float3" -36.606468 30.279455 -1.2437162 ;
	setAttr ".pt[170]" -type "float3" -38.274441 31.189861 -1.3448176 ;
	setAttr ".pt[171]" -type "float3" -31.607965 28.180244 -0.90580779 ;
	setAttr ".pt[172]" -type "float3" -33.371712 28.217819 -1.0640926 ;
	setAttr ".pt[173]" -type "float3" -37.655003 36.114937 -1.0149617 ;
	setAttr ".pt[174]" -type "float3" -39.658066 34.811741 -1.2694685 ;
	setAttr ".pt[175]" -type "float3" -34.978916 36.187965 -0.76757914 ;
	setAttr ".pt[176]" -type "float3" -37.078442 36.241482 -0.95550758 ;
	setAttr ".pt[177]" -type "float3" -37.356129 35.850227 -1.0024894 ;
	setAttr ".pt[178]" -type "float3" -35.161407 35.850227 -0.80293041 ;
	setAttr ".pt[179]" -type "float3" -34.432495 36.581051 -0.69606465 ;
	setAttr ".pt[180]" -type "float3" -34.358654 36.057766 -0.71841234 ;
	setAttr ".pt[181]" -type "float3" -33.124958 36.072655 -0.6054095 ;
	setAttr ".pt[182]" -type "float3" -33.614243 36.384979 -0.63255405 ;
	setAttr ".pt[183]" -type "float3" -35.253017 35.815926 -0.81316429 ;
	setAttr ".pt[184]" -type "float3" -35.242741 36.562244 -0.77078247 ;
	setAttr ".pt[185]" -type "float3" -37.741081 36.209232 -1.0175532 ;
	setAttr ".pt[186]" -type "float3" -37.423378 35.720535 -1.0158062 ;
	setAttr ".pt[187]" -type "float3" -39.26189 34.159298 -1.2696836 ;
	setAttr ".pt[188]" -type "float3" -37.754349 35.579437 -1.0537363 ;
	setAttr ".pt[189]" -type "float3" -38.062511 36.058231 -1.0551652 ;
	setAttr ".pt[190]" -type "float3" -39.840775 34.456886 -1.3057897 ;
	setAttr ".pt[191]" -type "float3" -39.412525 33.897541 -1.2979176 ;
	setAttr ".pt[192]" -type "float3" -39.982422 34.205406 -1.3326354 ;
	setAttr ".pt[193]" -type "float3" -40.43626 31.913614 -1.5011852 ;
	setAttr ".pt[194]" -type "float3" -39.954048 31.782005 -1.464648 ;
	setAttr ".pt[195]" -type "float3" -39.990383 34.517105 -1.3160496 ;
	setAttr ".pt[196]" -type "float3" -41.328018 32.259769 -1.5630429 ;
	setAttr ".pt[197]" -type "float3" -34.278679 35.905197 -0.71961391 ;
	setAttr ".pt[198]" -type "float3" -33.543346 35.825779 -0.65716362 ;
	setAttr ".pt[199]" -type "float3" -33.993912 35.663322 -0.70715606 ;
	setAttr ".pt[200]" -type "float3" -34.709862 35.673908 -0.77166742 ;
	setAttr ".pt[201]" -type "float3" -36.624859 36.088432 -0.92276746 ;
	setAttr ".pt[202]" -type "float3" -36.231827 36.253532 -0.87786084 ;
	setAttr ".pt[203]" -type "float3" -36.838551 36.220207 -0.93487817 ;
	setAttr ".pt[204]" -type "float3" -37.097389 36.052376 -0.96773428 ;
	setAttr ".pt[205]" -type "float3" -39.027691 35.449623 -1.1767229 ;
	setAttr ".pt[206]" -type "float3" -38.987114 35.664555 -1.1610991 ;
	setAttr ".pt[207]" -type "float3" -39.399864 35.468182 -1.2095355 ;
	setAttr ".pt[208]" -type "float3" -39.35265 35.292057 -1.215023 ;
	setAttr ".pt[209]" -type "float3" -41.382534 33.946819 -1.4743049 ;
	setAttr ".pt[210]" -type "float3" -41.282158 34.169804 -1.4527943 ;
	setAttr ".pt[211]" -type "float3" -32.444691 35.626347 -0.56834257 ;
	setAttr ".pt[212]" -type "float3" -30.991543 34.850475 -0.479305 ;
	setAttr ".pt[213]" -type "float3" -30.452162 34.132187 -0.47015247 ;
	setAttr ".pt[214]" -type "float3" -33.449223 34.759846 -0.70780545 ;
	setAttr ".pt[215]" -type "float3" -32.48991 34.449509 -0.63781458 ;
	setAttr ".pt[216]" -type "float3" -34.157112 35.022373 -0.75759268 ;
	setAttr ".pt[217]" -type "float3" -36.228466 35.456745 -0.92180663 ;
	setAttr ".pt[218]" -type "float3" -38.719402 34.990044 -1.1742193 ;
	setAttr ".pt[219]" -type "float3" -36.683041 35.432701 -0.96447557 ;
	setAttr ".pt[220]" -type "float3" -39.055782 34.851334 -1.2125092 ;
	setAttr ".pt[221]" -type "float3" -41.077801 33.584393 -1.4667246 ;
	setAttr ".pt[222]" -type "float3" -34.17067 33.747715 -0.82961667 ;
	setAttr ".pt[223]" -type "float3" -34.787659 34.106339 -0.86579925 ;
	setAttr ".pt[224]" -type "float3" -33.282143 31.466639 -0.87551254 ;
	setAttr ".pt[225]" -type "float3" -33.45575 33.023319 -0.80484241 ;
	setAttr ".pt[226]" -type "float3" -30.217796 32.653595 -0.53096229 ;
	setAttr ".pt[227]" -type "float3" -29.028601 28.502966 -0.65335327 ;
	setAttr ".pt[228]" -type "float3" -30.042068 27.9832 -0.77437204 ;
	setAttr ".pt[229]" -type "float3" -28.271372 28.08882 -0.60750216 ;
	setAttr ".pt[230]" -type "float3" -27.617666 30.439579 -0.41750661 ;
	setAttr ".pt[231]" -type "float3" -27.239569 32.156387 -0.28777817 ;
	setAttr ".pt[232]" -type "float3" -33.965553 36.383606 -0.66457295 ;
	setAttr ".pt[233]" -type "float3" -32.052452 35.205021 -0.55607927 ;
	setAttr ".pt[234]" -type "float3" -32.422157 33.912884 -0.66145873 ;
	setAttr ".pt[235]" -type "float3" -34.468498 35.23518 -0.77408504 ;
	setAttr ".pt[236]" -type "float3" -31.539339 35.243977 -0.50725776 ;
	setAttr ".pt[237]" -type "float3" -35.504444 35.998692 -0.82587695 ;
	setAttr ".pt[238]" -type "float3" -37.781811 35.827221 -1.0424696 ;
	setAttr ".pt[239]" -type "float3" -38.106312 35.67662 -1.08034 ;
	setAttr ".pt[240]" -type "float3" -39.616291 34.192924 -1.3000391 ;
	setAttr ".pt[241]" -type "float3" -39.75362 33.935184 -1.3268411 ;
	setAttr ".pt[242]" -type "float3" -40.169624 31.793068 -1.4836378 ;
	setAttr ".pt[243]" -type "float3" -33.458656 29.926331 -0.9771083 ;
	setAttr ".pt[244]" -type "float3" -34.157742 29.269001 -1.0771815 ;
	setAttr ".pt[245]" -type "float3" -33.940834 30.754717 -0.97494608 ;
	setAttr ".pt[246]" -type "float3" -34.463894 34.095306 -0.83697253 ;
	setAttr ".pt[247]" -type "float3" -34.845234 34.499306 -0.84920973 ;
	setAttr ".pt[248]" -type "float3" -32.592358 32.133488 -0.77575904 ;
	setAttr ".pt[249]" -type "float3" -34.646194 34.077381 -0.85454339 ;
	setAttr ".pt[250]" -type "float3" -35.064465 34.332237 -0.87842327 ;
	setAttr ".pt[251]" -type "float3" -34.957912 34.385738 -0.86576205 ;
	setAttr ".pt[252]" -type "float3" -34.913456 34.43327 -0.85907966 ;
	setAttr ".pt[253]" -type "float3" -35.548264 34.773464 -0.89790767 ;
	setAttr ".pt[254]" -type "float3" -34.670727 34.316757 -0.84348184 ;
	setAttr ".pt[255]" -type "float3" -35.344715 34.889137 -0.87297541 ;
	setAttr ".pt[256]" -type "float3" -32.989399 30.500561 -0.90255052 ;
	setAttr ".pt[257]" -type "float3" -29.922901 28.856573 -0.71502924 ;
	setAttr ".pt[258]" -type "float3" -28.673855 27.900307 -0.65456736 ;
	setAttr ".pt[259]" -type "float3" -36.603016 34.993107 -0.98161286 ;
	setAttr ".pt[260]" -type "float3" -36.471409 34.409866 -1.0020392 ;
	setAttr ".pt[261]" -type "float3" -40.855053 33.422546 -1.4554591 ;
	setAttr ".pt[262]" -type "float3" -39.140976 34.373089 -1.2468143 ;
	setAttr ".pt[263]" -type "float3" -39.036266 33.952759 -1.2606385 ;
	setAttr ".pt[264]" -type "float3" -40.653034 33.176952 -1.4507313 ;
	setAttr ".pt[265]" -type "float3" -38.805969 34.509251 -1.2087909 ;
	setAttr ".pt[266]" -type "float3" -37.075119 34.981552 -1.0251831 ;
	setAttr ".pt[267]" -type "float3" -36.911224 34.468502 -1.0387728 ;
	setAttr ".pt[268]" -type "float3" -38.693111 34.07497 -1.2226492 ;
	setAttr ".pt[269]" -type "float3" -38.000565 35.188183 -1.0978526 ;
	setAttr ".pt[270]" -type "float3" -38.810947 33.577431 -1.2609951 ;
	setAttr ".pt[271]" -type "float3" -38.90033 33.19244 -1.2905054 ;
	setAttr ".pt[272]" -type "float3" -38.910271 31.579165 -1.3810086 ;
	setAttr ".pt[273]" -type "float3" -37.692646 35.473866 -1.0539865 ;
	setAttr ".pt[274]" -type "float3" -35.456593 36.228626 -0.80875456 ;
	setAttr ".pt[275]" -type "float3" -34.763084 36.332684 -0.73991561 ;
	setAttr ".pt[276]" -type "float3" -34.622223 35.971779 -0.7471543 ;
	setAttr ".pt[277]" -type "float3" -38.687279 33.572342 -1.2500343 ;
	setAttr ".pt[278]" -type "float3" -37.385101 34.537708 -1.0780178 ;
	setAttr ".pt[279]" -type "float3" -37.049385 34.673275 -1.0399626 ;
	setAttr ".pt[280]" -type "float3" -37.320805 34.77557 -1.0589604 ;
	setAttr ".pt[281]" -type "float3" -38.843979 33.72308 -1.2559099 ;
	setAttr ".pt[282]" -type "float3" -37.659275 34.654938 -1.0964348 ;
	setAttr ".pt[283]" -type "float3" -38.858784 33.331947 -1.2789788 ;
	setAttr ".pt[284]" -type "float3" -39.353405 31.862347 -1.4055729 ;
	setAttr ".pt[285]" -type "float3" -39.483326 31.817539 -1.4198759 ;
	setAttr ".pt[286]" -type "float3" -39.002861 33.471619 -1.2843227 ;
	setAttr ".pt[287]" -type "float3" -34.982063 35.344578 -0.81470549 ;
	setAttr ".pt[288]" -type "float3" -34.192429 36.208115 -0.69494921 ;
	setAttr ".pt[289]" -type "float3" -32.617203 31.294397 -0.82462162 ;
	setAttr ".pt[290]" -type "float3" -34.545479 33.844528 -0.85831934 ;
	setAttr ".pt[291]" -type "float3" -34.127651 33.278603 -0.85175711 ;
	setAttr ".pt[292]" -type "float3" -34.335918 33.659386 -0.84954768 ;
	setAttr ".pt[293]" -type "float3" -34.470299 33.869396 -0.85010284 ;
	setAttr ".pt[294]" -type "float3" -28.195261 32.841358 -0.33663189 ;
	setAttr ".pt[295]" -type "float3" -27.325207 32.344376 -0.28512487 ;
	setAttr ".pt[296]" -type "float3" -27.565769 26.741478 -0.61817336 ;
	setAttr ".pt[297]" -type "float3" -29.136068 29.750492 -0.5938378 ;
	setAttr ".pt[298]" -type "float3" -29.851168 30.297306 -0.62849092 ;
	setAttr ".pt[299]" -type "float3" -28.986677 31.500488 -0.4830631 ;
	setAttr ".pt[300]" -type "float3" -28.730755 30.375233 -0.52228844 ;
	setAttr ".pt[301]" -type "float3" -25.97501 26.873749 -0.46618584 ;
	setAttr ".pt[302]" -type "float3" -27.015368 26.272469 -0.59417528 ;
	setAttr ".pt[303]" -type "float3" -24.848999 28.242353 -0.28779143 ;
	setAttr ".pt[304]" -type "float3" -24.2341 30.02511 -0.13287008 ;
	setAttr ".pt[305]" -type "float3" -25.887354 29.636726 -0.30476475 ;
	setAttr ".pt[306]" -type "float3" -24.776525 30.530458 -0.15412349 ;
	setAttr ".pt[307]" -type "float3" -27.150873 26.888969 -0.57225704 ;
	setAttr ".pt[308]" -type "float3" -26.986427 28.158176 -0.48681423 ;
	setAttr ".pt[309]" -type "float3" -27.918871 31.594454 -0.38075414 ;
	setAttr ".pt[310]" -type "float3" -27.29635 31.214777 -0.34523579 ;
	setAttr ".pt[311]" -type "float3" -27.75898 30.767944 -0.41211745 ;
	setAttr ".pt[312]" -type "float3" -28.438002 31.212786 -0.44915295 ;
	setAttr ".pt[313]" -type "float3" -28.202337 30.077156 -0.49079493 ;
	setAttr ".pt[314]" -type "float3" -29.482887 31.839512 -0.50935483 ;
	setAttr ".pt[315]" -type "float3" -23.420254 24.626925 -0.35867679 ;
	setAttr ".pt[316]" -type "float3" -19.80994 20.395605 -0.26540586 ;
	setAttr ".pt[317]" -type "float3" -21.941805 18.606903 -0.55859047 ;
	setAttr ".pt[318]" -type "float3" -24.49473 22.96559 -0.54864252 ;
	setAttr ".pt[319]" -type "float3" -21.229265 26.940248 -0.030980937 ;
	setAttr ".pt[320]" -type "float3" -16.489035 23.108936 0.1872451 ;
	setAttr ".pt[321]" -type "float3" -19.556957 26.961487 0.12225457 ;
	setAttr ".pt[322]" -type "float3" -14.686565 23.35474 0.36478743 ;
	setAttr ".pt[323]" -type "float3" -20.858681 25.319757 -0.087284081 ;
	setAttr ".pt[324]" -type "float3" -15.953051 21.345425 0.13803694 ;
	setAttr ".pt[325]" -type "float3" -23.192781 23.469446 -0.40227824 ;
	setAttr ".pt[326]" -type "float3" -20.111456 18.942602 -0.37351933 ;
	setAttr ".pt[327]" -type "float3" -24.724091 30.406679 -0.156232 ;
	setAttr ".pt[328]" -type "float3" -25.307796 28.824717 -0.29716504 ;
	setAttr ".pt[329]" -type "float3" -26.507505 27.19138 -0.49696285 ;
	setAttr ".pt[330]" -type "float3" -27.374973 26.950787 -0.58920026 ;
	setAttr ".pt[331]" -type "float3" -25.859785 30.257135 -0.26780072 ;
	setAttr ".pt[332]" -type "float3" -27.13958 28.755116 -0.46758717 ;
	setAttr ".pt[333]" -type "float3" -13.138561 23.695721 0.52447885 ;
	setAttr ".pt[334]" -type "float3" -13.233959 23.158024 0.48594138 ;
	setAttr ".pt[335]" -type "float3" -2.6753025 -0.97409821 -2.6732988 ;
	setAttr ".pt[336]" -type "float3" -19.318264 21.540808 -0.15709776 ;
	setAttr ".pt[337]" -type "float3" 15.255053 3.2295578 0 ;
	setAttr ".pt[338]" -type "float3" 16.184807 4.5135984 -4.4703484e-008 ;
	setAttr ".pt[339]" -type "float3" 14.119025 3.7140667 2.9802322e-008 ;
	setAttr ".pt[340]" -type "float3" 12.747667 2.1293893 0 ;
	setAttr ".pt[341]" -type "float3" 1.2322562 0.33099231 9.3132257e-010 ;
	setAttr ".pt[342]" -type "float3" 0.54433376 -4.3472748 3.7252903e-009 ;
	setAttr ".pt[343]" -type "float3" 1.1995089 -4.3104935 -3.7252903e-009 ;
	setAttr ".pt[344]" -type "float3" 1.6284909 0.60547286 1.8626451e-009 ;
	setAttr ".pt[345]" -type "float3" 4.358192 0.046509188 -7.4505806e-009 ;
	setAttr ".pt[346]" -type "float3" 8.2417479 0.27273047 0 ;
	setAttr ".pt[347]" -type "float3" 8.6469078 -2.412586 0 ;
	setAttr ".pt[348]" -type "float3" 3.2658815 -3.2796597 0 ;
	setAttr ".pt[349]" -type "float3" 5.6320181 7.3825159 -1.1175871e-008 ;
	setAttr ".pt[350]" -type "float3" 5.3646417 0.83117229 -3.7252903e-009 ;
	setAttr ".pt[351]" -type "float3" 8.1492987 5.8454199 -5.5879354e-009 ;
	setAttr ".pt[352]" -type "float3" 5.4324803 7.182478 -7.4505806e-009 ;
	setAttr ".pt[353]" -type "float3" 7.4400916 6.1579657 0 ;
	setAttr ".pt[354]" -type "float3" 11.25365 3.778228 7.4505806e-009 ;
	setAttr ".pt[355]" -type "float3" 17.779139 7.5873394 -2.9802322e-008 ;
	setAttr ".pt[356]" -type "float3" 13.448165 3.8972597 1.4901161e-008 ;
	setAttr ".pt[357]" -type "float3" 16.13089 9.7550211 -1.4901161e-008 ;
	setAttr ".pt[358]" -type "float3" 10.958254 13.035731 0 ;
	setAttr ".pt[359]" -type "float3" 8.0942392 13.270789 -7.4505806e-009 ;
	setAttr ".pt[360]" -type "float3" 8.3696051 13.65939 -7.4505806e-009 ;
	setAttr ".pt[361]" -type "float3" 11.444843 10.909735 0 ;
	setAttr ".pt[362]" -type "float3" 14.212465 4.3976612 0 ;
	setAttr ".pt[363]" -type "float3" 12.210963 4.0027423 -2.2351742e-008 ;
	setAttr ".pt[364]" -type "float3" 17.519648 7.5380383 -2.9802322e-008 ;
	setAttr ".pt[365]" -type "float3" 15.713404 8.4531469 0 ;
	setAttr ".pt[366]" -type "float3" 10.483123 18.197447 -1.4901161e-008 ;
	setAttr ".pt[367]" -type "float3" 14.625271 16.106539 0 ;
	setAttr ".pt[368]" -type "float3" 10.352921 17.466192 -5.2154064e-008 ;
	setAttr ".pt[369]" -type "float3" 12.863346 16.20326 7.4505806e-009 ;
	setAttr ".pt[370]" -type "float3" 18.213608 12.425997 -7.4505806e-009 ;
	setAttr ".pt[371]" -type "float3" 20.885017 11.312993 1.4901161e-008 ;
	setAttr ".pt[372]" -type "float3" 21.369732 11.090305 0 ;
	setAttr ".pt[373]" -type "float3" 19.758812 14.967572 7.4505806e-009 ;
	setAttr ".pt[374]" -type "float3" 14.290154 18.007759 0 ;
	setAttr ".pt[375]" -type "float3" 15.026911 19.37888 0 ;
	setAttr ".pt[376]" -type "float3" 20.518353 16.003702 -7.4505806e-009 ;
	setAttr ".pt[377]" -type "float3" 11.321185 18.878206 7.4505806e-009 ;
	setAttr ".pt[378]" -type "float3" 11.494779 19.505268 2.9802322e-008 ;
	setAttr ".pt[379]" -type "float3" 10.911965 21.142969 1.4901161e-008 ;
	setAttr ".pt[380]" -type "float3" 10.528155 20.685133 0 ;
	setAttr ".pt[381]" -type "float3" 19.241035 12.248095 -1.4901161e-008 ;
	setAttr ".pt[382]" -type "float3" 22.012207 12.961318 -2.9802322e-008 ;
	setAttr ".pt[383]" -type "float3" 24.087692 13.889469 -1.4901161e-008 ;
	setAttr ".pt[384]" -type "float3" 21.803333 15.014297 2.2351742e-008 ;
	setAttr ".pt[385]" -type "float3" 20.281883 13.921471 -7.4505806e-009 ;
	setAttr ".pt[386]" -type "float3" 24.999413 16.873137 7.4505806e-009 ;
	setAttr ".pt[387]" -type "float3" 26.695263 18.960417 1.4901161e-008 ;
	setAttr ".pt[388]" -type "float3" 24.553741 20.393171 3.7252903e-009 ;
	setAttr ".pt[389]" -type "float3" 22.747288 18.216221 7.4505806e-009 ;
	setAttr ".pt[390]" -type "float3" 17.197029 21.815561 7.4505806e-009 ;
	setAttr ".pt[391]" -type "float3" 15.354557 19.807579 7.4505806e-009 ;
	setAttr ".pt[392]" -type "float3" 12.68579 23.852896 -4.4703484e-008 ;
	setAttr ".pt[393]" -type "float3" 12.869652 24.124933 1.4901161e-008 ;
	setAttr ".pt[394]" -type "float3" 16.818592 21.929832 0 ;
	setAttr ".pt[395]" -type "float3" 18.670326 24.519701 2.9802322e-008 ;
	setAttr ".pt[396]" -type "float3" 23.702854 21.087828 -3.7252903e-009 ;
	setAttr ".pt[397]" -type "float3" 22.026897 18.367453 -7.4505806e-009 ;
	setAttr ".pt[398]" -type "float3" 17.540785 27.168211 -1.4901161e-008 ;
	setAttr ".pt[399]" -type "float3" 19.43634 26.121653 1.4901161e-008 ;
	setAttr ".pt[400]" -type "float3" 14.67244 25.869543 1.4901161e-008 ;
	setAttr ".pt[401]" -type "float3" 20.168674 25.119783 7.4505806e-009 ;
	setAttr ".pt[402]" -type "float3" 17.422245 27.721972 -1.4901161e-008 ;
	setAttr ".pt[403]" -type "float3" 14.798288 26.542116 1.4901161e-008 ;
	setAttr ".pt[404]" -type "float3" 18.791534 23.480036 -1.4901161e-008 ;
	setAttr ".pt[405]" -type "float3" 24.98914 21.856199 3.7252903e-009 ;
	setAttr ".pt[406]" -type "float3" 26.206287 21.008284 1.4901161e-008 ;
	setAttr ".pt[407]" -type "float3" 23.341034 22.83606 4.6566129e-010 ;
	setAttr ".pt[408]" -type "float3" 26.774956 19.409622 -1.4901161e-008 ;
	setAttr ".pt[409]" -type "float3" 25.684814 21.51012 1.1175871e-008 ;
	setAttr ".pt[410]" -type "float3" 23.595898 14.460296 -1.4901161e-008 ;
	setAttr ".pt[411]" -type "float3" 21.931236 13.472291 7.4505806e-009 ;
	setAttr ".pt[412]" -type "float3" 24.875946 17.280905 1.4901161e-008 ;
	setAttr ".pt[413]" -type "float3" 9.8651066 -0.032737341 4.4703484e-008 ;
	setAttr ".pt[414]" -type "float3" 16.180504 4.5214376 -4.4703484e-008 ;
	setAttr ".pt[415]" -type "float3" 14.630857 3.465934 1.4901161e-008 ;
	setAttr ".pt[416]" -type "float3" 4.8731623 -2.864284 3.7252903e-008 ;
	setAttr ".pt[417]" -type "float3" 15.558287 18.243559 -3.7252903e-009 ;
	setAttr ".pt[418]" -type "float3" 12.427229 -0.27705723 0 ;
	setAttr ".pt[419]" -type "float3" 14.202559 24.647753 -2.9802322e-008 ;
	setAttr ".pt[420]" -type "float3" 14.302231 24.643522 0 ;
	setAttr ".pt[421]" -type "float3" 14.524624 1.2718836 1.4901161e-008 ;
	setAttr ".pt[422]" -type "float3" 20.4856 22.307064 7.4505806e-009 ;
	setAttr ".pt[454]" -type "float3" 29.173088 32.561012 0 ;
	setAttr ".pt[455]" -type "float3" 29.970779 33.091076 0 ;
	setAttr ".pt[456]" -type "float3" 29.899158 32.954609 0 ;
	setAttr ".pt[457]" -type "float3" 28.872925 32.246269 0 ;
	setAttr ".pt[811]" -type "float3" 27.692505 28.978094 0 ;
	setAttr ".pt[812]" -type "float3" 28.996948 28.065443 0 ;
	setAttr ".pt[813]" -type "float3" 30.048325 29.321375 0 ;
	setAttr ".pt[814]" -type "float3" 29.122055 30.235567 0 ;
	setAttr ".pt[815]" -type "float3" 27.900646 31.806662 0 ;
	setAttr ".pt[816]" -type "float3" 26.234085 30.657774 0 ;
	setAttr ".pt[817]" -type "float3" 29.824139 30.813185 0 ;
	setAttr ".pt[818]" -type "float3" 28.92701 29.890192 0 ;
	setAttr ".pt[819]" -type "float3" 27.520023 31.671103 0 ;
	setAttr ".pt[820]" -type "float3" 28.616089 32.149055 0 ;
	setAttr ".pt[821]" -type "float3" 26.082226 32.945972 0 ;
	setAttr ".pt[822]" -type "float3" 27.817513 33.810753 0 ;
	setAttr ".pt[823]" -type "float3" 25.434425 32.588959 0 ;
	setAttr ".pt[824]" -type "float3" 27.409851 33.549343 0 ;
	setAttr ".pt[825]" -type "float3" 39.524624 35.688919 0 ;
	setAttr ".pt[826]" -type "float3" 39.474823 35.908566 0 ;
	setAttr ".pt[827]" -type "float3" 38.895779 36.837666 0 ;
	setAttr ".pt[828]" -type "float3" 38.901165 36.579132 0 ;
	setAttr ".pt[829]" -type "float3" 39.747746 34.145748 0 ;
	setAttr ".pt[830]" -type "float3" 39.618496 35.424225 0 ;
	setAttr ".pt[831]" -type "float3" 40.356552 35.640915 0 ;
	setAttr ".pt[832]" -type "float3" 40.350853 34.042538 0 ;
	setAttr ".pt[833]" -type "float3" 39.812347 34.19305 0 ;
	setAttr ".pt[834]" -type "float3" 39.574806 35.641872 0 ;
	setAttr ".pt[835]" -type "float3" 39.504826 37.295277 0 ;
	setAttr ".pt[836]" -type "float3" 40.28516 35.911118 0 ;
	setAttr ".pt[837]" -type "float3" 37.341461 36.968349 0 ;
	setAttr ".pt[838]" -type "float3" 38.699123 36.731369 0 ;
	setAttr ".pt[839]" -type "float3" 38.633301 37.024746 0 ;
	setAttr ".pt[840]" -type "float3" 37.182747 37.336296 0 ;
	setAttr ".pt[841]" -type "float3" 39.028965 37.783894 0 ;
	setAttr ".pt[842]" -type "float3" 37.098759 38.400333 0 ;
	setAttr ".pt[843]" -type "float3" 40.163353 36.165104 0 ;
	setAttr ".pt[844]" -type "float3" 39.284817 37.580223 0 ;
	setAttr ".pt[845]" -type "float3" 37.374382 37.745937 0 ;
	setAttr ".pt[846]" -type "float3" 39.210224 37.501961 0 ;
	setAttr ".pt[847]" -type "float3" 40.44236 34.180096 0 ;
	setAttr ".pt[848]" -type "float3" 40.25708 35.894077 0 ;
	setAttr ".pt[849]" -type "float3" 41.07177 36.655468 0 ;
	setAttr ".pt[850]" -type "float3" 41.770016 37.350201 0 ;
	setAttr ".pt[851]" -type "float3" 43.064953 35.348454 0 ;
	setAttr ".pt[852]" -type "float3" 42.297203 34.973984 0 ;
	setAttr ".pt[853]" -type "float3" 40.812653 36.867397 0 ;
	setAttr ".pt[854]" -type "float3" 40.570496 36.934925 0 ;
	setAttr ".pt[855]" -type "float3" 38.999382 37.643955 0 ;
	setAttr ".pt[856]" -type "float3" 39.308239 37.530479 0 ;
	setAttr ".pt[857]" -type "float3" 41.400249 37.429924 0 ;
	setAttr ".pt[858]" -type "float3" 40.826736 36.722061 0 ;
	setAttr ".pt[859]" -type "float3" 42.052586 34.926918 0 ;
	setAttr ".pt[860]" -type "float3" 42.810177 35.30648 0 ;
	setAttr ".pt[861]" -type "float3" 39.019348 38.599758 0 ;
	setAttr ".pt[862]" -type "float3" 41.142067 37.646996 0 ;
	setAttr ".pt[863]" -type "float3" 38.572491 38.700413 0 ;
	setAttr ".pt[864]" -type "float3" 36.395657 38.672268 0 ;
	setAttr ".pt[865]" -type "float3" 36.676819 37.546143 0 ;
	setAttr ".pt[866]" -type "float3" 38.554405 37.737915 0 ;
	setAttr ".pt[867]" -type "float3" 39.525257 38.736923 0 ;
	setAttr ".pt[868]" -type "float3" 41.528561 37.58226 0 ;
	setAttr ".pt[869]" -type "float3" 38.874474 37.628334 0 ;
	setAttr ".pt[870]" -type "float3" 36.873917 37.596756 0 ;
	setAttr ".pt[871]" -type "float3" 37.892845 34.484547 0 ;
	setAttr ".pt[872]" -type "float3" 39.694122 35.153145 0 ;
	setAttr ".pt[873]" -type "float3" 39.493927 35.201485 0 ;
	setAttr ".pt[874]" -type "float3" 37.794407 34.672691 0 ;
	setAttr ".pt[875]" -type "float3" 37.466633 34.37595 0 ;
	setAttr ".pt[876]" -type "float3" 37.421875 34.183029 0 ;
	setAttr ".pt[877]" -type "float3" 36.019531 34.07719 0 ;
	setAttr ".pt[878]" -type "float3" 35.79982 33.664257 0 ;
	setAttr ".pt[879]" -type "float3" 36.620934 33.358379 0 ;
	setAttr ".pt[880]" -type "float3" 37.899158 33.982216 0 ;
	setAttr ".pt[881]" -type "float3" 38.077774 33.318356 0 ;
	setAttr ".pt[882]" -type "float3" 38.246098 32.844551 0 ;
	setAttr ".pt[883]" -type "float3" 36.784615 31.979757 0 ;
	setAttr ".pt[884]" -type "float3" 36.926189 32.701672 0 ;
	setAttr ".pt[885]" -type "float3" 38.672558 33.561966 0 ;
	setAttr ".pt[886]" -type "float3" 38.836456 33.004826 0 ;
	setAttr ".pt[887]" -type "float3" 40.12698 34.875854 0 ;
	setAttr ".pt[888]" -type "float3" 39.765675 34.925678 0 ;
	setAttr ".pt[889]" -type "float3" 40.115059 34.296658 0 ;
	setAttr ".pt[890]" -type "float3" 40.277737 34.12656 0 ;
	setAttr ".pt[891]" -type "float3" 38.233952 34.1819 0 ;
	setAttr ".pt[892]" -type "float3" 36.072449 32.559296 0 ;
	setAttr ".pt[893]" -type "float3" 37.965084 33.254673 0 ;
	setAttr ".pt[894]" -type "float3" 33.983204 33.929379 0 ;
	setAttr ".pt[895]" -type "float3" 34.029076 31.738394 0 ;
	setAttr ".pt[896]" -type "float3" 31.938221 33.354172 0 ;
	setAttr ".pt[897]" -type "float3" 32.386627 31.396116 0 ;
	setAttr ".pt[898]" -type "float3" 38.456444 33.517704 0 ;
	setAttr ".pt[899]" -type "float3" 40.170788 34.505638 0 ;
	setAttr ".pt[900]" -type "float3" 33.314346 30.733095 0 ;
	setAttr ".pt[901]" -type "float3" 35.147865 30.997278 0 ;
	setAttr ".pt[902]" -type "float3" 41.521847 37.993622 0 ;
	setAttr ".pt[903]" -type "float3" 39.397957 39.257805 0 ;
	setAttr ".pt[904]" -type "float3" 38.793434 39.365406 0 ;
	setAttr ".pt[905]" -type "float3" 36.606754 39.204674 0 ;
	setAttr ".pt[906]" -type "float3" 39.09687 38.852272 0 ;
	setAttr ".pt[907]" -type "float3" 36.80965 38.736538 0 ;
	setAttr ".pt[908]" -type "float3" 36.032677 39.350285 0 ;
	setAttr ".pt[909]" -type "float3" 35.18671 39.052135 0 ;
	setAttr ".pt[910]" -type "float3" 34.677811 38.988571 0 ;
	setAttr ".pt[911]" -type "float3" 35.967205 38.91457 0 ;
	setAttr ".pt[912]" -type "float3" 36.906635 38.684044 0 ;
	setAttr ".pt[913]" -type "float3" 39.171864 38.671364 0 ;
	setAttr ".pt[914]" -type "float3" 39.492107 39.095913 0 ;
	setAttr ".pt[915]" -type "float3" 36.877972 39.358887 0 ;
	setAttr ".pt[916]" -type "float3" 41.131653 37.12125 0 ;
	setAttr ".pt[917]" -type "float3" 41.728951 37.376217 0 ;
	setAttr ".pt[918]" -type "float3" 39.831314 38.953369 0 ;
	setAttr ".pt[919]" -type "float3" 39.520782 38.537849 0 ;
	setAttr ".pt[920]" -type "float3" 41.295876 36.856785 0 ;
	setAttr ".pt[921]" -type "float3" 41.918285 34.701374 0 ;
	setAttr ".pt[922]" -type "float3" 42.419327 34.783302 0 ;
	setAttr ".pt[923]" -type "float3" 41.883488 37.123093 0 ;
	setAttr ".pt[924]" -type "float3" 41.876488 37.699089 0 ;
	setAttr ".pt[925]" -type "float3" 43.333305 35.406864 0 ;
	setAttr ".pt[926]" -type "float3" 35.878105 39.126247 0 ;
	setAttr ".pt[927]" -type "float3" 36.337158 38.784561 0 ;
	setAttr ".pt[928]" -type "float3" 35.591843 38.716454 0 ;
	setAttr ".pt[929]" -type "float3" 35.11414 38.999138 0 ;
	setAttr ".pt[930]" -type "float3" 37.903645 39.602695 0 ;
	setAttr ".pt[931]" -type "float3" 38.320992 39.331573 0 ;
	setAttr ".pt[932]" -type "float3" 38.537003 39.594364 0 ;
	setAttr ".pt[933]" -type "float3" 40.792213 39.102348 0 ;
	setAttr ".pt[934]" -type "float3" 40.84288 38.788139 0 ;
	setAttr ".pt[935]" -type "float3" 38.814438 39.319408 0 ;
	setAttr ".pt[936]" -type "float3" 41.227871 38.91655 0 ;
	setAttr ".pt[937]" -type "float3" 43.226074 37.640396 0 ;
	setAttr ".pt[938]" -type "float3" 43.338787 37.340595 0 ;
	setAttr ".pt[939]" -type "float3" 41.185944 38.640064 0 ;
	setAttr ".pt[940]" -type "float3" 33.974819 38.729141 0 ;
	setAttr ".pt[941]" -type "float3" 32.489262 37.569103 0 ;
	setAttr ".pt[942]" -type "float3" 31.942272 36.971729 0 ;
	setAttr ".pt[943]" -type "float3" 34.051521 37.619553 0 ;
	setAttr ".pt[944]" -type "float3" 35.043209 37.97261 0 ;
	setAttr ".pt[945]" -type "float3" 35.773685 38.283012 0 ;
	setAttr ".pt[946]" -type "float3" 37.920238 38.846684 0 ;
	setAttr ".pt[947]" -type "float3" 38.394672 38.844246 0 ;
	setAttr ".pt[948]" -type "float3" 40.529713 38.468071 0 ;
	setAttr ".pt[949]" -type "float3" 40.884251 38.336903 0 ;
	setAttr ".pt[950]" -type "float3" 43.027374 37.09243 0 ;
	setAttr ".pt[951]" -type "float3" 35.82468 36.897091 0 ;
	setAttr ".pt[952]" -type "float3" 36.457741 37.302864 0 ;
	setAttr ".pt[953]" -type "float3" 34.960941 34.510792 0 ;
	setAttr ".pt[954]" -type "float3" 35.098957 36.132965 0 ;
	setAttr ".pt[955]" -type "float3" 31.735851 35.537704 0 ;
	setAttr ".pt[956]" -type "float3" 30.614025 31.057898 0 ;
	setAttr ".pt[957]" -type "float3" 31.692066 30.289476 0 ;
	setAttr ".pt[958]" -type "float3" 29.835808 30.607191 0 ;
	setAttr ".pt[959]" -type "float3" 29.089672 33.012348 0 ;
	setAttr ".pt[960]" -type "float3" 28.65416 34.551498 0 ;
	setAttr ".pt[961]" -type "float3" 35.557926 38.879009 0 ;
	setAttr ".pt[962]" -type "float3" 36.116661 37.60487 0 ;
	setAttr ".pt[963]" -type "float3" 34.020847 36.114498 0 ;
	setAttr ".pt[964]" -type "float3" 33.596802 37.552353 0 ;
	setAttr ".pt[965]" -type "float3" 33.05574 37.76302 0 ;
	setAttr ".pt[966]" -type "float3" 39.547699 38.602715 0 ;
	setAttr ".pt[967]" -type "float3" 37.16898 38.685951 0 ;
	setAttr ".pt[968]" -type "float3" 41.50465 37.001377 0 ;
	setAttr ".pt[969]" -type "float3" 39.890091 38.461445 0 ;
	setAttr ".pt[970]" -type "float3" 42.14682 34.56786 0 ;
	setAttr ".pt[971]" -type "float3" 41.654846 36.742981 0 ;
	setAttr ".pt[972]" -type "float3" 35.196499 32.579418 0 ;
	setAttr ".pt[973]" -type "float3" 35.93943 32.075802 0 ;
	setAttr ".pt[974]" -type "float3" 35.671501 33.639305 0 ;
	setAttr ".pt[975]" -type "float3" 36.125137 37.104973 0 ;
	setAttr ".pt[976]" -type "float3" 36.511078 37.556541 0 ;
	setAttr ".pt[977]" -type "float3" 34.245975 34.328224 0 ;
	setAttr ".pt[978]" -type "float3" 36.332752 36.451363 0 ;
	setAttr ".pt[979]" -type "float3" 36.645119 36.938061 0 ;
	setAttr ".pt[980]" -type "float3" 36.761509 36.742634 0 ;
	setAttr ".pt[981]" -type "float3" 37.247662 37.446518 0 ;
	setAttr ".pt[982]" -type "float3" 36.593372 37.139725 0 ;
	setAttr ".pt[983]" -type "float3" 36.338093 37.214314 0 ;
	setAttr ".pt[984]" -type "float3" 37.028305 37.707661 0 ;
	setAttr ".pt[985]" -type "float3" 34.696266 32.976059 0 ;
	setAttr ".pt[986]" -type "float3" 31.550144 30.949507 0 ;
	setAttr ".pt[987]" -type "float3" 30.274639 29.899275 0 ;
	setAttr ".pt[988]" -type "float3" 38.328667 38.186329 0 ;
	setAttr ".pt[989]" -type "float3" 38.203957 37.711193 0 ;
	setAttr ".pt[990]" -type "float3" 42.803432 36.772259 0 ;
	setAttr ".pt[991]" -type "float3" 42.596626 36.622456 0 ;
	setAttr ".pt[992]" -type "float3" 40.889919 37.357151 0 ;
	setAttr ".pt[993]" -type "float3" 40.990768 37.673489 0 ;
	setAttr ".pt[994]" -type "float3" 40.637871 37.797962 0 ;
	setAttr ".pt[995]" -type "float3" 38.820957 38.200134 0 ;
	setAttr ".pt[996]" -type "float3" 38.660702 37.794868 0 ;
	setAttr ".pt[997]" -type "float3" 40.528801 37.471104 0 ;
	setAttr ".pt[998]" -type "float3" 40.686203 36.175758 0 ;
	setAttr ".pt[999]" -type "float3" 39.797218 37.80479 0 ;
	setAttr ".pt[1000]" -type "float3" 40.790016 35.780128 0 ;
	setAttr ".pt[1001]" -type "float3" 40.844505 34.121239 0 ;
	setAttr ".pt[1002]" -type "float3" 39.468292 38.090065 0 ;
	setAttr ".pt[1003]" -type "float3" 37.116585 38.778233 0 ;
	setAttr ".pt[1004]" -type "float3" 36.250496 38.60453 0 ;
	setAttr ".pt[1005]" -type "float3" 36.390678 38.859543 0 ;
	setAttr ".pt[1006]" -type "float3" 39.165066 37.424236 0 ;
	setAttr ".pt[1007]" -type "float3" 40.549255 36.473328 0 ;
	setAttr ".pt[1008]" -type "float3" 39.095497 37.517422 0 ;
	setAttr ".pt[1009]" -type "float3" 38.811375 37.550522 0 ;
	setAttr ".pt[1010]" -type "float3" 39.451591 37.408634 0 ;
	setAttr ".pt[1011]" -type "float3" 40.712101 36.497967 0 ;
	setAttr ".pt[1012]" -type "float3" 40.734608 36.232658 0 ;
	setAttr ".pt[1013]" -type "float3" 41.29026 34.748268 0 ;
	setAttr ".pt[1014]" -type "float3" 40.884586 36.246769 0 ;
	setAttr ".pt[1015]" -type "float3" 41.430668 34.567368 0 ;
	setAttr ".pt[1016]" -type "float3" 36.648674 37.751575 0 ;
	setAttr ".pt[1017]" -type "float3" 35.786583 39.183693 0 ;
	setAttr ".pt[1018]" -type "float3" 36.230328 36.351425 0 ;
	setAttr ".pt[1019]" -type "float3" 34.290176 33.641422 0 ;
	setAttr ".pt[1020]" -type "float3" 35.797779 36.220203 0 ;
	setAttr ".pt[1021]" -type "float3" 36.147213 36.527325 0 ;
	setAttr ".pt[1022]" -type "float3" 36.007675 36.500679 0 ;
	setAttr ".pt[1023]" -type "float3" 29.639893 34.986351 0 ;
	setAttr ".pt[1024]" -type "float3" 28.747295 34.409954 0 ;
	setAttr ".pt[1025]" -type "float3" 29.152218 28.62401 0 ;
	setAttr ".pt[1026]" -type "float3" 30.71109 31.624498 0 ;
	setAttr ".pt[1027]" -type "float3" 31.439571 32.292175 0 ;
	setAttr ".pt[1028]" -type "float3" 30.271355 32.255363 0 ;
	setAttr ".pt[1029]" -type "float3" 30.506649 33.449814 0 ;
	setAttr ".pt[1030]" -type "float3" 27.479252 29.110624 0 ;
	setAttr ".pt[1031]" -type "float3" 28.586014 28.31727 0 ;
	setAttr ".pt[1032]" -type "float3" 26.267075 30.506674 0 ;
	setAttr ".pt[1033]" -type "float3" 25.581863 32.1436 0 ;
	setAttr ".pt[1034]" -type "float3" 27.328167 31.352411 0 ;
	setAttr ".pt[1035]" -type "float3" 26.140862 32.40847 0 ;
	setAttr ".pt[1036]" -type "float3" 28.715069 28.781492 0 ;
	setAttr ".pt[1037]" -type "float3" 28.514629 29.865446 0 ;
	setAttr ".pt[1038]" -type "float3" 29.389965 33.539684 0 ;
	setAttr ".pt[1039]" -type "float3" 28.751709 33.112148 0 ;
	setAttr ".pt[1040]" -type "float3" 29.944279 33.06678 0 ;
	setAttr ".pt[1041]" -type "float3" 29.24889 32.570213 0 ;
	setAttr ".pt[1042]" -type "float3" 29.728848 31.919661 0 ;
	setAttr ".pt[1043]" -type "float3" 31.014748 33.815823 0 ;
	setAttr ".pt[1044]" -type "float3" 24.899456 25.869421 -1.8626451e-009 ;
	setAttr ".pt[1045]" -type "float3" 26.05518 24.573904 1.8626451e-009 ;
	setAttr ".pt[1046]" -type "float3" 23.517284 19.829433 3.7252903e-009 ;
	setAttr ".pt[1047]" -type "float3" 21.256638 21.180859 -1.1641532e-009 ;
	setAttr ".pt[1048]" -type "float3" 22.549725 28.251127 -1.4901161e-008 ;
	setAttr ".pt[1049]" -type "float3" 17.717247 23.958668 2.2351742e-008 ;
	setAttr ".pt[1050]" -type "float3" 15.818802 24.616678 -2.9802322e-008 ;
	setAttr ".pt[1051]" -type "float3" 20.795647 28.587744 -7.4505806e-009 ;
	setAttr ".pt[1052]" -type "float3" 22.188923 27.276381 2.2351742e-008 ;
	setAttr ".pt[1053]" -type "float3" 17.182911 23.019344 7.4505806e-009 ;
	setAttr ".pt[1054]" -type "float3" 24.674538 25.401152 -9.3132257e-010 ;
	setAttr ".pt[1055]" -type "float3" 21.58712 20.58559 1.8626451e-009 ;
	setAttr ".pt[1056]" -type "float3" 26.73035 31.089857 0 ;
	setAttr ".pt[1057]" -type "float3" 26.085438 32.435406 0 ;
	setAttr ".pt[1058]" -type "float3" 28.026115 29.442404 0 ;
	setAttr ".pt[1059]" -type "float3" 28.941521 29.060003 2.6775524e-009 ;
	setAttr ".pt[1060]" -type "float3" 27.279873 32.085938 -2.9802322e-008 ;
	setAttr ".pt[1061]" -type "float3" 28.657116 30.517324 1.8626451e-009 ;
	setAttr ".pt[1302]" -type "float3" 29.335297 32.825245 0 ;
	setAttr ".pt[1303]" -type "float3" 29.887478 33.196232 0 ;
	setAttr ".pt[1304]" -type "float3" 31.823795 34.360767 0 ;
	setAttr ".pt[1305]" -type "float3" 30.949986 33.751186 0 ;
	setAttr ".pt[1306]" -type "float3" -27.686096 30.739374 -0.40707847 ;
	setAttr ".pt[1307]" -type "float3" -27.39045 30.683693 -0.38328797 ;
	setAttr ".pt[1308]" -type "float3" -28.391901 31.35273 -0.43718985 ;
	setAttr ".pt[1309]" -type "float3" -28.464022 31.214262 -0.45143729 ;
	setAttr ".pt[1310]" -type "float3" -27.848288 30.988216 -0.40800384 ;
	setAttr ".pt[1311]" -type "float3" -29.419174 32.078438 -0.49029276 ;
	setAttr ".pt[1312]" -type "float3" -30.27207 32.57555 -0.54023314 ;
	setAttr ".pt[1313]" -type "float3" -28.386879 31.259504 -0.44191042 ;
	setAttr -s 1918 ".vt";
	setAttr ".vt[0:165]"  -11.71660042 98.9885025 5.36870003 -12.12129974 101.47350311 5.47879982
		 -12.65849972 99.62290192 1.23720002 -12.24260044 97.6289978 0.89660001 -16.49119949 111.25900269 -1.70500004
		 -16.50489998 110.81600189 2.041199923 -12.92580032 113.60500336 1.85880005 -13.22500038 114.1289978 -1.23370004
		 -14.70870018 108.98899841 -4.45109987 -12.68809986 111.49500275 -4.27320004 -10.66670036 106.90899658 -5.072100163
		 -12.94149971 105.8789978 -4.96479988 -19.73290062 104.33799744 2.24040008 -17.28809929 103.16400146 5.3677001
		 -14.81099987 107.81999969 5.36959982 -19.67830086 104.59200287 -1.9188 -17.88389969 103.55500031 -5.32910013
		 -14.14070034 101.80200195 -4.93079996 -13.81739998 94.86180115 -2.48379993 -16.31430054 95.04989624 -6.41169977
		 -13.13529968 100.049003601 -2.19309998 -21.43230057 97.40119934 -6.57040024 -23.045700073 99.4937973 -2.84820008
		 -23.20789909 99.086997986 2.41630006 -19.54840088 98.088699341 5.99380016 -13.83530045 100.9509964 5.93359995
		 -13.13930035 99.20899963 1.86660004 -15.51840019 96.023002625 5.84420013 -13.90909958 95.086700439 1.75530005
		 -25.65309906 95.18699646 2.64910007 -21.96850014 93.036003113 6.52629995 -25.15390015 95.65309906 -2.86809993
		 -22.92410088 94.34729767 -6.47819996 -17.33410072 92.10720062 -6.4843998 -15.13949966 90.60220337 -2.4210999
		 -14.72529984 90.33950043 1.76689994 -18.52280045 89.64399719 -5.67269993 -18.94260025 88.53980255 -6.28550005
		 -24.29290009 91.089897156 -7.37949991 -23.60320091 92.34400177 -6.072100163 -25.75939941 94.19989777 -2.87779999
		 -27.5503006 93.90840149 -2.95180011 -27.71170044 93.38330078 1.99230003 -26.15649986 93.75240326 2.28769994
		 -16.68309975 91.40329742 6.043600082 -15.84790039 88.90820313 1.801 -17.45400047 89.76339722 5.21360016
		 -17.53660011 88.042900085 6.42409992 -15.52639961 86.84249878 1.8786 -17.37299919 84.64710236 1.92970002
		 -19.53549957 85.71350098 6.26830006 -20.31220055 83.23100281 6.11250019 -18.13579941 82.2947998 0.8714
		 -25.088199615 88.19689941 6.8895998 -24.4598999 90.62270355 6.89449978 -28.91600037 90.65950012 -2.7414
		 -29.034000397 90.38159943 2.10759997 -25.36560059 88.43180084 -7.034900188 -20.012399673 86.19380188 -5.7487998
		 -21.27370071 83.54029846 -5.80289984 -26.43829918 85.707901 -7.22889996 -29.046899796 85.25530243 -1.64180005
		 -29.47890091 88.11810303 -2.5309999 -27.29150009 84.31580353 -4.70860004 -26.1522007 84.25160217 5.56799984
		 -25.5753994 86.13420105 6.88469982 -29.93499947 87.68470001 2.22289991 -29.53350067 85.069900513 2.38150001
		 -21.2234993 82.16349792 4.39909983 -19.9605999 81.64820099 -0.0031999999 -22.80369949 82.94539642 -4.075500011
		 -20.60860062 81.79969788 -2.19070005 -18.44260025 82.0086975098 -2.17670012 -16.21279907 86.93659973 -2.56030011
		 -16.28269958 88.71520233 -2.074300051 -17.74939919 84.53849792 -2.67810011 -11.89410019 104.77899933 7.1855998
		 -12.25080013 97.62840271 0.89660001 -12.21109962 99.35199738 -3.23219991 -12.20499992 110.04699707 6.39909983
		 -23.15110016 91.24749756 6.080200195 -10.42450047 102.9240036 -4.10200024 -25.36770058 76.5164032 5.23040009
		 -25.62330055 74.78450012 5.59840012 -24.45470047 74.52680206 3.63649988 -24.011199951 75.9661026 3.27990007
		 -27.39310074 76.80200195 5.12410021 -27.44639969 74.9414978 5.4224 -25.71800041 73.9539032 -0.32730001
		 -27.35289955 74.21820068 -0.75029999 -27.53210068 75.3030014 -1.21920002 -25.45429993 75.10769653 -0.94099998
		 -29.23480034 75.77510071 0.034400001 -29.034500122 74.0036010742 0.48019999 -29.036600113 74.44889832 3.26830006
		 -29.28319931 76.45349884 2.90039992 -24.63030052 64.030296326 2.023900032 -25.62899971 64.066299438 1.83759999
		 -25.83119965 63.94120026 2.9684 -24.8246994 63.95890045 3.13039994 -23.32789993 64.62969971 2.40610003
		 -22.94669914 64.21589661 2.4532001 -24.1772995 63.41230011 2.095200062 -24.3791008 64.090202332 2.085799932
		 -24.56889915 64.015098572 3.17090011 -23.33209991 64.55619812 3.36279988 -24.42149925 63.33229828 2.030999899
		 -25.8798008 63.24240112 1.67030001 -26.70919991 65.075302124 1.53530002 -27.072500229 65.013801575 2.76609993
		 -26.10680008 64.050201416 2.9224999 -25.84749985 64.14610291 1.77289999 -27.93560028 64.54660034 2.8282001
		 -26.49480057 63.36529922 3.049400091 -26.20969963 63.2696991 3.093300104 -24.67840004 63.29930115 3.32500005
		 -27.2928009 64.66110229 1.19990003 -26.18659973 63.36640167 1.59189999 -24.42239952 63.36249924 3.36080003
		 -23.0070991516 64.076499939 3.5395999 -24.6026001 62.35309982 6.1960001 -22.6923008 62.24819946 6.57469988
		 -22.59740067 61.46849823 6.67880011 -24.78960037 61.46689987 6.18279982 -24.89570045 62.44710159 6.12669992
		 -26.1595993 63.2765007 5.75489998 -26.40159988 63.45809937 7.071499825 -25.068899155 62.60020065 7.38579988
		 -25.035999298 61.71239853 7.69750023 -22.69239998 61.68610001 7.98400021 -22.77829933 62.46049881 7.84350014
		 -24.7765007 62.50889969 7.44899988 -27.12919998 62.96480179 7.27549982 -25.33259964 61.80310059 7.65350008
		 -27.43029976 63.25930023 7.18790007 -26.69659996 63.75450134 6.96939993 -27.48740005 65.29930115 6.61789989
		 -28.49699974 64.95320129 6.78319979 -25.089399338 61.53720093 6.11049986 -26.98209953 62.50579834 5.61980009
		 -26.45199966 63.56230164 5.64519978 -27.42790031 65.12190247 5.19369984 -24.51679993 65.89170074 9.93120003
		 -24.71120071 65.87359619 8.92549992 -24.26950073 64.29769897 9.23219967 -24.13209915 64.16739655 9.83329964
		 -24.64609909 66.27490234 8.93719959 -24.51959991 66.40589905 9.84689999 -24.93029976 67.91699982 9.38169956
		 -25.13909912 67.54100037 8.65789986 -24.28370094 67.43630219 7.81949997 -24.12599945 66.13800049 8.26399994
		 -23.52440071 66.33209991 8.31980038 -23.6243 67.52909851 7.8755002 -23.13800049 67.9992981 8.69519997
		 -23.07460022 66.43910217 9.037799835 -22.90309906 65.90339661 9.041799545 -23.41500092 65.751297 8.21510029
		 -23.92079926 64.22589874 8.83860016 -23.70170021 63.97200012 9.32859993 -23.048099518 64.2303009 9.34130001
		 -23.26070023 64.27079773 8.82129955 -24.11269951 65.77980042 8.19900036 -23.94129944 68.25910187 9.44989967
		 -23.53160095 66.45089722 9.8732996 -24.3295002 70.24639893 8.73449993;
	setAttr ".vt[166:331]" -26.043199539 69.18630219 9.014399529 -24.88660049 71.68499756 7.32520008
		 -26.62179947 71.052001953 7.68909979 -23.48889923 65.94020081 9.91660023 -23.39410019 64.12329865 9.90060043
		 -23.91110039 71.30059814 5.80319977 -23.19820023 69.75360107 7.40229988 -27.4477005 62.34360123 6.57110023
		 -25.41020012 61.33670044 7.03730011 -28.8022995 64.52410126 5.97209978 -27.83300018 62.75630188 6.46950006
		 -27.2852993 62.77870178 5.51859999 -28.33959961 64.60160065 4.94500017 -29.20170021 64.89430237 3.78539991
		 -28.89819908 65.16269684 4.76350021 -29.60000038 66.12069702 5.50740004 -29.39459991 65.69619751 3.14050007
		 -28.25060081 64.5530014 4.78399992 -28.78569984 64.23770142 3.87220001 -27.27569962 62.35189819 4.30509996
		 -27.10820007 62.81129837 5.11479998 -24.9321003 62.074001312 5.47459984 -26.83069992 62.60879898 5.17199993
		 -26.99609947 62.16139984 4.37580013 -24.8302002 61.48559952 4.87610006 -24.64590073 62.079498291 5.52600002
		 -24.55760002 61.49290085 4.93450022 -22.48410034 62.2492981 5.34240007 -22.67140007 62.67689896 5.91739988
		 -25.0055999756 61.21030045 7.090799809 -22.50830078 61.23220062 7.42689991 -29.10610008 65.12560272 7.98430014
		 -29.38999939 65.77870178 7.74679995 -28.93300056 65.55139923 6.68590021 -28.61289978 64.94219971 7.039299965
		 -28.043100357 63.13779831 7.64699984 -28.46100044 63.32429886 8.57310009 -28.1378994 62.83969879 8.68459988
		 -27.78700066 62.76309967 7.77619982 -26.3628006 61.46340179 8.25829983 -26.63059998 61.34540176 9.037799835
		 -26.26939964 61.10210037 9.12699986 -26.076999664 61.27270126 8.33969975 -23.99780083 60.26110077 8.87580013
		 -24.28549957 60.19820023 9.46959972 -29.75130081 66.79290009 7.42999983 -29.59889984 68.51930237 4.70359993
		 -29.41139984 69.24009705 6.13749981 -28.63330078 66.34670258 8.52869987 -28.8567009 67.28849792 8.46940041
		 -28.50760078 65.62779999 8.70040035 -27.86930084 63.6894989 9.24240017 -26.2723999 61.86510086 9.70499992
		 -27.63019943 63.32460022 9.3501997 -25.9939003 61.65710068 9.76010036 -23.96199989 60.62549973 10.065400124
		 -27.41259956 66.28140259 8.24370003 -27.40920067 65.58999634 8.38850021 -26.0030002594 68.14109802 8.41409969
		 -27.18580055 67.22350311 8.32730007 -28.40800095 70.11640167 7.1552 -25.51189995 73.22200012 6.19320011
		 -24.37989998 72.77429962 4.056300163 -25.55319977 74.047897339 6.18889999 -27.78230095 73.4210968 5.8513999
		 -29.18779945 72.98760223 3.70880008 -29.075399399 65.49629974 1.59029996 -29.03219986 67.67299652 1.15139997
		 -27.7105999 68.064697266 0.33489999 -27.81279945 65.70220184 0.86379999 -29.46529961 67.98519897 2.71810007
		 -28.1208992 64.34960175 3.10109997 -26.86730003 62.55559921 3.48909998 -26.58709908 62.36199951 3.56680012
		 -24.65309906 61.84609985 4.067200184 -24.37859917 61.8594017 4.13730001 -22.45409966 62.56729889 4.62279987
		 -24.39480019 68.92500305 5.61569977 -23.63470078 68.60350037 7.06829977 -24.97520065 68.028503418 7.19150019
		 -27.42280006 65.94560242 6.8427 -27.57830048 65.42199707 7.018799782 -26.21960068 68.78410339 0.94959998
		 -26.81459999 66.11219788 1.32630002 -26.82500076 65.63569641 1.45819998 -27.034000397 65.62779999 2.68309999
		 -27.21549988 65.56690216 4.0036001205 -27.12509918 64.90859985 3.45670009 -27.40069962 65.72660065 5.74669981
		 -27.43630028 64.94730377 4.70620012 -24.95100021 69.11270142 3.9453001 -24.96019936 72.55380249 1.89069998
		 -24.78750038 74.063201904 1.70190001 -27.15550041 63.70449829 7.65560007 -26.8512001 64.038299561 8.84609985
		 -23.82690048 60.95840073 8.80589962 -25.42869949 61.90660095 8.33500004 -25.23500061 62.14260101 9.42000008
		 -23.81469917 61.19290161 9.76970005 -25.70120049 62.11669922 8.24499989 -26.92000008 63.31769943 7.78730011
		 -26.68740082 63.64400101 8.95370007 -25.50349998 62.36429977 9.36680031 -26.12680054 62.76200104 2.32909989
		 -24.42519951 62.89049911 2.65400004 -24.068000793 63.0082015991 2.69779992 -22.76059914 63.79560089 2.94289994
		 -26.51140022 62.87319946 2.27169991 -28.21829987 64.34390259 1.83060002 -28.6439991 64.86340332 1.72749996
		 -28.51729965 65.099098206 2.81220007 -24.72330093 62.84740067 5.29290009 -26.14920044 63.44010162 5.036900043
		 -26.42350006 63.64989853 4.96829987 -26.25589943 63.44720078 3.70600009 -24.66090012 62.70940018 4.11409998
		 -25.9939003 63.22679901 3.79060006 -24.44490051 62.8246994 5.35270023 -23.021600723 63.13809967 5.71309996
		 -22.8118 63.12020111 4.53079987 -24.38080025 62.70190048 4.18529987 -27.65999985 65.21829987 1.042700052
		 -29.19619942 65.16750336 5.76149988 -25.66749954 69.093399048 2.5927 -26.7887001 66.24120331 2.58599997
		 -26.90369987 66.64060211 6.64480019 -27.015199661 66.33840179 5.58690023 -26.9659996 66.2173996 3.89459991
		 -29.030500412 72.0094985962 1.092000008 -29.031999588 72.9865036 0.77249998 -24.36459923 75.56700134 1.37179995
		 -25.90060043 72.86380005 -0.20190001 -26.051599503 71.96779633 0.48550001 -27.41139984 72.10890198 -0.21799999
		 -26.6072998 72.88770294 -0.31869999 -25.57659912 76.61470032 4.6869998 -24.4109993 76.15730286 3.065900087
		 -27.26000023 76.85209656 4.59859991 -28.86580086 76.56240082 2.75049996 -27.38209915 75.61039734 -0.8933
		 -28.79070091 75.99859619 0.36849999 -24.70470047 75.82559967 1.48000002 -25.64139938 75.43830109 -0.59170002
		 -28.039100647 72.92569733 -0.0836 -28.028299332 73.63200378 -0.22499999 -27.36149979 73.51930237 -0.95840001
		 -27.39699936 72.73439789 -0.82029998 -26.61949921 73.47419739 -0.42250001 -27.43980026 71.53379822 -0.21600001
		 -24.36529922 80.22609711 -2.50939989 -22.5685997 85.38150024 -4.075500011 -20.39539909 84.31269836 -0.0031999999
		 -22.78770065 79.98200226 1.10039997 -27.37809944 80.84850311 -2.4131999 -26.48189926 86.72389984 -3.9526999
		 -28.51490021 82.033798218 0.62540001 -27.93889999 87.85990143 -0.142 -26.80629921 81.61430359 3.87739992
		 -26.024200439 87.60590363 3.96729994 -24.11639977 80.63379669 3.9447 -21.94400024 85.42410278 3.84840012
		 -28.83919907 76.027900696 1.72880006 -27.47839928 76.20300293 4.28529978 -25.55920029 76.026802063 4.57969999
		 -24.8064003 75.51159668 3.28270006 -27.97229958 75.28089905 -0.15790001;
	setAttr ".vt[332:497]" -26.073200226 75.0024032593 -0.38420001 -28.77099991 89.091598511 -2.65280008
		 -28.71789932 89.016799927 2.1479001 -10.57110023 100.53099823 7.30910015 -24.1243 84.98390198 -0.0339
		 11.71660042 98.9885025 5.36870003 12.24260044 97.6289978 0.89660001 12.65849972 99.62290192 1.23720002
		 12.12129974 101.47350311 5.47879982 16.49119949 111.25900269 -1.70500004 13.22500038 114.1289978 -1.23370004
		 12.92580032 113.60500336 1.85880005 16.50489998 110.81600189 2.041199923 14.70870018 108.98899841 -4.45109987
		 12.94149971 105.8789978 -4.96479988 10.66670036 106.90899658 -5.072100163 12.68809986 111.49500275 -4.27320004
		 19.73290062 104.33799744 2.24040008 14.81099987 107.81999969 5.36959982 17.28809929 103.16400146 5.3677001
		 19.67830086 104.59200287 -1.9188 17.88389969 103.55500031 -5.32910013 14.14070034 101.80200195 -4.93079996
		 13.81739998 94.86180115 -2.48379993 13.13529968 100.049003601 -2.19309998 16.31430054 95.04989624 -6.41169977
		 21.43230057 97.40119934 -6.57040024 23.045700073 99.4937973 -2.84820008 23.20789909 99.086997986 2.41630006
		 19.54840088 98.088699341 5.99380016 13.13930035 99.20899963 1.86660004 13.83530045 100.9509964 5.93359995
		 13.90909958 95.086700439 1.75530005 15.51840019 96.023002625 5.84420013 25.65309906 95.18699646 2.64910007
		 21.96850014 93.036003113 6.52629995 25.15390015 95.65309906 -2.86809993 22.92410088 94.34729767 -6.47819996
		 17.33410072 92.10720062 -6.4843998 15.13949966 90.60220337 -2.4210999 14.72529984 90.33950043 1.76689994
		 18.52280045 89.64399719 -5.67269993 23.60320091 92.34400177 -6.072100163 24.29290009 91.089897156 -7.37949991
		 18.94260025 88.53980255 -6.28550005 25.75939941 94.19989777 -2.87779999 26.15649986 93.75240326 2.28769994
		 27.71170044 93.38330078 1.99230003 27.5503006 93.90840149 -2.95180011 16.68309975 91.40329742 6.043600082
		 15.84790039 88.90820313 1.801 15.52639961 86.84249878 1.8786 17.53660011 88.042900085 6.42409992
		 17.45400047 89.76339722 5.21360016 17.37299919 84.64710236 1.92970002 18.13579941 82.2947998 0.8714
		 20.31220055 83.23100281 6.11250019 19.53549957 85.71350098 6.26830006 25.088199615 88.19689941 6.8895998
		 24.4598999 90.62270355 6.89449978 28.91600037 90.65950012 -2.7414 29.034000397 90.38159943 2.10759997
		 25.36560059 88.43180084 -7.034900188 26.43829918 85.707901 -7.22889996 21.27370071 83.54029846 -5.80289984
		 20.012399673 86.19380188 -5.7487998 29.046899796 85.25530243 -1.64180005 27.29150009 84.31580353 -4.70860004
		 29.47890091 88.11810303 -2.5309999 26.1522007 84.25160217 5.56799984 29.53350067 85.069900513 2.38150001
		 29.93499947 87.68470001 2.22289991 25.5753994 86.13420105 6.88469982 21.2234993 82.16349792 4.39909983
		 19.9605999 81.64820099 -0.0031999999 22.80369949 82.94539642 -4.075500011 18.44260025 82.0086975098 -2.17670012
		 20.60860062 81.79969788 -2.19070005 16.21279907 86.93659973 -2.56030011 16.28269958 88.71520233 -2.074300051
		 17.74939919 84.53849792 -2.67810011 11.89410019 104.77899933 7.1855998 12.25080013 97.62840271 0.89660001
		 12.21109962 99.35199738 -3.23219991 12.20499992 110.04699707 6.39909983 23.15110016 91.24749756 6.080200195
		 10.42450047 102.9240036 -4.10200024 28.77099991 89.091598511 -2.65280008 28.71789932 89.016799927 2.1479001
		 10.57110023 100.53099823 7.30910015 23.82320023 85.41339874 -0.0339 4.23159981 119.65499878 -1.80589998
		 6.022200108 118.89900208 1.38639998 5.87470007 120.43099976 1.60210001 3.98119998 122.044998169 -1.94480002
		 5.63940001 113.68900299 10.68109989 3.30029988 113.99099731 9.023099899 -1.67180002 112.22200012 10.14690018
		 -0.5661 111.49900055 10.73630047 0 119.85600281 -2.53130007 0 122.34500122 -2.90089989
		 7.50470018 118.4280014 0.89660001 4.95130014 119.99700165 -2.72939992 5.98899984 117.58200073 5.8118
		 8.44799995 114.81600189 5.73810005 0 120.21399689 -3.84599996 10.18220043 110.46900177 9.84679985
		 -5.875 120.69999695 1.60239995 -6.022200108 118.89900208 1.38639998 -4.23159981 119.65499878 -1.80589998
		 -3.98119998 122.044998169 -1.94480002 -7.18620014 118.64399719 0.48769999 -4.95130014 119.96099854 -2.58450007
		 -8.50640011 115.22100067 5.73810005 -5.95289993 117.78700256 5.8118 -10.67469978 110.47799683 10.51550007
		 -5.65869999 113.77899933 10.68109989 5.10440016 116.40100098 5.73080015 1.26629996 110.070999146 10.15009975
		 -2.69330001 114.1309967 9.023099899 -5.13719988 116.34200287 5.37680006 -1.44490004 108.06199646 11.92510033
		 27.39229965 73.58239746 -0.76569998 27.40250015 72.70179749 -0.62900001 27.33300018 72.82530212 -3.043600082
		 27.29949951 73.9713974 -2.92280006 2.48160005 108.7539978 11.3842001 9.84599972 109.23899841 7.92799997
		 9.83590031 112.92500305 5.9533 3.85540009 103.091003418 13.54769993 10.30449963 102.22799683 9.84280014
		 0 95.22039795 14.73289967 3.9934001 94.74140167 14.063199997 -0.30059999 103.36000061 13.56649971
		 0 88.055198669 16.49230003 4.42530012 87.93479919 15.44050026 0 85.92379761 15.59150028
		 4.6855998 85.7881012 14.92430019 -1.44219995 108.06199646 11.92510033 -1.66910005 112.22200012 10.14690018
		 8.55249977 86.51010132 11.13290024 10.55770016 88.13300323 10.23719978 9.63840008 95.35900116 9.98309994
		 -10.011799812 112.83499908 5.7118001 -10.021900177 108.96700287 8.30910015 -3.48569989 108.7539978 11.3842001
		 -10.31649971 102.22799683 10.12100029 -3.85540009 103.091003418 13.54769993 -4.058599949 94.69850159 14.063199997
		 -4.47079992 87.76399994 15.44050026 -3.88260007 85.35810089 15.19719982 -10.45689964 88.097999573 11.038999557
		 -7.96299982 85.68759918 10.51519966 -10.24969959 95.85199738 9.76809978 -15.42910004 10.80739975 -2.048700094
		 -15.26259995 12.76130009 -1.80770004 -13.73309994 12.61789989 -5.040800095 -13.8135004 10.90789986 -5.45069981
		 -10.82439995 12.82579994 -5.25689983 -10.72949982 11.13549995 -5.94490004 -10.76249981 7.083799839 -5.65350008
		 -13.60859966 7.089000225 -5.19049978 -13.78689957 9.4375 -5.63640022 -10.65909958 9.56330013 -5.81389999
		 -15.47439957 6.9369998 -1.93420005 -15.86100006 9.077500343 -2.24760008;
	setAttr ".vt[498:663]" -16.05150032 12.63829994 4.76469994 -15.6534996 15.7123003 3.94079995
		 -8.75529957 11.97830009 5.70919991 -8.83460045 15.65219975 2.54509997 -10.59599972 17.0065002441 6.010200024
		 -10.7482996 14.60789967 7.63740015 -11.23239994 11.55020046 11.40390015 -8.97949982 9.58240032 11.44519997
		 -8.70680046 9.0069999695 4.45709991 -8.49820042 7.63600016 10.97249985 -17.49430084 10.17310047 9.29780006
		 -14.26720047 11.72859955 10.88490009 -13.73649979 14.56169987 7.26949978 -16.61330032 8.81519985 2.15890002
		 -18.44960022 7.92619991 8.22000027 -16.30949974 6.77780008 2.0025000572 -19.067800522 7.22730017 12.69079971
		 -17.95779991 9.17790031 14.79440022 -18.11910057 5.83339977 8.48700047 -18.82080078 5.73500013 12.56140041
		 -17.72310066 7.21850014 15.83570004 -17.51869965 5.70629978 15.43010044 -14.48530006 5.7191 16.81139946
		 -14.64400005 7.54129982 17.56529999 -11.73779964 5.75530005 16.79120064 -9.64369965 5.72629976 15.29069996
		 -9.57660007 7.2414999 15.75269985 -11.72570038 7.57429981 17.55960083 -9.88570023 8.91590023 15.23719978
		 -11.57849979 9.41959953 16.67639923 -8.73120022 5.79339981 10.71879959 -14.67679977 9.7755003 16.9041996
		 -9.10449982 6.80319977 4.1940999 -8.43459988 6.93540001 -0.088799998 -8.40559959 6.99189997 -3.5632
		 -8.075499535 9.46959972 -3.63649988 -8.074199677 9.12170029 0.1389 -7.98820019 11.15219975 0.51270002
		 -8.085000038 11.068599701 -3.72379994 -8.61909962 12.78450012 -3.087899923 -14.01060009 5.75279999 9.7105999
		 -13.12040043 6.55210018 2.99819994 -14.13720036 5.73330021 13.76959991 -13.44849968 16.86440086 5.82110023
		 -12.12580013 6.90819979 -0.98830003 7.44239998 62.11009979 14.8579998 14.10560036 61.82649994 10.58749962
		 7.55779982 82.77149963 12.32890034 3.77889991 82.75630188 14.15799999 0 62.94620132 15.85000038
		 0 82.7410965 14.58150005 -7.44239998 62.11009979 14.8579998 -3.77889991 82.75630188 14.15799999
		 -7.55779982 82.77149963 12.32890034 -14.10560036 61.82649994 10.58749962 -5.95849991 29.62000084 -4.17479992
		 -6.51490021 29.5734005 1.73539996 -7.37830019 27.37739944 1.36329997 -7.15950012 26.75979996 -3.69250011
		 -12.24250031 29.83930016 5.23579979 -12.3039999 27.88979912 4.33199978 -10.11880016 27.68770027 4.40679979
		 -9.63290024 29.6685009 5.38409996 -15.27099991 30.0583992 -3.82660007 -14.82089996 27.098300934 -3.78430009
		 -15.75209999 27.55400085 -0.55729997 -16.28000069 30.09280014 -0.1319 -10.3760004 29.67499924 -6.48719978
		 -10.61690044 26.99710083 -5.64020014 -10.27779961 17.82850075 -6.12540007 -14.22649956 17.82729912 -5.055399895
		 -14.98980045 21.7201004 -4.31720018 -10.73820019 21.77350044 -5.61850023 -14.65130043 27.74869919 2.55349994
		 -14.86009979 30.00079917908 3.23860002 -6.90250015 23.84499931 1.99679995 -6.6645999 23.46389961 -3.67919993
		 -6.85820007 31.22660065 1.70529997 -6.43790007 31.81360054 -3.40050006 -5.45709991 41.97480011 -3.14689994
		 -5.81430006 41.17829895 1.98539996 -12.90649986 21.59359932 4.80530024 -10.37660027 21.52140045 4.83220005
		 -10.050800323 24.03440094 5.3829999 -12.75049973 24.19149971 5.32469988 -14.92819977 21.52179909 2.73779988
		 -15.25209999 24.069599152 3.12260008 -15.74100018 21.4741993 -0.85100001 -16.44610023 18.19249916 -1.43770003
		 -10.54300022 23.49180031 -6.32999992 -7.4218998 21.45280075 -2.89599991 -11.36100006 40.77320099 5.74599981
		 -12.043700218 31.50180054 4.86380005 -9.68700027 31.25639915 4.99440002 -8.84659958 40.70280075 5.87410021
		 -15.88319969 41.60440063 0.39669999 -15.66919994 32.29029846 0.0977 -14.32719994 31.98080063 3.13940001
		 -14.65719986 41.1208992 3.60489988 -16.34770012 23.93090057 -0.71329999 -7.6184001 21.50090027 1.96159995
		 -13.35610008 16.9605999 6.33949995 -16.2234993 16.42239952 3.39319992 -16.62899971 13.061499596 4.86439991
		 -13.75990009 14.2105999 8.096699715 -13.31630039 15.38770008 -5.19950008 -10.071100235 15.31620026 -5.54540014
		 -9.94400024 11.84189987 -6.41849995 -13.47999954 11.64330006 -5.93660021 -7.30109978 18.83370018 2.71930003
		 -8.096899986 16.22870064 2.75620008 -7.84590006 15.44769955 -2.75909996 -7.046899796 18.55929947 -2.70650005
		 -7.37370014 11.31540012 -2.79809999 -13.17910004 18.88019943 6.5078001 -16.43650055 18.5128994 3.20289993
		 -10.48040009 18.73870087 6.49860001 -10.63290024 16.85149956 6.49749994 -10.45839977 14.37699986 8.23550034
		 -7.29769993 11.69939995 2.51749992 -15.2269001 42.068099976 -3.11319995 -14.90320015 32.43579865 -3.12770009
		 -10.72360039 42.44879913 -6.22060013 -10.35540009 32.39929962 -5.35010004 -15.38440037 23.81069946 -4.54559994
		 -16.37050056 12.005200386 -1.64119995 -15.87409973 15.67490005 -1.66040003 -5.034999847 39.81389999 2.37330008
		 -4.55569983 40.86999893 -3.57550001 -11.69649982 39.80870056 6.81430006 -8.21590042 39.8728981 6.32569981
		 -16.53030014 41.0098991394 0.463 -15.33129978 40.3708992 4.60239983 -16.010799408 41.36330032 -3.71479988
		 -10.55420017 41.79320145 -7.11950016 -4.39769983 33.98009872 1.92180002 -3.57249999 34.72090149 -4.42869997
		 -12.22649956 33.86199951 7.17070007 -7.58850002 33.97219849 5.95190001 -17.60029984 35.053901672 0.1978
		 -16.41239929 34.41469955 5.00050020218 -17.19939995 35.92610168 -5.0058999062 -10.4052 36.082000732 -8.6079998
		 10.11180019 112.53900146 6.91169977 15.079999924 110.46099854 6.019899845 15.71759987 114.080001831 -0.050299998
		 9.079400063 116.90110016 0.072400004 4.37960005 120.057998657 -1.97259998 9.35009956 115.11399841 -4.31360006
		 3.49569988 116.59700012 -4.79949999 3.48760009 110.7009964 -6.6415 0 110.83699799 -6.67659998
		 0 116.62999725 -4.74179983 13.97410011 108.88999939 -5.72410011 13.065699577 102.64399719 -5.73680019
		 8.21409988 103.15100098 -6.40250015 8.48499966 110.49700165 -6.15040016 3.92350006 94.79429626 -4.83710003
		 4.14589977 99.14440155 -5.18419981 8.76360035 98.87400055 -4.42939997 8.97809982 95.45939636 -3.8039999
		 3.97110009 103.3730011 -6.77129984 0 103.21299744 -6.82849979 0 98.67870331 -5.4460001
		 10.60719967 102.90599823 10.97169971 5.66090012 113.54499817 9.56190014;
	setAttr ".vt[664:829]" 5.32399988 104.64990234 14.75720024 13.35379982 102.18900299 6.96190023
		 4.85360003 97.66220093 14.34749985 9.7961998 97.037696838 10.78549957 13.63370037 95.80039978 5.3435998
		 13.27950001 94.8588028 -0.3348 13.23589993 98.5963974 0.75340003 13.24639988 99.55690002 4.63579988
		 14.47780037 90.58830261 6.78859997 11.1157999 89.99569702 12.82970047 5.15450001 89.7766037 17.25309944
		 3.47340012 84.73300171 14.7737999 7.86780024 84.58979797 12.31509972 12.10990047 84.84780121 5.7901001
		 0 94.83110046 -5.13079977 11.94589996 85.26200104 1.63199997 8.44349957 85.74479675 -1.6516
		 9.64190006 89.48349762 -4.2651 13.96179962 90.89179993 -0.1717 4.31519985 86.19319916 -3.37220001
		 4.71540022 90.22550201 -6.12790012 0 86.17179871 -3.79579997 0 89.37239838 -6.23799992
		 13.16899967 99.50189972 -3.84809995 15.44639969 113.24500275 -3.35109997 5.93109989 119.37789917 0.99400002
		 0 120.52400208 -3.019900084 15.023900032 109.91400146 5.53049994 15.61690044 113.20200348 -0.22130001
		 13.98029995 108.76100159 -5.012300014 13.26329994 102.87000275 -4.96439981 15.36470032 112.40000153 -2.99850011
		 -10.11180019 112.53900146 6.91169977 -9.20079994 117.04889679 0.081699997 -15.71759987 114.080001831 -0.050299998
		 -15.079999924 110.46099854 6.019899845 -4.37960005 120.057998657 -1.97259998 -3.49569988 116.59700012 -4.79949999
		 -9.35009956 115.11399841 -4.31360006 -3.48760009 110.7009964 -6.6415 -13.97410011 108.88999939 -5.72410011
		 -8.48499966 110.49700165 -6.15040016 -8.21409988 103.15100098 -6.40250015 -13.065699577 102.64399719 -5.73680019
		 -3.92350006 94.79429626 -4.83710003 -8.97809982 95.45939636 -3.8039999 -8.76360035 98.87400055 -4.42939997
		 -4.14589977 99.14440155 -5.18419981 -3.97110009 103.3730011 -6.77129984 -10.60719967 102.90599823 10.97169971
		 -5.32399988 105.35310364 14.16829967 -5.66090012 113.54499817 9.56190014 -13.35379982 102.18900299 6.96190023
		 -9.7961998 97.037696838 10.78549957 -4.85360003 97.66220093 14.34749985 -13.63370037 95.80039978 5.3435998
		 -13.24639988 99.55690002 4.63579988 -13.23589993 98.5963974 0.75340003 -13.27950001 94.8588028 -0.3348
		 -14.47780037 90.58830261 6.78859997 -11.1157999 89.99569702 12.82970047 -5.15450001 89.7766037 17.25309944
		 -3.47340012 84.73300171 14.7737999 -7.86780024 84.58979797 12.31509972 -12.10990047 84.84780121 5.7901001
		 -11.94589996 85.26200104 1.63199997 -13.96179962 90.89179993 -0.1717 -9.64190006 89.48349762 -4.2651
		 -8.44349957 85.74479675 -1.6516 -4.71540022 90.22550201 -6.12790012 -4.31519985 86.19319916 -3.37220001
		 -13.20370007 99.50189972 -3.84809995 -15.44639969 113.24500275 -3.35109997 -5.85839987 119.20300293 1.034000039
		 -15.023900032 109.91400146 5.53049994 -15.61690044 113.20200348 -0.22130001 -13.98029995 108.76100159 -5.012300014
		 -13.26329994 102.87000275 -4.96439981 -15.36470032 112.40000153 -2.99850011 5.66109991 72.76560211 16.12540054
		 11.23740005 66.59750366 13.20390034 8.71430016 82.77149963 11.64550018 4.013500214 82.25350189 14.97239971
		 17.30419922 63.09859848 8.67669964 13.019499779 82.90730286 7.41179991 18.67589951 61.96709824 0.2737
		 13.40559959 83.15740204 2.78500009 7.67719984 61.57040024 -9.37469959 5.56090021 82.84089661 -3.20729995
		 11.23200035 83.19429779 -0.6778 15.53559971 61.78099823 -6.34110022 0 61.70470047 -9.66160011
		 0 82.53009796 -3.43849993 -5.66109991 72.76560211 16.12540054 -4.013500214 82.25350189 14.97239971
		 -8.71430016 82.77149963 11.64550018 -11.23740005 66.59750366 13.20390034 -13.019499779 82.90730286 7.41179991
		 -17.30419922 63.09859848 8.67669964 -13.40559959 83.15740204 2.78500009 -18.67589951 61.96709824 0.2737
		 -7.67719984 61.57040024 -9.37469959 -15.53559971 61.78099823 -6.34110022 -11.23200035 83.19429779 -0.6778
		 -5.56090021 82.84089661 -3.20729995 14.29889965 79.31020355 7.47700024 12.98820019 86.68440247 7.052899837
		 8.81799984 86.42410278 12.73970032 9.63749981 78.12599945 12.79969978 14.74409962 79.70950317 2.71609998
		 13.6001997 86.84149933 3.81640005 4.27330017 86.43540192 15.52680016 0 86.43119812 15.97159958
		 -0.62919998 75.63259888 16.66320038 5.63170004 77.066703796 15.63500023 9.092000008 86.66850281 -3.027499914
		 11.77700043 86.73470306 -0.58700001 13.22039986 79.22599792 -1.60800004 9.28929996 77.97429657 -4.55989981
		 2.79570007 75.25759888 -5.76130009 3.31859994 86.47889709 -4.01970005 -3.95490003 86.49120331 -3.80859995
		 -6.068099976 72.49469757 -6.88500023 -17.30529976 72.37259674 7.57999992 -13.18430042 73.42150116 12.48550034
		 -9.87040043 86.42630005 12.33850002 -13.42630005 86.40740204 7.1493001 -18.53109932 70.69090271 1.31509995
		 -13.76290035 86.59549713 2.53060007 -5.11280012 86.42099762 15.56949997 -7.52460003 74.46779633 16.67630005
		 -10.86410046 86.42359924 -1.095100045 -13.34850025 70.67220306 -5.34060001 -17.082799911 69.85559845 1.56570005
		 -15.8696003 71.58190155 7.37400007 -8.25279999 61.53699875 16.77370071 -1.98450005 61.7018013 16.63069916
		 -13.30539989 62.29439926 13.44970036 -6.66720009 54.38190079 15.51280022 -8.4612999 54.30960083 15.4392004
		 -10.19470024 54.54130173 14.41359997 -5.12290001 42.72579956 15.48410034 -6.99980021 49.34550095 15.2823
		 -8.79469967 49.37829971 15.20339966 -9.22920036 42.19020081 15.28190041 -10.47109985 49.60300064 14.23180008
		 -12.82699966 43.71780014 13.89760017 25.36770058 76.5164032 5.23040009 24.011199951 75.9661026 3.27990007
		 24.45470047 74.52680206 3.63649988 25.62330055 74.78450012 5.59840012 27.44639969 74.9414978 5.4224
		 27.39310074 76.80200195 5.12410021 25.71800041 73.9539032 -0.32730001 25.45429993 75.10769653 -0.94099998
		 27.53210068 75.3030014 -1.21920002 27.35289955 74.21820068 -0.75029999 29.23480034 75.77510071 0.034400001
		 29.034500122 74.0036010742 0.48019999 29.28319931 76.45349884 2.90039992 29.036600113 74.44889832 3.26830006
		 24.63030052 64.030296326 2.023900032 24.8246994 63.95890045 3.13039994 25.83119965 63.94120026 2.9684
		 25.62899971 64.066299438 1.83759999 23.32789993 64.62969971 2.40610003;
	setAttr ".vt[830:995]" 24.3791008 64.090202332 2.085799932 24.1772995 63.41230011 2.095200062
		 22.94669914 64.21589661 2.4532001 23.33209991 64.55619812 3.36279988 24.56889915 64.015098572 3.17090011
		 25.8798008 63.24240112 1.67030001 24.42149925 63.33229828 2.030999899 26.70919991 65.075302124 1.53530002
		 25.84749985 64.14610291 1.77289999 26.10680008 64.050201416 2.9224999 27.072500229 65.013801575 2.76609993
		 26.49480057 63.36529922 3.049400091 27.93560028 64.54660034 2.8282001 24.67840004 63.29930115 3.32500005
		 26.20969963 63.2696991 3.093300104 27.2928009 64.66110229 1.19990003 26.18659973 63.36640167 1.59189999
		 23.0070991516 64.076499939 3.5395999 24.42239952 63.36249924 3.36080003 24.6026001 62.35309982 6.1960001
		 24.78960037 61.46689987 6.18279982 22.59740067 61.46849823 6.67880011 22.6923008 62.24819946 6.57469988
		 24.89570045 62.44710159 6.12669992 25.068899155 62.60020065 7.38579988 26.40159988 63.45809937 7.071499825
		 26.1595993 63.2765007 5.75489998 25.035999298 61.71239853 7.69750023 24.7765007 62.50889969 7.44899988
		 22.77829933 62.46049881 7.84350014 22.69239998 61.68610001 7.98400021 27.12919998 62.96480179 7.27549982
		 25.33259964 61.80310059 7.65350008 27.43029976 63.25930023 7.18790007 28.49699974 64.95320129 6.78319979
		 27.48740005 65.29930115 6.61789989 26.69659996 63.75450134 6.96939993 26.98209953 62.50579834 5.61980009
		 25.089399338 61.53720093 6.11049986 26.45199966 63.56230164 5.64519978 27.42790031 65.12190247 5.19369984
		 24.51679993 65.89170074 9.93120003 24.13209915 64.16739655 9.83329964 24.26950073 64.29769897 9.23219967
		 24.71120071 65.87359619 8.92549992 24.64609909 66.27490234 8.93719959 24.51959991 66.40589905 9.84689999
		 25.13909912 67.54100037 8.65789986 24.93029976 67.91699982 9.38169956 24.28370094 67.43630219 7.81949997
		 24.12599945 66.13800049 8.26399994 23.52440071 66.33209991 8.31980038 23.07460022 66.43910217 9.037799835
		 23.13800049 67.9992981 8.69519997 23.6243 67.52909851 7.8755002 23.41500092 65.751297 8.21510029
		 22.90309906 65.90339661 9.041799545 23.70170021 63.97200012 9.32859993 23.92079926 64.22589874 8.83860016
		 23.26070023 64.27079773 8.82129955 23.048099518 64.2303009 9.34130001 24.11269951 65.77980042 8.19900036
		 23.94129944 68.25910187 9.44989967 23.53160095 66.45089722 9.8732996 26.043199539 69.18630219 9.014399529
		 24.3295002 70.24639893 8.73449993 26.62179947 71.052001953 7.68909979 24.88660049 71.68499756 7.32520008
		 23.48889923 65.94020081 9.91660023 23.39410019 64.12329865 9.90060043 23.91110039 71.30059814 5.80319977
		 23.19820023 69.75360107 7.40229988 25.41020012 61.33670044 7.03730011 27.4477005 62.34360123 6.57110023
		 27.83300018 62.75630188 6.46950006 28.8022995 64.52410126 5.97209978 27.2852993 62.77870178 5.51859999
		 28.33959961 64.60160065 4.94500017 29.20170021 64.89430237 3.78539991 29.39459991 65.69619751 3.14050007
		 29.60000038 66.12069702 5.50740004 28.89819908 65.16269684 4.76350021 28.25060081 64.5530014 4.78399992
		 27.10820007 62.81129837 5.11479998 27.27569962 62.35189819 4.30509996 28.78569984 64.23770142 3.87220001
		 24.9321003 62.074001312 5.47459984 24.8302002 61.48559952 4.87610006 26.99609947 62.16139984 4.37580013
		 26.83069992 62.60879898 5.17199993 24.64590073 62.079498291 5.52600002 22.67140007 62.67689896 5.91739988
		 22.48410034 62.2492981 5.34240007 24.55760002 61.49290085 4.93450022 25.0055999756 61.21030045 7.090799809
		 22.50830078 61.23220062 7.42689991 29.10610008 65.12560272 7.98430014 28.61289978 64.94219971 7.039299965
		 28.93300056 65.55139923 6.68590021 29.38999939 65.77870178 7.74679995 28.46100044 63.32429886 8.57310009
		 28.043100357 63.13779831 7.64699984 28.1378994 62.83969879 8.68459988 26.63059998 61.34540176 9.037799835
		 26.3628006 61.46340179 8.25829983 27.78700066 62.76309967 7.77619982 26.26939964 61.10210037 9.12699986
		 24.28549957 60.19820023 9.46959972 23.99780083 60.26110077 8.87580013 26.076999664 61.27270126 8.33969975
		 29.75130081 66.79290009 7.42999983 29.59889984 68.51930237 4.70359993 29.41139984 69.24009705 6.13749981
		 28.8567009 67.28849792 8.46940041 28.63330078 66.34670258 8.52869987 28.50760078 65.62779999 8.70040035
		 27.86930084 63.6894989 9.24240017 27.63019943 63.32460022 9.3501997 26.2723999 61.86510086 9.70499992
		 25.9939003 61.65710068 9.76010036 23.96199989 60.62549973 10.065400124 27.41259956 66.28140259 8.24370003
		 27.40920067 65.58999634 8.38850021 26.0030002594 68.14109802 8.41409969 27.18580055 67.22350311 8.32730007
		 28.40800095 70.11640167 7.1552 25.51189995 73.22200012 6.19320011 24.37989998 72.77429962 4.056300163
		 25.55319977 74.047897339 6.18889999 27.78230095 73.4210968 5.8513999 29.18779945 72.98760223 3.70880008
		 29.075399399 65.49629974 1.59029996 27.81279945 65.70220184 0.86379999 27.7105999 68.064697266 0.33489999
		 29.03219986 67.67299652 1.15139997 29.46529961 67.98519897 2.71810007 26.86730003 62.55559921 3.48909998
		 28.1208992 64.34960175 3.10109997 24.65309906 61.84609985 4.067200184 26.58709908 62.36199951 3.56680012
		 22.45409966 62.56729889 4.62279987 24.37859917 61.8594017 4.13730001 24.39480019 68.92500305 5.61569977
		 23.63470078 68.60350037 7.06829977 24.97520065 68.028503418 7.19150019 27.42280006 65.94560242 6.8427
		 27.57830048 65.42199707 7.018799782 26.21960068 68.78410339 0.94959998 26.81459999 66.11219788 1.32630002
		 27.034000397 65.62779999 2.68309999 26.82500076 65.63569641 1.45819998 27.12509918 64.90859985 3.45670009
		 27.21549988 65.56690216 4.0036001205 27.40069962 65.72660065 5.74669981 27.43630028 64.94730377 4.70620012
		 24.95100021 69.11270142 3.9453001 24.96019936 72.55380249 1.89069998 24.78750038 74.063201904 1.70190001
		 27.15550041 63.70449829 7.65560007 26.8512001 64.038299561 8.84609985 23.82690048 60.95840073 8.80589962
		 23.81469917 61.19290161 9.76970005 25.23500061 62.14260101 9.42000008 25.42869949 61.90660095 8.33500004
		 25.70120049 62.11669922 8.24499989 26.92000008 63.31769943 7.78730011;
	setAttr ".vt[996:1161]" 26.68740082 63.64400101 8.95370007 25.50349998 62.36429977 9.36680031
		 24.42519951 62.89049911 2.65400004 26.12680054 62.76200104 2.32909989 24.068000793 63.0082015991 2.69779992
		 22.76059914 63.79560089 2.94289994 26.51140022 62.87319946 2.27169991 28.21829987 64.34390259 1.83060002
		 28.51729965 65.099098206 2.81220007 28.6439991 64.86340332 1.72749996 26.14920044 63.44010162 5.036900043
		 24.72330093 62.84740067 5.29290009 26.25589943 63.44720078 3.70600009 26.42350006 63.64989853 4.96829987
		 25.9939003 63.22679901 3.79060006 24.66090012 62.70940018 4.11409998 24.44490051 62.8246994 5.35270023
		 23.021600723 63.13809967 5.71309996 24.38080025 62.70190048 4.18529987 22.8118 63.12020111 4.53079987
		 27.65999985 65.21829987 1.042700052 29.19619942 65.16750336 5.76149988 26.7887001 66.24120331 2.58599997
		 25.66749954 69.093399048 2.5927 26.90369987 66.64060211 6.64480019 26.9659996 66.2173996 3.89459991
		 27.015199661 66.33840179 5.58690023 29.030500412 72.0094985962 1.092000008 29.031999588 72.9865036 0.77249998
		 24.36459923 75.56700134 1.37179995 25.90060043 72.86380005 -0.20190001 26.051599503 71.96779633 0.48550001
		 26.6072998 72.88770294 -0.31869999 27.41139984 72.10890198 -0.21799999 25.57659912 76.61470032 4.6869998
		 24.4109993 76.15730286 3.065900087 27.26000023 76.85209656 4.59859991 28.86580086 76.56240082 2.75049996
		 27.38209915 75.61039734 -0.8933 28.79070091 75.99859619 0.36849999 24.70470047 75.82559967 1.48000002
		 25.64139938 75.43830109 -0.59170002 28.039100647 72.92569733 -0.0836 28.028299332 73.63200378 -0.22499999
		 27.39699936 72.73439789 -0.82029998 27.36149979 73.51930237 -0.95840001 26.61949921 73.47419739 -0.42250001
		 27.43980026 71.53379822 -0.21600001 24.36529922 80.22609711 -2.50939989 22.78770065 79.98200226 1.10039997
		 20.39539909 84.31269836 -0.0031999999 22.5685997 85.38150024 -4.075500011 27.37809944 80.84850311 -2.4131999
		 26.48189926 86.72389984 -3.9526999 27.93889999 87.85990143 -0.142 28.51490021 82.033798218 0.62540001
		 26.80629921 81.61430359 3.87739992 26.024200439 87.60590363 3.96729994 24.11639977 80.63379669 3.9447
		 21.94400024 85.42410278 3.84840012 27.47839928 76.20300293 4.28529978 28.83919907 76.027900696 1.72880006
		 25.55920029 76.026802063 4.57969999 24.8064003 75.51159668 3.28270006 27.97229958 75.28089905 -0.15790001
		 26.073200226 75.0024032593 -0.38420001 15.42910004 10.80739975 -2.048700094 13.8135004 10.90789986 -5.45069981
		 13.73309994 12.61789989 -5.040800095 15.26259995 12.76130009 -1.80770004 10.72949982 11.13549995 -5.94490004
		 10.82439995 12.82579994 -5.25689983 10.76249981 7.083799839 -5.65350008 10.65909958 9.56330013 -5.81389999
		 13.78689957 9.4375 -5.63640022 13.60859966 7.089000225 -5.19049978 15.47439957 6.9369998 -1.93420005
		 15.86100006 9.077500343 -2.24760008 16.05150032 12.63829994 4.76469994 15.6534996 15.7123003 3.94079995
		 8.75529957 11.97830009 5.70919991 10.7482996 14.60789967 7.63740015 10.59599972 17.0065002441 6.010200024
		 8.83460045 15.65219975 2.54509997 8.97949982 9.58240032 11.44519997 11.23239994 11.55020046 11.40390015
		 8.70680046 9.0069999695 4.45709991 8.49820042 7.63600016 10.97249985 17.49430084 10.17310047 9.29780006
		 13.73649979 14.56169987 7.26949978 14.26720047 11.72859955 10.88490009 18.44960022 7.92619991 8.22000027
		 16.61330032 8.81519985 2.15890002 16.30949974 6.77780008 2.0025000572 19.067800522 7.22730017 12.69079971
		 17.95779991 9.17790031 14.79440022 18.82080078 5.73500013 12.56140041 18.11910057 5.83339977 8.48700047
		 17.72310066 7.21850014 15.83570004 14.64400005 7.54129982 17.56529999 14.48530006 5.7191 16.81139946
		 17.51869965 5.70629978 15.43010044 11.73779964 5.75530005 16.79120064 11.72570038 7.57429981 17.55960083
		 9.57660007 7.2414999 15.75269985 9.64369965 5.72629976 15.29069996 11.57849979 9.41959953 16.67639923
		 9.88570023 8.91590023 15.23719978 8.73120022 5.79339981 10.71879959 14.67679977 9.7755003 16.9041996
		 9.10449982 6.80319977 4.1940999 8.43459988 6.93540001 -0.088799998 8.074199677 9.12170029 0.1389
		 8.075499535 9.46959972 -3.63649988 8.40559959 6.99189997 -3.5632 7.98820019 11.15219975 0.51270002
		 8.61909962 12.78450012 -3.087899923 8.085000038 11.068599701 -3.72379994 13.12040043 6.55210018 2.99819994
		 14.01060009 5.75279999 9.7105999 14.13720036 5.73330021 13.76959991 13.44849968 16.86440086 5.82110023
		 12.12580013 6.90819979 -0.98830003 6.4052 53.69609833 -8.15509987 1.29990005 51.56110001 -2.84170008
		 1.90129995 62.3810997 -1.6868 6.15850019 63.86410141 -4.84989977 12.96199989 54.28120041 -7.57700014
		 12.24639988 63.50569916 -4.41160011 18.42550087 54.091999054 -0.043900002 16.4836998 62.61940002 1.22179997
		 15.14500046 62.052101135 8.73359966 17.4253006 52.94710159 7.29320002 1.78830004 61.021999359 9.74180031
		 2.40280008 49.49729919 8.8071003 6.5296998 49.5447998 12.73760033 5.73990011 60.49309921 13.46150017
		 10.95440006 60.94829941 12.38679981 12.98770046 50.63000107 11.72939968 0.2212 67.31109619 4.79729986
		 1.9188 68.50689697 -1.99150002 0.43880001 60.96770096 4.45130014 0.40689999 49.79629898 3.59109998
		 1.69229996 68.26850128 10.24950027 13.28740025 43.69120026 9.59710026 18.25989914 45.2480011 5.76520014
		 13.31840038 46.55580139 -8.31169987 18.66500092 46.66040039 -1.48520005 7.02339983 46.28469849 -8.96109962
		 1.82459998 45.12379837 -3.93580008 2.081700087 44.42829895 1.95780003 3.99959993 43.41210175 6.57159996
		 8.0094003677 43.14390182 9.78859997 5.90210009 40.8669014 -3.67549992 5.5151 39.71989822 0.1078
		 9.59780025 39.67689896 5.47189999 12.33940029 40.041900635 5.33389997 14.89840031 40.84949875 3.2572999
		 15.40470028 41.44210052 -1.73609996 7.068099976 39.53950119 3.11660004 12.33769989 41.68690109 -5.37190008
		 8.40649986 41.43899918 -5.15880013 11.42409992 74.82080078 -2.68210006 14.33409977 73.22029877 2.88669991
		 4.3757 75.19409943 -3.95860004 12.8064003 73.17019653 9.95810032;
	setAttr ".vt[1162:1327]" 4.49170017 73.8742981 13.39350033 9.04240036 72.95709991 11.74950027
		 0 67.31109619 4.79729986 0 68.78919983 -1.45770001 0 68.65840149 10.24950027 0 75.066497803 13.62370014
		 0 75.40630341 -3.95860004 5.95849991 29.62000084 -4.17479992 7.15950012 26.75979996 -3.69250011
		 7.37830019 27.37739944 1.36329997 6.51490021 29.5734005 1.73539996 12.24250031 29.83930016 5.23579979
		 9.63290024 29.6685009 5.38409996 10.11880016 27.68770027 4.40679979 12.3039999 27.88979912 4.33199978
		 15.27099991 30.0583992 -3.82660007 16.28000069 30.09280014 -0.1319 15.75209999 27.55400085 -0.55729997
		 14.82089996 27.098300934 -3.78430009 10.61690044 26.99710083 -5.64020014 10.3760004 29.67499924 -6.48719978
		 10.27779961 17.82850075 -6.12540007 10.73820019 21.77350044 -5.61850023 14.98980045 21.7201004 -4.31720018
		 14.22649956 17.82729912 -5.055399895 14.86009979 30.00079917908 3.23860002 14.65130043 27.74869919 2.55349994
		 6.6645999 23.46389961 -3.67919993 6.90250015 23.84499931 1.99679995 6.85820007 31.22660065 1.70529997
		 5.81430006 41.17829895 1.98539996 5.45709991 41.97480011 -3.14689994 6.43790007 31.81360054 -3.40050006
		 12.90649986 21.59359932 4.80530024 12.75049973 24.19149971 5.32469988 10.050800323 24.03440094 5.3829999
		 10.37660027 21.52140045 4.83220005 14.92819977 21.52179909 2.73779988 15.25209999 24.069599152 3.12260008
		 15.74100018 21.4741993 -0.85100001 16.44610023 18.19249916 -1.43770003 10.54300022 23.49180031 -6.32999992
		 7.4218998 21.45280075 -2.89599991 11.36100006 40.77320099 5.74599981 8.84659958 40.70280075 5.87410021
		 9.68700027 31.25639915 4.99440002 12.043700218 31.50180054 4.86380005 15.88319969 41.60440063 0.39669999
		 14.65719986 41.1208992 3.60489988 14.32719994 31.98080063 3.13940001 15.66919994 32.29029846 0.0977
		 16.34770012 23.93090057 -0.71329999 7.6184001 21.50090027 1.96159995 13.35610008 16.9605999 6.33949995
		 13.75990009 14.2105999 8.096699715 16.62899971 13.061499596 4.86439991 16.2234993 16.42239952 3.39319992
		 13.31630039 15.38770008 -5.19950008 13.47999954 11.64330006 -5.93660021 9.94400024 11.84189987 -6.41849995
		 10.071100235 15.31620026 -5.54540014 7.30109978 18.83370018 2.71930003 7.046899796 18.55929947 -2.70650005
		 7.84590006 15.44769955 -2.75909996 8.096899986 16.22870064 2.75620008 7.37370014 11.31540012 -2.79809999
		 13.17910004 18.88019943 6.5078001 16.43650055 18.5128994 3.20289993 10.48040009 18.73870087 6.49860001
		 10.63290024 16.85149956 6.49749994 7.29769993 11.69939995 2.51749992 10.45839977 14.37699986 8.23550034
		 15.2269001 42.068099976 -3.11319995 14.90320015 32.43579865 -3.12770009 10.35540009 32.39929962 -5.35010004
		 10.72360039 42.44879913 -6.22060013 15.38440037 23.81069946 -4.54559994 15.87409973 15.67490005 -1.66040003
		 16.37050056 12.005200386 -1.64119995 5.034999847 39.81389999 2.37330008 4.55569983 40.86999893 -3.57550001
		 11.69649982 39.80870056 6.81430006 8.21590042 39.8728981 6.32569981 16.53030014 41.0098991394 0.463
		 15.33129978 40.3708992 4.60239983 16.010799408 41.36330032 -3.71479988 10.55420017 41.79320145 -7.11950016
		 4.39769983 33.98009872 1.92180002 3.57249999 34.72090149 -4.42869997 12.22649956 33.86199951 7.17070007
		 7.58850002 33.97219849 5.95190001 17.60029984 35.053901672 0.1978 16.41239929 34.41469955 5.00050020218
		 17.19939995 35.92610168 -5.0058999062 10.4052 36.082000732 -8.6079998 -6.4052 53.69609833 -8.15509987
		 -6.15850019 63.86410141 -4.84989977 -1.90129995 62.3810997 -1.6868 -1.29990005 51.56110001 -2.84170008
		 -12.96199989 54.28120041 -7.57700014 -12.24639988 63.50569916 -4.41160011 -18.42550087 54.091999054 -0.043900002
		 -17.4253006 52.94710159 7.29320002 -15.14500046 62.052101135 8.73359966 -16.4836998 62.61940002 1.22179997
		 -1.78830004 61.021999359 9.74180031 -5.73990011 60.49309921 13.46150017 -6.5296998 49.5447998 12.73760033
		 -2.40280008 49.49729919 8.8071003 -12.98770046 50.63000107 11.72939968 -10.95440006 60.94829941 12.38679981
		 -0.2212 67.31109619 4.79729986 -0.43880001 60.96770096 4.45130014 -1.9188 68.50689697 -1.99150002
		 -0.40689999 49.79629898 3.59109998 -1.69229996 68.26850128 10.24950027 -18.25989914 45.2480011 5.76520014
		 -13.28740025 43.69120026 9.59710026 -13.31840038 46.55580139 -8.31169987 -18.66500092 46.66040039 -1.48520005
		 -1.82459998 45.12379837 -3.93580008 -7.02339983 46.28469849 -8.96109962 -2.081700087 44.42829895 1.95780003
		 -8.0094003677 43.14390182 9.78859997 -3.99959993 43.41210175 6.57159996 -5.90210009 40.8669014 -3.67549992
		 -5.5151 39.71989822 0.1078 -12.33940029 40.041900635 5.33389997 -9.59780025 39.67689896 5.47189999
		 -15.40470028 41.44210052 -1.73609996 -14.89840031 40.84949875 3.2572999 -7.068099976 39.53950119 3.11660004
		 -12.33769989 41.68690109 -5.37190008 -8.40649986 41.43899918 -5.15880013 -11.42409992 74.82080078 -2.68210006
		 -14.33409977 73.22029877 2.88669991 -4.3757 75.19409943 -3.95860004 -12.8064003 73.17019653 9.95810032
		 -4.49170017 73.8742981 13.39350033 -9.04240036 72.95709991 11.74950027 27.51510048 73.32510376 -0.76310003
		 27.52529907 72.71350098 -0.1148 27.4557991 70.63700104 -2.31139994 27.42230034 71.6160965 -2.91930008
		 -27.39229965 73.58239746 -0.76569998 -27.29949951 73.9713974 -2.92280006 -27.33300018 72.82530212 -3.043600082
		 -27.40250015 72.70179749 -0.62900001 -27.51510048 73.32510376 -0.76310003 -27.42230034 71.6160965 -2.91930008
		 -27.4557991 70.63700104 -2.31139994 -27.52529907 72.71350098 -0.1148 5.010499954 125.048500061 7.96630001
		 5.058499813 129.52900696 7.45539999 5.2427001 129.52900696 8.5291996 5.18979979 125.047996521 9.06289959
		 4.67789984 129.75900269 9.6633997 4.54960012 125.14900208 9.83220005 5.52610016 121.35099792 10.069899559
		 5.091199875 121.36399841 9.085900307 5.00099992752 121.43499756 10.79850006 6.55089998 117.13500214 12.05850029
		 6.37260008 117.87400055 11.11289978 6.12760019 117.72200012 12.33300018 5.47679996 125.30699921 6.19770002
		 5.35750008 129.35279846 5.8137002;
	setAttr ".vt[1328:1493]" 5.63679981 129.52900696 6.61619997 5.88019991 125.18810272 7.11280012
		 6.43310022 120.83000183 7.77470016 5.6637001 120.84400177 7.042600155 5.8118 120.90599823 8.7645998
		 8.018400192 115.52200317 9.33170033 7.15749979 116.26100159 8.38609982 7.14870024 116.14900208 9.60610008
		 5.58920002 125.43240356 4.54230022 5.48969984 130.044006348 4.24560022 5.93370008 129.79899597 5.031599998
		 6.41590023 125.56600189 5.37729979 6.85979986 120.76799774 5.90939999 5.96369982 120.78199768 5.2572999
		 6.13630009 120.84400177 6.79120016 8.70750046 116.44100189 7.49970007 7.70489979 117.17900085 6.65749979
		 7.69460011 117.068000793 7.74420023 5.79440022 125.84400177 2.79329991 5.65920019 130.070007324 2.59529996
		 5.93370008 130.072998047 3.3289001 6.21630001 125.94499969 3.5999999 6.85979986 121.64299774 4.093699932
		 6.29320002 121.47699738 3.25239992 6.13630009 121.68900299 5.0081000328 8.91030025 116.67700195 5.85650015
		 7.90770006 117.60199738 4.84549999 7.8973999 117.29599762 6.12010002 5.86259985 125.89379883 1.0094000101
		 5.66690016 129.91690063 0.88669997 5.99770021 130.072998047 1.50899994 6.33900023 125.94499969 1.70089996
		 7.085599899 121.64299774 2.017999887 6.32660007 121.47699738 1.34519994 6.61369991 121.68900299 3.084399939
		 9.51169968 116.86299896 2.91689992 8.28810024 117.78800201 2.18869996 8.59689999 117.48200226 3.42549992
		 4.91720009 125.67299652 -0.28639999 4.83239985 129.66799927 -0.4091 5.54449987 129.87399292 0.0152
		 5.93599987 125.74500275 0.020300001 6.74329996 121.44300079 -0.058600001 5.75479984 121.27700043 -0.2861
		 6.83920002 121.48899841 1.10360003 10.58889961 117.39900208 -0.63620001 9.16600037 118.3239975 -0.69010001
		 10.029000282 118.017997742 0.2481 6.032899857 125.60600281 1.97710001 5.87939978 129.5980072 1.82799995
		 6.22980022 129.81700134 2.57540011 6.80660009 125.70300293 2.79629993 5.74130011 129.99699402 3.68659997
		 6.49800014 125.55400085 3.7263 7.72739983 121.59819794 3.17720008 7.12080002 121.23899841 2.56399989
		 7.33209991 121.43399811 4.19829988 10.68879986 116.55699921 4.5781002 9.4993 117.43699646 3.74609995
		 9.71049976 117.13899994 5.0050001144 5.69080019 129.64500427 -0.14830001 6.0040001869 129.71099854 0.48969999
		 6.33799982 125.071998596 0.088 6.55929995 125.01499939 -0.74800003 4.1093998 129.31900024 -2.72410011
		 4.33269978 129.26300049 -1.83710003 4.87270021 124.64099884 -2.30819988 4.42719984 124.56099701 -3.38179994
		 0.88789999 129.067001343 -4.031300068 1.7773 129.1190033 -3.36610007 1.7895 124.30699921 -4.047599792
		 1.095600009 124.27999878 -4.5310998 7.58269978 121.2519989 -1.14839995 7.30870008 121.47399902 -0.32530001
		 5.34250021 121.41999817 -2.50830007 5.28030014 120.76200104 -4.21880007 2.1500001 121.27400208 -4.5795002
		 1.19690001 121.34999847 -5.30060005 3.22129989 121.45200348 -4.93730021 4.047299862 121.38899994 -3.93549991
		 4.79169989 118.17700195 -5.80170012 4.15910006 117.50099945 -7.045599937 2.48650002 129.24699402 -3.49970007
		 3.19569993 129.375 -2.7112 3.57850003 124.48000336 -3.39170003 2.88560009 124.39399719 -4.25150013
		 5.037099838 129.41200256 -1.48660004 5.37750006 129.56100464 -0.52850002 6.0095000267 124.95400238 -1.21249998
		 5.6427002 124.78700256 -2.15199995 8.39780045 116.94999695 -4.40749979 6.70249987 120.81099701 -2.83999991
		 7.061500072 121.18399811 -1.71210003 8.30490017 118.22399902 -2.90840006 10.35200024 117.41699982 -2.14660001
		 9.20219994 118.35900116 -1.097599983 6.51249981 117.81900024 -4.2519002 6.58930016 117.27200317 -5.79379988
		 2.34389997 118.12999725 -6.4073 1.70299995 117.44000244 -7.44810009 0 124.2539978 -4.45120001
		 0 129.01600647 -3.77489996 0.2131 121.21399689 -4.61329985 0 124.23400116 -4.45219994
		 3.12330008 118.14199829 -6.19519997 7.27400017 117.51000214 -4.13100004 8.76720047 118.19400024 -2.23110008
		 5.26380014 117.6780014 -5.34210014 0.65880001 118.12799835 -6.71330023 -5.081999779 125.048500061 8.042900085
		 -5.18979979 125.047996521 9.06289959 -5.2427001 129.52900696 8.5291996 -5.058499813 129.52900696 7.72310019
		 -4.54960012 125.14900208 9.83220005 -4.67789984 129.75900269 9.6633997 -5.091199875 121.36399841 9.085900307
		 -5.52610016 121.35099792 10.069899559 -5.00099992752 121.43499756 10.79850006 -6.37260008 117.87400055 11.11289978
		 -6.55089998 117.13500214 12.05850029 -6.12760019 117.72200012 12.33300018 -5.47679996 125.19059753 6.15030003
		 -5.87939978 125.047996521 7.11280012 -5.63679981 129.52900696 6.61619997 -5.35750008 129.7875061 5.8375001
		 -5.6637001 120.84400177 7.042600155 -6.43310022 120.83000183 7.77470016 -5.8118 120.90599823 8.7645998
		 -7.15749979 116.26100159 8.38609982 -8.018400192 115.52200317 9.33170033 -7.14870024 116.14900208 9.60610008
		 -5.58920002 125.57610321 4.49790001 -6.41590023 125.56600189 5.37729979 -5.93370008 130.046005249 4.93499994
		 -5.48969984 130.044006348 4.24560022 -5.96369982 120.78199768 5.49660015 -6.85979986 120.76799774 6.14870024
		 -6.13630009 120.84400177 7.030399799 -7.70489979 117.17900085 6.65749979 -8.70750046 116.44100189 7.49970007
		 -7.69460011 117.068000793 7.74420023 -5.79440022 125.84400177 2.79329991 -6.21630001 125.94499969 3.5999999
		 -5.93370008 130.072998047 3.3289001 -5.65920019 130.070007324 2.59529996 -6.29320002 121.47699738 3.25239992
		 -6.85979986 121.64299774 4.093699932 -6.13630009 121.68900299 5.0081000328 -7.90770006 117.60199738 4.84549999
		 -8.91030025 116.67700195 5.85650015 -7.8973999 117.29599762 6.12010002 -5.86259985 125.74449921 1.021000028
		 -6.33900023 125.94499969 1.70089996 -5.99770021 130.072998047 1.50899994 -5.66690016 129.97050476 1.0013999939
		 -6.32660007 121.47699738 1.34519994 -7.085599899 121.64299774 2.017999887 -6.61369991 121.68900299 3.084399939
		 -8.28810024 117.78800201 2.18869996 -9.51169968 116.86299896 2.91689992 -8.59689999 117.48200226 3.42549992
		 -4.91720009 125.67299652 -0.28639999 -5.93599987 125.74500275 0.020300001 -5.54449987 129.87399292 0.0152
		 -4.83239985 129.66799927 -0.4091 -5.75479984 121.27700043 -0.2861;
	setAttr ".vt[1494:1659]" -6.74329996 121.44300079 -0.058600001 -6.83920002 121.48899841 1.10360003
		 -9.16600037 118.3239975 -0.69010001 -10.58889961 117.39900208 -0.63620001 -10.029000282 118.017997742 0.2481
		 -6.032899857 125.60600281 1.97710001 -6.80660009 125.70300293 2.79629993 -6.22980022 129.81700134 2.57540011
		 -5.87939978 129.5980072 1.82799995 -6.49800014 125.55400085 3.95950007 -5.74130011 129.99699402 3.68659997
		 -6.89589977 121.23899841 2.44079995 -7.58669996 121.43099976 3.17720008 -7.022299767 121.45600128 4.19829988
		 -9.4993 117.43699646 3.74609995 -10.68879986 116.55699921 4.5781002 -9.71049976 117.13899994 5.0050001144
		 -5.69080019 129.64500427 -0.14830001 -6.55929995 125.01499939 -0.74800003 -6.33799982 125.071998596 0.088
		 -6.0040001869 129.71099854 0.48969999 -4.1093998 129.31900024 -2.72410011 -4.42719984 124.56099701 -3.38179994
		 -4.87270021 124.64099884 -2.30819988 -4.33269978 129.26300049 -1.83710003 -0.88789999 129.067001343 -4.031300068
		 -1.095600009 124.27999878 -4.5310998 -1.7895 124.30699921 -4.047599792 -1.7773 129.1190033 -3.36610007
		 -7.58269978 121.2519989 -1.14839995 -7.30870008 121.47399902 -0.32530001 -5.28030014 120.76200104 -4.21880007
		 -5.34250021 121.41999817 -2.50830007 -1.19690001 121.34999847 -5.30060005 -2.1500001 121.27400208 -4.5795002
		 -3.22129989 121.45200348 -4.93730021 -4.15910006 117.50099945 -7.045599937 -4.79169989 118.17700195 -5.80170012
		 -4.047299862 121.38899994 -3.93549991 -2.48650002 129.24699402 -3.49970007 -2.88560009 124.39399719 -4.25150013
		 -3.57850003 124.48000336 -3.39170003 -3.19569993 129.375 -2.7112 -5.037099838 129.41200256 -1.48660004
		 -5.6427002 124.78700256 -2.15199995 -6.0095000267 124.95400238 -1.21249998 -5.37750006 129.56100464 -0.52850002
		 -8.39780045 116.94999695 -4.40749979 -8.30490017 118.22399902 -2.90840006 -7.061500072 121.18399811 -1.71210003
		 -6.70249987 120.81099701 -2.83999991 -10.35200024 117.41699982 -2.14660001 -9.20219994 118.35900116 -1.097599983
		 -6.58930016 117.27200317 -5.79379988 -6.51249981 117.81900024 -4.2519002 -1.70299995 117.44000244 -7.44810009
		 -2.34389997 118.12999725 -6.4073 -0.2131 121.21399689 -4.61329985 -3.12330008 118.14199829 -6.19519997
		 -7.27400017 117.51000214 -4.13100004 -8.76720047 118.19400024 -2.23110008 -5.26380014 117.6780014 -5.34210014
		 -0.65880001 118.12799835 -6.71330023 0 118.61399841 7.50099993 0 117.058998108 6.80550003
		 2.28730011 117.50099945 5.99499989 1.97039998 119.375 6.54440022 4.6711998 119.98799896 1.13469994
		 7.28529978 117.73400116 1.39970005 7.19740009 117.87000275 -1.21640003 3.93460011 119.73400116 -1.29540002
		 7.31860018 114.81900024 4.46400023 4.12039995 115.019996643 5.19869995 1.99010003 114.66400146 6.6020999
		 2.060600042 114.22699738 7.3986001 0 113.23400116 8.10659981 0 110.48699951 10.022299767
		 2.3204 110.84500122 9.4715004 6.65329981 112.17700195 8.17370033 4.48220015 118.023002625 3.38509989
		 0 113.96199799 6.69929981 4.36899996 121.34500122 2.84629989 3.68339992 120.99700165 5.053599834
		 4.45690012 121.20600128 1.13779998 2.92740011 122.3690033 -1.1753 0 119.4469986 -2.2263
		 0 122.31700134 -1.8477 0 126.96399689 11.42920017 0 126.37799835 11.84939957 0.4869 126.27799988 11.71520042
		 0.44999999 126.93699646 11.23799992 2.13030005 119.14900208 10.71720028 1.1875 119.10500336 11.55669975
		 1.27180004 117.52600098 11.61600018 2.19020009 117.86499786 10.63210011 2.1624999 119.86599731 10.78520012
		 1.18110001 120.084999084 11.55249977 3.74499989 121.70600128 8.60890007 3.16939998 120.32700348 9.26760006
		 3.51309991 119.19200134 7.97720003 4.44610023 121.44799805 5.78560019 2.95149994 118.4960022 9.4382
		 2.80789995 119.71600342 9.78199959 0.9012 125.86000061 11.15390015 0.76679999 126.60500336 10.73359966
		 1.27190006 123.3769989 12.020000458 1.37419999 123.89399719 11.84780025 0.99150002 124.024002075 12.57159996
		 0.89139998 123.54399872 12.64400005 3.57310009 123.29199982 9.55650043 3.33459997 122.33999634 9.84370041
		 4.086100101 123.19799805 8.47210026 1.24860001 126.28299713 10.42350006 1.31930006 125.29199982 10.81869984
		 2.2729001 125.12400055 10.58979988 2.1566 126.024002075 10.4428997 2.69070005 120.76300049 10.59440041
		 2.1414001 120.56999969 11.025799751 2.72410011 120.25900269 10.22350025 3.72589993 126.98600006 9.34220028
		 3.093699932 126.14499664 9.99870014 3.68589997 125.24900055 10.062999725 4.85680008 126.021003723 8.9623003
		 1.37189996 123.15399933 11.45240021 0.59119999 122.97899628 11.83909988 0.59759998 122.4489975 12.065699577
		 1.4332 122.32800293 11.69159985 0.74839997 120.78399658 12.049900055 0 120.8690033 12.19929981
		 0 120.37799835 12.0045003891 0.7755 127.30500031 11.29599953 1.066300035 127.06300354 10.73190022
		 1.95589995 127.38300323 10.90719986 1.50199997 127.83300018 11.37310028 3.2486999 124.5510025 -2.15639997
		 3.29029989 128.66700745 -2.54859996 5.76079988 128.14599609 1.059499979 5.18620014 124.091003418 1.089100003
		 5.32270002 127.32900238 4.65390015 5.29430008 125.1760025 4.45069981 0.54869998 124.19499969 13.18089962
		 0 124.2009964 13.30780029 0 123.54599762 13.31900024 0.49340001 123.59999847 13.17790031
		 0 121.43800354 12.44159985 0 121.23699951 12.54609966 0.80870003 121.26799774 12.49009991
		 0.5855 121.5490036 12.34420013 0.68049997 121.9469986 12.50720024 0 121.8259964 12.57940006
		 0 124.81199646 -3.02579999 0 129.014007568 -3.37639999 3.1085 121.41799927 10.33110046
		 3.50500011 121.53800201 9.6868 2.94370008 121.83399963 10.50319958 2.58179998 121.37400055 10.62709999
		 2.1164999 121.22799683 11.17570019 2.17490005 121.077003479 11.097900391 2.58520007 121.26899719 10.65999985
		 3.26130009 120.66799927 9.8593998 3.042999983 121.073997498 10.3696003 2.57130003 121.40799713 10.66100025
		 2.14899993 121.39199829 11.20919991 0 125.041999817 12.58450031 0.4686 125.050003052 12.39400005
		 1.33580005 124.36199951 11.11919975;
	setAttr ".vt[1660:1825]" 2.37109995 124.032997131 10.64519978 0 122.41600037 12.11999989
		 2.28520012 123.041999817 10.76369953 2.2198 122.099998474 11.15120029 1.51040006 123.7440033 11.29100037
		 1.50899994 121.62799835 12.032999992 1.49290001 121.3789978 11.94159985 1.56340003 121.1309967 11.95839977
		 1.52489996 120.64600372 11.62749958 0 122.79199982 12.00049972534 0 119.98899841 11.96679974
		 0 117.44000244 12.25510025 0.6778 123.30500031 12.096300125 0.3163 123.16999817 12.58810043
		 1.013900042 124.67900085 11.79279995 1.52670002 126.81500244 10.58870029 2.068200111 127.088996887 10.59889984
		 2.89159989 127.13200378 10.24120045 3.62380004 127.92199707 10.22809982 0 127.8239975 11.76609993
		 0 123.13700104 12.67339993 3.6573 124.31300354 9.91650009 4.6736002 124.59600067 8.79759979
		 4.73000002 123.22399902 4.65019989 0 118.33599854 10.39550018 4.61240005 127.43399811 8.77830029
		 -1.97039998 119.375 6.54440022 -2.28730011 117.50099945 5.99499989 -4.6711998 119.98799896 1.13469994
		 -3.93460011 119.73400116 -1.29540002 -7.19740009 117.87000275 -1.21640003 -7.28529978 117.73400116 1.39970005
		 -7.31860018 114.81900024 4.46400023 -2.060600042 114.22699738 7.3986001 -1.99010003 114.66400146 6.6020999
		 -4.12039995 115.019996643 5.19869995 -2.3204 110.84500122 9.4715004 -6.65329981 112.17700195 8.17370033
		 -4.48220015 118.023002625 3.38509989 -3.68339992 120.99700165 5.053599834 -4.36899996 121.34500122 2.84629989
		 -4.45690012 121.20600128 1.13779998 -2.92740011 122.3690033 -1.1753 -0.44999999 126.93699646 11.23799992
		 -0.4869 126.27799988 11.71520042 -2.13030005 119.14900208 10.71720028 -2.19020009 117.86499786 10.63210011
		 -1.27180004 117.52600098 11.61600018 -1.1875 119.10500336 11.55669975 -2.1624999 119.86599731 10.78520012
		 -1.18110001 120.084999084 11.55249977 -3.74499989 121.70600128 8.60890007 -4.44610023 121.44799805 5.78560019
		 -3.51309991 119.19200134 7.97720003 -3.16939998 120.32700348 9.26760006 -2.80789995 119.71600342 9.78199959
		 -2.95149994 118.4960022 9.4382 -0.9012 125.86000061 11.15390015 -0.76679999 126.60500336 10.73359966
		 -1.27190006 123.3769989 12.020000458 -0.89139998 123.54399872 12.64400005 -0.99150002 124.024002075 12.57159996
		 -1.37419999 123.89399719 11.84780025 -3.57310009 123.29199982 9.55650043 -4.086100101 123.19799805 8.47210026
		 -3.33459997 122.33999634 9.84370041 -1.24860001 126.28299713 10.42350006 -2.1566 126.024002075 10.4428997
		 -2.2729001 125.12400055 10.58979988 -1.31930006 125.29199982 10.81869984 -2.69070005 120.76300049 10.59440041
		 -2.72410011 120.25900269 10.22350025 -2.1414001 120.56999969 11.025799751 -3.72589993 126.98600006 9.34220028
		 -4.85680008 126.021003723 8.9623003 -3.68589997 125.24900055 10.062999725 -3.093699932 126.14499664 9.99870014
		 -1.37189996 123.15399933 11.45240021 -1.4332 122.32800293 11.69159985 -0.59759998 122.4489975 12.065699577
		 -0.59119999 122.97899628 11.83909988 -0.74839997 120.78399658 12.049900055 -0.7755 127.30500031 11.29599953
		 -1.50199997 127.83300018 11.37310028 -1.95589995 127.38300323 10.90719986 -1.066300035 127.06300354 10.73190022
		 -3.2486999 124.5510025 -2.15639997 -5.18620014 124.091003418 1.089100003 -5.76079988 128.14599609 1.059499979
		 -3.29029989 128.66700745 -2.54859996 -5.29430008 125.1760025 4.45069981 -5.32270002 127.32900238 4.65390015
		 -0.54869998 124.19499969 13.18089962 -0.49340001 123.59999847 13.17790031 -0.5855 121.5490036 12.34420013
		 -0.80870003 121.26799774 12.49009991 -0.68049997 121.9469986 12.50720024 -3.1085 121.41799927 10.33110046
		 -2.94370008 121.83399963 10.50319958 -3.50500011 121.53800201 9.6868 -2.58179998 121.37400055 10.62709999
		 -2.58520007 121.26899719 10.65999985 -2.17490005 121.077003479 11.097900391 -2.1164999 121.22799683 11.17570019
		 -3.26130009 120.66799927 9.8593998 -3.042999983 121.073997498 10.3696003 -2.57130003 121.40799713 10.66100025
		 -2.14899993 121.39199829 11.20919991 -0.4686 125.050003052 12.39400005 -2.37109995 124.032997131 10.64519978
		 -1.33580005 124.36199951 11.11919975 -2.2198 122.099998474 11.15120029 -2.28520012 123.041999817 10.76369953
		 -1.51040006 123.7440033 11.29100037 -1.50899994 121.62799835 12.032999992 -1.49290001 121.3789978 11.94159985
		 -1.56340003 121.1309967 11.95839977 -1.52489996 120.64600372 11.62749958 -0.6778 123.30500031 12.096300125
		 -0.3163 123.16999817 12.58810043 -1.013900042 124.67900085 11.79279995 -2.068200111 127.088996887 10.59889984
		 -1.52670002 126.81500244 10.58870029 -2.89159989 127.13200378 10.24120045 -3.62380004 127.92199707 10.22809982
		 -4.6736002 124.59600067 8.79759979 -3.6573 124.31300354 9.91650009 -4.73000002 123.22399902 4.65019989
		 -4.61240005 127.43399811 8.77830029 15.52499962 71.92050171 10.33080006 14.91749954 78.95999908 9.76809978
		 7.73089981 80.40799713 15.64120007 7.37090015 73.2960968 16.17040062 17.86219978 71.5114975 2.73200011
		 16.15789986 78.7303009 2.7428 0.17309999 82.33509827 17.1371994 -1.24290001 75.39389801 17.66889954
		 6.96519995 79.51930237 -6.19199991 14.10620022 78.82119751 -2.68370008 15.3434 71.32769775 -3.38669991
		 6.93989992 71.94480133 -7.11990023 -3.35299993 74.039299011 -8.074000359 -1.046300054 81.17050171 -7.052700043
		 -16.33609962 79.81590271 7.72739983 -12.87689972 78.65299988 14.10410023 -10.27219963 85.48179626 13.30249977
		 -14.073300362 87.039199829 7.26749992 -16.96520042 79.42500305 2.23250008 -14.50220013 86.71080017 2.33649993
		 -5.7737999 84.60320282 16.81410027 -7.94150019 76.24970245 17.18420029 -1.90310001 74.68800354 17.66959953
		 -0.068800002 83.11579895 17.14410019 -11.22179985 84.7559967 -3.51379991 -13.79160023 77.4489975 -3.56220007
		 -8.21220016 77.20089722 17.033000946 -6.44880009 84.064796448 16.64539909 0 127.89700317 -6.99249983
		 0 130.43800354 -6.25159979 1.40219998 130.059997559 -5.36929989 2.016799927 128.054000854 -5.92399979
		 0 126.30500031 -6.36460018 2.03640008 126.87000275 -5.4460001 2.068799973 130.77999878 -3.27390003
		 2.83509994 128.61700439 -3.31710005 0 131.19799805 -3.52340007;
	setAttr ".vt[1826:1917]" 2.33080006 126.61399841 -3.20050001 0 126.088996887 -4.23500013
		 -2.016799927 128.054000854 -5.92399979 -1.40219998 130.059997559 -5.36929989 -2.03640008 126.87000275 -5.4460001
		 -2.068799973 130.77999878 -3.27390003 -2.83509994 128.61700439 -3.31710005 -2.33080006 126.61399841 -3.20050001
		 2.07159996 122.84100342 -6.21280003 -0.76770002 123.42299652 -6.77790022 -0.0093 128.53100586 -5.12010002
		 1.45829999 128.82699585 -3.98760009 3.53699994 113.63500214 -8.47340012 -1.063199997 113.90499878 -9.51729965
		 3.95020008 105.29299927 -9.3817997 -1.73239994 105.56900024 -10.10359955 -2.47219992 121.61499786 -6.46490002
		 -1.24899995 127.72599792 -4.3421998 0.2043 127.36699677 -4.88250017 0.0298 121.48600006 -6.49520016
		 -0.18700001 115.78700256 -8.42660046 -3.49440002 115.66000366 -8.018899918 -0.86110002 107.24199677 -9.012999535
		 -4.68380022 107.13200378 -8.29109955 5.18050003 133.74899292 5.97849989 4.55609989 131.94999695 9.55259991
		 5.36240005 130.272995 9.38780022 6.33370018 130.97900391 5.43419981 6.39230013 131.21600342 0.92640001
		 5.18060017 133.8730011 1.13139999 6.86310005 127.31099701 0.58880001 6.57989979 127.58200073 5.34619999
		 6.82620001 126.54799652 5.25810003 7.076200008 126.23300171 0.45120001 5.30219984 127.80500031 9.25389957
		 2.13369989 130.55499268 11.50720024 2.7427001 133.50799561 10.060099602 0 133.77000427 10.31620026
		 0 130.54600525 11.76679993 4.069099903 130.23399353 10.6711998 4.011000156 127.85500336 10.79249954
		 5.043799877 130.90699768 -2.26469994 2.72550011 130.88800049 -3.77940011 2.86129999 133.5249939 -2.72119999
		 4.80109978 132.68400574 -1.60730004 3.14319992 135.063995361 6.33330011 3.30340004 135.10400391 1.084300041
		 2.084300041 127.78700256 11.79450035 5.1809001 127.085998535 -2.57809997 2.73939991 127.0029983521 -3.96440005
		 0 130.83700562 -4.40959978 0 126.86699677 -4.66800022 5.35109997 126.85500336 9.23110008
		 3.99699998 126.87599945 10.76329994 2.10389996 126.88200378 11.8927002 5.46409988 126.052001953 -2.69129992
		 2.86730003 125.93199921 -4.27050018 0 125.82099915 -4.90740013 0 133.602005 -3.22970009
		 0 135.62399292 1.071499944 0 135.41000366 6.5921998 0 127.7559967 12.04129982 0 126.85500336 12.12689972
		 -5.18050003 133.74899292 5.97849989 -6.33370018 130.97900391 5.43419981 -5.36240005 130.272995 9.38780022
		 -4.55609989 131.94999695 9.55259991 -5.18060017 133.8730011 1.13139999 -6.39230013 131.21600342 0.92640001
		 -6.86310005 127.31099701 0.58880001 -7.076200008 126.23300171 0.45120001 -6.82620001 126.54799652 5.25810003
		 -6.57989979 127.58200073 5.34619999 -5.30219984 127.80500031 9.25389957 -2.13369989 130.55499268 11.50720024
		 -2.7427001 133.50799561 10.060099602 -4.011000156 127.85500336 10.79249954 -4.069099903 130.23399353 10.6711998
		 -5.043799877 130.90699768 -2.26469994 -4.80109978 132.68400574 -1.60730004 -2.86129999 133.5249939 -2.72119999
		 -2.72550011 130.88800049 -3.77940011 -3.14319992 135.063995361 6.33330011 -3.30340004 135.10400391 1.084300041
		 -2.084300041 127.78700256 11.79450035 -5.1809001 127.085998535 -2.57809997 -2.73939991 127.0029983521 -3.96440005
		 -5.35109997 126.85500336 9.23110008 -3.99699998 126.87599945 10.76329994 -2.10389996 126.88200378 11.8927002
		 -5.46409988 126.052001953 -2.69129992 -2.86730003 125.93199921 -4.27050018;
	setAttr -s 3605 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0 7 4 0 8 9 0
		 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 5 0 5 12 0 4 15 0 15 12 0 4 8 0 8 16 0 16 15 0
		 11 17 0 17 16 0 18 19 0 19 17 0 17 20 0 20 18 0 19 21 0 21 16 0 22 15 0 21 22 0 23 12 0
		 22 23 0 23 24 0 24 13 0 1 25 0 25 26 0 26 2 0 25 27 0 27 28 0 28 26 0 24 27 0 25 13 0
		 29 30 0 30 24 0 23 29 0 22 31 0 31 29 0 21 32 0 32 31 0 19 33 0 33 32 0 18 34 0 34 33 0
		 18 28 0 28 35 0 35 34 0 36 37 0 37 38 0 38 39 0 39 36 0 40 41 0 41 42 0 42 43 0 43 40 0
		 30 44 0 44 27 0 44 35 0 45 46 0 46 47 0 47 48 0 48 45 0 49 50 0 50 51 0 51 52 0 52 49 0
		 53 50 0 50 47 0 47 54 0 54 53 0 55 56 0 56 42 0 41 55 0 57 58 0 58 59 0 59 60 0 60 57 0
		 61 62 0 62 60 0 60 63 0 63 61 0 64 65 0 65 66 0 66 67 0 67 64 0 64 68 0 68 51 0 51 65 0
		 69 52 0 68 69 0 59 70 0 70 63 0 69 71 0 71 72 0 72 52 0 73 74 0 74 45 0 48 73 0 40 39 0
		 38 41 0 49 75 0 75 73 0 48 49 0 25 76 0 76 14 0 66 62 0 61 67 0 20 26 0 77 2 0 2 20 0
		 20 78 0 78 77 0 7 9 0 36 74 0 73 37 0 59 72 0 71 70 0 14 79 0 79 6 0 30 80 0 80 46 0
		 46 44 0 58 37 0 75 58 0 10 81 0 81 17 0 82 83 0 83 84 0 84 85 0 85 82 0 82 86 0 86 87 0
		 87 83 0 88 89 0 89 90 0 90 91 0 91 88 0 92 90 0 89 93 0 93 92 0 93 94 0 94 95 0 95 92 0
		 96 97 0 97 98 0 98 99 0 99 96 0 100 101 0 101 102 0 102 103 0 103 100 0 103 104 0
		 104 105 0 105 100 0 96 106 0 106 107 0;
	setAttr ".ed[166:331]" 107 97 0 108 109 0 109 110 0 110 111 0 111 108 0 109 112 0
		 112 113 0 113 110 0 98 114 0 114 115 0 115 99 0 116 108 0 111 117 0 117 116 0 104 118 0
		 118 119 0 119 105 0 119 101 0 120 121 0 121 122 0 122 123 0 123 120 0 124 125 0 125 126 0
		 126 127 0 127 124 0 128 129 0 129 130 0 130 131 0 131 128 0 132 133 0 133 127 0 126 132 0
		 130 121 0 120 131 0 134 135 0 135 136 0 136 137 0 137 134 0 124 138 0 138 139 0 139 125 0
		 140 141 0 141 136 0 135 140 0 142 143 0 143 144 0 144 145 0 145 142 0 146 143 0 142 147 0
		 147 146 0 147 148 0 148 149 0 149 146 0 150 151 0 151 146 0 149 150 0 152 153 0 153 154 0
		 154 155 0 155 152 0 155 156 0 156 157 0 157 152 0 144 158 0 158 159 0 159 145 0 156 160 0
		 160 161 0 161 157 0 162 158 0 143 162 0 151 162 0 163 148 0 147 164 0 164 163 0 163 165 0
		 165 166 0 166 148 0 165 167 0 167 168 0 168 166 0 169 142 0 145 170 0 170 169 0 169 164 0
		 171 167 0 165 172 0 172 171 0 156 169 0 170 160 0 155 164 0 154 163 0 132 173 0 173 174 0
		 174 133 0 137 175 0 175 176 0 176 134 0 138 174 0 173 139 0 177 176 0 175 178 0 178 177 0
		 179 180 0 180 181 0 181 182 0 182 179 0 183 184 0 184 185 0 185 186 0 186 183 0 187 188 0
		 188 189 0 189 190 0 190 187 0 191 192 0 192 193 0 193 194 0 194 191 0 195 123 0 122 196 0
		 196 195 0 196 129 0 128 195 0 197 198 0 198 199 0 199 200 0 200 197 0 200 201 0 201 202 0
		 202 197 0 203 204 0 204 205 0 205 206 0 206 203 0 207 208 0 208 209 0 209 210 0 210 207 0
		 211 181 0 181 199 0 198 211 0 212 181 0 211 213 0 213 212 0 198 214 0 214 215 0 215 211 0
		 216 197 0 202 217 0 217 216 0 206 218 0 218 219 0 219 203 0 220 207 0 210 221 0 221 220 0
		 222 214 0 214 216 0 216 223 0 223 222 0 224 166 0 166 215 0 215 225 0;
	setAttr ".ed[332:497]" 225 224 0 168 226 0 226 215 0 226 213 0 227 167 0 171 228 0
		 228 227 0 229 83 0 87 230 0 230 229 0 87 94 0 94 231 0 231 230 0 232 233 0 233 234 0
		 234 235 0 235 232 0 236 233 0 232 182 0 182 236 0 184 237 0 237 238 0 238 185 0 189 239 0
		 239 240 0 240 190 0 192 241 0 241 242 0 242 193 0 212 236 0 243 171 0 172 244 0 244 243 0
		 172 154 0 153 244 0 153 150 0 150 245 0 245 244 0 224 149 0 246 222 0 223 247 0 247 246 0
		 248 249 0 249 235 0 234 248 0 108 250 0 250 251 0 251 109 0 251 252 0 252 253 0 253 109 0
		 247 136 0 136 254 0 254 246 0 254 141 0 141 255 0 255 252 0 252 254 0 247 200 0 200 137 0
		 178 183 0 183 255 0 141 178 0 243 256 0 256 228 0 257 258 0 258 84 0 84 228 0 228 257 0
		 229 228 0 259 247 0 223 260 0 260 259 0 259 201 0 261 262 0 262 263 0 263 264 0 264 261 0
		 265 205 0 204 266 0 266 265 0 267 268 0 268 265 0 266 267 0 261 209 0 208 262 0 217 260 0
		 267 219 0 218 268 0 263 220 0 221 264 0 114 269 0 269 270 0 270 115 0 271 102 0 101 272 0
		 272 271 0 272 119 0 118 271 0 253 237 0 237 112 0 106 270 0 269 107 0 273 113 0 112 274 0
		 274 273 0 232 275 0 275 276 0 276 182 0 274 116 0 117 273 0 187 277 0 277 278 0 278 188 0
		 255 279 0 279 280 0 280 253 0 253 255 0 277 281 0 281 282 0 282 278 0 239 282 0 281 240 0
		 283 191 0 194 284 0 284 283 0 284 285 0 285 286 0 286 283 0 242 285 0 194 242 0 241 286 0
		 235 287 0 287 275 0 280 238 0 140 177 0 186 279 0 129 122 0 274 275 0 287 116 0 112 276 0
		 184 179 0 179 276 0 276 237 0 183 180 0 180 178 0 175 288 0 288 180 0 137 199 0 199 288 0
		 248 289 0 289 290 0 290 249 0 291 245 0 245 224 0 225 291 0 289 256 0 256 292 0 292 293 0
		 293 289 0 231 294 0 294 236 0 212 231 0 295 231 0 93 295 0 287 250 0;
	setAttr ".ed[498:663]" 258 296 0 296 85 0 86 95 0 258 88 0 91 296 0 159 160 0
		 152 151 0 161 158 0 162 157 0 243 291 0 291 292 0 249 250 0 290 251 0 291 246 0 254 292 0
		 222 225 0 230 168 0 227 230 0 231 213 0 226 230 0 221 209 0 290 293 0 293 252 0 289 257 0
		 257 297 0 297 88 0 248 298 0 298 257 0 203 202 0 201 204 0 219 217 0 260 267 0 266 259 0
		 207 206 0 205 208 0 220 218 0 262 265 0 268 263 0 125 140 0 135 126 0 134 132 0 139 177 0
		 176 173 0 124 120 0 123 138 0 127 131 0 133 128 0 174 195 0 188 186 0 185 189 0 238 239 0
		 278 279 0 282 280 0 191 187 0 190 192 0 240 241 0 283 277 0 286 281 0 97 111 0 110 98 0
		 107 117 0 113 114 0 273 269 0 99 104 0 103 96 0 102 106 0 115 118 0 270 271 0 297 298 0
		 298 299 0 299 300 0 300 297 0 301 82 0 85 302 0 302 301 0 303 86 0 301 303 0 304 95 0
		 303 304 0 305 90 0 92 306 0 306 305 0 296 307 0 307 302 0 308 91 0 305 308 0 304 306 0
		 308 307 0 309 295 0 93 310 0 310 309 0 310 311 0 311 312 0 312 309 0 300 312 0 311 313 0
		 313 300 0 313 88 0 314 234 0 233 294 0 294 314 0 314 298 0 315 316 0 316 317 0 317 318 0
		 318 315 0 319 320 0 320 316 0 315 319 0 319 321 0 321 322 0 322 320 0 323 324 0 324 322 0
		 321 323 0 325 326 0 326 324 0 323 325 0 317 326 0 325 318 0 321 327 0 327 328 0 328 323 0
		 328 329 0 329 325 0 329 330 0 330 318 0 331 327 0 319 331 0 332 331 0 315 332 0 330 332 0
		 81 78 0 29 43 0 43 80 0 56 53 0 54 42 0 39 32 0 33 36 0 31 40 0 45 35 0 74 34 0 80 54 0
		 53 65 0 333 334 0 334 56 0 55 333 0 57 38 0 72 75 0 57 55 0 53 334 0 334 66 0 333 62 0
		 333 57 0 335 76 0 76 1 0 1 335 0 0 335 0 76 79 0 288 181 0 299 314 0 294 299 0 310 89 0
		 89 311 0 313 89 0 243 245 0;
	setAttr ".ed[664:829]" 229 227 0 299 309 0 312 299 0 294 309 0 295 294 0 63 336 0
		 336 61 0 67 336 0 336 64 0 336 68 0 336 69 0 70 336 0 336 71 0 337 338 0 338 339 0
		 339 340 0 340 337 0 341 342 0 342 343 0 343 344 0 344 341 0 345 346 0 346 347 0 347 348 0
		 348 345 0 349 344 0 344 350 0 350 351 0 351 349 0 349 352 0 352 341 0 352 353 0 353 345 0
		 345 341 0 353 354 0 354 346 0 355 356 0 356 354 0 354 357 0 357 355 0 353 358 0 358 357 0
		 359 358 0 352 359 0 360 359 0 349 360 0 351 361 0 361 360 0 339 362 0 362 363 0 363 340 0
		 362 364 0 364 365 0 365 363 0 351 363 0 365 361 0 366 360 0 361 367 0 367 366 0 366 368 0
		 368 359 0 368 369 0 369 358 0 369 370 0 370 357 0 370 371 0 371 355 0 371 372 0 372 364 0
		 364 355 0 373 374 0 374 375 0 375 376 0 376 373 0 377 378 0 378 379 0 379 380 0 380 377 0
		 365 381 0 381 367 0 372 381 0 382 383 0 383 384 0 384 385 0 385 382 0 386 387 0 387 388 0
		 388 389 0 389 386 0 390 391 0 391 384 0 384 389 0 389 390 0 392 380 0 379 393 0 393 392 0
		 394 395 0 395 396 0 396 397 0 397 394 0 398 399 0 399 395 0 395 400 0 400 398 0 401 402 0
		 402 403 0 403 404 0 404 401 0 404 388 0 388 405 0 405 401 0 406 405 0 387 406 0 399 407 0
		 407 396 0 387 408 0 408 409 0 409 406 0 410 383 0 382 411 0 411 410 0 380 375 0 374 377 0
		 386 383 0 410 412 0 412 386 0 350 413 0 413 363 0 402 398 0 400 403 0 362 356 0 414 415 0
		 415 356 0 356 339 0 339 414 0 348 342 0 376 410 0 411 373 0 407 409 0 408 396 0 343 416 0
		 416 350 0 381 385 0 385 417 0 417 367 0 397 412 0 376 397 0 354 418 0 418 347 0 415 418 0
		 417 378 0 378 366 0 379 391 0 390 393 0 373 370 0 369 374 0 377 368 0 372 382 0 371 411 0
		 391 417 0 404 390 0 419 392 0 393 420 0 420 419 0 375 394 0 412 408 0;
	setAttr ".ed[830:995]" 392 394 0 403 420 0 420 390 0 400 419 0 394 419 0 421 340 0
		 340 413 0 413 421 0 421 337 0 416 413 0 398 422 0 422 399 0 401 422 0 422 402 0 405 422 0
		 406 422 0 422 407 0 409 422 0 423 424 0 424 425 0 425 426 0 426 423 0 427 428 0 428 429 0
		 429 430 0 430 427 0 431 423 0 426 432 0 432 431 0 425 433 0 433 434 0 434 426 0 425 435 0
		 435 436 0 436 433 0 434 437 0 437 432 0 435 427 0 427 438 0 438 436 0 439 440 0 440 441 0
		 441 442 0 442 439 0 441 431 0 432 442 0 443 439 0 442 444 0 444 443 0 445 446 0 446 439 0
		 443 445 0 437 444 0 447 448 0 448 446 0 445 447 0 424 449 0 449 425 0 435 428 0 435 449 0
		 449 428 0 448 450 0 450 451 0 451 448 0 446 452 0 452 439 0 451 446 0 451 452 0 452 440 0
		 429 453 0 453 430 0 454 455 0 455 456 0 456 457 0 457 454 0 428 458 0 458 459 0 459 460 0
		 460 428 0 458 461 0 461 462 0 462 459 0 463 464 0 464 461 0 461 465 0 465 463 0 463 466 0
		 466 467 0 467 464 0 468 469 0 469 467 0 466 468 0 470 465 0 458 470 0 471 470 0 428 471 0
		 469 472 0 472 473 0 473 467 0 464 474 0 474 462 0 473 474 0 451 475 0 475 476 0 476 477 0
		 477 451 0 476 478 0 478 479 0 479 477 0 465 479 0 479 480 0 480 463 0 480 481 0 481 466 0
		 481 482 0 482 468 0 470 477 0 481 483 0 483 484 0 484 482 0 478 485 0 485 480 0 485 483 0
		 470 450 0 460 449 0 452 475 0 486 487 0 487 488 0 488 489 0 489 486 0 488 490 0 490 491 0
		 491 489 0 492 493 0 493 494 0 494 495 0 495 492 0 496 497 0 497 494 0 493 496 0 498 499 0
		 499 487 0 486 498 0 500 501 0 501 502 0 502 503 0 503 500 0 503 504 0 504 505 0 505 500 0
		 506 500 0 505 507 0 507 506 0 508 509 0 509 510 0 510 498 0 498 508 0 498 511 0 511 512 0
		 512 508 0 496 513 0 513 511 0 511 497 0 514 515 0 515 508 0 512 514 0;
	setAttr ".ed[996:1161]" 512 516 0 516 517 0 517 514 0 518 519 0 519 520 0 520 521 0
		 521 518 0 522 523 0 523 524 0 524 525 0 525 522 0 524 526 0 526 527 0 527 525 0 526 505 0
		 504 527 0 524 507 0 523 528 0 528 507 0 515 518 0 521 529 0 529 515 0 529 509 0 530 506 0
		 528 530 0 531 532 0 532 533 0 533 534 0 534 531 0 535 536 0 536 537 0 537 501 0 501 535 0
		 536 491 0 490 537 0 532 492 0 495 533 0 528 538 0 538 539 0 539 530 0 522 520 0 520 540 0
		 540 523 0 513 516 0 486 497 0 489 494 0 491 495 0 536 533 0 535 534 0 502 541 0 541 510 0
		 510 503 0 509 504 0 525 521 0 527 529 0 541 499 0 517 519 0 518 514 0 496 542 0 542 539 0
		 539 513 0 538 516 0 517 540 0 542 492 0 531 542 0 535 500 0 506 534 0 530 531 0 540 538 0
		 543 544 0 544 545 0 545 546 0 546 543 0 547 543 0 546 548 0 548 547 0 549 550 0 550 551 0
		 551 552 0 552 549 0 548 550 0 549 547 0 553 554 0 554 555 0 555 556 0 556 553 0 557 558 0
		 558 559 0 559 560 0 560 557 0 561 562 0 562 563 0 563 564 0 564 561 0 561 565 0 565 566 0
		 566 562 0 567 568 0 568 569 0 569 570 0 570 567 0 563 571 0 571 572 0 572 564 0 556 566 0
		 565 553 0 555 573 0 573 574 0 574 556 0 575 576 0 576 577 0 577 578 0 578 575 0 559 555 0
		 554 560 0 579 580 0 580 581 0 581 582 0 582 579 0 583 579 0 582 584 0 584 583 0 585 569 0
		 568 586 0 586 585 0 587 574 0 574 588 0 588 570 0 570 587 0 589 590 0 590 591 0 591 592 0
		 592 589 0 593 594 0 594 595 0 595 596 0 596 593 0 591 575 0 578 592 0 595 590 0 589 596 0
		 571 558 0 557 572 0 585 583 0 584 597 0 597 585 0 580 598 0 598 573 0 573 581 0 599 600 0
		 600 601 0 601 602 0 602 599 0 603 604 0 604 605 0 605 606 0 606 603 0 607 608 0 608 609 0
		 609 610 0 610 607 0 609 604 0 604 567 0 567 610 0 609 611 0 611 605 0;
	setAttr ".ed[1162:1327]" 603 568 0 612 613 0 613 600 0 599 612 0 614 615 0 615 608 0
		 607 614 0 615 616 0 616 617 0 617 608 0 617 611 0 618 619 0 619 594 0 593 618 0 618 620 0
		 620 621 0 621 619 0 576 621 0 620 577 0 622 587 0 569 622 0 588 598 0 598 607 0 610 588 0
		 579 612 0 612 614 0 614 580 0 583 613 0 562 622 0 622 597 0 597 563 0 586 613 0 602 616 0
		 615 599 0 606 623 0 623 624 0 624 603 0 624 586 0 624 600 0 623 601 0 581 559 0 558 582 0
		 571 584 0 587 566 0 575 554 0 553 576 0 590 557 0 560 591 0 594 564 0 572 595 0 619 561 0
		 621 565 0 625 626 0 626 577 0 578 625 0 627 628 0 628 592 0 589 627 0 629 630 0 630 596 0
		 593 629 0 628 625 0 630 627 0 631 629 0 618 631 0 632 631 0 620 632 0 626 632 0 633 634 0
		 634 626 0 625 633 0 635 636 0 636 628 0 627 635 0 637 638 0 638 630 0 629 637 0 636 633 0
		 638 635 0 639 637 0 631 639 0 640 639 0 632 640 0 634 640 0 641 642 0 642 643 0 643 644 0
		 644 641 0 645 644 0 644 646 0 646 647 0 647 645 0 648 649 0 649 650 0 650 647 0 647 648 0
		 651 652 0 652 653 0 653 654 0 654 651 0 655 656 0 656 657 0 657 658 0 658 655 0 653 657 0
		 656 659 0 659 653 0 660 659 0 656 661 0 661 660 0 648 659 0 660 649 0 662 641 0 641 663 0
		 663 664 0 664 662 0 662 665 0 665 642 0 664 666 0 666 667 0 667 662 0 668 669 0 669 670 0
		 670 671 0 671 668 0 672 668 0 668 667 0 667 673 0 673 672 0 666 674 0 674 673 0 675 676 0
		 676 673 0 674 675 0 676 677 0 677 672 0 655 678 0 678 661 0 679 680 0 680 681 0 681 682 0
		 682 679 0 680 683 0 683 684 0 684 681 0 683 685 0 685 686 0 686 684 0 648 654 0 669 682 0
		 681 658 0 658 669 0 684 655 0 686 678 0 672 682 0 677 679 0 657 687 0 687 669 0 688 646 0
		 643 688 0 654 646 0 688 651 0 644 689 0 689 663 0 652 687 0 650 690 0;
	setAttr ".ed[1328:1493]" 690 645 0 691 692 0 692 643 0 642 691 0 693 694 0 694 652 0
		 651 693 0 692 695 0 695 688 0 695 693 0 671 662 0 645 689 0 671 665 0 665 691 0 694 687 0
		 687 670 0 696 697 0 697 698 0 698 699 0 699 696 0 700 701 0 701 702 0 702 697 0 697 700 0
		 703 701 0 701 650 0 649 703 0 704 705 0 705 706 0 706 707 0 707 704 0 708 709 0 709 710 0
		 710 711 0 711 708 0 706 712 0 712 711 0 710 706 0 661 711 0 712 660 0 712 703 0 713 714 0
		 714 715 0 715 696 0 696 713 0 699 716 0 716 713 0 713 717 0 717 718 0 718 714 0 719 720 0
		 720 721 0 721 722 0 722 719 0 723 724 0 724 717 0 717 719 0 719 723 0 724 725 0 725 718 0
		 726 725 0 724 727 0 727 726 0 723 728 0 728 727 0 678 708 0 729 730 0 730 731 0 731 732 0
		 732 729 0 731 733 0 733 734 0 734 732 0 733 686 0 685 734 0 705 703 0 722 709 0 709 731 0
		 730 722 0 708 733 0 730 723 0 729 728 0 722 735 0 735 710 0 736 698 0 702 736 0 704 736 0
		 702 705 0 715 737 0 737 697 0 735 707 0 700 690 0 738 699 0 698 739 0 739 738 0 740 704 0
		 707 741 0 741 740 0 736 742 0 742 739 0 740 742 0 713 720 0 737 700 0 716 720 0 738 716 0
		 735 741 0 721 735 0 743 744 0 744 745 0 745 746 0 746 743 0 744 747 0 747 748 0 748 745 0
		 747 749 0 749 750 0 750 748 0 751 752 0 752 753 0 753 754 0 754 751 0 755 756 0 756 752 0
		 751 755 0 753 750 0 749 754 0 757 758 0 758 759 0 759 760 0 760 757 0 759 761 0 761 762 0
		 762 760 0 761 763 0 763 764 0 764 762 0 765 766 0 766 767 0 767 768 0 768 765 0 755 765 0
		 768 756 0 766 764 0 763 767 0 769 770 0 770 771 0 771 772 0 772 769 0 773 774 0 774 770 0
		 769 773 0 775 776 0 776 777 0 777 778 0 778 775 0 779 780 0 780 781 0 781 782 0 782 779 0
		 782 783 0 783 784 0 784 779 0 785 784 0 783 786 0 786 785 0 780 774 0;
	setAttr ".ed[1494:1659]" 773 781 0 771 775 0 778 772 0 787 788 0 788 789 0 789 790 0
		 790 787 0 791 787 0 790 792 0 792 791 0 793 794 0 794 777 0 776 793 0 795 785 0 786 796 0
		 796 795 0 796 791 0 792 795 0 788 794 0 793 789 0 797 798 0 798 787 0 791 797 0 799 800 0
		 800 777 0 794 799 0 788 801 0 801 799 0 802 800 0 799 803 0 803 802 0 801 804 0 804 803 0
		 805 806 0 806 807 0 807 808 0 808 805 0 807 809 0 809 810 0 810 808 0 806 802 0 803 807 0
		 804 809 0 798 788 0 796 797 0 811 812 0 812 813 0 813 814 0 814 811 0 814 815 0 815 816 0
		 816 811 0 817 818 0 818 819 0 819 820 0 820 817 0 821 822 0 822 820 0 819 821 0 821 823 0
		 823 824 0 824 822 0 825 826 0 826 827 0 827 828 0 828 825 0 829 830 0 830 831 0 831 832 0
		 832 829 0 829 833 0 833 834 0 834 830 0 828 835 0 835 836 0 836 825 0 837 838 0 838 839 0
		 839 840 0 840 837 0 839 841 0 841 842 0 842 840 0 826 843 0 843 844 0 844 827 0 845 846 0
		 846 838 0 837 845 0 833 847 0 847 848 0 848 834 0 832 847 0 849 850 0 850 851 0 851 852 0
		 852 849 0 853 854 0 854 855 0 855 856 0 856 853 0 857 858 0 858 859 0 859 860 0 860 857 0
		 861 855 0 854 862 0 862 861 0 858 849 0 852 859 0 863 864 0 864 865 0 865 866 0 866 863 0
		 856 867 0 867 868 0 868 853 0 869 866 0 865 870 0 870 869 0 871 872 0 872 873 0 873 874 0
		 874 871 0 875 876 0 876 871 0 874 875 0 875 877 0 877 878 0 878 876 0 879 877 0 875 880 0
		 880 879 0 881 882 0 882 883 0 883 884 0 884 881 0 881 885 0 885 886 0 886 882 0 872 887 0
		 887 888 0 888 873 0 885 889 0 889 890 0 890 886 0 891 874 0 888 891 0 891 880 0 892 893 0
		 893 876 0 878 892 0 878 894 0 894 895 0 895 892 0 894 896 0 896 897 0 897 895 0 898 899 0
		 899 872 0 871 898 0 893 898 0 900 901 0 901 895 0 897 900 0 890 899 0;
	setAttr ".ed[1660:1825]" 898 886 0 893 882 0 892 883 0 862 902 0 902 903 0 903 861 0
		 863 904 0 904 905 0 905 864 0 867 903 0 902 868 0 906 907 0 907 905 0 904 906 0 908 909 0
		 909 910 0 910 911 0 911 908 0 912 913 0 913 914 0 914 915 0 915 912 0 916 917 0 917 918 0
		 918 919 0 919 916 0 920 921 0 921 922 0 922 923 0 923 920 0 924 925 0 925 851 0 850 924 0
		 924 857 0 860 925 0 926 927 0 927 928 0 928 929 0 929 926 0 926 930 0 930 931 0 931 927 0
		 932 933 0 933 934 0 934 935 0 935 932 0 936 937 0 937 938 0 938 939 0 939 936 0 940 929 0
		 928 910 0 910 940 0 941 942 0 942 940 0 910 941 0 940 943 0 943 944 0 944 929 0 945 946 0
		 946 930 0 926 945 0 932 947 0 947 948 0 948 933 0 949 950 0 950 937 0 936 949 0 951 952 0
		 952 945 0 945 944 0 944 951 0 953 954 0 954 943 0 943 894 0 894 953 0 943 955 0 955 896 0
		 942 955 0 956 957 0 957 900 0 897 956 0 958 959 0 959 815 0 814 958 0 959 960 0 960 824 0
		 824 815 0 961 962 0 962 963 0 963 964 0 964 961 0 965 909 0 909 961 0 964 965 0 914 966 0
		 966 967 0 967 915 0 917 968 0 968 969 0 969 918 0 922 970 0 970 971 0 971 923 0 965 941 0
		 972 973 0 973 901 0 900 972 0 973 884 0 883 901 0 973 974 0 974 879 0 879 884 0 877 953 0
		 975 976 0 976 952 0 951 975 0 977 963 0 962 978 0 978 977 0 840 979 0 979 980 0 980 837 0
		 840 981 0 981 982 0 982 979 0 975 983 0 983 865 0 865 976 0 983 982 0 982 984 0 984 870 0
		 870 983 0 864 927 0 927 976 0 907 870 0 984 912 0 912 907 0 957 985 0 985 972 0 986 957 0
		 957 813 0 813 987 0 987 986 0 957 958 0 988 989 0 989 952 0 976 988 0 931 988 0 990 991 0
		 991 992 0 992 993 0 993 990 0 994 995 0 995 935 0 934 994 0 996 995 0 994 997 0 997 996 0
		 993 939 0 938 990 0 989 946 0 997 948 0 947 996 0 991 950 0 949 992 0;
	setAttr ".ed[1826:1991]" 843 998 0 998 999 0 999 844 0 1000 1001 0 1001 832 0
		 831 1000 0 1000 848 0 847 1001 0 842 967 0 967 981 0 835 999 0 998 836 0 1002 1003 0
		 1003 842 0 841 1002 0 909 1004 0 1004 1005 0 1005 961 0 1002 846 0 845 1003 0 919 1006 0
		 1006 1007 0 1007 916 0 984 981 0 981 1008 0 1008 1009 0 1009 984 0 1006 1010 0 1010 1011 0
		 1011 1007 0 968 1011 0 1010 969 0 1012 1013 0 1013 921 0 920 1012 0 1012 1014 0 1014 1015 0
		 1015 1013 0 970 921 0 1015 970 0 1014 971 0 1005 1016 0 1016 962 0 966 1008 0 906 869 0
		 1009 913 0 851 860 0 845 1016 0 1005 1003 0 1004 842 0 967 1004 0 1004 908 0 908 915 0
		 911 912 0 911 1017 0 1017 905 0 907 911 0 1017 928 0 928 864 0 978 1018 0 1018 1019 0
		 1019 977 0 1020 954 0 953 974 0 974 1020 0 1019 1021 0 1021 1022 0 1022 985 0 985 1019 0
		 960 941 0 965 1023 0 1023 960 0 1024 822 0 960 1024 0 980 1016 0 812 1025 0 1025 987 0
		 823 816 0 1025 818 0 817 987 0 890 887 0 880 881 0 885 891 0 888 889 0 1022 1020 0
		 1020 972 0 980 978 0 979 1018 0 1022 983 0 975 1020 0 954 951 0 959 956 0 896 959 0
		 959 955 0 942 960 0 938 950 0 982 1021 0 1021 1018 0 986 1019 0 817 1026 0 1026 986 0
		 986 1027 0 1027 977 0 935 931 0 930 932 0 946 947 0 988 995 0 996 989 0 939 934 0
		 933 936 0 948 949 0 992 997 0 994 993 0 855 866 0 869 856 0 861 863 0 906 867 0 903 904 0
		 868 850 0 849 853 0 858 854 0 857 862 0 924 902 0 918 914 0 913 919 0 969 966 0 1009 1006 0
		 1008 1010 0 923 917 0 916 920 0 971 968 0 1007 1012 0 1011 1014 0 827 839 0 838 828 0
		 846 835 0 844 841 0 999 1002 0 825 830 0 834 826 0 836 831 0 848 843 0 1000 998 0
		 1026 1028 0 1028 1029 0 1029 1027 0 1027 1026 0 1030 1031 0 1031 812 0 811 1030 0
		 1032 1030 0 816 1032 0 1033 1032 0 823 1033 0 1034 1035 0 1035 821 0 819 1034 0 1031 1036 0
		 1036 1025 0 1037 1034 0 818 1037 0 1035 1033 0 1036 1037 0 1038 1039 0 1039 822 0
		 1024 1038 0;
	setAttr ".ed[1992:2157]" 1038 1040 0 1040 1041 0 1041 1039 0 1028 1042 0 1042 1041 0
		 1040 1028 0 817 1042 0 1043 1023 0 1023 964 0 963 1043 0 1027 1043 0 1044 1045 0
		 1045 1046 0 1046 1047 0 1047 1044 0 1048 1044 0 1047 1049 0 1049 1048 0 1049 1050 0
		 1050 1051 0 1051 1048 0 1052 1051 0 1050 1053 0 1053 1052 0 1054 1052 0 1053 1055 0
		 1055 1054 0 1045 1054 0 1055 1046 0 1052 1056 0 1056 1057 0 1057 1051 0 1054 1058 0
		 1058 1056 0 1045 1059 0 1059 1058 0 1060 1048 0 1057 1060 0 1061 1044 0 1060 1061 0
		 1061 1059 0 910 1017 0 1029 1023 0 1043 1029 0 1041 820 0 820 1039 0 820 1042 0 974 972 0
		 956 958 0 1029 1040 0 1038 1029 0 1038 1023 0 1023 1024 0 1062 1063 0 1063 1064 0
		 1064 1065 0 1065 1062 0 1063 1066 0 1066 1067 0 1067 1064 0 1068 1069 0 1069 1070 0
		 1070 1071 0 1071 1068 0 1072 1071 0 1070 1073 0 1073 1072 0 1074 1062 0 1065 1075 0
		 1075 1074 0 1076 1077 0 1077 1078 0 1078 1079 0 1079 1076 0 1076 1080 0 1080 1081 0
		 1081 1077 0 1082 1083 0 1083 1080 0 1076 1082 0 1084 1074 0 1074 1085 0 1085 1086 0
		 1086 1084 0 1084 1087 0 1087 1088 0 1088 1074 0 1073 1088 0 1088 1089 0 1089 1072 0
		 1090 1087 0 1084 1091 0 1091 1090 0 1090 1092 0 1092 1093 0 1093 1087 0 1094 1095 0
		 1095 1096 0 1096 1097 0 1097 1094 0 1098 1099 0 1099 1100 0 1100 1101 0 1101 1098 0
		 1099 1102 0 1102 1103 0 1103 1100 0 1102 1081 0 1080 1103 0 1083 1100 0 1083 1104 0
		 1104 1101 0 1091 1105 0 1105 1095 0 1094 1091 0 1086 1105 0 1106 1104 0 1082 1106 0
		 1107 1108 0 1108 1109 0 1109 1110 0 1110 1107 0 1111 1079 0 1079 1112 0 1112 1113 0
		 1113 1111 0 1112 1067 0 1066 1113 0 1109 1069 0 1068 1110 0 1106 1114 0 1114 1115 0
		 1115 1104 0 1101 1116 0 1116 1096 0 1096 1098 0 1093 1089 0 1073 1062 0 1070 1063 0
		 1069 1066 0 1109 1113 0 1108 1111 0 1077 1085 0 1085 1117 0 1117 1078 0 1081 1086 0
		 1095 1099 0 1105 1102 0 1075 1117 0 1090 1094 0 1097 1092 0 1089 1114 0 1114 1118 0
		 1118 1072 0 1093 1115 0 1116 1092 0 1118 1107 0 1068 1118 0 1108 1082 0 1076 1111 0
		 1107 1106 0 1115 1116 0 1119 1120 0 1120 1121 0 1121 1122 0 1122 1119 0;
	setAttr ".ed[2158:2323]" 1123 1119 0 1122 1124 0 1124 1123 0 1125 1126 0 1126 1127 0
		 1127 1128 0 1128 1125 0 1129 1130 0 1130 1131 0 1131 1132 0 1132 1129 0 1127 1133 0
		 1133 1134 0 1134 1128 0 1135 1136 0 1136 1121 0 1121 1137 0 1137 1135 0 1120 1138 0
		 1138 1137 0 1137 1129 0 1129 1139 0 1139 1135 0 1138 1130 0 1133 1132 0 1131 1134 0
		 1125 1123 0 1124 1126 0 1134 1140 0 1140 1141 0 1141 1128 0 1142 1123 0 1125 1143 0
		 1143 1142 0 1119 1144 0 1144 1145 0 1145 1120 0 1145 1146 0 1146 1138 0 1130 1147 0
		 1147 1148 0 1148 1131 0 1148 1140 0 1146 1147 0 1141 1143 0 1142 1144 0 1149 1150 0
		 1150 1146 0 1145 1149 0 1148 1151 0 1151 1152 0 1152 1140 0 1141 1153 0 1153 1154 0
		 1154 1143 0 1147 1155 0 1155 1151 0 1150 1155 0 1152 1153 0 1154 1156 0 1156 1142 0
		 1156 1157 0 1157 1144 0 1157 1149 0 1158 1159 0 1159 1126 0 1124 1158 0 1160 1158 0
		 1122 1160 0 1136 1160 0 1159 1161 0 1161 1127 0 1132 1162 0 1162 1139 0 1133 1163 0
		 1163 1162 0 1161 1163 0 1164 1165 0 1165 1136 0 1135 1164 0 1166 1164 0 1139 1166 0
		 1167 1166 0 1162 1167 0 1165 1168 0 1168 1160 0 1169 1170 0 1170 1171 0 1171 1172 0
		 1172 1169 0 1173 1174 0 1174 1175 0 1175 1176 0 1176 1173 0 1177 1178 0 1178 1179 0
		 1179 1180 0 1180 1177 0 1180 1181 0 1181 1182 0 1182 1177 0 1183 1184 0 1184 1185 0
		 1185 1186 0 1186 1183 0 1178 1187 0 1187 1188 0 1188 1179 0 1169 1182 0 1181 1170 0
		 1170 1189 0 1189 1190 0 1190 1171 0 1191 1192 0 1192 1193 0 1193 1194 0 1194 1191 0
		 1174 1172 0 1171 1175 0 1195 1196 0 1196 1197 0 1197 1198 0 1198 1195 0 1199 1200 0
		 1200 1196 0 1195 1199 0 1201 1202 0 1202 1186 0 1185 1201 0 1203 1184 0 1184 1204 0
		 1204 1189 0 1189 1203 0 1205 1206 0 1206 1207 0 1207 1208 0 1208 1205 0 1209 1210 0
		 1210 1211 0 1211 1212 0 1212 1209 0 1206 1192 0 1191 1207 0 1210 1205 0 1208 1211 0
		 1187 1173 0 1176 1188 0 1201 1213 0 1213 1200 0 1199 1201 0 1197 1190 0 1190 1214 0
		 1214 1198 0 1215 1216 0 1216 1217 0 1217 1218 0 1218 1215 0 1219 1220 0 1220 1221 0
		 1221 1222 0 1222 1219 0 1223 1224 0 1224 1225 0 1225 1226 0 1226 1223 0 1224 1183 0;
	setAttr ".ed[2324:2489]" 1183 1222 0 1222 1225 0 1221 1227 0 1227 1225 0 1186 1219 0
		 1228 1215 0 1218 1229 0 1229 1228 0 1230 1223 0 1226 1231 0 1231 1230 0 1226 1232 0
		 1232 1233 0 1233 1231 0 1227 1232 0 1234 1209 0 1212 1235 0 1235 1234 0 1235 1236 0
		 1236 1237 0 1237 1234 0 1193 1237 0 1236 1194 0 1238 1185 0 1203 1238 0 1204 1224 0
		 1223 1214 0 1214 1204 0 1198 1230 0 1230 1228 0 1228 1195 0 1229 1199 0 1179 1213 0
		 1213 1238 0 1238 1180 0 1229 1202 0 1215 1231 0 1233 1216 0 1219 1239 0 1239 1240 0
		 1240 1220 0 1202 1239 0 1218 1239 0 1217 1240 0 1196 1176 0 1175 1197 0 1200 1188 0
		 1181 1203 0 1194 1169 0 1172 1191 0 1207 1174 0 1173 1208 0 1211 1187 0 1178 1212 0
		 1177 1235 0 1182 1236 0 1241 1192 0 1193 1242 0 1242 1241 0 1243 1205 0 1206 1244 0
		 1244 1243 0 1245 1209 0 1210 1246 0 1246 1245 0 1241 1244 0 1243 1246 0 1247 1234 0
		 1245 1247 0 1248 1237 0 1247 1248 0 1248 1242 0 1249 1241 0 1242 1250 0 1250 1249 0
		 1251 1243 0 1244 1252 0 1252 1251 0 1253 1245 0 1246 1254 0 1254 1253 0 1249 1252 0
		 1251 1254 0 1255 1247 0 1253 1255 0 1256 1248 0 1255 1256 0 1256 1250 0 1257 1258 0
		 1258 1259 0 1259 1260 0 1260 1257 0 1261 1262 0 1262 1258 0 1257 1261 0 1263 1264 0
		 1264 1265 0 1265 1266 0 1266 1263 0 1267 1268 0 1268 1269 0 1269 1270 0 1270 1267 0
		 1264 1271 0 1271 1272 0 1272 1265 0 1273 1274 0 1274 1259 0 1259 1275 0 1275 1273 0
		 1274 1276 0 1276 1260 0 1273 1277 0 1277 1267 0 1267 1274 0 1270 1276 0 1271 1269 0
		 1268 1272 0 1266 1262 0 1261 1263 0 1264 1278 0 1278 1279 0 1279 1271 0 1280 1281 0
		 1281 1263 0 1261 1280 0 1260 1282 0 1282 1283 0 1283 1257 0 1276 1284 0 1284 1282 0
		 1269 1285 0 1285 1286 0 1286 1270 0 1279 1285 0 1286 1284 0 1281 1278 0 1283 1280 0
		 1287 1282 0 1284 1288 0 1288 1287 0 1279 1289 0 1289 1290 0 1290 1285 0 1281 1291 0
		 1291 1292 0 1292 1278 0 1290 1293 0 1293 1286 0 1293 1288 0 1292 1289 0 1280 1294 0
		 1294 1291 0 1283 1295 0 1295 1294 0 1287 1295 0 1296 1262 0 1266 1297 0 1297 1296 0
		 1298 1258 0 1296 1298 0 1298 1275 0 1265 1299 0 1299 1297 0 1277 1300 0 1300 1268 0;
	setAttr ".ed[2490:2655]" 1300 1301 0 1301 1272 0 1301 1299 0 1164 1273 0 1275 1165 0
		 1166 1277 0 1167 1300 0 1298 1168 0 1302 1303 0 1303 1304 0 1304 1305 0 1305 1302 0
		 1306 1307 0 1307 1308 0 1308 1309 0 1309 1306 0 1310 1311 0 1311 1312 0 1312 1313 0
		 1313 1310 0 1314 1315 0 1315 1316 0 1316 1317 0 1317 1314 0 1316 1318 0 1318 1319 0
		 1319 1317 0 1317 1320 0 1320 1321 0 1321 1314 0 1319 1322 0 1322 1320 0 1320 1323 0
		 1323 1324 0 1324 1321 0 1322 1325 0 1325 1323 0 1326 1327 0 1327 1328 0 1328 1329 0
		 1329 1326 0 1328 1315 0 1314 1329 0 1329 1330 0 1330 1331 0 1331 1326 0 1314 1332 0
		 1332 1330 0 1330 1333 0 1333 1334 0 1334 1331 0 1332 1335 0 1335 1333 0 1336 1337 0
		 1337 1338 0 1338 1339 0 1339 1336 0 1338 1327 0 1326 1339 0 1339 1340 0 1340 1341 0
		 1341 1336 0 1326 1342 0 1342 1340 0 1340 1343 0 1343 1344 0 1344 1341 0 1342 1345 0
		 1345 1343 0 1346 1347 0 1347 1348 0 1348 1349 0 1349 1346 0 1348 1337 0 1336 1349 0
		 1349 1350 0 1350 1351 0 1351 1346 0 1336 1352 0 1352 1350 0 1350 1353 0 1353 1354 0
		 1354 1351 0 1352 1355 0 1355 1353 0 1356 1357 0 1357 1358 0 1358 1359 0 1359 1356 0
		 1358 1347 0 1346 1359 0 1359 1360 0 1360 1361 0 1361 1356 0 1346 1362 0 1362 1360 0
		 1360 1363 0 1363 1364 0 1364 1361 0 1362 1365 0 1365 1363 0 1366 1367 0 1367 1368 0
		 1368 1369 0 1369 1366 0 1368 1357 0 1356 1369 0 1369 1370 0 1370 1371 0 1371 1366 0
		 1356 1372 0 1372 1370 0 1370 1373 0 1373 1374 0 1374 1371 0 1372 1375 0 1375 1373 0
		 1376 1377 0 1377 1378 0 1378 1379 0 1379 1376 0 1378 1380 0 1380 1381 0 1381 1379 0
		 1379 1382 0 1382 1383 0 1383 1376 0 1381 1384 0 1384 1382 0 1382 1385 0 1385 1386 0
		 1386 1383 0 1384 1387 0 1387 1385 0 1388 1389 0 1389 1390 0 1390 1391 0 1391 1388 0
		 1392 1393 0 1393 1394 0 1394 1395 0 1395 1392 0 1396 1397 0 1397 1398 0 1398 1399 0
		 1399 1396 0 1400 1391 0 1390 1401 0 1401 1400 0 1394 1402 0 1402 1403 0 1403 1395 0
		 1398 1404 0 1404 1405 0 1405 1399 0 1406 1407 0 1407 1408 0 1408 1409 0 1409 1406 0
		 1410 1411 0 1411 1412 0 1412 1413 0 1413 1410 0 1414 1415 0 1415 1416 0 1416 1417 0;
	setAttr ".ed[2656:2821]" 1417 1414 0 1418 1419 0 1419 1420 0 1420 1421 0 1421 1418 0
		 1422 1400 0 1401 1423 0 1423 1422 0 1402 1424 0 1424 1425 0 1425 1403 0 1404 1426 0
		 1426 1427 0 1427 1405 0 1406 1404 0 1398 1413 0 1413 1406 0 1417 1419 0 1419 1402 0
		 1394 1417 0 1415 1388 0 1391 1416 0 1411 1392 0 1395 1412 0 1399 1428 0 1428 1429 0
		 1429 1396 0 1400 1420 0 1420 1416 0 1403 1407 0 1407 1412 0 1399 1430 0 1430 1431 0
		 1431 1428 0 1409 1432 0 1432 1404 0 1397 1410 0 1393 1414 0 1418 1433 0 1433 1402 0
		 1422 1434 0 1434 1420 0 1425 1435 0 1435 1407 0 1430 1405 0 1427 1436 0 1436 1430 0
		 1437 1438 0 1438 1439 0 1439 1440 0 1440 1437 0 1438 1441 0 1441 1442 0 1442 1439 0
		 1437 1443 0 1443 1444 0 1444 1438 0 1444 1445 0 1445 1441 0 1443 1446 0 1446 1447 0
		 1447 1444 0 1447 1448 0 1448 1445 0 1449 1450 0 1450 1451 0 1451 1452 0 1452 1449 0
		 1450 1437 0 1440 1451 0 1449 1453 0 1453 1454 0 1454 1450 0 1454 1455 0 1455 1437 0
		 1453 1456 0 1456 1457 0 1457 1454 0 1457 1458 0 1458 1455 0 1459 1460 0 1460 1461 0
		 1461 1462 0 1462 1459 0 1460 1449 0 1452 1461 0 1459 1463 0 1463 1464 0 1464 1460 0
		 1464 1465 0 1465 1449 0 1463 1466 0 1466 1467 0 1467 1464 0 1467 1468 0 1468 1465 0
		 1469 1470 0 1470 1471 0 1471 1472 0 1472 1469 0 1470 1459 0 1462 1471 0 1469 1473 0
		 1473 1474 0 1474 1470 0 1474 1475 0 1475 1459 0 1473 1476 0 1476 1477 0 1477 1474 0
		 1477 1478 0 1478 1475 0 1479 1480 0 1480 1481 0 1481 1482 0 1482 1479 0 1480 1469 0
		 1472 1481 0 1479 1483 0 1483 1484 0 1484 1480 0 1484 1485 0 1485 1469 0 1483 1486 0
		 1486 1487 0 1487 1484 0 1487 1488 0 1488 1485 0 1489 1490 0 1490 1491 0 1491 1492 0
		 1492 1489 0 1490 1479 0 1482 1491 0 1489 1493 0 1493 1494 0 1494 1490 0 1494 1495 0
		 1495 1479 0 1493 1496 0 1496 1497 0 1497 1494 0 1497 1498 0 1498 1495 0 1499 1500 0
		 1500 1501 0 1501 1502 0 1502 1499 0 1500 1503 0 1503 1504 0 1504 1501 0 1499 1505 0
		 1505 1506 0 1506 1500 0 1506 1507 0 1507 1503 0 1505 1508 0 1508 1509 0 1509 1506 0
		 1509 1510 0 1510 1507 0 1511 1512 0 1512 1513 0 1513 1514 0 1514 1511 0 1515 1516 0;
	setAttr ".ed[2822:2987]" 1516 1517 0 1517 1518 0 1518 1515 0 1519 1520 0 1520 1521 0
		 1521 1522 0 1522 1519 0 1523 1524 0 1524 1513 0 1512 1523 0 1516 1525 0 1525 1526 0
		 1526 1517 0 1520 1527 0 1527 1528 0 1528 1521 0 1529 1530 0 1530 1531 0 1531 1532 0
		 1532 1529 0 1533 1534 0 1534 1535 0 1535 1536 0 1536 1533 0 1537 1538 0 1538 1539 0
		 1539 1540 0 1540 1537 0 1541 1542 0 1542 1543 0 1543 1544 0 1544 1541 0 1545 1546 0
		 1546 1524 0 1523 1545 0 1525 1547 0 1547 1548 0 1548 1526 0 1527 1549 0 1549 1550 0
		 1550 1528 0 1529 1534 0 1534 1521 0 1528 1529 0 1538 1517 0 1526 1544 0 1544 1538 0
		 1539 1512 0 1511 1540 0 1535 1516 0 1515 1536 0 1519 1429 0 1428 1520 0 1539 1543 0
		 1543 1523 0 1535 1532 0 1532 1525 0 1431 1551 0 1551 1520 0 1528 1552 0 1552 1530 0
		 1533 1522 0 1537 1518 0 1526 1553 0 1553 1541 0 1543 1554 0 1554 1545 0 1532 1555 0
		 1555 1547 0 1551 1556 0 1556 1549 0 1527 1551 0 1557 1558 0 1558 1559 0 1559 1560 0
		 1560 1557 0 1561 1562 0 1562 1563 0 1563 1564 0 1564 1561 0 1565 1566 0 1566 1567 0
		 1567 1568 0 1568 1565 0 1568 1569 0 1569 1570 0 1570 1571 0 1571 1568 0 1571 1572 0
		 1572 1565 0 1559 1567 0 1566 1573 0 1573 1559 0 1565 1562 0 1562 1573 0 1558 1574 0
		 1574 1567 0 1574 1569 0 1573 1575 0 1575 1576 0 1576 1559 0 1561 1577 0 1577 1575 0
		 1573 1561 0 1564 1578 0 1578 1577 0 1564 1579 0 1579 1580 0 1580 1578 0 1581 1582 0
		 1582 1583 0 1583 1584 0 1584 1581 0 1585 1586 0 1586 1587 0 1587 1588 0 1588 1585 0
		 1589 1590 0 1590 1586 0 1585 1589 0 1591 1592 0 1592 1593 0 1593 1594 0 1594 1591 0
		 1588 1595 0 1595 1596 0 1596 1585 0 1597 1598 0 1598 1584 0 1583 1597 0 1599 1600 0
		 1600 1601 0 1601 1602 0 1602 1599 0 1603 1604 0 1604 1591 0 1591 1605 0 1605 1603 0
		 1606 1607 0 1607 1608 0 1608 1609 0 1609 1606 0 1593 1560 0 1560 1576 0 1576 1594 0
		 1610 1611 0 1611 1589 0 1589 1612 0 1612 1610 0 1613 1614 0 1614 1615 0 1615 1616 0
		 1616 1613 0 1617 1618 0 1618 1619 0 1619 1620 0 1620 1617 0 1621 1622 0 1622 1623 0
		 1623 1590 0 1590 1621 0 1624 1625 0 1625 1626 0 1626 1627 0 1627 1624 0 1628 1629 0;
	setAttr ".ed[2988:3153]" 1629 1630 0 1630 1631 0 1631 1628 0 1630 1632 0 1632 1633 0
		 1633 1631 0 1634 1635 0 1635 1636 0 1636 1637 0 1637 1634 0 1638 1639 0 1639 1640 0
		 1640 1641 0 1641 1638 0 1642 1643 0 1643 1638 0 1641 1642 0 1644 1645 0 1645 1629 0
		 1628 1644 0 1646 1647 0 1647 1604 0 1604 1648 0 1648 1646 0 1649 1650 0 1650 1651 0
		 1651 1652 0 1652 1649 0 1653 1592 0 1591 1647 0 1647 1653 0 1646 1654 0 1654 1653 0
		 1655 1656 0 1656 1650 0 1649 1655 0 1582 1657 0 1657 1658 0 1658 1583 0 1607 1659 0
		 1659 1660 0 1660 1608 0 1642 1619 0 1619 1661 0 1661 1643 0 1604 1662 0 1662 1663 0
		 1663 1648 0 1664 1662 0 1662 1660 0 1659 1664 0 1620 1663 0 1662 1617 0 1665 1656 0
		 1656 1663 0 1620 1665 0 1666 1650 0 1665 1666 0 1667 1651 0 1666 1667 0 1611 1668 0
		 1668 1590 0 1655 1648 0 1603 1660 0 1618 1669 0 1669 1661 0 1670 1586 0 1623 1670 0
		 1671 1587 0 1670 1671 0 1642 1665 0 1641 1666 0 1640 1667 0 1651 1611 0 1610 1652 0
		 1667 1668 0 1621 1668 0 1640 1621 0 1639 1622 0 1634 1658 0 1657 1635 0 1672 1673 0
		 1673 1669 0 1618 1672 0 1617 1599 0 1599 1672 0 1617 1664 0 1664 1600 0 1659 1674 0
		 1674 1600 0 1597 1674 0 1607 1597 0 1606 1598 0 1625 1675 0 1675 1676 0 1676 1626 0
		 1677 1678 0 1678 1626 0 1676 1677 0 1584 1624 0 1624 1679 0 1679 1581 0 1598 1625 0
		 1606 1675 0 1658 1674 0 1601 1674 0 1634 1601 0 1637 1602 0 1680 1673 0 1673 1637 0
		 1636 1680 0 1615 1681 0 1681 1682 0 1682 1616 0 1615 1608 0 1660 1681 0 1683 1633 0
		 1633 1682 0 1682 1605 0 1605 1683 0 1676 1609 0 1609 1614 0 1614 1677 0 1578 1628 0
		 1631 1577 0 1580 1644 0 1649 1646 0 1652 1654 0 1654 1610 0 1612 1653 0 1595 1593 0
		 1592 1596 0 1633 1616 0 1681 1603 0 1603 1682 0 1560 1588 0 1588 1557 0 1602 1672 0
		 1678 1627 0 1627 1679 0 1588 1684 0 1684 1557 0 1605 1594 0 1594 1683 0 1576 1683 0
		 1616 1685 0 1685 1613 0 1613 1677 0 1595 1560 0 1613 1678 0 1616 1632 0 1632 1685 0
		 1683 1631 0 1596 1589 0 1587 1684 0 1609 1675 0 1671 1684 0 1685 1678 0 1602 1673 0
		 1680 1669 0 1631 1575 0 1575 1683 0 1596 1612 0 1596 1653 0 1557 1686 0 1686 1687 0;
	setAttr ".ed[3154:3319]" 1687 1558 0 1688 1689 0 1689 1690 0 1690 1691 0 1691 1688 0
		 1692 1693 0 1693 1694 0 1694 1695 0 1695 1692 0 1693 1696 0 1696 1570 0 1569 1693 0
		 1692 1697 0 1697 1696 0 1687 1698 0 1698 1695 0 1694 1687 0 1698 1691 0 1691 1692 0
		 1694 1574 0 1687 1699 0 1699 1700 0 1700 1698 0 1688 1698 0 1700 1701 0 1701 1688 0
		 1701 1702 0 1702 1689 0 1702 1580 0 1579 1689 0 1581 1703 0 1703 1704 0 1704 1582 0
		 1705 1706 0 1706 1707 0 1707 1708 0 1708 1705 0 1709 1705 0 1708 1710 0 1710 1709 0
		 1711 1712 0 1712 1713 0 1713 1714 0 1714 1711 0 1705 1715 0 1715 1716 0 1716 1706 0
		 1717 1704 0 1703 1718 0 1718 1717 0 1719 1720 0 1720 1721 0 1721 1722 0 1722 1719 0
		 1723 1724 0 1724 1711 0 1711 1725 0 1725 1723 0 1726 1727 0 1727 1728 0 1728 1729 0
		 1729 1726 0 1712 1699 0 1699 1686 0 1686 1713 0 1730 1731 0 1731 1709 0 1709 1732 0
		 1732 1730 0 1733 1734 0 1734 1735 0 1735 1736 0 1736 1733 0 1737 1738 0 1738 1739 0
		 1739 1740 0 1740 1737 0 1741 1710 0 1710 1623 0 1622 1741 0 1742 1743 0 1743 1744 0
		 1744 1745 0 1745 1742 0 1746 1747 0 1747 1748 0 1748 1749 0 1749 1746 0 1747 1750 0
		 1750 1751 0 1751 1748 0 1752 1753 0 1753 1636 0 1635 1752 0 1638 1754 0 1754 1755 0
		 1755 1639 0 1756 1754 0 1643 1756 0 1644 1746 0 1749 1645 0 1757 1758 0 1758 1725 0
		 1725 1759 0 1759 1757 0 1760 1761 0 1761 1762 0 1762 1763 0 1763 1760 0 1764 1759 0
		 1759 1711 0 1714 1764 0 1764 1765 0 1765 1757 0 1766 1760 0 1763 1767 0 1767 1766 0
		 1704 1768 0 1768 1657 0 1728 1769 0 1769 1770 0 1770 1729 0 1661 1739 0 1739 1756 0
		 1758 1771 0 1771 1772 0 1772 1725 0 1773 1770 0 1769 1772 0 1772 1773 0 1737 1772 0
		 1771 1738 0 1774 1738 0 1771 1767 0 1767 1774 0 1775 1774 0 1763 1775 0 1776 1775 0
		 1762 1776 0 1710 1777 0 1777 1732 0 1758 1766 0 1769 1723 0 1669 1740 0 1708 1670 0
		 1707 1671 0 1774 1756 0 1775 1754 0 1776 1755 0 1761 1730 0 1732 1762 0 1777 1776 0
		 1741 1755 0 1777 1741 0 1768 1752 0 1778 1740 0 1669 1779 0 1779 1778 0 1778 1719 0
		 1719 1737 0 1722 1773 0 1773 1737 0 1722 1780 0 1780 1770 0 1717 1729 0 1780 1717 0;
	setAttr ".ed[3320:3485]" 1718 1726 0 1744 1781 0 1781 1782 0 1782 1745 0 1783 1781 0
		 1744 1784 0 1784 1783 0 1679 1742 0 1742 1703 0 1745 1718 0 1782 1726 0 1780 1768 0
		 1721 1752 0 1780 1721 0 1720 1753 0 1753 1779 0 1779 1680 0 1734 1785 0 1785 1786 0
		 1786 1735 0 1786 1769 0 1728 1735 0 1787 1724 0 1724 1785 0 1785 1750 0 1750 1787 0
		 1783 1736 0 1736 1727 0 1727 1781 0 1701 1747 0 1746 1702 0 1757 1760 0 1765 1761 0
		 1764 1731 0 1730 1765 0 1715 1714 0 1713 1716 0 1734 1750 0 1785 1723 0 1723 1786 0
		 1557 1706 0 1706 1686 0 1778 1720 0 1743 1784 0 1679 1743 0 1684 1706 0 1787 1712 0
		 1712 1724 0 1787 1699 0 1733 1788 0 1788 1734 0 1783 1733 0 1686 1716 0 1784 1733 0
		 1788 1751 0 1751 1734 0 1747 1787 0 1709 1715 0 1684 1707 0 1782 1727 0 1784 1788 0
		 1779 1720 0 1700 1747 0 1787 1700 0 1731 1715 0 1764 1715 0 1789 1790 0 1790 1791 0
		 1791 1792 0 1792 1789 0 1793 1794 0 1794 1790 0 1789 1793 0 1791 1795 0 1795 1796 0
		 1796 1792 0 1797 1798 0 1798 1799 0 1799 1800 0 1800 1797 0 1800 1801 0 1801 1802 0
		 1802 1797 0 1798 1794 0 1793 1799 0 1803 1804 0 1804 1805 0 1805 1806 0 1806 1803 0
		 1807 1803 0 1806 1808 0 1808 1807 0 1809 1810 0 1810 1811 0 1811 1812 0 1812 1809 0
		 1813 1802 0 1801 1814 0 1814 1813 0 1814 1807 0 1808 1813 0 1804 1815 0 1815 1816 0
		 1816 1805 0 1815 1810 0 1809 1816 0 1795 1812 0 1811 1796 0 1817 1818 0 1818 1819 0
		 1819 1820 0 1820 1817 0 1821 1817 0 1820 1822 0 1822 1821 0 1823 1824 0 1824 1820 0
		 1819 1823 0 1825 1823 0 1818 1825 0 1824 1826 0 1826 1822 0 1827 1821 0 1826 1827 0
		 1817 1828 0 1828 1829 0 1829 1818 0 1821 1830 0 1830 1828 0 1831 1829 0 1828 1832 0
		 1832 1831 0 1831 1825 0 1830 1833 0 1833 1832 0 1827 1833 0 1834 1835 0 1835 1836 0
		 1836 1837 0 1837 1834 0 1834 1838 0 1838 1839 0 1839 1835 0 1838 1840 0 1840 1841 0
		 1841 1839 0 1842 1843 0 1843 1844 0 1844 1845 0 1845 1842 0 1845 1846 0 1846 1847 0
		 1847 1842 0 1846 1848 0 1848 1849 0 1849 1847 0 1850 1851 0 1851 1852 0 1852 1853 0
		 1853 1850 0 1853 1854 0 1854 1855 0 1855 1850 0 1856 1857 0 1857 1858 0 1858 1859 0;
	setAttr ".ed[3486:3604]" 1859 1856 0 1857 1853 0 1852 1860 0 1860 1857 0 1861 1862 0
		 1862 1863 0 1863 1864 0 1864 1861 0 1852 1865 0 1865 1866 0 1866 1860 0 1861 1865 0
		 1865 1851 0 1851 1862 0 1867 1868 0 1868 1869 0 1869 1870 0 1870 1867 0 1850 1871 0
		 1871 1862 0 1855 1872 0 1872 1871 0 1869 1872 0 1855 1870 0 1861 1873 0 1873 1866 0
		 1867 1854 0 1854 1856 0 1856 1874 0 1874 1867 0 1874 1875 0 1875 1868 0 1876 1868 0
		 1875 1877 0 1877 1876 0 1860 1878 0 1878 1858 0 1866 1879 0 1879 1878 0 1873 1880 0
		 1880 1879 0 1859 1881 0 1881 1874 0 1881 1882 0 1882 1875 0 1882 1883 0 1883 1877 0
		 1876 1884 0 1884 1869 0 1885 1886 0 1886 1871 0 1872 1885 0 1884 1885 0 1886 1863 0
		 1864 1887 0 1887 1873 0 1887 1888 0 1888 1880 0 1870 1854 0 1889 1890 0 1890 1891 0
		 1891 1892 0 1892 1889 0 1889 1893 0 1893 1894 0 1894 1890 0 1895 1896 0 1896 1897 0
		 1897 1898 0 1898 1895 0 1898 1899 0 1899 1891 0 1890 1898 0 1900 1864 0 1863 1901 0
		 1901 1900 0 1899 1902 0 1902 1903 0 1903 1891 0 1901 1892 0 1892 1903 0 1903 1900 0
		 1904 1905 0 1905 1906 0 1906 1907 0 1907 1904 0 1901 1908 0 1908 1889 0 1908 1909 0
		 1909 1893 0 1905 1893 0 1909 1906 0 1902 1910 0 1910 1900 0 1904 1911 0 1911 1895 0
		 1895 1894 0 1894 1904 0 1907 1912 0 1912 1911 0 1877 1912 0 1907 1876 0 1897 1913 0
		 1913 1899 0 1913 1914 0 1914 1902 0 1914 1915 0 1915 1910 0 1911 1916 0 1916 1896 0
		 1912 1917 0 1917 1916 0 1883 1917 0 1906 1884 0 1885 1909 0 1908 1886 0 1910 1887 0
		 1915 1888 0 1894 1905 0;
	setAttr -s 6610 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.93190002 -0.1661 0.32260001 -0.3973
		 -0.5625 0.72500002 -0.37940001 -0.91820002 0.1136 -0.9558 -0.2305 0.1825 -0.7227
		 0.5948 -0.35210001 -0.69989997 0.59420002 0.39629999 -0.5589 0.74150002 0.37110001
		 -0.63779998 0.75269997 -0.16320001 -0.31889999 0.3175 -0.89300001 -0.4646 0.4296
		 -0.7744 -0.033500001 -0.030099999 -0.99900001 -0.1171 0.049899999 -0.99190003 -0.80110002
		 0.47659999 0.36199999 -0.4156 0.2552 0.87300003 -0.55299997 0.28560001 0.7827 -0.69989997
		 0.59420002 0.39629999 -0.69989997 0.59420002 0.39629999 -0.7227 0.5948 -0.35210001
		 -0.83149999 0.49439999 -0.2534 -0.80110002 0.47659999 0.36199999 -0.7227 0.5948 -0.35210001
		 -0.31889999 0.3175 -0.89300001 -0.32359999 0.34869999 -0.87959999 -0.83149999 0.49439999
		 -0.2534 -0.1171 0.049899999 -0.99190003 0.3865 -0.17479999 -0.90560001 -0.32359999
		 0.34869999 -0.87959999 -0.31889999 0.3175 -0.89300001 0.94330001 -0.20029999 -0.26460001
		 0.49509999 -0.068700001 -0.86610001 0.3865 -0.17479999 -0.90560001 0.28650001 -0.9012
		 -0.32519999 0.49509999 -0.068700001 -0.86610001 -0.3811 0.26370001 -0.88609999 -0.32359999
		 0.34869999 -0.87959999 0.3865 -0.17479999 -0.90560001 -0.80129999 0.51899999 -0.29769999
		 -0.83149999 0.49439999 -0.2534 -0.32359999 0.34869999 -0.87959999 -0.3811 0.26370001
		 -0.88609999 -0.76740003 0.51179999 0.3863 -0.80110002 0.47659999 0.36199999 -0.83149999
		 0.49439999 -0.2534 -0.80129999 0.51899999 -0.29769999 -0.76740003 0.51179999 0.3863
		 -0.2811 0.23639999 0.93010002 -0.4156 0.2552 0.87300003 -0.80110002 0.47659999 0.36199999
		 -0.3973 -0.5625 0.72500002 0.2308 -0.38460001 0.89380002 0.91930002 -0.35800001 0.16339999
		 -0.37940001 -0.91820002 0.1136 0.2308 -0.38460001 0.89380002 0.53619999 -0.14749999
		 0.83109999 0.96100003 -0.1745 0.2145 0.91930002 -0.35800001 0.16339999 -0.4156 0.2552
		 0.87300003 -0.2811 0.23639999 0.93010002 0.53619999 -0.14749999 0.83109999 0.2308
		 -0.38460001 0.89380002 -0.84039998 0.36390001 0.40169999 -0.27950001 0.083300002
		 0.95649999 -0.2811 0.23639999 0.93010002 -0.76740003 0.51179999 0.3863 -0.76740003
		 0.51179999 0.3863 -0.80129999 0.51899999 -0.29769999 -0.85089999 0.41429999 -0.32300001
		 -0.84039998 0.36390001 0.40169999 -0.3811 0.26370001 -0.88609999 -0.46630001 0.088500001
		 -0.88020003 -0.85089999 0.41429999 -0.32300001 -0.80129999 0.51899999 -0.29769999
		 -0.3811 0.26370001 -0.88609999 0.49509999 -0.068700001 -0.86610001 0.39430001 -0.27759999
		 -0.8761 -0.46630001 0.088500001 -0.88020003 0.94330001 -0.20029999 -0.26460001 0.8427
		 -0.4149 -0.34310001 0.39430001 -0.27759999 -0.8761 0.49509999 -0.068700001 -0.86610001
		 0.94330001 -0.20029999 -0.26460001 0.96100003 -0.1745 0.2145 0.89960003 -0.40149999
		 0.1718 0.8427 -0.4149 -0.34310001 0.5388 -0.1244 -0.83319998 0.48879999 -0.079599999
		 -0.86879998 -0.147 0.34470001 -0.9271 -0.19400001 0.4278 -0.88279998 -0.55970001
		 0.73760003 -0.37760001 -0.58670002 0.74440002 -0.3188 -0.63609999 0.69690001 0.33129999
		 -0.65090001 0.61989999 0.4382 -0.27950001 0.083300002 0.95649999 0.46450001 -0.31900001
		 0.82609999 0.53619999 -0.14749999 0.83109999 -0.2811 0.23639999 0.93010002 0.89960003
		 -0.40149999 0.1718 0.96100003 -0.1745 0.2145 0.53619999 -0.14749999 0.83109999 0.46450001
		 -0.31900001 0.82609999 0.95069999 -0.23549999 0.2017 0.62279999 -0.0955 0.77649999
		 0.59799999 -0.019099999 0.80129999 0.95120001 -0.27270001 0.1445 0.80830002 -0.52630001
		 0.264 0.41980001 -0.2906 0.8599 0.3319 -0.57270002 0.74959999 0.69410002 -0.70240003
		 0.1577 -0.37029999 0.0757 0.92580003 0.41980001 -0.2906 0.8599 0.59799999 -0.019099999
		 0.80129999 -0.25780001 0.42840001 0.866 -0.92760003 0.14470001 -0.34459999 -0.93910003
		 0.1083 0.32600001 -0.63609999 0.69690001 0.33129999 -0.58670002 0.74440002 -0.3188
		 -0.3215 0.078400001 -0.9436 0.4271 -0.2938 -0.85509998 0.23010001 -0.60390002 -0.76310003
		 -0.4075 -0.25960001 -0.87550002 -0.70310003 -0.69749999 -0.13860001 -0.921 0.2094
		 -0.3285 -0.4075 -0.25960001 -0.87550002 -0.5772 -0.77380002 -0.26089999 -0.4296 -0.75779998
		 0.4912 -0.37189999 -0.1496 0.91610003 -0.90979999 0.2714 0.3141 -0.73180002 -0.63959998
		 0.2353 -0.4296 -0.75779998 0.4912 -0.045899998 -0.97390002 0.22239999 0.3319 -0.57270002
		 0.74959999 -0.37189999 -0.1496 0.91610003 -0.067500003 -0.9975 -0.0185 0.69410002
		 -0.70240003 0.1577 0.3319 -0.57270002 0.74959999 -0.045899998 -0.97390002 0.22239999
		 0.23010001 -0.60390002 -0.76310003 -0.31209999 -0.93730003 -0.1549 -0.5772 -0.77380002
		 -0.26089999 -0.4075 -0.25960001 -0.87550002 0.69410002 -0.70240003 0.1577 -0.067500003
		 -0.9975 -0.0185 -0.2261 -0.95340002 -0.1998 0.59500003 -0.75379997 -0.2789 0.89459997
		 -0.2035 -0.3978 0.92580003 -0.20290001 -0.31900001 0.95069999 -0.23549999 0.2017
		 0.95120001 -0.27270001 0.1445 -0.58670002 0.74440002 -0.3188 -0.55970001 0.73760003
		 -0.37760001 -0.19400001 0.4278 -0.88279998 -0.147 0.34470001 -0.9271 0.80830002 -0.52630001
		 0.264 0.81569999 -0.39629999 -0.42140001 0.89459997 -0.2035 -0.3978 0.95120001 -0.27270001
		 0.1445 -0.55299997 0.28560001 0.7827 -0.4156 0.2552 0.87300003 0.2308 -0.38460001
		 0.89380002 -0.49270001 -0.0814 0.8664 -0.73180002 -0.63959998 0.2353 -0.90979999
		 0.2714 0.3141 -0.921 0.2094 -0.3285 -0.70310003 -0.69749999 -0.13860001 0.28650001
		 -0.9012 -0.32519999 0.91930002 -0.35800001 0.16339999;
	setAttr ".n[166:331]" -type "float3"  0.96100003 -0.1745 0.2145 0.94330001
		 -0.20029999 -0.26460001 -0.9788 -0.18529999 -0.086800002 -0.37940001 -0.91820002
		 0.1136 0.28650001 -0.9012 -0.32519999 -0.7902 -0.1698 -0.58890003 -0.7227 0.5948
		 -0.35210001 -0.63779998 0.75269997 -0.16320001 -0.4646 0.4296 -0.7744 -0.31889999
		 0.3175 -0.89300001 0.5388 -0.1244 -0.83319998 0.92580003 -0.20290001 -0.31900001
		 0.89459997 -0.2035 -0.3978 0.48879999 -0.079599999 -0.86879998 -0.31209999 -0.93730003
		 -0.1549 0.23010001 -0.60390002 -0.76310003 0.59500003 -0.75379997 -0.2789 -0.2261
		 -0.95340002 -0.1998 -0.69989997 0.59420002 0.39629999 -0.55299997 0.28560001 0.7827
		 -0.60589999 0.38789999 0.69459999 -0.5589 0.74150002 0.37110001 -0.27950001 0.083300002
		 0.95649999 -0.0735 0.44999999 0.88999999 0.62279999 -0.0955 0.77649999 0.46450001
		 -0.31900001 0.82609999 0.4271 -0.2938 -0.85509998 0.48879999 -0.079599999 -0.86879998
		 0.89459997 -0.2035 -0.3978 0.81569999 -0.39629999 -0.42140001 -0.033500001 -0.030099999
		 -0.99900001 0.28569999 -0.26609999 -0.9206 0.3865 -0.17479999 -0.90560001 -0.1171
		 0.049899999 -0.99190003 0.4596 0.6024 0.65259999 0.46630001 0.3951 0.79149997 0.97409999
		 -0.083999999 0.2098 0.92570001 0.36250001 0.108 0.4596 0.6024 0.65259999 -0.31650001
		 0.68449998 0.65679997 -0.4752 0.24169999 0.84600002 0.46630001 0.3951 0.79149997
		 0.6049 -0.35190001 -0.71439999 -0.16329999 -0.19400001 -0.9673 -0.2446 0.1565 -0.9569
		 0.56330001 0.1099 -0.81889999 -0.7586 0.41119999 -0.5054 -0.2446 0.1565 -0.9569 -0.16329999
		 -0.19400001 -0.9673 -0.88190001 -0.1574 -0.4443 -0.88190001 -0.1574 -0.4443 -0.95310003
		 0.0634 0.296 -0.82029998 0.54210001 0.1822 -0.7586 0.41119999 -0.5054 0.081 0.70889997
		 -0.70069999 0.28780001 0.74910003 -0.59670001 0.0070000002 0.7119 0.7022 -0.18719999
		 0.74830002 0.6365 0.198 0.84899998 -0.49000001 0.79680002 0.2042 -0.5686 0.40630001
		 -0.37819999 -0.83179998 -0.052499998 0.68989998 -0.722 0.198 0.84899998 -0.49000001
		 -0.052499998 0.68989998 -0.722 -0.32839999 0.71600002 0.61610001 0.1653 0.81529999
		 0.55500001 0.081 0.70889997 -0.70069999 0.29629999 -0.4377 -0.84890002 0.14669999
		 -0.46090001 -0.87529999 0.28780001 0.74910003 -0.59670001 0.82810003 0.32780001 -0.45469999
		 0.88249999 0.003 0.47029999 0.27509999 0.60210001 0.74949998 0.56800002 0.5819 -0.58209997
		 0.27509999 0.60210001 0.74949998 0.88249999 0.003 0.47029999 -0.35170001 -0.93339998
		 0.070500001 -0.34799999 -0.37040001 0.86119998 -0.18719999 0.74830002 0.6365 0.0070000002
		 0.7119 0.7022 -0.1978 -0.41010001 0.89029998 -0.084299996 -0.4104 0.90799999 0.037700001
		 -0.2572 -0.96560001 0.82810003 0.32780001 -0.45469999 0.56800002 0.5819 -0.58209997
		 -0.046599999 -0.40580001 -0.91280001 0.1653 0.81529999 0.55500001 -0.32839999 0.71600002
		 0.61610001 0.0167 -0.39289999 0.91939998 0.5855 0.013 0.81059998 0.198 0.84899998
		 -0.49000001 0.1653 0.81529999 0.55500001 0.5855 0.013 0.81059998 0.79680002 0.2042
		 -0.5686 0.27599999 0.60750002 -0.74489999 0.6311 0.50980002 -0.58459997 0.70450002
		 -0.45289999 -0.54640001 0.1026 -0.64170003 -0.76010001 0.45249999 0.5467 -0.70459998
		 0.58639997 0.45339999 -0.67129999 0.38510001 0.6936 0.60890001 0.2298 0.77219999
		 0.5923 -0.1749 -0.31099999 0.93419999 0.5485 -0.2332 0.80299997 0.47799999 0.68290001
		 0.55239999 0.015900001 0.82660002 0.5625 -0.31979999 -0.1107 0.94099998 -0.2897 -0.26519999
		 0.91960001 0.2298 0.77219999 0.5923 0.38510001 0.6936 0.60890001 0.015900001 0.82660002
		 0.5625 0.47799999 0.68290001 0.55239999 0.6311 0.50980002 -0.58459997 0.27599999
		 0.60750002 -0.74489999 -0.3786 -0.0614 0.9235 0.51859999 0.55650002 0.64910001 0.89179999
		 0.0616 0.4483 -0.49829999 -0.71270001 0.49380001 0.58639997 0.45339999 -0.67129999
		 0.45249999 0.5467 -0.70459998 -0.0352 -0.62730002 -0.778 -0.1582 -0.5783 -0.80040002
		 0.68449998 0.3337 -0.64819998 0.97170001 -0.097499996 -0.21510001 0.89179999 0.0616
		 0.4483 0.51859999 0.55650002 0.64910001 -0.63389999 -0.030200001 0.77280003 -0.96530002
		 -0.063100003 -0.25350001 -0.77689999 -0.60000002 -0.1908 -0.54350001 -0.59460002
		 0.59240001 -0.96649998 -0.1305 -0.2212 -0.96530002 -0.063100003 -0.25350001 -0.63389999
		 -0.030200001 0.77280003 -0.62669998 0.1036 0.77240002 -0.96649998 -0.1305 -0.2212
		 -0.62669998 0.1036 0.77240002 -0.53600001 -0.0447 0.84310001 -0.75980002 -0.64999998
		 -0.016100001 -0.1895 -0.6002 -0.77700001 -0.41980001 -0.067299999 -0.90509999 -0.96649998
		 -0.1305 -0.2212 -0.75980002 -0.64999998 -0.016100001 0.55949998 -0.0156 -0.82870001
		 0.5927 -0.3653 -0.71780002 0.97219998 0.1269 0.19660001 0.98390001 0.1786 -0.0074999998
		 0.55949998 -0.0156 -0.82870001 0.98390001 0.1786 -0.0074999998 0.99360001 0.1118
		 -0.0185 0.4673 -0.044799998 -0.8829 -0.77689999 -0.60000002 -0.1908 -0.34099999 -0.66189998
		 -0.66750002 0.032000002 -0.99900001 -0.030099999 -0.54350001 -0.59460002 0.59240001
		 0.4673 -0.044799998 -0.8829 0.99360001 0.1118 -0.0185 0.8563 -0.51249999 0.0638 0.49110001
		 -0.64109999 -0.58969998 -0.4007 -0.119 -0.9084 -0.34099999 -0.66189998 -0.66750002
		 -0.77689999 -0.60000002 -0.1908 -0.96530002 -0.063100003 -0.25350001 -0.96649998
		 -0.1305 -0.2212 -0.41980001 -0.067299999 -0.90509999 -0.4007 -0.119 -0.9084 -0.96530002
		 -0.063100003 -0.25350001;
	setAttr ".n[332:497]" -type "float3"  0.2983 0.33199999 0.89490002 -0.53600001
		 -0.0447 0.84310001 -0.62669998 0.1036 0.77240002 0.48980001 0.2045 0.84750003 -0.53600001
		 -0.0447 0.84310001 0.2983 0.33199999 0.89490002 0.31799999 0.58109999 0.74919999
		 -0.2687 0.16410001 0.94910002 0.31799999 0.58109999 0.74919999 0.39469999 0.6814
		 0.6164 -0.24510001 0.51270002 0.82279998 -0.2687 0.16410001 0.94910002 0.4738 0.0656
		 0.87819999 -0.63389999 -0.030200001 0.77280003 -0.54350001 -0.59460002 0.59240001
		 0.3576 -0.68400002 0.6358 -0.62669998 0.1036 0.77240002 -0.63389999 -0.030200001
		 0.77280003 0.4738 0.0656 0.87819999 0.48980001 0.2045 0.84750003 0.95599997 0.2877
		 -0.0568 0.39469999 0.6814 0.6164 0.31799999 0.58109999 0.74919999 0.97189999 0.23459999
		 -0.02 0.8563 -0.51249999 0.0638 0.99360001 0.1118 -0.0185 0.4738 0.0656 0.87819999
		 0.3576 -0.68400002 0.6358 0.4738 0.0656 0.87819999 0.99360001 0.1118 -0.0185 0.98390001
		 0.1786 -0.0074999998 0.48980001 0.2045 0.84750003 0.2983 0.33199999 0.89490002 0.48980001
		 0.2045 0.84750003 0.98390001 0.1786 -0.0074999998 0.97219998 0.1269 0.19660001 -0.31979999
		 -0.1107 0.94099998 -0.61930001 -0.76700002 0.16779999 -0.39300001 -0.90429997 0.16680001
		 -0.2897 -0.26519999 0.91960001 -0.3786 -0.0614 0.9235 -0.49829999 -0.71270001 0.49380001
		 -0.87190002 -0.4858 0.061099999 -0.82029998 -0.55580002 0.13500001 -0.1582 -0.5783
		 -0.80040002 -0.0352 -0.62730002 -0.778 -0.39300001 -0.90429997 0.16680001 -0.61930001
		 -0.76700002 0.16779999 -0.27939999 -0.50800002 -0.81480002 -0.82029998 -0.55580002
		 0.13500001 -0.87190002 -0.4858 0.061099999 -0.4104 -0.83109999 -0.37529999 -0.91909999
		 -0.39120001 -0.046700001 -0.69379997 -0.70560002 0.14399999 -0.95829999 -0.28569999
		 0.0038000001 -0.92089999 -0.34060001 -0.18970001 -0.34999999 -0.62330002 0.69919997
		 -0.81440002 -0.57929999 -0.032499999 -0.67970002 -0.73339999 0.0070000002 -0.47499999
		 -0.2492 0.84399998 -0.1999 -0.308 0.93019998 -0.32570001 -0.36300001 0.87300003 -0.45640001
		 -0.88749999 0.063600004 -0.16140001 -0.97670001 0.1418 -0.1214 -0.29530001 0.94770002
		 0.13240001 -0.97100002 0.1991 0.78259999 -0.58609998 0.2097 0.55680001 0.035700001
		 0.82980001 -0.169 -0.96990001 0.17550001 0.1026 -0.64170003 -0.76010001 0.70450002
		 -0.45289999 -0.54640001 0.74860001 -0.63520002 0.19 -0.169 -0.96990001 0.17550001
		 0.74860001 -0.63520002 0.19 0.5485 -0.2332 0.80299997 -0.1749 -0.31099999 0.93419999
		 -0.93279999 -0.3017 0.1972 -0.92690003 -0.28169999 0.24789999 -0.77340001 -0.63139999
		 0.057 -0.50999999 -0.68110001 -0.52530003 -0.93279999 -0.3017 0.1972 -0.50999999
		 -0.68110001 -0.52530003 -0.45410001 -0.48010001 -0.75050002 -0.89359999 -0.3698 0.2545
		 -0.77600002 -0.56739998 0.27559999 -0.3712 -0.58380002 -0.72210002 -0.2386 -0.60369998
		 -0.76059997 -0.65060002 -0.73199999 0.20200001 -0.51179999 -0.8265 0.23459999 -0.16580001
		 -0.63770002 -0.75220001 0.4668 -0.73619998 -0.49000001 -0.0317 -0.9637 0.2651 -0.9515
		 0.02 0.30700001 -0.95829999 -0.28569999 0.0038000001 -0.77340001 -0.63139999 0.057
		 -0.92690003 -0.28169999 0.24789999 -0.9989 0.046399999 0.0080000004 -0.95829999 -0.28569999
		 0.0038000001 -0.9515 0.02 0.30700001 -0.92199999 0.26100001 0.2861 -0.9515 0.02 0.30700001
		 -0.92690003 -0.28169999 0.24789999 -0.26620001 0.075800002 0.96090001 -0.49720001
		 0.1349 0.85710001 -0.31850001 0.1621 0.9339 -0.93279999 -0.3017 0.1972 -0.89359999
		 -0.3698 0.2545 -0.31740001 0.1122 0.94160002 -0.65060002 -0.73199999 0.20200001 -0.278
		 -0.071699999 0.95789999 -0.2667 0.047600001 0.96259999 -0.77600002 -0.56739998 0.27559999
		 -0.2247 -0.1009 0.96920002 -0.51179999 -0.8265 0.23459999 -0.0317 -0.9637 0.2651
		 0.4479 -0.3502 0.82260001 0.78259999 -0.069600001 0.61870003 -0.26620001 0.075800002
		 0.96090001 -0.31850001 0.1621 0.9339 0.79809999 0.28799999 0.52929997 0.0147 -0.74199998
		 0.67019999 -0.2687 0.16410001 0.94910002 -0.49720001 0.1349 0.85710001 0.4197 -0.3867
		 0.8211 -0.2687 0.16410001 0.94910002 -0.24510001 0.51270002 0.82279998 -0.64819998
		 0.39480001 0.65109998 -0.49720001 0.1349 0.85710001 -0.64819998 0.39480001 0.65109998
		 -0.92199999 0.26100001 0.2861 -0.9515 0.02 0.30700001 -0.49720001 0.1349 0.85710001
		 0.4648 0.39480001 0.79250002 0.39469999 0.6814 0.6164 0.95599997 0.2877 -0.0568 0.99669999
		 0.080700003 -0.0125 0.3924 0.3567 0.84780002 0.46630001 0.3951 0.79149997 -0.4752
		 0.24169999 0.84600002 -0.56559998 0.38820001 0.72759998 -0.56559998 0.38820001 0.72759998
		 -0.4752 0.24169999 0.84600002 -0.95310003 0.0634 0.296 -0.96310002 0.1786 0.20119999
		 -0.78600001 -0.3396 -0.5165 -0.78049999 -0.0678 -0.62150002 -0.027899999 -0.1837
		 -0.98259997 -0.027799999 -0.27509999 -0.96100003 -0.98720002 -0.0108 -0.1593 -0.78049999
		 -0.0678 -0.62150002 -0.78600001 -0.3396 -0.5165 -0.92089999 -0.34060001 -0.18970001
		 -0.81440002 -0.57929999 -0.032499999 -0.25690001 -0.58130002 -0.77209997 -0.2033
		 -0.45359999 -0.86769998 -0.67970002 -0.73339999 0.0070000002 -0.45640001 -0.88749999
		 0.063600004 -0.0337 -0.56819999 -0.8222 0.14480001 -0.56120002 -0.81489998 -0.16140001
		 -0.97670001 0.1418 0.13240001 -0.97100002 0.1991 0.3125 -0.54640001 -0.77700001 0.85219997
		 -0.121 -0.50910002 0.78259999 -0.58609998 0.2097 -0.9989 0.046399999 0.0080000004
		 -0.98720002 -0.0108 -0.1593;
	setAttr ".n[498:663]" -type "float3"  -0.92089999 -0.34060001 -0.18970001 -0.95829999
		 -0.28569999 0.0038000001 0.77170002 -0.51300001 -0.3761 0.95599997 0.2877 -0.0568
		 0.97189999 0.23459999 -0.02 0.7148 -0.46470001 -0.5226 0.97189999 0.23459999 -0.02
		 0.97219998 0.1269 0.19660001 0.5927 -0.3653 -0.71780002 0.7148 -0.46470001 -0.5226
		 0.5927 -0.3653 -0.71780002 -0.1895 -0.6002 -0.77700001 0.26980001 -0.92070001 -0.2818
		 0.7148 -0.46470001 -0.5226 -0.2687 0.16410001 0.94910002 0.0147 -0.74199998 0.67019999
		 -0.75980002 -0.64999998 -0.016100001 -0.53600001 -0.0447 0.84310001 0.90179998 -0.4208
		 0.0986 0.78259999 -0.069600001 0.61870003 0.79809999 0.28799999 0.52929997 0.90039998
		 -0.4206 -0.1116 0.76190001 -0.1901 -0.61919999 0.8301 -0.2112 -0.51599997 -0.027799999
		 -0.27509999 -0.96100003 -0.027899999 -0.1837 -0.98259997 0.82810003 0.32780001 -0.45469999
		 0.90920001 -0.021400001 -0.41580001 0.96929997 -0.1998 0.1433 0.88249999 0.003 0.47029999
		 0.88249999 0.003 0.47029999 0.96929997 -0.1998 0.1433 0.96640003 -0.204 0.1564 0.98299998
		 -0.044100001 -0.178 0.90179998 -0.4208 0.0986 0.90039998 -0.4206 -0.1116 0.89179999
		 0.0616 0.4483 0.94669998 -0.3071 0.097499996 0.94669998 -0.3071 0.097499996 0.97170001
		 -0.097499996 -0.21510001 0.84600002 -0.1213 0.51910001 0.96640003 -0.204 0.1564 0.89179999
		 0.0616 0.4483 0.90039998 -0.4206 -0.1116 -0.50999999 -0.68110001 -0.52530003 -0.49829999
		 -0.71270001 0.49380001 -0.4104 -0.83109999 -0.37529999 -0.34999999 -0.62330002 0.69919997
		 0.84600002 -0.1213 0.51910001 0.97170001 -0.097499996 -0.21510001 0.77170002 -0.51300001
		 -0.3761 0.82990003 -0.40959999 -0.37889999 0.99669999 0.080700003 -0.0125 0.95599997
		 0.2877 -0.0568 0.90789998 -0.22310001 -0.35479999 0.94 -0.2247 -0.25690001 0.97409999
		 -0.083999999 0.2098 0.99669999 0.080700003 -0.0125 0.97409999 -0.083999999 0.2098
		 0.46630001 0.3951 0.79149997 0.3924 0.3567 0.84780002 0.99669999 0.080700003 -0.0125
		 0.63410002 -0.023 -0.77289999 0.90039998 -0.4206 -0.1116 0.79809999 0.28799999 0.52929997
		 0.7956 0.43040001 0.42640001 -0.45410001 -0.48010001 -0.75050002 -0.50999999 -0.68110001
		 -0.52530003 0.90039998 -0.4206 -0.1116 0.63410002 -0.023 -0.77289999 0.80059999 0.1934
		 -0.56709999 0.49059999 0.34540001 -0.80000001 0.47850001 0.7784 0.4064 0.77740002
		 0.4601 0.42879999 0.53780001 0.289 -0.792 -0.2386 -0.60369998 -0.76059997 -0.3712
		 -0.58380002 -0.72210002 0.57380003 0.1574 -0.80369997 0.69410002 0.58420002 0.42070001
		 0.54320002 0.70899999 0.44980001 0.53780001 0.289 -0.792 0.57380003 0.1574 -0.80369997
		 0.49059999 0.34540001 -0.80000001 0.80059999 0.1934 -0.56709999 0.4668 -0.73619998
		 -0.49000001 -0.16580001 -0.63770002 -0.75220001 -0.31740001 0.1122 0.94160002 0.7956
		 0.43040001 0.42640001 0.79809999 0.28799999 0.52929997 -0.31850001 0.1621 0.9339
		 0.54320002 0.70899999 0.44980001 0.69410002 0.58420002 0.42070001 -0.2667 0.047600001
		 0.96259999 -0.278 -0.071699999 0.95789999 0.77740002 0.4601 0.42879999 0.47850001
		 0.7784 0.4064 -0.2247 -0.1009 0.96920002 0.4479 -0.3502 0.82260001 -0.1978 -0.41010001
		 0.89029998 -0.102 -0.99400002 -0.039700001 0.1996 -0.9799 0.0018 -0.084299996 -0.4104
		 0.90799999 0.42039999 -0.9073 -0.0035999999 0.40630001 -0.37819999 -0.83179998 0.79680002
		 0.2042 -0.5686 0.92500001 -0.38 0.0024999999 0.42039999 -0.9073 -0.0035999999 0.92500001
		 -0.38 0.0024999999 0.5855 0.013 0.81059998 0.0167 -0.39289999 0.91939998 0.88249999
		 0.003 0.47029999 0.98299998 -0.044100001 -0.178 -0.25690001 -0.58130002 -0.77209997
		 -0.35170001 -0.93339998 0.070500001 0.29629999 -0.4377 -0.84890002 0.1996 -0.9799
		 0.0018 -0.102 -0.99400002 -0.039700001 0.14669999 -0.46090001 -0.87529999 -0.45120001
		 -0.88819999 -0.087200001 -0.34799999 -0.37040001 0.86119998 -0.35170001 -0.93339998
		 0.070500001 -0.66280001 -0.69590002 -0.2762 -0.78600001 -0.3396 -0.5165 -0.71850002
		 -0.60619998 -0.34110001 -0.6433 -0.75199997 -0.1437 -0.92089999 -0.34060001 -0.18970001
		 -0.66280001 -0.69590002 -0.2762 0.037700001 -0.2572 -0.96560001 -0.046599999 -0.40580001
		 -0.91280001 -0.45120001 -0.88819999 -0.087200001 -0.1999 -0.308 0.93019998 0.0691
		 0.79879999 0.5977 0.27770001 0.7166 0.63980001 -0.32570001 -0.36300001 0.87300003
		 0.84600002 -0.1213 0.51910001 0.43239999 0.60329998 0.67009997 0.65719998 0.38940001
		 -0.64539999 0.98299998 -0.044100001 -0.178 0.27770001 0.7166 0.63980001 0.0691 0.79879999
		 0.5977 0.31470001 0.616 -0.72210002 0.50529999 0.53320003 -0.6785 0.14480001 -0.56120002
		 -0.81489998 -0.0337 -0.56819999 -0.8222 0.50529999 0.53320003 -0.6785 0.31470001
		 0.616 -0.72210002 -0.20209999 0.80800003 0.55339998 -0.1214 -0.29530001 0.94770002
		 0.55680001 0.035700001 0.82980001 0.13070001 0.81660002 0.56220001 -0.20209999 0.80800003
		 0.55339998 0.13070001 0.81660002 0.56220001 0.4007 0.73940003 -0.54100001 0.1071
		 0.66320002 -0.74070001 0.85219997 -0.121 -0.50910002 0.4007 0.73940003 -0.54100001
		 0.13070001 0.81660002 0.56220001 0.55680001 0.035700001 0.82980001 0.85219997 -0.121
		 -0.50910002 0.3125 -0.54640001 -0.77700001 0.1071 0.66320002 -0.74070001 0.4007 0.73940003
		 -0.54100001 -0.78600001 -0.3396 -0.5165 -0.027799999 -0.27509999 -0.96100003 0.0052999998
		 -0.31169999 -0.95020002 -0.71850002 -0.60619998 -0.34110001;
	setAttr ".n[664:829]" -type "float3"  -0.2033 -0.45359999 -0.86769998 -0.25690001
		 -0.58130002 -0.77209997 0.98299998 -0.044100001 -0.178 0.65719998 0.38940001 -0.64539999
		 0.68449998 0.3337 -0.64819998 -0.27939999 -0.50800002 -0.81480002 -0.4104 -0.83109999
		 -0.37529999 0.97170001 -0.097499996 -0.21510001 0.84600002 -0.1213 0.51910001 -0.34999999
		 -0.62330002 0.69919997 -0.47499999 -0.2492 0.84399998 0.43239999 0.60329998 0.67009997
		 0.97219998 0.1269 0.19660001 0.97189999 0.23459999 -0.02 0.31799999 0.58109999 0.74919999
		 0.2983 0.33199999 0.89490002 0.6311 0.50980002 -0.58459997 0.47799999 0.68290001
		 0.55239999 0.5485 -0.2332 0.80299997 0.70450002 -0.45289999 -0.54640001 -0.66280001
		 -0.69590002 -0.2762 -0.71850002 -0.60619998 -0.34110001 0.0052999998 -0.31169999
		 -0.95020002 0.037700001 -0.2572 -0.96560001 -0.66280001 -0.69590002 -0.2762 -0.35170001
		 -0.93339998 0.070500001 -0.6433 -0.75199997 -0.1437 -0.71850002 -0.60619998 -0.34110001
		 -0.81440002 -0.57929999 -0.032499999 -0.91909999 -0.39120001 -0.046700001 -0.6433
		 -0.75199997 -0.1437 -0.25690001 -0.58130002 -0.77209997 -0.69379997 -0.70560002 0.14399999
		 -0.91909999 -0.39120001 -0.046700001 -0.81440002 -0.57929999 -0.032499999 -0.34999999
		 -0.62330002 0.69919997 -0.69379997 -0.70560002 0.14399999 -0.4104 -0.83109999 -0.37529999
		 -0.87190002 -0.4858 0.061099999 -0.89429998 -0.44209999 0.068700001 -0.87190002 -0.4858
		 0.061099999 -0.49829999 -0.71270001 0.49380001 -0.77340001 -0.63139999 0.057 -0.89429998
		 -0.44209999 0.068700001 -0.93279999 -0.3017 0.1972 -0.31850001 0.1621 0.9339 -0.26620001
		 0.075800002 0.96090001 -0.92690003 -0.28169999 0.24789999 0.8301 -0.2112 -0.51599997
		 0.76190001 -0.1901 -0.61919999 0.88230002 -0.34740001 -0.31760001 0.92919999 -0.3635
		 0.066399999 0.71609998 -0.67330003 0.1841 0.26980001 -0.92070001 -0.2818 0.0147 -0.74199998
		 0.67019999 0.4197 -0.3867 0.8211 0.88230002 -0.34740001 -0.31760001 0.82990003 -0.40959999
		 -0.37889999 0.8373 -0.54280001 0.065399997 0.92860001 -0.36140001 0.084200002 -0.96310002
		 0.1786 0.20119999 -0.89950001 -0.048999999 -0.43419999 -0.98720002 -0.0108 -0.1593
		 -0.9989 0.046399999 0.0080000004 -0.8926 -0.1346 -0.4303 -0.96310002 0.1786 0.20119999
		 -0.95310003 0.0634 0.296 -0.88190001 -0.1574 -0.4443 0.0052999998 -0.31169999 -0.95020002
		 0.90920001 -0.021400001 -0.41580001 0.82810003 0.32780001 -0.45469999 0.037700001
		 -0.2572 -0.96560001 0.97409999 -0.083999999 0.2098 0.94 -0.2247 -0.25690001 0.89319998
		 0.28749999 -0.3459 0.92570001 0.36250001 0.108 -0.95310003 0.0634 0.296 -0.4752 0.24169999
		 0.84600002 -0.31650001 0.68449998 0.65679997 -0.82029998 0.54210001 0.1822 0.89319998
		 0.28749999 -0.3459 0.94 -0.2247 -0.25690001 0.6049 -0.35190001 -0.71439999 0.56330001
		 0.1099 -0.81889999 0.3576 -0.68400002 0.6358 -0.54350001 -0.59460002 0.59240001 0.032000002
		 -0.99900001 -0.030099999 0.8563 -0.51249999 0.0638 -0.1895 -0.6002 -0.77700001 0.5927
		 -0.3653 -0.71780002 0.55949998 -0.0156 -0.82870001 -0.41980001 -0.067299999 -0.90509999
		 0.4673 -0.044799998 -0.8829 0.49110001 -0.64109999 -0.58969998 -0.34099999 -0.66189998
		 -0.66750002 -0.4007 -0.119 -0.9084 0.55949998 -0.0156 -0.82870001 0.4673 -0.044799998
		 -0.8829 -0.4007 -0.119 -0.9084 -0.41980001 -0.067299999 -0.90509999 -0.75980002 -0.64999998
		 -0.016100001 0.0147 -0.74199998 0.67019999 0.26980001 -0.92070001 -0.2818 -0.1895
		 -0.6002 -0.77700001 0.77170002 -0.51300001 -0.3761 0.71609998 -0.67330003 0.1841
		 0.8373 -0.54280001 0.065399997 0.82990003 -0.40959999 -0.37889999 0.90920001 -0.021400001
		 -0.41580001 0.0052999998 -0.31169999 -0.95020002 -0.027799999 -0.27509999 -0.96100003
		 0.8301 -0.2112 -0.51599997 0.90920001 -0.021400001 -0.41580001 0.8301 -0.2112 -0.51599997
		 0.92919999 -0.3635 0.066399999 0.96929997 -0.1998 0.1433 0.71609998 -0.67330003 0.1841
		 0.90179998 -0.4208 0.0986 0.94669998 -0.3071 0.097499996 0.8373 -0.54280001 0.065399997
		 -0.49720001 0.1349 0.85710001 -0.26620001 0.075800002 0.96090001 0.78259999 -0.069600001
		 0.61870003 0.4197 -0.3867 0.8211 -0.56559998 0.38820001 0.72759998 -0.24510001 0.51270002
		 0.82279998 0.39469999 0.6814 0.6164 0.4648 0.39480001 0.79250002 -0.96310002 0.1786
		 0.20119999 -0.92199999 0.26100001 0.2861 -0.64819998 0.39480001 0.65109998 -0.56559998
		 0.38820001 0.72759998 0.032000002 -0.99900001 -0.030099999 -0.34099999 -0.66189998
		 -0.66750002 0.49110001 -0.64109999 -0.58969998 0.8563 -0.51249999 0.0638 0.71609998
		 -0.67330003 0.1841 0.4197 -0.3867 0.8211 0.78259999 -0.069600001 0.61870003 0.90179998
		 -0.4208 0.0986 0.80059999 0.1934 -0.56709999 0.77740002 0.4601 0.42879999 0.4479
		 -0.3502 0.82260001 0.4668 -0.73619998 -0.49000001 0.92919999 -0.3635 0.066399999
		 0.92860001 -0.36140001 0.084200002 0.96640003 -0.204 0.1564 0.96929997 -0.1998 0.1433
		 0.8373 -0.54280001 0.065399997 0.94669998 -0.3071 0.097499996 0.96640003 -0.204 0.1564
		 0.92860001 -0.36140001 0.084200002 0.82990003 -0.40959999 -0.37889999 0.88230002
		 -0.34740001 -0.31760001 0.90789998 -0.22310001 -0.35479999 0.99669999 0.080700003
		 -0.0125 0.90789998 -0.22310001 -0.35479999 0.51840001 -0.37720001 -0.76749998 0.6049
		 -0.35190001 -0.71439999 0.94 -0.2247 -0.25690001 0.90789998 -0.22310001 -0.35479999
		 0.88230002 -0.34740001 -0.31760001 0.76190001 -0.1901 -0.61919999 0.65350002 -0.3299
		 -0.68129998 -0.3712 -0.58380002 -0.72210002 -0.77600002 -0.56739998 0.27559999;
	setAttr ".n[830:995]" -type "float3"  -0.89359999 -0.3698 0.2545 -0.45410001
		 -0.48010001 -0.75050002 -0.77600002 -0.56739998 0.27559999 -0.2667 0.047600001 0.96259999
		 -0.31740001 0.1122 0.94160002 -0.89359999 -0.3698 0.2545 0.63410002 -0.023 -0.77289999
		 0.7956 0.43040001 0.42640001 0.69410002 0.58420002 0.42070001 0.57380003 0.1574 -0.80369997
		 0.57380003 0.1574 -0.80369997 -0.3712 -0.58380002 -0.72210002 -0.45410001 -0.48010001
		 -0.75050002 0.63410002 -0.023 -0.77289999 -0.2667 0.047600001 0.96259999 0.69410002
		 0.58420002 0.42070001 0.7956 0.43040001 0.42640001 -0.31740001 0.1122 0.94160002
		 -0.16580001 -0.63770002 -0.75220001 -0.51179999 -0.8265 0.23459999 -0.65060002 -0.73199999
		 0.20200001 -0.2386 -0.60369998 -0.76059997 -0.51179999 -0.8265 0.23459999 -0.2247
		 -0.1009 0.96920002 -0.278 -0.071699999 0.95789999 -0.65060002 -0.73199999 0.20200001
		 0.47850001 0.7784 0.4064 0.49059999 0.34540001 -0.80000001 0.53780001 0.289 -0.792
		 0.54320002 0.70899999 0.44980001 0.49059999 0.34540001 -0.80000001 -0.16580001 -0.63770002
		 -0.75220001 -0.2386 -0.60369998 -0.76059997 0.53780001 0.289 -0.792 -0.2247 -0.1009
		 0.96920002 0.47850001 0.7784 0.4064 0.54320002 0.70899999 0.44980001 -0.278 -0.071699999
		 0.95789999 0.38510001 0.6936 0.60890001 0.58639997 0.45339999 -0.67129999 0.68449998
		 0.3337 -0.64819998 0.51859999 0.55650002 0.64910001 0.51859999 0.55650002 0.64910001
		 -0.3786 -0.0614 0.9235 -0.31979999 -0.1107 0.94099998 0.38510001 0.6936 0.60890001
		 -0.27939999 -0.50800002 -0.81480002 0.68449998 0.3337 -0.64819998 0.58639997 0.45339999
		 -0.67129999 -0.1582 -0.5783 -0.80040002 -0.3786 -0.0614 0.9235 -0.82029998 -0.55580002
		 0.13500001 -0.61930001 -0.76700002 0.16779999 -0.31979999 -0.1107 0.94099998 -0.82029998
		 -0.55580002 0.13500001 -0.27939999 -0.50800002 -0.81480002 -0.1582 -0.5783 -0.80040002
		 -0.61930001 -0.76700002 0.16779999 -0.0352 -0.62730002 -0.778 0.45249999 0.5467 -0.70459998
		 0.27599999 0.60750002 -0.74489999 0.1026 -0.64170003 -0.76010001 0.45249999 0.5467
		 -0.70459998 0.2298 0.77219999 0.5923 0.015900001 0.82660002 0.5625 0.27599999 0.60750002
		 -0.74489999 0.2298 0.77219999 0.5923 -0.2897 -0.26519999 0.91960001 -0.1749 -0.31099999
		 0.93419999 0.015900001 0.82660002 0.5625 -0.169 -0.96990001 0.17550001 -0.1749 -0.31099999
		 0.93419999 -0.2897 -0.26519999 0.91960001 -0.39300001 -0.90429997 0.16680001 0.1026
		 -0.64170003 -0.76010001 -0.169 -0.96990001 0.17550001 -0.39300001 -0.90429997 0.16680001
		 -0.0352 -0.62730002 -0.778 -0.45640001 -0.88749999 0.063600004 -0.32570001 -0.36300001
		 0.87300003 -0.47499999 -0.2492 0.84399998 -0.67970002 -0.73339999 0.0070000002 -0.0337
		 -0.56819999 -0.8222 -0.45640001 -0.88749999 0.063600004 -0.67970002 -0.73339999 0.0070000002
		 -0.2033 -0.45359999 -0.86769998 0.43239999 0.60329998 0.67009997 -0.47499999 -0.2492
		 0.84399998 -0.32570001 -0.36300001 0.87300003 0.27770001 0.7166 0.63980001 0.65719998
		 0.38940001 -0.64539999 0.43239999 0.60329998 0.67009997 0.27770001 0.7166 0.63980001
		 0.50529999 0.53320003 -0.6785 -0.2033 -0.45359999 -0.86769998 0.65719998 0.38940001
		 -0.64539999 0.50529999 0.53320003 -0.6785 -0.0337 -0.56819999 -0.8222 0.13240001
		 -0.97100002 0.1991 -0.1214 -0.29530001 0.94770002 -0.1999 -0.308 0.93019998 -0.16140001
		 -0.97670001 0.1418 0.3125 -0.54640001 -0.77700001 0.13240001 -0.97100002 0.1991 -0.16140001
		 -0.97670001 0.1418 0.14480001 -0.56120002 -0.81489998 -0.1214 -0.29530001 0.94770002
		 -0.20209999 0.80800003 0.55339998 0.0691 0.79879999 0.5977 -0.1999 -0.308 0.93019998
		 0.31470001 0.616 -0.72210002 0.0691 0.79879999 0.5977 -0.20209999 0.80800003 0.55339998
		 0.1071 0.66320002 -0.74070001 0.1071 0.66320002 -0.74070001 0.3125 -0.54640001 -0.77700001
		 0.14480001 -0.56120002 -0.81489998 0.31470001 0.616 -0.72210002 0.0070000002 0.7119
		 0.7022 0.28780001 0.74910003 -0.59670001 0.56800002 0.5819 -0.58209997 0.27509999
		 0.60210001 0.74949998 -0.046599999 -0.40580001 -0.91280001 0.56800002 0.5819 -0.58209997
		 0.28780001 0.74910003 -0.59670001 0.14669999 -0.46090001 -0.87529999 -0.1978 -0.41010001
		 0.89029998 0.0070000002 0.7119 0.7022 0.27509999 0.60210001 0.74949998 -0.34799999
		 -0.37040001 0.86119998 -0.34799999 -0.37040001 0.86119998 -0.45120001 -0.88819999
		 -0.087200001 -0.102 -0.99400002 -0.039700001 -0.1978 -0.41010001 0.89029998 -0.45120001
		 -0.88819999 -0.087200001 -0.046599999 -0.40580001 -0.91280001 0.14669999 -0.46090001
		 -0.87529999 -0.102 -0.99400002 -0.039700001 0.081 0.70889997 -0.70069999 -0.18719999
		 0.74830002 0.6365 -0.32839999 0.71600002 0.61610001 -0.052499998 0.68989998 -0.722
		 0.29629999 -0.4377 -0.84890002 0.081 0.70889997 -0.70069999 -0.052499998 0.68989998
		 -0.722 0.40630001 -0.37819999 -0.83179998 0.0167 -0.39289999 0.91939998 -0.32839999
		 0.71600002 0.61610001 -0.18719999 0.74830002 0.6365 -0.084299996 -0.4104 0.90799999
		 0.42039999 -0.9073 -0.0035999999 0.0167 -0.39289999 0.91939998 -0.084299996 -0.4104
		 0.90799999 0.1996 -0.9799 0.0018 0.1996 -0.9799 0.0018 0.29629999 -0.4377 -0.84890002
		 0.40630001 -0.37819999 -0.83179998 0.42039999 -0.9073 -0.0035999999 0.51840001 -0.37720001
		 -0.76749998 0.65350002 -0.3299 -0.68129998 -0.1365 -0.34020001 -0.93040001 0.30989999
		 -0.26539999 -0.91299999 0.26449999 0.96170002 0.072300002 0.4596 0.6024 0.65259999
		 0.92570001 0.36250001 0.108 0.4824 0.86669999 -0.1268;
	setAttr ".n[996:1161]" -type "float3"  -0.062799998 0.99489999 0.078900002 -0.31650001
		 0.68449998 0.65679997 0.4596 0.6024 0.65259999 0.26449999 0.96170002 0.072300002
		 -0.2802 0.95609999 -0.085600004 -0.82029998 0.54210001 0.1822 -0.31650001 0.68449998
		 0.65679997 -0.062799998 0.99489999 0.078900002 -0.058600001 0.73949999 -0.6706 -0.2446
		 0.1565 -0.9569 -0.7586 0.41119999 -0.5054 -0.22679999 0.92159998 -0.315 0.4824 0.86669999
		 -0.1268 0.92570001 0.36250001 0.108 0.89319998 0.28749999 -0.3459 0.50919998 0.80119997
		 -0.3143 0.39590001 0.76340002 -0.5104 0.56330001 0.1099 -0.81889999 -0.2446 0.1565
		 -0.9569 -0.058600001 0.73949999 -0.6706 -0.22679999 0.92159998 -0.315 -0.7586 0.41119999
		 -0.5054 -0.82029998 0.54210001 0.1822 -0.2802 0.95609999 -0.085600004 0.50919998
		 0.80119997 -0.3143 0.89319998 0.28749999 -0.3459 0.56330001 0.1099 -0.81889999 0.39590001
		 0.76340002 -0.5104 -0.68099999 -0.2388 -0.69230002 -0.8926 -0.1346 -0.4303 -0.88190001
		 -0.1574 -0.4443 -0.6516 -0.065399997 -0.75569999 -0.6516 -0.065399997 -0.75569999
		 -0.085100003 0.0524 -0.995 -0.1328 -0.42840001 -0.89380002 -0.68099999 -0.2388 -0.69230002
		 0.30989999 -0.26539999 -0.91299999 -0.1328 -0.42840001 -0.89380002 -0.085100003 0.0524
		 -0.995 0.35710001 -0.12899999 -0.92510003 0.30989999 -0.26539999 -0.91299999 0.35710001
		 -0.12899999 -0.92510003 0.6049 -0.35190001 -0.71439999 0.51840001 -0.37720001 -0.76749998
		 -0.091300003 -0.084700003 -0.99220002 -0.027899999 -0.1837 -0.98259997 -0.78049999
		 -0.0678 -0.62150002 -0.89950001 -0.048999999 -0.43419999 0.76190001 -0.1901 -0.61919999
		 -0.027899999 -0.1837 -0.98259997 -0.091300003 -0.084700003 -0.99220002 0.65350002
		 -0.3299 -0.68129998 0.4249 -0.42390001 -0.79979998 0.31439999 -0.37459999 -0.87230003
		 0.86140001 -0.49939999 -0.092600003 0.89300001 -0.44949999 0.0221 -0.60509998 -0.1777
		 -0.77609998 -0.63440001 -0.1039 -0.76599997 0.31439999 -0.37459999 -0.87230003 0.4249
		 -0.42390001 -0.79979998 -0.63440001 -0.1039 -0.76599997 -0.60509998 -0.1777 -0.77609998
		 -0.99449998 0.087700002 0.057999998 -0.99440002 0.1021 0.0286 -0.52090001 0.0889
		 0.84899998 -0.59100002 0.065099999 0.80400002 -0.99440002 0.1021 0.0286 -0.99449998
		 0.087700002 0.057999998 0.4921 -0.1184 0.8624 0.48019999 -0.2006 0.85390002 -0.59100002
		 0.065099999 0.80400002 -0.52090001 0.0889 0.84899998 0.89300001 -0.44949999 0.0221
		 0.86140001 -0.49939999 -0.092600003 0.48019999 -0.2006 0.85390002 0.4921 -0.1184
		 0.8624 -0.99449998 0.087700002 0.057999998 -0.99830002 0.0568 0.015900001 -0.58170003
		 0.1327 0.80250001 -0.52090001 0.0889 0.84899998 -0.58170003 0.1327 0.80250001 0.38859999
		 0.0052999998 0.92140001 0.4921 -0.1184 0.8624 -0.52090001 0.0889 0.84899998 0.38859999
		 0.0052999998 0.92140001 0.92479998 -0.30950001 0.22139999 0.89300001 -0.44949999
		 0.0221 0.4921 -0.1184 0.8624 -0.62239999 -0.2359 -0.74629998 -0.99830002 0.0568 0.015900001
		 -0.99449998 0.087700002 0.057999998 -0.60509998 -0.1777 -0.77609998 0.4508 -0.4589
		 -0.76569998 -0.62239999 -0.2359 -0.74629998 -0.60509998 -0.1777 -0.77609998 0.4249
		 -0.42390001 -0.79979998 0.4249 -0.42390001 -0.79979998 0.89300001 -0.44949999 0.0221
		 0.92479998 -0.30950001 0.22139999 0.4508 -0.4589 -0.76569998 -0.7902 -0.1698 -0.58890003
		 0.28650001 -0.9012 -0.32519999 0.3865 -0.17479999 -0.90560001 0.28569999 -0.26609999
		 -0.9206 -0.0735 0.44999999 0.88999999 -0.27950001 0.083300002 0.95649999 -0.84039998
		 0.36390001 0.40169999 -0.65090001 0.61989999 0.4382 -0.93910003 0.1083 0.32600001
		 -0.37029999 0.0757 0.92580003 -0.25780001 0.42840001 0.866 -0.63609999 0.69690001
		 0.33129999 -0.19400001 0.4278 -0.88279998 -0.46630001 0.088500001 -0.88020003 0.39430001
		 -0.27759999 -0.8761 0.5388 -0.1244 -0.83319998 -0.65090001 0.61989999 0.4382 -0.84039998
		 0.36390001 0.40169999 -0.85089999 0.41429999 -0.32300001 -0.55970001 0.73760003 -0.37760001
		 0.89960003 -0.40149999 0.1718 0.46450001 -0.31900001 0.82609999 0.62279999 -0.0955
		 0.77649999 0.95069999 -0.23549999 0.2017 0.92580003 -0.20290001 -0.31900001 0.8427
		 -0.4149 -0.34310001 0.89960003 -0.40149999 0.1718 0.95069999 -0.23549999 0.2017 -0.55970001
		 0.73760003 -0.37760001 -0.85089999 0.41429999 -0.32300001 -0.46630001 0.088500001
		 -0.88020003 -0.19400001 0.4278 -0.88279998 0.39430001 -0.27759999 -0.8761 0.8427
		 -0.4149 -0.34310001 0.92580003 -0.20290001 -0.31900001 0.5388 -0.1244 -0.83319998
		 -0.0735 0.44999999 0.88999999 -0.25780001 0.42840001 0.866 0.59799999 -0.019099999
		 0.80129999 0.62279999 -0.0955 0.77649999 -0.63609999 0.69690001 0.33129999 -0.25780001
		 0.42840001 0.866 -0.0735 0.44999999 0.88999999 -0.65090001 0.61989999 0.4382 0.95120001
		 -0.27270001 0.1445 0.59799999 -0.019099999 0.80129999 0.41980001 -0.2906 0.8599 0.80830002
		 -0.52630001 0.264 -0.37189999 -0.1496 0.91610003 0.3319 -0.57270002 0.74959999 0.41980001
		 -0.2906 0.8599 -0.37029999 0.0757 0.92580003 -0.90930003 0.2226 -0.35170001 -0.89499998
		 0.25510001 0.366 -0.93910003 0.1083 0.32600001 -0.92760003 0.14470001 -0.34459999
		 -0.3215 0.078400001 -0.9436 -0.147 0.34470001 -0.9271 0.48879999 -0.079599999 -0.86879998
		 0.4271 -0.2938 -0.85509998 0.69410002 -0.70240003 0.1577 0.59500003 -0.75379997 -0.2789
		 0.81569999 -0.39629999 -0.42140001 0.80830002 -0.52630001 0.264 -0.92760003 0.14470001
		 -0.34459999 -0.58670002 0.74440002 -0.3188;
	setAttr ".n[1162:1327]" -type "float3"  -0.147 0.34470001 -0.9271 -0.3215 0.078400001
		 -0.9436 0.81569999 -0.39629999 -0.42140001 0.59500003 -0.75379997 -0.2789 0.23010001
		 -0.60390002 -0.76310003 0.4271 -0.2938 -0.85509998 -0.90979999 0.2714 0.3141 -0.37189999
		 -0.1496 0.91610003 -0.37029999 0.0757 0.92580003 -0.89499998 0.25510001 0.366 -0.921
		 0.2094 -0.3285 -0.90979999 0.2714 0.3141 -0.89499998 0.25510001 0.366 -0.90930003
		 0.2226 -0.35170001 -0.4075 -0.25960001 -0.87550002 -0.921 0.2094 -0.3285 -0.90930003
		 0.2226 -0.35170001 -0.3215 0.078400001 -0.9436 -0.7956 -0.19400001 0.57389998 -0.49270001
		 -0.0814 0.8664 -0.3973 -0.5625 0.72500002 -0.93190002 -0.1661 0.32260001 -0.7956
		 -0.19400001 0.57389998 -0.3973 -0.5625 0.72500002 -0.55299997 0.28560001 0.7827 -0.49270001
		 -0.0814 0.8664 -0.60589999 0.38789999 0.69459999 -0.37940001 -0.91820002 0.1136 0.91930002
		 -0.35800001 0.16339999 0.28650001 -0.9012 -0.32519999 -0.3215 0.078400001 -0.9436
		 -0.90930003 0.2226 -0.35170001 -0.92760003 0.14470001 -0.34459999 -0.69379997 -0.70560002
		 0.14399999 -0.89429998 -0.44209999 0.068700001 -0.95829999 -0.28569999 0.0038000001
		 -0.95829999 -0.28569999 0.0038000001 -0.89429998 -0.44209999 0.068700001 -0.77340001
		 -0.63139999 0.057 -0.1365 -0.34020001 -0.93040001 -0.091300003 -0.084700003 -0.99220002
		 -0.89950001 -0.048999999 -0.43419999 -0.96310002 0.1786 0.20119999 -0.9989 0.046399999
		 0.0080000004 -0.92199999 0.26100001 0.2861 -0.085100003 0.0524 -0.995 -0.6516 -0.065399997
		 -0.75569999 -0.16329999 -0.19400001 -0.9673 -0.91909999 -0.39120001 -0.046700001
		 -0.92089999 -0.34060001 -0.18970001 -0.6433 -0.75199997 -0.1437 0.92919999 -0.3635
		 0.066399999 0.88230002 -0.34740001 -0.31760001 0.92860001 -0.36140001 0.084200002
		 0.89179999 0.0616 0.4483 0.97170001 -0.097499996 -0.21510001 0.94669998 -0.3071 0.097499996
		 0.84600002 -0.1213 0.51910001 0.98299998 -0.044100001 -0.178 0.96640003 -0.204 0.1564
		 0.6049 -0.35190001 -0.71439999 0.35710001 -0.12899999 -0.92510003 -0.16329999 -0.19400001
		 -0.9673 -0.1365 -0.34020001 -0.93040001 0.65350002 -0.3299 -0.68129998 -0.091300003
		 -0.084700003 -0.99220002 -0.98720002 -0.0108 -0.1593 -0.89950001 -0.048999999 -0.43419999
		 -0.78049999 -0.0678 -0.62150002 0.92500001 -0.38 0.0024999999 0.79680002 0.2042 -0.5686
		 0.5855 0.013 0.81059998 0.74860001 -0.63520002 0.19 0.70450002 -0.45289999 -0.54640001
		 0.5485 -0.2332 0.80299997 0.78259999 -0.58609998 0.2097 0.85219997 -0.121 -0.50910002
		 0.55680001 0.035700001 0.82980001 -0.0317 -0.9637 0.2651 0.4668 -0.73619998 -0.49000001
		 0.4479 -0.3502 0.82260001 0.71609998 -0.67330003 0.1841 0.77170002 -0.51300001 -0.3761
		 0.26980001 -0.92070001 -0.2818 -0.64819998 0.39480001 0.65109998 -0.24510001 0.51270002
		 0.82279998 -0.56559998 0.38820001 0.72759998 -0.4104 -0.83109999 -0.37529999 -0.69379997
		 -0.70560002 0.14399999 -0.34999999 -0.62330002 0.69919997 -0.35170001 -0.93339998
		 0.070500001 -0.25690001 -0.58130002 -0.77209997 -0.6433 -0.75199997 -0.1437 -0.50999999
		 -0.68110001 -0.52530003 -0.77340001 -0.63139999 0.057 -0.49829999 -0.71270001 0.49380001
		 0.99669999 0.080700003 -0.0125 0.3924 0.3567 0.84780002 0.4648 0.39480001 0.79250002
		 -0.1365 -0.34020001 -0.93040001 -0.68099999 -0.2388 -0.69230002 -0.1328 -0.42840001
		 -0.89380002 0.51840001 -0.37720001 -0.76749998 0.90789998 -0.22310001 -0.35479999
		 0.65350002 -0.3299 -0.68129998 -0.16329999 -0.19400001 -0.9673 0.35710001 -0.12899999
		 -0.92510003 -0.085100003 0.0524 -0.995 0.30989999 -0.26539999 -0.91299999 -0.1365
		 -0.34020001 -0.93040001 -0.1328 -0.42840001 -0.89380002 -0.16329999 -0.19400001 -0.9673
		 -0.6516 -0.065399997 -0.75569999 -0.88190001 -0.1574 -0.4443 -0.68099999 -0.2388
		 -0.69230002 -0.1365 -0.34020001 -0.93040001 -0.89950001 -0.048999999 -0.43419999
		 0.3924 0.3567 0.84780002 -0.56559998 0.38820001 0.72759998 0.4648 0.39480001 0.79250002
		 -0.96310002 0.1786 0.20119999 -0.8926 -0.1346 -0.4303 -0.89950001 -0.048999999 -0.43419999
		 -0.8926 -0.1346 -0.4303 -0.68099999 -0.2388 -0.69230002 -0.89950001 -0.048999999
		 -0.43419999 0.7148 -0.46470001 -0.5226 0.26980001 -0.92070001 -0.2818 0.77170002
		 -0.51300001 -0.3761 -0.49270001 -0.0814 0.8664 0.2308 -0.38460001 0.89380002 -0.3973
		 -0.5625 0.72500002 -0.37029999 0.0757 0.92580003 -0.93910003 0.1083 0.32600001 -0.89499998
		 0.25510001 0.366 -0.70310003 -0.69749999 -0.13860001 -0.5772 -0.77380002 -0.26089999
		 -0.35910001 -0.93290001 0.0283 -0.4296 -0.75779998 0.4912 -0.73180002 -0.63959998
		 0.2353 -0.35910001 -0.93290001 0.0283 -0.045899998 -0.97390002 0.22239999 -0.4296
		 -0.75779998 0.4912 -0.35910001 -0.93290001 0.0283 -0.067500003 -0.9975 -0.0185 -0.045899998
		 -0.97390002 0.22239999 -0.35910001 -0.93290001 0.0283 -0.5772 -0.77380002 -0.26089999
		 -0.31209999 -0.93730003 -0.1549 -0.35910001 -0.93290001 0.0283 -0.2261 -0.95340002
		 -0.1998 -0.067500003 -0.9975 -0.0185 -0.35910001 -0.93290001 0.0283 -0.73180002 -0.63959998
		 0.2353 -0.70310003 -0.69749999 -0.13860001 -0.35910001 -0.93290001 0.0283 -0.31209999
		 -0.93730003 -0.1549 -0.2261 -0.95340002 -0.1998 -0.35910001 -0.93290001 0.0283 0.93190002
		 -0.1661 0.32260001 0.9558 -0.2305 0.1825 0.37940001 -0.91820002 0.1136 0.3973 -0.5625
		 0.72500002 0.7227 0.5948 -0.35210001 0.63779998 0.75269997 -0.16320001 0.5589 0.74150002
		 0.37110001;
	setAttr ".n[1328:1493]" -type "float3"  0.69989997 0.59420002 0.39629999 0.31889999
		 0.3175 -0.89300001 0.1171 0.049899999 -0.99190003 0.033500001 -0.030099999 -0.99900001
		 0.4646 0.4296 -0.7744 0.80110002 0.47659999 0.36199999 0.69989997 0.59420002 0.39629999
		 0.55299997 0.28560001 0.7827 0.4156 0.2552 0.87300003 0.69989997 0.59420002 0.39629999
		 0.80110002 0.47659999 0.36199999 0.83149999 0.49439999 -0.2534 0.7227 0.5948 -0.35210001
		 0.7227 0.5948 -0.35210001 0.83149999 0.49439999 -0.2534 0.32359999 0.34869999 -0.87959999
		 0.31889999 0.3175 -0.89300001 0.1171 0.049899999 -0.99190003 0.31889999 0.3175 -0.89300001
		 0.32359999 0.34869999 -0.87959999 -0.3865 -0.17479999 -0.90560001 -0.94330001 -0.20029999
		 -0.26460001 -0.28650001 -0.9012 -0.32519999 -0.3865 -0.17479999 -0.90560001 -0.49509999
		 -0.068700001 -0.86610001 -0.49509999 -0.068700001 -0.86610001 -0.3865 -0.17479999
		 -0.90560001 0.32359999 0.34869999 -0.87959999 0.3811 0.26370001 -0.88609999 0.80129999
		 0.51899999 -0.29769999 0.3811 0.26370001 -0.88609999 0.32359999 0.34869999 -0.87959999
		 0.83149999 0.49439999 -0.2534 0.76740003 0.51179999 0.3863 0.80129999 0.51899999
		 -0.29769999 0.83149999 0.49439999 -0.2534 0.80110002 0.47659999 0.36199999 0.76740003
		 0.51179999 0.3863 0.80110002 0.47659999 0.36199999 0.4156 0.2552 0.87300003 0.2811
		 0.23639999 0.93010002 0.3973 -0.5625 0.72500002 0.37940001 -0.91820002 0.1136 -0.91930002
		 -0.35800001 0.16339999 -0.2308 -0.38460001 0.89380002 -0.2308 -0.38460001 0.89380002
		 -0.91930002 -0.35800001 0.16339999 -0.96100003 -0.1745 0.2145 -0.53619999 -0.14749999
		 0.83109999 0.4156 0.2552 0.87300003 -0.2308 -0.38460001 0.89380002 -0.53619999 -0.14749999
		 0.83109999 0.2811 0.23639999 0.93010002 0.84039998 0.36390001 0.40169999 0.76740003
		 0.51179999 0.3863 0.2811 0.23639999 0.93010002 0.27950001 0.083300002 0.95649999
		 0.76740003 0.51179999 0.3863 0.84039998 0.36390001 0.40169999 0.85089999 0.41429999
		 -0.32300001 0.80129999 0.51899999 -0.29769999 0.3811 0.26370001 -0.88609999 0.80129999
		 0.51899999 -0.29769999 0.85089999 0.41429999 -0.32300001 0.46630001 0.088500001 -0.88020003
		 0.3811 0.26370001 -0.88609999 0.46630001 0.088500001 -0.88020003 -0.39430001 -0.27759999
		 -0.8761 -0.49509999 -0.068700001 -0.86610001 -0.94330001 -0.20029999 -0.26460001
		 -0.49509999 -0.068700001 -0.86610001 -0.39430001 -0.27759999 -0.8761 -0.8427 -0.4149
		 -0.34310001 -0.94330001 -0.20029999 -0.26460001 -0.8427 -0.4149 -0.34310001 -0.89960003
		 -0.40149999 0.1718 -0.96100003 -0.1745 0.2145 -0.5388 -0.1244 -0.83319998 0.19400001
		 0.4278 -0.88279998 0.147 0.34470001 -0.9271 -0.48879999 -0.079599999 -0.86879998
		 0.55970001 0.73760003 -0.37760001 0.65090001 0.61989999 0.4382 0.63609999 0.69690001
		 0.33129999 0.58670002 0.74440002 -0.3188 0.27950001 0.083300002 0.95649999 0.2811
		 0.23639999 0.93010002 -0.53619999 -0.14749999 0.83109999 -0.46450001 -0.31900001
		 0.82609999 -0.89960003 -0.40149999 0.1718 -0.46450001 -0.31900001 0.82609999 -0.53619999
		 -0.14749999 0.83109999 -0.96100003 -0.1745 0.2145 -0.95069999 -0.23549999 0.2017
		 -0.95120001 -0.27270001 0.1445 -0.59799999 -0.019099999 0.80129999 -0.62279999 -0.0955
		 0.77649999 -0.80830002 -0.52630001 0.264 -0.69410002 -0.70240003 0.1577 -0.3319 -0.57270002
		 0.74959999 -0.41980001 -0.2906 0.8599 0.37029999 0.0757 0.92580003 0.25780001 0.42840001
		 0.866 -0.59799999 -0.019099999 0.80129999 -0.41980001 -0.2906 0.8599 0.92760003 0.14470001
		 -0.34459999 0.58670002 0.74440002 -0.3188 0.63609999 0.69690001 0.33129999 0.93910003
		 0.1083 0.32600001 0.3215 0.078400001 -0.9436 0.4075 -0.25960001 -0.87550002 -0.23010001
		 -0.60390002 -0.76310003 -0.4271 -0.2938 -0.85509998 0.67970002 -0.72219998 -0.12819999
		 0.57179999 -0.7852 -0.2375 0.4075 -0.25960001 -0.87550002 0.921 0.2094 -0.3285 0.42770001
		 -0.77340001 0.46790001 0.71569997 -0.66000003 0.2282 0.90979999 0.2714 0.3141 0.37189999
		 -0.1496 0.91610003 0.42770001 -0.77340001 0.46790001 0.37189999 -0.1496 0.91610003
		 -0.3319 -0.57270002 0.74959999 0.065200001 -0.97750002 0.2005 0.1073 -0.99400002
		 -0.019400001 0.065200001 -0.97750002 0.2005 -0.3319 -0.57270002 0.74959999 -0.69410002
		 -0.70240003 0.1577 -0.23010001 -0.60390002 -0.76310003 0.4075 -0.25960001 -0.87550002
		 0.57179999 -0.7852 -0.2375 0.32949999 -0.93720001 -0.1143 -0.69410002 -0.70240003
		 0.1577 -0.59500003 -0.75379997 -0.2789 0.26030001 -0.94859999 -0.17990001 0.1073
		 -0.99400002 -0.019400001 -0.89459997 -0.2035 -0.3978 -0.95120001 -0.27270001 0.1445
		 -0.95069999 -0.23549999 0.2017 -0.92580003 -0.20290001 -0.31900001 0.58670002 0.74440002
		 -0.3188 0.147 0.34470001 -0.9271 0.19400001 0.4278 -0.88279998 0.55970001 0.73760003
		 -0.37760001 -0.80830002 -0.52630001 0.264 -0.95120001 -0.27270001 0.1445 -0.89459997
		 -0.2035 -0.3978 -0.81569999 -0.39629999 -0.42140001 0.55299997 0.28560001 0.7827
		 0.49270001 -0.0814 0.8664 -0.2308 -0.38460001 0.89380002 0.4156 0.2552 0.87300003
		 0.71569997 -0.66000003 0.2282 0.67970002 -0.72219998 -0.12819999 0.921 0.2094 -0.3285
		 0.90979999 0.2714 0.3141 -0.28650001 -0.9012 -0.32519999 -0.94330001 -0.20029999
		 -0.26460001 -0.96100003 -0.1745 0.2145 -0.91930002 -0.35800001 0.16339999 0.9788
		 -0.18529999 -0.086800002 0.7902 -0.1698 -0.58890003 -0.28650001 -0.9012 -0.32519999
		 0.37940001 -0.91820002 0.1136 0.7227 0.5948 -0.35210001;
	setAttr ".n[1494:1659]" -type "float3"  0.31889999 0.3175 -0.89300001 0.4646
		 0.4296 -0.7744 0.63779998 0.75269997 -0.16320001 -0.5388 -0.1244 -0.83319998 -0.48879999
		 -0.079599999 -0.86879998 -0.89459997 -0.2035 -0.3978 -0.92580003 -0.20290001 -0.31900001
		 0.32949999 -0.93720001 -0.1143 0.26030001 -0.94859999 -0.17990001 -0.59500003 -0.75379997
		 -0.2789 -0.23010001 -0.60390002 -0.76310003 0.69989997 0.59420002 0.39629999 0.5589
		 0.74150002 0.37110001 0.60589999 0.38789999 0.69459999 0.55299997 0.28560001 0.7827
		 0.27950001 0.083300002 0.95649999 -0.46450001 -0.31900001 0.82609999 -0.62279999
		 -0.0955 0.77649999 0.0735 0.44999999 0.88999999 -0.4271 -0.2938 -0.85509998 -0.81569999
		 -0.39629999 -0.42140001 -0.89459997 -0.2035 -0.3978 -0.48879999 -0.079599999 -0.86879998
		 0.033500001 -0.030099999 -0.99900001 0.1171 0.049899999 -0.99190003 -0.3865 -0.17479999
		 -0.90560001 -0.28569999 -0.26609999 -0.9206 0.7902 -0.1698 -0.58890003 -0.28569999
		 -0.26609999 -0.9206 -0.3865 -0.17479999 -0.90560001 -0.28650001 -0.9012 -0.32519999
		 0.0735 0.44999999 0.88999999 0.65090001 0.61989999 0.4382 0.84039998 0.36390001 0.40169999
		 0.27950001 0.083300002 0.95649999 0.93910003 0.1083 0.32600001 0.63609999 0.69690001
		 0.33129999 0.25780001 0.42840001 0.866 0.37029999 0.0757 0.92580003 0.19400001 0.4278
		 -0.88279998 -0.5388 -0.1244 -0.83319998 -0.39430001 -0.27759999 -0.8761 0.46630001
		 0.088500001 -0.88020003 0.65090001 0.61989999 0.4382 0.55970001 0.73760003 -0.37760001
		 0.85089999 0.41429999 -0.32300001 0.84039998 0.36390001 0.40169999 -0.89960003 -0.40149999
		 0.1718 -0.95069999 -0.23549999 0.2017 -0.62279999 -0.0955 0.77649999 -0.46450001
		 -0.31900001 0.82609999 -0.92580003 -0.20290001 -0.31900001 -0.95069999 -0.23549999
		 0.2017 -0.89960003 -0.40149999 0.1718 -0.8427 -0.4149 -0.34310001 0.55970001 0.73760003
		 -0.37760001 0.19400001 0.4278 -0.88279998 0.46630001 0.088500001 -0.88020003 0.85089999
		 0.41429999 -0.32300001 -0.39430001 -0.27759999 -0.8761 -0.5388 -0.1244 -0.83319998
		 -0.92580003 -0.20290001 -0.31900001 -0.8427 -0.4149 -0.34310001 0.0735 0.44999999
		 0.88999999 -0.62279999 -0.0955 0.77649999 -0.59799999 -0.019099999 0.80129999 0.25780001
		 0.42840001 0.866 0.63609999 0.69690001 0.33129999 0.65090001 0.61989999 0.4382 0.0735
		 0.44999999 0.88999999 0.25780001 0.42840001 0.866 -0.95120001 -0.27270001 0.1445
		 -0.80830002 -0.52630001 0.264 -0.41980001 -0.2906 0.8599 -0.59799999 -0.019099999
		 0.80129999 0.37189999 -0.1496 0.91610003 0.37029999 0.0757 0.92580003 -0.41980001
		 -0.2906 0.8599 -0.3319 -0.57270002 0.74959999 0.90930003 0.2226 -0.35170001 0.92760003
		 0.14470001 -0.34459999 0.93910003 0.1083 0.32600001 0.89499998 0.25510001 0.366 0.3215
		 0.078400001 -0.9436 -0.4271 -0.2938 -0.85509998 -0.48879999 -0.079599999 -0.86879998
		 0.147 0.34470001 -0.9271 -0.69410002 -0.70240003 0.1577 -0.80830002 -0.52630001 0.264
		 -0.81569999 -0.39629999 -0.42140001 -0.59500003 -0.75379997 -0.2789 0.92760003 0.14470001
		 -0.34459999 0.3215 0.078400001 -0.9436 0.147 0.34470001 -0.9271 0.58670002 0.74440002
		 -0.3188 -0.81569999 -0.39629999 -0.42140001 -0.4271 -0.2938 -0.85509998 -0.23010001
		 -0.60390002 -0.76310003 -0.59500003 -0.75379997 -0.2789 0.90979999 0.2714 0.3141
		 0.89499998 0.25510001 0.366 0.37029999 0.0757 0.92580003 0.37189999 -0.1496 0.91610003
		 0.921 0.2094 -0.3285 0.90930003 0.2226 -0.35170001 0.89499998 0.25510001 0.366 0.90979999
		 0.2714 0.3141 0.4075 -0.25960001 -0.87550002 0.3215 0.078400001 -0.9436 0.90930003
		 0.2226 -0.35170001 0.921 0.2094 -0.3285 0.7956 -0.19400001 0.57389998 0.3973 -0.5625
		 0.72500002 0.49270001 -0.0814 0.8664 0.93190002 -0.1661 0.32260001 0.3973 -0.5625
		 0.72500002 0.7956 -0.19400001 0.57389998 0.55299997 0.28560001 0.7827 0.60589999
		 0.38789999 0.69459999 0.49270001 -0.0814 0.8664 0.37940001 -0.91820002 0.1136 -0.28650001
		 -0.9012 -0.32519999 -0.91930002 -0.35800001 0.16339999 0.3215 0.078400001 -0.9436
		 0.92760003 0.14470001 -0.34459999 0.90930003 0.2226 -0.35170001 0.49270001 -0.0814
		 0.8664 0.3973 -0.5625 0.72500002 -0.2308 -0.38460001 0.89380002 0.37029999 0.0757
		 0.92580003 0.89499998 0.25510001 0.366 0.93910003 0.1083 0.32600001 0.57179999 -0.7852
		 -0.2375 0.67970002 -0.72219998 -0.12819999 0.36970001 -0.9285 0.034499999 0.71569997
		 -0.66000003 0.2282 0.42770001 -0.77340001 0.46790001 0.36970001 -0.9285 0.034499999
		 0.42770001 -0.77340001 0.46790001 0.065200001 -0.97750002 0.2005 0.36970001 -0.9285
		 0.034499999 0.065200001 -0.97750002 0.2005 0.1073 -0.99400002 -0.019400001 0.36970001
		 -0.9285 0.034499999 0.32949999 -0.93720001 -0.1143 0.57179999 -0.7852 -0.2375 0.36970001
		 -0.9285 0.034499999 0.1073 -0.99400002 -0.019400001 0.26030001 -0.94859999 -0.17990001
		 0.36970001 -0.9285 0.034499999 0.67970002 -0.72219998 -0.12819999 0.71569997 -0.66000003
		 0.2282 0.36970001 -0.9285 0.034499999 0.26030001 -0.94859999 -0.17990001 0.32949999
		 -0.93720001 -0.1143 0.36970001 -0.9285 0.034499999 -0.63529998 -0.0217 0.77200001
		 -0.99250001 -0.1045 0.063100003 -0.1481 0.88249999 0.4463 0.1454 0.98079997 0.1296
		 0.12909999 0.77929997 0.61320001 -0.2859 0.82499999 0.48750001 -0.1235 0.50669998
		 0.85320002 -0.1957 0.42230001 0.88510001 0 0.1469 0.9892 -0.63529998 -0.0217 0.77200001;
	setAttr ".n[1660:1825]" -type "float3"  0.1454 0.98079997 0.1296 0 1 -0.0060000001
		 0.1454 0.98079997 0.1296 -0.1481 0.88249999 0.4463 0.78649998 0.61269999 0.077600002
		 0.61110002 0.51859999 -0.59799999 -0.1481 0.88249999 0.4463 -0.0085000005 0.83899999
		 0.54400003 0.70569998 0.6182 0.34619999 0.78649998 0.61269999 0.077600002 0 1 -0.0060000001
		 0.1454 0.98079997 0.1296 0.61110002 0.51859999 -0.59799999 -0.0137 0.40540001 -0.91399997
		 -0.0085000005 0.83899999 0.54400003 0.12909999 0.77929997 0.61320001 0.56529999 0.67439997
		 0.47499999 0.70569998 0.6182 0.34619999 0.072999999 0.8908 0.44859999 0.99470001
		 -0.087700002 0.053199999 0.63529998 -0.0217 0.77200001 -0.1226 0.98940003 0.078400001
		 -0.1226 0.98940003 0.078400001 0.63529998 -0.0217 0.77200001 0 0.1469 0.9892 0 1
		 -0.0060000001 -0.82590002 0.56029999 -0.061999999 0.072999999 0.8908 0.44859999 -0.1226
		 0.98940003 0.078400001 -0.62589997 0.47999999 -0.61470002 -0.67540002 0.66280001
		 0.32319999 0.1078 0.85229999 0.51190001 0.072999999 0.8908 0.44859999 -0.82590002
		 0.56029999 -0.061999999 -0.62589997 0.47999999 -0.61470002 -0.1226 0.98940003 0.078400001
		 0 1 -0.0060000001 -0.0137 0.40540001 -0.91399997 -0.48980001 0.71960002 0.4921 -0.090400003
		 0.73229998 0.6749 0.1078 0.85229999 0.51190001 -0.67540002 0.66280001 0.32319999
		 -0.1481 0.88249999 0.4463 -0.99250001 -0.1045 0.063100003 -0.82819998 0.55320001
		 0.089900002 0.12909999 0.77929997 0.61320001 -0.0085000005 0.83899999 0.54400003
		 -0.2859 0.82499999 0.48750001 -0.0085000005 0.83899999 0.54400003 -0.82819998 0.55320001
		 0.089900002 -0.2859 0.82499999 0.48750001 -0.090400003 0.73229998 0.6749 0.35479999
		 0.55489999 0.75239998 0.36500001 0.66060001 0.65609998 0.072999999 0.8908 0.44859999
		 0.1078 0.85229999 0.51190001 0.88489997 0.4601 -0.072300002 0.1078 0.85229999 0.51190001
		 -0.090400003 0.73229998 0.6749 0.36500001 0.66060001 0.65609998 0.88489997 0.4601
		 -0.072300002 0.1078 0.85229999 0.51190001 0.36500001 0.66060001 0.65609998 0.99470001
		 -0.087700002 0.053199999 0.072999999 0.8908 0.44859999 0.88489997 0.4601 -0.072300002
		 -0.0085000005 0.83899999 0.54400003 -0.1481 0.88249999 0.4463 -0.82819998 0.55320001
		 0.089900002 -0.1235 0.50669998 0.85320002 -0.2361 0.37099999 0.89810002 -0.1957 0.42230001
		 0.88510001 0.99910003 0.0049999999 -0.042100001 0.99959999 0.0071999999 -0.0284 0.99910003
		 0.032099999 -0.027100001 0.99879998 0.033100002 -0.037 0.34009999 0.42179999 0.8405
		 0.20029999 0.38699999 0.90009999 0.3757 0.3653 0.85170001 0.4355 0.48359999 0.75929999
		 0.3757 0.3653 0.85170001 0.20029999 0.38699999 0.90009999 0.28009999 0.23360001 0.93110001
		 0.50620002 0.1124 0.85500002 0.0029 0.1877 0.98220003 0.38479999 0.14139999 0.91210002
		 0.28009999 0.23360001 0.93110001 0.00039999999 0.241 0.97049999 0.38479999 0.14139999
		 0.91210002 0.0029 0.1877 0.98220003 0.0020999999 -0.067599997 0.99769998 0.435 0.017200001
		 0.90020001 0.0392 -0.389 0.92040002 0.4709 -0.15189999 0.86900002 0.435 0.017200001
		 0.90020001 0.0020999999 -0.067599997 0.99769998 -0.0153 0.42989999 0.90270001 0.00039999999
		 0.241 0.97049999 0.28009999 0.23360001 0.93110001 0.20029999 0.38699999 0.90009999
		 0.066500001 0.39520001 0.91619998 -0.0153 0.42989999 0.90270001 0.20029999 0.38699999
		 0.90009999 0.34009999 0.42179999 0.8405 0.4709 -0.15189999 0.86900002 0.65460002
		 -0.4921 0.57389998 0.64719999 -0.036400001 0.76139998 0.435 0.017200001 0.90020001
		 0.38479999 0.14139999 0.91210002 0.5837 0.026699999 0.81160003 0.50620002 0.1124
		 0.85500002 0.28009999 0.23360001 0.93110001 0.38479999 0.14139999 0.91210002 0.435
		 0.017200001 0.90020001 0.64719999 -0.036400001 0.76139998 0.5837 0.026699999 0.81160003
		 -0.28080001 0.4822 0.82980001 -0.42390001 0.54470003 0.72359997 -0.37779999 0.40759999
		 0.83130002 -0.2511 0.39120001 0.8854 -0.37779999 0.40759999 0.83130002 -0.47600001
		 0.0902 0.87480003 -0.25459999 0.21179999 0.9436 -0.2511 0.39120001 0.8854 0.0029
		 0.1877 0.98220003 0.00039999999 0.241 0.97049999 -0.25459999 0.21179999 0.9436 -0.3714
		 0.1417 0.91759998 -0.3714 0.1417 0.91759998 -0.42879999 -0.0031999999 0.9034 0.0020999999
		 -0.067599997 0.99769998 0.0029 0.1877 0.98220003 0.0392 -0.389 0.92040002 0.0020999999
		 -0.067599997 0.99769998 -0.42879999 -0.0031999999 0.9034 -0.41940001 -0.19230001
		 0.8872 -0.0153 0.42989999 0.90270001 -0.2511 0.39120001 0.8854 -0.25459999 0.21179999
		 0.9436 0.00039999999 0.241 0.97049999 -0.41940001 -0.19230001 0.8872 -0.42879999
		 -0.0031999999 0.9034 -0.5905 -0.16060001 0.79089999 -0.57050002 -0.68779999 0.4488
		 -0.3714 0.1417 0.91759998 -0.25459999 0.21179999 0.9436 -0.47600001 0.0902 0.87480003
		 -0.56480002 0.037999999 0.82429999 -0.3714 0.1417 0.91759998 -0.56480002 0.037999999
		 0.82429999 -0.5905 -0.16060001 0.79089999 -0.42879999 -0.0031999999 0.9034 -0.2511
		 0.39120001 0.8854 -0.0153 0.42989999 0.90270001 0.2244 0.45770001 0.86040002 -0.28080001
		 0.4822 0.82980001 0.34009999 0.42179999 0.8405 0.4355 0.48359999 0.75929999 0.4163
		 0.60979998 0.67449999 -0.28080001 0.4822 0.82980001 -0.40959999 0.63209999 0.65780002
		 -0.42390001 0.54470003 0.72359997 -0.93809998 0.19859999 -0.28389999 -0.96259999
		 0.1124 -0.2463 -0.57870001 0.2158 -0.78649998 -0.60000002 0.14830001 -0.78609997;
	setAttr ".n[1826:1991]" -type "float3"  -0.60000002 0.14830001 -0.78609997 -0.57870001
		 0.2158 -0.78649998 0.33860001 0.37099999 -0.86470002 0.2462 0.15629999 -0.95649999
		 0.2033 -0.63569999 -0.74470001 -0.419 -0.67640001 -0.60579997 -0.49689999 -0.046599999
		 -0.86650002 0.32609999 -0.068899997 -0.94279999 -0.61330003 -0.74629998 -0.25850001
		 -0.93449998 0.0208 -0.35530001 -0.49689999 -0.046599999 -0.86650002 -0.419 -0.67640001
		 -0.60579997 -0.9436 0.32780001 0.0458 -0.90630001 0.2149 0.36399999 -0.96259999 0.1124
		 -0.2463 -0.93809998 0.19859999 -0.28389999 0.96090001 0.1971 0.1946 0.95950001 0.22480001
		 0.1697 0.54879999 0.4452 0.7076 0.4614 0.57029998 0.6796 0.4614 0.57029998 0.6796
		 0.28940001 0.8075 0.514 0.8524 0.45719999 0.25369999 0.96090001 0.1971 0.1946 0.99400002
		 -0.094099998 0.055799998 0.96090001 0.1971 0.1946 0.8524 0.45719999 0.25369999 0.99489999
		 0.031399999 0.096000001 -0.77179998 0.63150001 0.074699998 -0.30809999 0.85299999
		 0.42129999 -0.5104 0.61870003 0.59729999 -0.9436 0.32780001 0.0458 -0.9436 0.32780001
		 0.0458 -0.97390002 0.075800002 -0.2139 -0.96969998 0.1367 -0.2026 -0.77179998 0.63150001
		 0.074699998 -0.61330003 -0.74629998 -0.25850001 -0.653 -0.72310001 -0.2251 -0.97390002
		 0.075800002 -0.2139 -0.93449998 0.0208 -0.35530001 -0.98799998 0.1178 0.0999 -0.69559997
		 0.60790002 0.3829 -0.77179998 0.63150001 0.074699998 -0.96969998 0.1367 -0.2026 -0.96969998
		 0.1367 -0.2026 -0.61680001 -0.76120001 -0.2001 -0.6979 -0.71280003 0.070200004 -0.98799998
		 0.1178 0.0999 -0.71109998 -0.0044999998 0.70310003 -0.48609999 -0.74180001 0.4619
		 -0.1186 -0.80110002 0.58670002 -0.24169999 -0.0517 0.96899998 0.21359999 -0.76700002
		 0.60509998 0.61760002 -0.70450002 0.3495 0.83310002 0.0339 0.5521 0.31169999 0.0218
		 0.94989997 0.83310002 0.0339 0.5521 0.73019999 0.5474 0.40880001 0.38510001 0.63950002
		 0.66540003 0.31169999 0.0218 0.94989997 0.73019999 0.5474 0.40880001 0.8524 0.45719999
		 0.25369999 0.28940001 0.8075 0.514 0.38510001 0.63950002 0.66540003 0.83310002 0.0339
		 0.5521 0.99489999 0.031399999 0.096000001 0.8524 0.45719999 0.25369999 0.73019999
		 0.5474 0.40880001 0.83310002 0.0339 0.5521 0.61760002 -0.70450002 0.3495 0.68089998
		 -0.73229998 -0.0133 0.99489999 0.031399999 0.096000001 -0.69559997 0.60790002 0.3829
		 -0.71109998 -0.0044999998 0.70310003 -0.24169999 -0.0517 0.96899998 -0.1936 0.66820002
		 0.7184 -0.69559997 0.60790002 0.3829 -0.1936 0.66820002 0.7184 -0.30809999 0.85299999
		 0.42129999 -0.77179998 0.63150001 0.074699998 0.6638 -0.74669999 -0.0429 0.99400002
		 -0.094099998 0.055799998 0.99489999 0.031399999 0.096000001 0.68089998 -0.73229998
		 -0.0133 0.66600001 -0.74519998 0.034600001 0.66299999 -0.6796 -0.31389999 0.90740001
		 -0.071699999 -0.41420001 0.99159998 -0.1124 0.063600004 0.9971 0.053800002 0.054499999
		 0.87449998 0.18719999 -0.4474 0.8495 0.39430001 -0.35049999 0.95950001 0.22480001
		 0.1697 0.87449998 0.18719999 -0.4474 0.2462 0.15629999 -0.95649999 0.33860001 0.37099999
		 -0.86470002 0.8495 0.39430001 -0.35049999 0.66299999 -0.6796 -0.31389999 0.2033 -0.63569999
		 -0.74470001 0.32609999 -0.068899997 -0.94279999 0.90740001 -0.071699999 -0.41420001
		 0.68089998 -0.73229998 -0.0133 0.0077 -0.99830002 -0.058400001 0.0239 -0.99479997
		 -0.099200003 0.6638 -0.74669999 -0.0429 0.21359999 -0.76700002 0.60509998 -0.1186
		 -0.80110002 0.58670002 0.00039999999 -1 -0.0046999999 0.61760002 -0.70450002 0.3495
		 -0.653 -0.72310001 -0.2251 -0.61680001 -0.76120001 -0.2001 -0.96969998 0.1367 -0.2026
		 -0.97390002 0.075800002 -0.2139 -0.93809998 0.19859999 -0.28389999 -0.93449998 0.0208
		 -0.35530001 -0.97390002 0.075800002 -0.2139 -0.9436 0.32780001 0.0458 -0.60000002
		 0.14830001 -0.78609997 -0.49689999 -0.046599999 -0.86650002 -0.93449998 0.0208 -0.35530001
		 -0.93809998 0.19859999 -0.28389999 0.2462 0.15629999 -0.95649999 0.32609999 -0.068899997
		 -0.94279999 -0.49689999 -0.046599999 -0.86650002 -0.60000002 0.14830001 -0.78609997
		 0.90740001 -0.071699999 -0.41420001 0.32609999 -0.068899997 -0.94279999 0.2462 0.15629999
		 -0.95649999 0.87449998 0.18719999 -0.4474 0.9971 0.053800002 0.054499999 0.99159998
		 -0.1124 0.063600004 0.90740001 -0.071699999 -0.41420001 0.87449998 0.18719999 -0.4474
		 0.4614 0.57029998 0.6796 0.54879999 0.4452 0.7076 -0.4007 0.52319998 0.75209999 -0.5104
		 0.61870003 0.59729999 -0.5104 0.61870003 0.59729999 -0.30809999 0.85299999 0.42129999
		 0.28940001 0.8075 0.514 0.4614 0.57029998 0.6796 0.21359999 -0.76700002 0.60509998
		 0.31169999 0.0218 0.94989997 -0.24169999 -0.0517 0.96899998 -0.1186 -0.80110002 0.58670002
		 -0.1936 0.66820002 0.7184 -0.24169999 -0.0517 0.96899998 0.31169999 0.0218 0.94989997
		 0.38510001 0.63950002 0.66540003 -0.30809999 0.85299999 0.42129999 -0.1936 0.66820002
		 0.7184 0.38510001 0.63950002 0.66540003 0.28940001 0.8075 0.514 -0.9436 0.32780001
		 0.0458 -0.5104 0.61870003 0.59729999 -0.4007 0.52319998 0.75209999 -0.90630001 0.2149
		 0.36399999 -0.98799998 0.1178 0.0999 -0.6979 -0.71280003 0.070200004 -0.48609999
		 -0.74180001 0.4619 -0.71109998 -0.0044999998 0.70310003 -0.653 -0.72310001 -0.2251
		 -0.61330003 -0.74629998 -0.25850001 0.015 -0.99809998 -0.059700001 0.0239 -0.99479997
		 -0.099200003 -0.61680001 -0.76120001 -0.2001 -0.653 -0.72310001 -0.2251;
	setAttr ".n[1992:2157]" -type "float3"  0.0239 -0.99479997 -0.099200003 0.0077
		 -0.99830002 -0.058400001 0.00039999999 -1 -0.0046999999 -0.1186 -0.80110002 0.58670002
		 -0.48609999 -0.74180001 0.4619 -0.6979 -0.71280003 0.070200004 0.015 -0.99809998
		 -0.059700001 0.2033 -0.63569999 -0.74470001 0.66299999 -0.6796 -0.31389999 0.66600001
		 -0.74519998 0.034600001 0.015 -0.99809998 -0.059700001 -0.61330003 -0.74629998 -0.25850001
		 -0.419 -0.67640001 -0.60579997 0.2033 -0.63569999 -0.74470001 0.99159998 -0.1124
		 0.063600004 0.9971 0.053800002 0.054499999 0.96090001 0.1971 0.1946 0.99400002 -0.094099998
		 0.055799998 0.6638 -0.74669999 -0.0429 0.66600001 -0.74519998 0.034600001 0.99159998
		 -0.1124 0.063600004 0.99400002 -0.094099998 0.055799998 0.0239 -0.99479997 -0.099200003
		 0.015 -0.99809998 -0.059700001 0.66600001 -0.74519998 0.034600001 0.6638 -0.74669999
		 -0.0429 0.00039999999 -1 -0.0046999999 0.0077 -0.99830002 -0.058400001 0.68089998
		 -0.73229998 -0.0133 0.61760002 -0.70450002 0.3495 -0.6979 -0.71280003 0.070200004
		 -0.61680001 -0.76120001 -0.2001 0.0077 -0.99830002 -0.058400001 0.00039999999 -1
		 -0.0046999999 0.9971 0.053800002 0.054499999 0.95950001 0.22480001 0.1697 0.96090001
		 0.1971 0.1946 -0.69559997 0.60790002 0.3829 -0.98799998 0.1178 0.0999 -0.71109998
		 -0.0044999998 0.70310003 0.377 0.098099999 0.921 0.5399 0.099299997 0.83579999 0.43470001
		 0.0612 0.89850003 0.26010001 0.0788 0.96240002 0 0.064000003 0.99800003 0.377 0.098099999
		 0.921 0.26010001 0.0788 0.96240002 0 0.064000003 0.99800003 -0.377 0.098099999 0.921
		 -0.26010001 0.0788 0.96240002 -0.43470001 0.0612 0.89850003 -0.5399 0.099299997 0.83579999
		 0 0.064000003 0.99800003 0 0.064000003 0.99800003 -0.26010001 0.0788 0.96240002 -0.377
		 0.098099999 0.921 0.86729997 -0.030300001 -0.49680001 0.9181 -0.1007 0.38319999 0.91900003
		 -0.1201 0.37549999 0.85470003 -0.14380001 -0.49869999 -0.33919999 -0.071500003 0.93800002
		 -0.35080001 -0.075900003 0.93339998 0.38260001 -0.1398 0.91329998 0.38080001 -0.12620001
		 0.91600001 -0.77609998 0.084899999 -0.62480003 -0.74379998 0.088600002 -0.66250002
		 -0.99940002 -0.0274 0.0206 -0.99730003 0.0251 0.068700001 -0.74379998 0.088600002
		 -0.66250002 -0.77609998 0.084899999 -0.62480003 0.0052 0.035300002 -0.99940002 0.032200001
		 -0.064499997 -0.99739999 0.26050001 -0.029300001 -0.96499997 -0.6063 -0.0766 -0.79159999
		 -0.74699998 -0.12639999 -0.65270001 0.1684 -0.1497 -0.97430003 -0.99730003 0.0251
		 0.068700001 -0.99940002 -0.0274 0.0206 -0.81879997 -0.0133 0.574 -0.78860003 -0.0062000002
		 0.61479998 0.85470003 -0.14380001 -0.49869999 0.032200001 -0.064499997 -0.99739999
		 0.0052 0.035300002 -0.99940002 0.86729997 -0.030300001 -0.49680001 0.91900003 -0.1201
		 0.37549999 0.92040002 -0.040199999 0.3888 0.87959999 -0.163 -0.447 0.85470003 -0.14380001
		 -0.49869999 0.91689998 0.051399998 0.39579999 0.884 0.1428 -0.44499999 0.86540002
		 -0.071199998 -0.49590001 0.94169998 -0.1077 0.31869999 0.38260001 -0.1398 0.91329998
		 0.91900003 -0.1201 0.37549999 0.9181 -0.1007 0.38319999 0.38080001 -0.12620001 0.91600001
		 -0.41679999 0.20730001 0.88499999 0.41339999 0.12970001 0.9012 0.38409999 -0.00069999998
		 0.92330003 -0.35190001 0.063699998 0.9339 -0.86799997 0.1561 0.47139999 -0.41679999
		 0.20730001 0.88499999 -0.35190001 0.063699998 0.9339 -0.8409 0.0142 0.54110003 -0.99980003
		 -0.0123 0.0135 -0.74699998 -0.12639999 -0.65270001 -0.6063 -0.0766 -0.79159999 -0.96249998
		 0.027899999 -0.27000001 0.12620001 -0.099600002 -0.98699999 0.87959999 -0.163 -0.447
		 0.89810002 -0.1917 -0.39570001 0.1684 -0.1497 -0.97430003 -0.30489999 -0.067900002
		 0.94999999 -0.3346 0.096500002 0.93739998 0.39840001 0.065700002 0.91479999 0.4375
		 -0.1219 0.89090002 -0.99739999 -0.0251 0.067500003 -0.98720002 0.1166 0.1085 -0.76880002
		 0.0854 0.63370001 -0.79280001 -0.059500001 0.60659999 0.4375 -0.1219 0.89090002 0.39840001
		 0.065700002 0.91479999 0.91689998 0.051399998 0.39579999 0.94169998 -0.1077 0.31869999
		 -0.79280001 -0.059500001 0.60659999 -0.76880002 0.0854 0.63370001 -0.3346 0.096500002
		 0.93739998 -0.30489999 -0.067900002 0.94999999 -0.78860003 -0.0062000002 0.61479998
		 -0.81879997 -0.0133 0.574 -0.35080001 -0.075900003 0.93339998 -0.33919999 -0.071500003
		 0.93800002 -0.99980003 -0.0123 0.0135 -0.86799997 0.1561 0.47139999 -0.8409 0.0142
		 0.54110003 -0.99910003 -0.0394 0.0174 0.41339999 0.12970001 0.9012 0.92390001 -0.0374
		 0.38069999 0.92040002 -0.040199999 0.3888 0.38409999 -0.00069999998 0.92330003 -0.43889999
		 0.264 0.85890001 -0.94999999 0.083400004 0.301 -0.92510003 0.2403 0.29409999 -0.4434
		 0.52789998 0.72430003 -0.4684 0.047800001 -0.8822 0.4179 0.040899999 -0.90759999
		 0.38429999 0.23819999 -0.8919 -0.50400001 0.18799999 -0.84299999 0.92650002 -0.021299999
		 0.3757 0.9375 -0.066200003 0.34150001 0.94660002 -0.057 -0.31740001 0.94559997 -0.062100001
		 -0.31940001 0.94559997 -0.062100001 -0.31940001 0.94660002 -0.057 -0.31740001 0.4179
		 0.040899999 -0.90759999 0.26050001 -0.029300001 -0.96499997 0.94660002 -0.057 -0.31740001
		 0.94809997 0.1111 -0.2978 0.38429999 0.23819999 -0.8919 0.4179 0.040899999 -0.90759999
		 -0.4684 0.047800001 -0.8822 -0.6063 -0.0766 -0.79159999 0.26050001 -0.029300001 -0.96499997
		 0.4179 0.040899999 -0.90759999 -0.34990001 0.2449 0.90420002 -0.91829997 0.1969 0.34349999;
	setAttr ".n[2158:2323]" -type "float3"  -0.94999999 0.083400004 0.301 -0.43889999
		 0.264 0.85890001 0.40669999 0.2075 0.8897 0.47310001 0.27739999 0.8362 0.9375 -0.066200003
		 0.34150001 0.92650002 -0.021299999 0.3757 0.9375 -0.066200003 0.34150001 0.47310001
		 0.27739999 0.8362 0.47459999 0.52810001 0.70420003 0.9745 0.1639 0.1529 0.94809997
		 0.1111 -0.2978 0.94660002 -0.057 -0.31740001 0.9375 -0.066200003 0.34150001 0.9745
		 0.1639 0.1529 -0.82480001 -0.026900001 -0.56480002 -0.78509998 0.1357 -0.60439998
		 -0.98720002 0.1166 0.1085 -0.99739999 -0.0251 0.067500003 -0.82480001 -0.026900001
		 -0.56480002 -0.049699999 -0.088 -0.99489999 0.021299999 0.15539999 -0.98760003 -0.78509998
		 0.1357 -0.60439998 0.884 0.1428 -0.44499999 0.021299999 0.15539999 -0.98760003 -0.049699999
		 -0.088 -0.99489999 0.86540002 -0.071199998 -0.49590001 -0.74159998 0.0328 -0.67009997
		 0.12620001 -0.099600002 -0.98699999 0.1684 -0.1497 -0.97430003 -0.74699998 -0.12639999
		 -0.65270001 0.89810002 -0.1917 -0.39570001 0.92390001 -0.0374 0.38069999 0.92650002
		 -0.021299999 0.3757 0.94559997 -0.062100001 -0.31940001 -0.41679999 0.20730001 0.88499999
		 -0.34990001 0.2449 0.90420002 0.40669999 0.2075 0.8897 0.41339999 0.12970001 0.9012
		 -0.86799997 0.1561 0.47139999 -0.91829997 0.1969 0.34349999 -0.34990001 0.2449 0.90420002
		 -0.41679999 0.20730001 0.88499999 -0.99940002 -0.0274 0.0206 -0.74379998 0.088600002
		 -0.66250002 -0.74159998 0.0328 -0.67009997 -0.99910003 -0.0394 0.0174 0.1684 -0.1497
		 -0.97430003 0.89810002 -0.1917 -0.39570001 0.94559997 -0.062100001 -0.31940001 0.26050001
		 -0.029300001 -0.96499997 -0.99980003 -0.0123 0.0135 -0.96249998 0.027899999 -0.27000001
		 -0.91829997 0.1969 0.34349999 -0.86799997 0.1561 0.47139999 0.41339999 0.12970001
		 0.9012 0.40669999 0.2075 0.8897 0.92650002 -0.021299999 0.3757 0.92390001 -0.0374
		 0.38069999 -0.4434 0.52789998 0.72430003 0.47459999 0.52810001 0.70420003 0.47310001
		 0.27739999 0.8362 -0.43889999 0.264 0.85890001 -0.43889999 0.264 0.85890001 0.47310001
		 0.27739999 0.8362 0.40669999 0.2075 0.8897 -0.34990001 0.2449 0.90420002 -0.50400001
		 0.18799999 -0.84299999 -0.93409997 0.1246 -0.33469999 -0.93430001 -0.0228 -0.35589999
		 -0.4684 0.047800001 -0.8822 -0.6063 -0.0766 -0.79159999 -0.4684 0.047800001 -0.8822
		 -0.93430001 -0.0228 -0.35589999 -0.96249998 0.027899999 -0.27000001 -0.91829997 0.1969
		 0.34349999 -0.96249998 0.027899999 -0.27000001 -0.93430001 -0.0228 -0.35589999 -0.94999999
		 0.083400004 0.301 -0.92510003 0.2403 0.29409999 -0.94999999 0.083400004 0.301 -0.93430001
		 -0.0228 -0.35589999 -0.93409997 0.1246 -0.33469999 0.87959999 -0.163 -0.447 0.92040002
		 -0.040199999 0.3888 0.92390001 -0.0374 0.38069999 0.89810002 -0.1917 -0.39570001
		 0.38409999 -0.00069999998 0.92330003 0.38260001 -0.1398 0.91329998 -0.35080001 -0.075900003
		 0.93339998 -0.35190001 0.063699998 0.9339 -0.8409 0.0142 0.54110003 -0.35190001 0.063699998
		 0.9339 -0.35080001 -0.075900003 0.93339998 -0.81879997 -0.0133 0.574 0.12620001 -0.099600002
		 -0.98699999 0.032200001 -0.064499997 -0.99739999 0.85470003 -0.14380001 -0.49869999
		 0.87959999 -0.163 -0.447 -0.99910003 -0.0394 0.0174 -0.8409 0.0142 0.54110003 -0.81879997
		 -0.0133 0.574 -0.99940002 -0.0274 0.0206 0.38409999 -0.00069999998 0.92330003 0.92040002
		 -0.040199999 0.3888 0.91900003 -0.1201 0.37549999 0.38260001 -0.1398 0.91329998 0.12620001
		 -0.099600002 -0.98699999 -0.74159998 0.0328 -0.67009997 -0.74379998 0.088600002 -0.66250002
		 0.032200001 -0.064499997 -0.99739999 -0.99910003 -0.0394 0.0174 -0.74159998 0.0328
		 -0.67009997 -0.74699998 -0.12639999 -0.65270001 -0.99980003 -0.0123 0.0135 0.91689998
		 0.051399998 0.39579999 0.9181 -0.1007 0.38319999 0.86729997 -0.030300001 -0.49680001
		 0.884 0.1428 -0.44499999 -0.3346 0.096500002 0.93739998 -0.33919999 -0.071500003
		 0.93800002 0.38080001 -0.12620001 0.91600001 0.39840001 0.065700002 0.91479999 -0.76880002
		 0.0854 0.63370001 -0.98720002 0.1166 0.1085 -0.99730003 0.0251 0.068700001 -0.78860003
		 -0.0062000002 0.61479998 0.39840001 0.065700002 0.91479999 0.38080001 -0.12620001
		 0.91600001 0.9181 -0.1007 0.38319999 0.91689998 0.051399998 0.39579999 -0.76880002
		 0.0854 0.63370001 -0.78860003 -0.0062000002 0.61479998 -0.33919999 -0.071500003 0.93800002
		 -0.3346 0.096500002 0.93739998 -0.98720002 0.1166 0.1085 -0.78509998 0.1357 -0.60439998
		 -0.77609998 0.084899999 -0.62480003 -0.99730003 0.0251 0.068700001 -0.78509998 0.1357
		 -0.60439998 0.021299999 0.15539999 -0.98760003 0.0052 0.035300002 -0.99940002 -0.77609998
		 0.084899999 -0.62480003 0.021299999 0.15539999 -0.98760003 0.884 0.1428 -0.44499999
		 0.86729997 -0.030300001 -0.49680001 0.0052 0.035300002 -0.99940002 0.8757 0.2886
		 0.38699999 0.83160001 0.42160001 -0.36149999 0.67339998 0.67030001 -0.31169999 0.77100003
		 0.53750002 0.34150001 -0.1591 0.40450001 0.90060002 0.4711 0.32589999 0.8197 0.2221
		 0.59079999 0.77560002 -0.16249999 0.7572 0.63260001 -0.87470001 0.4684 0.1246 -0.62349999
		 0.52539998 0.579 -0.37259999 0.84500003 0.38350001 -0.66079998 0.73580003 0.14839999
		 0.4711 0.32589999 0.8197 0.8757 0.2886 0.38699999 0.77100003 0.53750002 0.34150001
		 0.2221 0.59079999 0.77560002 -0.62349999 0.52539998 0.579 -0.1591 0.40450001 0.90060002
		 -0.16249999 0.7572 0.63260001 -0.37259999 0.84500003 0.38350001;
	setAttr ".n[2324:2489]" -type "float3"  -0.72899997 0.54549998 -0.41350001 -0.87470001
		 0.4684 0.1246 -0.66079998 0.73580003 0.14839999 -0.537 0.80699998 -0.2457 0.0109
		 0.5327 -0.84630001 -0.72899997 0.54549998 -0.41350001 -0.537 0.80699998 -0.2457 -0.089299999
		 0.79659998 -0.59780002 0.83160001 0.42160001 -0.36149999 0.0109 0.5327 -0.84630001
		 -0.089299999 0.79659998 -0.59780002 0.67339998 0.67030001 -0.31169999 0.92009997
		 0.070699997 0.38519999 0.912 0.19580001 -0.36039999 0.83160001 0.42160001 -0.36149999
		 0.8757 0.2886 0.38699999 -0.1119 0.069399998 0.99129999 0.56569999 0.0078999996 0.82450002
		 0.4711 0.32589999 0.8197 -0.1591 0.40450001 0.90060002 -0.97850001 0.1706 0.1156
		 -0.74610001 0.17829999 0.6415 -0.62349999 0.52539998 0.579 -0.87470001 0.4684 0.1246
		 0.56569999 0.0078999996 0.82450002 0.92009997 0.070699997 0.38519999 0.8757 0.2886
		 0.38699999 0.4711 0.32589999 0.8197 -0.74610001 0.17829999 0.6415 -0.1119 0.069399998
		 0.99129999 -0.1591 0.40450001 0.90060002 -0.62349999 0.52539998 0.579 -0.81800002
		 0.296 -0.49329999 -0.97850001 0.1706 0.1156 -0.87470001 0.4684 0.1246 -0.72899997
		 0.54549998 -0.41350001 0.078599997 0.25330001 -0.96420002 -0.81800002 0.296 -0.49329999
		 -0.72899997 0.54549998 -0.41350001 0.0109 0.5327 -0.84630001 0.912 0.19580001 -0.36039999
		 0.078599997 0.25330001 -0.96420002 0.0109 0.5327 -0.84630001 0.83160001 0.42160001
		 -0.36149999 0.45140001 0.62910002 0.63279998 0.75260001 0.2352 0.61510003 0.81110001
		 0.57700002 0.095600002 0.55559999 0.83020002 0.046399999 0.48820001 0.58450001 -0.64810002
		 0.55559999 0.83020002 0.046399999 0.26980001 0.66649997 -0.69489998 0.082199998 0.472
		 -0.87779999 0.058499999 0.1604 -0.9853 0 0.17380001 -0.98479998 0 0.36140001 -0.93239999
		 0.082199998 0.472 -0.87779999 0.67739999 0.023700001 -0.73519999 0.59119999 -0.25889999
		 -0.76380002 0.093900003 -0.1913 -0.977 0.1184 0.2018 -0.97219998 0.127 0.1121 -0.98559999
		 0.1167 -0.2246 -0.96740001 0.15270001 -0.2782 -0.9483 0.43259999 -0.0195 -0.90140003
		 0.093900003 -0.1913 -0.977 0.15270001 -0.2782 -0.9483 0.1167 -0.2246 -0.96740001
		 0.0495 -0.1611 -0.98570001 0 -0.14129999 -0.99000001 0.0495 -0.1611 -0.98570001 0.1167
		 -0.2246 -0.96740001 0 -0.1811 -0.9835 0.058499999 0.1604 -0.9853 0.0495 -0.1611 -0.98570001
		 0 -0.14129999 -0.99000001 0 0.17380001 -0.98479998 0.7374 0.0592 0.67290002 0.45140001
		 0.62910002 0.63279998 0.5147 0.55440003 0.65399998 0.60979998 0.16410001 0.77539998
		 0.7374 0.0592 0.67290002 0.74959999 -0.34560001 0.56459999 0.75260001 0.2352 0.61510003
		 0.45140001 0.62910002 0.63279998 0.60979998 0.16410001 0.77539998 0.59020001 0.1089
		 0.7999 0.71670002 0.098099999 0.6904 0.7374 0.0592 0.67290002 0.95670003 0.1811 0.228
		 0.91339999 -0.0147 -0.4068 0.99989998 0.0141 -0.0082999999 0.97390002 0.046799999
		 0.22229999 0.96810001 -0.082999997 0.23630001 0.95670003 0.1811 0.228 0.71670002
		 0.098099999 0.6904 0.7604 -0.087200001 0.64359999 0.59020001 0.1089 0.7999 0.59310001
		 -0.1441 0.79210001 0.7604 -0.087200001 0.64359999 0.71670002 0.098099999 0.6904 0.4077
		 -0.50870001 0.75830001 0.58319998 -0.41679999 0.6972 0.7604 -0.087200001 0.64359999
		 0.59310001 -0.1441 0.79210001 0.7604 -0.087200001 0.64359999 0.58319998 -0.41679999
		 0.6972 0.88819999 -0.4043 0.2181 0.96810001 -0.082999997 0.23630001 0.127 0.1121
		 -0.98559999 0 0.058699999 -0.99830002 0 -0.1811 -0.9835 0.1167 -0.2246 -0.96740001
		 0.833 -0.4154 -0.36559999 0.3924 -0.60820001 -0.69010001 0.51560003 -0.28760001 -0.8071
		 0.90420002 -0.1142 -0.41159999 0.51560003 -0.28760001 -0.8071 0.3924 -0.60820001
		 -0.69010001 0.1804 -0.56709999 -0.80360001 0.2005 -0.1025 -0.97430003 0.2005 -0.1025
		 -0.97430003 0.1804 -0.56709999 -0.80360001 0 -0.60659999 -0.79500002 0 -0.266 -0.96399999
		 0.093900003 -0.1913 -0.977 0.0495 -0.1611 -0.98570001 0.058499999 0.1604 -0.9853
		 0.1184 0.2018 -0.97219998 0.91339999 -0.0147 -0.4068 0.90420002 -0.1142 -0.41159999
		 0.51560003 -0.28760001 -0.8071 0.43259999 -0.0195 -0.90140003 0.2005 -0.1025 -0.97430003
		 0.127 0.1121 -0.98559999 0.43259999 -0.0195 -0.90140003 0.51560003 -0.28760001 -0.8071
		 0 0.058699999 -0.99830002 0.127 0.1121 -0.98559999 0.2005 -0.1025 -0.97430003 0 -0.266
		 -0.96399999 0.90420002 -0.1142 -0.41159999 0.91339999 -0.0147 -0.4068 0.95670003
		 0.1811 0.228 0.96810001 -0.082999997 0.23630001 0.88819999 -0.4043 0.2181 0.833 -0.4154
		 -0.36559999 0.90420002 -0.1142 -0.41159999 0.96810001 -0.082999997 0.23630001 0.43259999
		 -0.0195 -0.90140003 0.15270001 -0.2782 -0.9483 0.43799999 -0.49430001 -0.75089997
		 0.91339999 -0.0147 -0.4068 0.76270002 0.4298 -0.48339999 0.26980001 0.66649997 -0.69489998
		 0.55559999 0.83020002 0.046399999 0.81110001 0.57700002 0.095600002 0.1184 0.2018
		 -0.97219998 0.26980001 0.66649997 -0.69489998 0.76270002 0.4298 -0.48339999 0.67739999
		 0.023700001 -0.73519999 0.082199998 0.472 -0.87779999 0.26980001 0.66649997 -0.69489998
		 0.1184 0.2018 -0.97219998 0.058499999 0.1604 -0.9853 0.45140001 0.62910002 0.63279998
		 0.55559999 0.83020002 0.046399999;
	setAttr ".n[2490:2655]" -type "float3"  0.6365 0.75980002 0.1323 0.5147 0.55440003
		 0.65399998 0.59119999 -0.25889999 -0.76380002 0.43799999 -0.49430001 -0.75089997
		 0.15270001 -0.2782 -0.9483 0.093900003 -0.1913 -0.977 0.082199998 0.472 -0.87779999
		 0 0.36140001 -0.93239999 0 0.40439999 -0.91460001 0.48820001 0.58450001 -0.64810002
		 0.98400003 -0.1637 0.070200004 0.99370003 -0.111 -0.0153 0.81110001 0.57700002 0.095600002
		 0.75260001 0.2352 0.61510003 0.97280002 -0.2264 -0.0495 0.9702 -0.1106 -0.2158 0.59119999
		 -0.25889999 -0.76380002 0.67739999 0.023700001 -0.73519999 0.99370003 -0.111 -0.0153
		 0.96859998 -0.1696 -0.182 0.76270002 0.4298 -0.48339999 0.81110001 0.57700002 0.095600002
		 0.96859998 -0.1696 -0.182 0.97280002 -0.2264 -0.0495 0.67739999 0.023700001 -0.73519999
		 0.76270002 0.4298 -0.48339999 0.97390002 0.046799999 0.22229999 0.7374 0.0592 0.67290002
		 0.71670002 0.098099999 0.6904 0.95670003 0.1811 0.228 0.6365 0.75980002 0.1323 0.55559999
		 0.83020002 0.046399999 0.48820001 0.58450001 -0.64810002 0.7374 0.0592 0.67290002
		 0.97390002 0.046799999 0.22229999 0.74959999 -0.34560001 0.56459999 0.75260001 0.2352
		 0.61510003 0.74959999 -0.34560001 0.56459999 0.98400003 -0.1637 0.070200004 0.43799999
		 -0.49430001 -0.75089997 0.59119999 -0.25889999 -0.76380002 0.9702 -0.1106 -0.2158
		 0.43799999 -0.49430001 -0.75089997 0.99989998 0.0141 -0.0082999999 0.91339999 -0.0147
		 -0.4068 -0.4517 0.62050003 0.64099997 -0.5363 0.84219998 0.0559 -0.8186 0.56650001
		 0.094499998 -0.75260001 0.2352 0.61510003 -0.4754 0.60420001 -0.63950002 -0.082199998
		 0.472 -0.87779999 -0.2678 0.6548 -0.70679998 -0.5363 0.84219998 0.0559 -0.058499999
		 0.1604 -0.9853 -0.082199998 0.472 -0.87779999 0 0.36140001 -0.93239999 0 0.17380001
		 -0.98479998 -0.67739999 0.023700001 -0.73519999 -0.1184 0.2018 -0.97219998 -0.093900003
		 -0.1913 -0.977 -0.59020001 -0.25690001 -0.76529998 -0.127 0.1121 -0.98559999 -0.43259999
		 -0.0195 -0.90140003 -0.152 -0.27829999 -0.94840002 -0.1167 -0.2246 -0.96740001 -0.093900003
		 -0.1913 -0.977 -0.0495 -0.1611 -0.98570001 -0.1167 -0.2246 -0.96740001 -0.152 -0.27829999
		 -0.94840002 0 -0.14129999 -0.99000001 0 -0.1811 -0.9835 -0.1167 -0.2246 -0.96740001
		 -0.0495 -0.1611 -0.98570001 -0.058499999 0.1604 -0.9853 0 0.17380001 -0.98479998
		 0 -0.14129999 -0.99000001 -0.0495 -0.1611 -0.98570001 -0.71350002 0.054499999 0.69849998
		 -0.57550001 0.20999999 0.79040003 -0.5151 0.55229998 0.65539998 -0.4517 0.62050003
		 0.64099997 -0.71350002 0.054499999 0.69849998 -0.4517 0.62050003 0.64099997 -0.75260001
		 0.2352 0.61510003 -0.74959999 -0.34560001 0.56459999 -0.57550001 0.20999999 0.79040003
		 -0.71350002 0.054499999 0.69849998 -0.71670002 0.098099999 0.6904 -0.5905 0.14560001
		 0.7938 -0.95670003 0.1811 0.228 -0.97390002 0.046799999 0.22229999 -0.99989998 0.0132
		 -0.0054000001 -0.91369998 -0.016000001 -0.4061 -0.96810001 -0.082999997 0.23630001
		 -0.7604 -0.087200001 0.64359999 -0.71670002 0.098099999 0.6904 -0.95670003 0.1811
		 0.228 -0.5905 0.14560001 0.7938 -0.71670002 0.098099999 0.6904 -0.7604 -0.087200001
		 0.64359999 -0.59310001 -0.1441 0.79210001 -0.4077 -0.50870001 0.75830001 -0.59310001
		 -0.1441 0.79210001 -0.7604 -0.087200001 0.64359999 -0.58319998 -0.41679999 0.6972
		 -0.7604 -0.087200001 0.64359999 -0.96810001 -0.082999997 0.23630001 -0.88819999 -0.4043
		 0.2181 -0.58319998 -0.41679999 0.6972 -0.127 0.1121 -0.98559999 -0.1167 -0.2246 -0.96740001
		 0 -0.1811 -0.9835 0 0.058699999 -0.99830002 -0.833 -0.4154 -0.36559999 -0.90420002
		 -0.1142 -0.41159999 -0.51560003 -0.28760001 -0.8071 -0.3924 -0.60820001 -0.69010001
		 -0.51560003 -0.28760001 -0.8071 -0.2005 -0.1025 -0.97430003 -0.1804 -0.56709999 -0.80360001
		 -0.3924 -0.60820001 -0.69010001 -0.2005 -0.1025 -0.97430003 0 -0.266 -0.96399999
		 0 -0.60659999 -0.79500002 -0.1804 -0.56709999 -0.80360001 -0.093900003 -0.1913 -0.977
		 -0.1184 0.2018 -0.97219998 -0.058499999 0.1604 -0.9853 -0.0495 -0.1611 -0.98570001
		 -0.91369998 -0.016000001 -0.4061 -0.43259999 -0.0195 -0.90140003 -0.51560003 -0.28760001
		 -0.8071 -0.90420002 -0.1142 -0.41159999 -0.2005 -0.1025 -0.97430003 -0.51560003 -0.28760001
		 -0.8071 -0.43259999 -0.0195 -0.90140003 -0.127 0.1121 -0.98559999 0 0.058699999 -0.99830002
		 0 -0.266 -0.96399999 -0.2005 -0.1025 -0.97430003 -0.127 0.1121 -0.98559999 -0.90420002
		 -0.1142 -0.41159999 -0.96810001 -0.082999997 0.23630001 -0.95670003 0.1811 0.228
		 -0.91369998 -0.016000001 -0.4061 -0.88819999 -0.4043 0.2181 -0.96810001 -0.082999997
		 0.23630001 -0.90420002 -0.1142 -0.41159999 -0.833 -0.4154 -0.36559999 -0.43259999
		 -0.0195 -0.90140003 -0.91369998 -0.016000001 -0.4061 -0.4384 -0.49450001 -0.75050002
		 -0.152 -0.27829999 -0.94840002 -0.76270002 0.4298 -0.48339999 -0.8186 0.56650001
		 0.094499998 -0.5363 0.84219998 0.0559 -0.2678 0.6548 -0.70679998 -0.1184 0.2018 -0.97219998
		 -0.67739999 0.023700001 -0.73519999 -0.76270002 0.4298 -0.48339999 -0.2678 0.6548
		 -0.70679998 -0.082199998 0.472 -0.87779999 -0.058499999 0.1604 -0.9853 -0.1184 0.2018
		 -0.97219998 -0.2678 0.6548 -0.70679998 -0.4517 0.62050003 0.64099997;
	setAttr ".n[2656:2821]" -type "float3"  -0.5151 0.55229998 0.65539998 -0.5704
		 0.7967 0.1999 -0.5363 0.84219998 0.0559 -0.59020001 -0.25690001 -0.76529998 -0.093900003
		 -0.1913 -0.977 -0.152 -0.27829999 -0.94840002 -0.4384 -0.49450001 -0.75050002 -0.082199998
		 0.472 -0.87779999 -0.4754 0.60420001 -0.63950002 0 0.40439999 -0.91460001 0 0.36140001
		 -0.93239999 -0.98400003 -0.1637 0.070200004 -0.75260001 0.2352 0.61510003 -0.8186
		 0.56650001 0.094499998 -0.99370003 -0.111 -0.0153 -0.97280002 -0.2264 -0.0495 -0.67739999
		 0.023700001 -0.73519999 -0.59020001 -0.25690001 -0.76529998 -0.97030002 -0.1063 -0.21709999
		 -0.99370003 -0.111 -0.0153 -0.8186 0.56650001 0.094499998 -0.76270002 0.4298 -0.48339999
		 -0.96859998 -0.1696 -0.182 -0.96859998 -0.1696 -0.182 -0.76270002 0.4298 -0.48339999
		 -0.67739999 0.023700001 -0.73519999 -0.97280002 -0.2264 -0.0495 -0.97390002 0.046799999
		 0.22229999 -0.95670003 0.1811 0.228 -0.71670002 0.098099999 0.6904 -0.71350002 0.054499999
		 0.69849998 -0.5704 0.7967 0.1999 -0.4754 0.60420001 -0.63950002 -0.5363 0.84219998
		 0.0559 -0.71350002 0.054499999 0.69849998 -0.74959999 -0.34560001 0.56459999 -0.97390002
		 0.046799999 0.22229999 -0.75260001 0.2352 0.61510003 -0.98400003 -0.1637 0.070200004
		 -0.74959999 -0.34560001 0.56459999 -0.4384 -0.49450001 -0.75050002 -0.97030002 -0.1063
		 -0.21709999 -0.59020001 -0.25690001 -0.76529998 -0.4384 -0.49450001 -0.75050002 -0.91369998
		 -0.016000001 -0.4061 -0.99989998 0.0132 -0.0054000001 0.61900002 0.1998 0.75959998
		 0.6376 0.1718 0.75099999 0.62470001 0.1709 0.76190001 0.55229998 0.1944 0.8107 0.6376
		 0.1718 0.75099999 0.8998 0.21870001 0.37740001 0.88050002 0.2174 0.42129999 0.62470001
		 0.1709 0.76190001 0.8998 0.21870001 0.37740001 0.94889998 0.25760001 -0.1822 0.94129997
		 0.2597 -0.2156 0.88050002 0.2174 0.42129999 0.1947 0.29100001 -0.93669999 0.2053
		 0.2913 -0.93430001 0.62300003 0.31459999 -0.71619999 0.63090003 0.31439999 -0.70929998
		 0 0.2863 -0.95810002 0 0.2863 -0.95810002 0.2053 0.2913 -0.93430001 0.1947 0.29100001
		 -0.93669999 0.63090003 0.31439999 -0.70929998 0.62300003 0.31459999 -0.71619999 0.94129997
		 0.2597 -0.2156 0.94889998 0.25760001 -0.1822 -0.61900002 0.1998 0.75959998 -0.55229998
		 0.1944 0.8107 -0.62470001 0.1709 0.76190001 -0.6376 0.1718 0.75099999 -0.6376 0.1718
		 0.75099999 -0.62470001 0.1709 0.76190001 -0.88050002 0.2174 0.42129999 -0.8998 0.21870001
		 0.37740001 -0.8998 0.21870001 0.37740001 -0.88050002 0.2174 0.42129999 -0.94129997
		 0.2597 -0.2156 -0.94889998 0.25760001 -0.1822 -0.1947 0.29100001 -0.93669999 -0.63090003
		 0.31439999 -0.70929998 -0.62300003 0.31459999 -0.71619999 -0.2053 0.2913 -0.93430001
		 0 0.2863 -0.95810002 -0.1947 0.29100001 -0.93669999 -0.2053 0.2913 -0.93430001 0
		 0.2863 -0.95810002 -0.63090003 0.31439999 -0.70929998 -0.94889998 0.25760001 -0.1822
		 -0.94129997 0.2597 -0.2156 -0.62300003 0.31459999 -0.71619999 0.88499999 0.18189999
		 0.4287 0.89999998 0.18269999 0.39579999 0.67000002 0.071500003 0.73890001 0.65130001
		 0.069799997 0.75559998 0.9734 0.17829999 -0.1436 0.98259997 0.16940001 -0.076700002
		 0.89999998 0.18269999 0.39579999 0.88499999 0.18189999 0.4287 0.30270001 0.054900002
		 0.9515 0.016000001 0.063000001 0.99790001 0.040899999 0.041700002 0.99830002 0.3536
		 0.062100001 0.93330002 0.44209999 0.1654 -0.88160002 0.79519999 0.22920001 -0.56129998
		 0.74000001 0.22830001 -0.63270003 0.29120001 0.1725 -0.94099998 0.44209999 0.1654
		 -0.88160002 0.29120001 0.1725 -0.94099998 0.093699999 0.14839999 -0.98449999 0.071900003
		 0.1497 -0.98610002 -0.1841 0.2374 -0.95380002 0.071900003 0.1497 -0.98610002 0.093699999
		 0.14839999 -0.98449999 -0.14390001 0.2331 -0.96170002 0.79519999 0.22920001 -0.56129998
		 0.98259997 0.16940001 -0.076700002 0.9734 0.17829999 -0.1436 0.74000001 0.22830001
		 -0.63270003 0.67000002 0.071500003 0.73890001 0.30270001 0.054900002 0.9515 0.3536
		 0.062100001 0.93330002 0.65130001 0.069799997 0.75559998 -0.84020001 -0.31470001
		 0.44159999 -0.67729998 0.1041 0.72829998 -0.6796 0.1812 0.71090001 -0.90700001 0.2608
		 0.33050001 -0.91670001 -0.35839999 -0.1768 -0.84020001 -0.31470001 0.44159999 -0.90700001
		 0.2608 0.33050001 -0.91149998 0.29519999 -0.28659999 -0.30270001 0.14820001 0.94150001
		 -0.33239999 0.091399997 0.93870002 0.040899999 0.041700002 0.99830002 0.016000001
		 0.063000001 0.99790001 -0.5693 0.2965 -0.76679999 -0.1841 0.2374 -0.95380002 -0.14390001
		 0.2331 -0.96170002 -0.57639998 0.2281 -0.78469998 -0.5693 0.2965 -0.76679999 -0.57639998
		 0.2281 -0.78469998 -0.91670001 -0.35839999 -0.1768 -0.91149998 0.29519999 -0.28659999
		 -0.6796 0.1812 0.71090001 -0.67729998 0.1041 0.72829998 -0.33239999 0.091399997 0.93870002
		 -0.30270001 0.14820001 0.94150001 -0.49959999 -0.86629999 -0.000099999997 -0.3937
		 -0.82200003 0.41150001 -0.84020001 -0.31470001 0.44159999 -0.91670001 -0.35839999
		 -0.1768 -0.27520001 -0.075599998 0.95840001 0.024499999 -0.0647 0.99760002 0.040899999
		 0.041700002 0.99830002 -0.33239999 0.091399997 0.93870002 -0.27520001 -0.075599998
		 0.95840001 -0.33239999 0.091399997 0.93870002 -0.67729998 0.1041 0.72829998 -0.54939997
		 0.0022 0.83560002 -0.037 -0.094400004 0.99479997 0.024499999 -0.0647 0.99760002 -0.27520001
		 -0.075599998 0.95840001 -0.28479999 -0.0942 0.95389998;
	setAttr ".n[2822:2987]" -type "float3"  -0.27520001 -0.075599998 0.95840001 -0.54939997
		 0.0022 0.83560002 -0.51419997 -0.059900001 0.8556 -0.28479999 -0.0942 0.95389998
		 -0.051199999 0.015900001 0.99860001 -0.044100001 -0.0102 0.99900001 -0.28169999 0.0012000001
		 0.95950001 -0.1938 0.022399999 0.98079997 -0.28169999 0.0012000001 0.95950001 -0.49259999
		 0.074299999 0.8671 -0.32890001 0.078199998 0.9411 -0.1938 0.022399999 0.98079997
		 -0.044100001 -0.0102 0.99900001 -0.037 -0.094400004 0.99479997 -0.28479999 -0.0942
		 0.95389998 -0.28169999 0.0012000001 0.95950001 -0.28479999 -0.0942 0.95389998 -0.51419997
		 -0.059900001 0.8556 -0.49259999 0.074299999 0.8671 -0.28169999 0.0012000001 0.95950001
		 -0.67729998 0.1041 0.72829998 -0.84020001 -0.31470001 0.44159999 -0.3937 -0.82200003
		 0.41150001 -0.91670001 -0.35839999 -0.1768 -0.57639998 0.2281 -0.78469998 -0.49959999
		 -0.86629999 -0.000099999997 -0.4596 0.6024 0.65259999 -0.92570001 0.36250001 0.108
		 -0.97409999 -0.083999999 0.2098 -0.46630001 0.3951 0.79149997 -0.4596 0.6024 0.65259999
		 -0.46630001 0.3951 0.79149997 0.4752 0.24169999 0.84600002 0.31650001 0.68449998
		 0.65679997 -0.6049 -0.35190001 -0.71439999 -0.56330001 0.1099 -0.81889999 0.2446
		 0.1565 -0.9569 0.16329999 -0.19400001 -0.9673 0.7586 0.41119999 -0.5054 0.88190001
		 -0.1574 -0.4443 0.16329999 -0.19400001 -0.9673 0.2446 0.1565 -0.9569 0.88190001 -0.1574
		 -0.4443 0.7586 0.41119999 -0.5054 0.82029998 0.54210001 0.1822 0.95310003 0.0634
		 0.296 -0.081 0.70889997 -0.70069999 0.18719999 0.74830002 0.6365 -0.0070000002 0.7119
		 0.7022 -0.28780001 0.74910003 -0.59670001 -0.198 0.84899998 -0.49000001 0.052499998
		 0.68989998 -0.722 -0.40630001 -0.37819999 -0.83179998 -0.79680002 0.2042 -0.5686
		 -0.198 0.84899998 -0.49000001 -0.1653 0.81529999 0.55500001 0.32839999 0.71600002
		 0.61610001 0.052499998 0.68989998 -0.722 -0.081 0.70889997 -0.70069999 -0.28780001
		 0.74910003 -0.59670001 -0.14669999 -0.46090001 -0.87529999 -0.29629999 -0.4377 -0.84890002
		 -0.82810003 0.32780001 -0.45469999 -0.56800002 0.5819 -0.58209997 -0.27509999 0.60210001
		 0.74949998 -0.88249999 0.003 0.47029999 -0.27509999 0.60210001 0.74949998 0.34799999
		 -0.37040001 0.86119998 0.35170001 -0.93339998 0.070500001 -0.88249999 0.003 0.47029999
		 0.18719999 0.74830002 0.6365 0.084299996 -0.4104 0.90799999 0.1978 -0.41010001 0.89029998
		 -0.0070000002 0.7119 0.7022 -0.037700001 -0.2572 -0.96560001 0.046599999 -0.40580001
		 -0.91280001 -0.56800002 0.5819 -0.58209997 -0.82810003 0.32780001 -0.45469999 -0.1653
		 0.81529999 0.55500001 -0.5855 0.013 0.81059998 -0.0167 -0.39289999 0.91939998 0.32839999
		 0.71600002 0.61610001 -0.198 0.84899998 -0.49000001 -0.79680002 0.2042 -0.5686 -0.5855
		 0.013 0.81059998 -0.1653 0.81529999 0.55500001 -0.27599999 0.60750002 -0.74489999
		 -0.1026 -0.64170003 -0.76010001 -0.70450002 -0.45289999 -0.54640001 -0.6311 0.50980002
		 -0.58459997 -0.45249999 0.5467 -0.70459998 -0.2298 0.77219999 0.5923 -0.38510001
		 0.6936 0.60890001 -0.58639997 0.45339999 -0.67129999 0.1749 -0.31099999 0.93419999
		 -0.015900001 0.82660002 0.5625 -0.47799999 0.68290001 0.55239999 -0.5485 -0.2332
		 0.80299997 0.31979999 -0.1107 0.94099998 -0.38510001 0.6936 0.60890001 -0.2298 0.77219999
		 0.5923 0.2897 -0.26519999 0.91960001 -0.015900001 0.82660002 0.5625 -0.27599999 0.60750002
		 -0.74489999 -0.6311 0.50980002 -0.58459997 -0.47799999 0.68290001 0.55239999 0.3786
		 -0.0614 0.9235 0.49829999 -0.71270001 0.49380001 -0.89179999 0.0616 0.4483 -0.51859999
		 0.55650002 0.64910001 -0.58639997 0.45339999 -0.67129999 0.1582 -0.5783 -0.80040002
		 0.0352 -0.62730002 -0.778 -0.45249999 0.5467 -0.70459998 -0.68449998 0.3337 -0.64819998
		 -0.51859999 0.55650002 0.64910001 -0.89179999 0.0616 0.4483 -0.97170001 -0.097499996
		 -0.21510001 0.63389999 -0.030200001 0.77280003 0.54350001 -0.59460002 0.59240001
		 0.77689999 -0.60000002 -0.1908 0.96530002 -0.063100003 -0.25350001 0.96649998 -0.1305
		 -0.2212 0.62669998 0.1036 0.77240002 0.63389999 -0.030200001 0.77280003 0.96530002
		 -0.063100003 -0.25350001 0.96649998 -0.1305 -0.2212 0.75980002 -0.64999998 -0.016100001
		 0.53600001 -0.0447 0.84310001 0.62669998 0.1036 0.77240002 0.1895 -0.6002 -0.77700001
		 0.75980002 -0.64999998 -0.016100001 0.96649998 -0.1305 -0.2212 0.41980001 -0.067299999
		 -0.90509999 -0.55949998 -0.0156 -0.82870001 -0.98390001 0.1786 -0.0074999998 -0.97219998
		 0.1269 0.19660001 -0.5927 -0.3653 -0.71780002 -0.55949998 -0.0156 -0.82870001 -0.4673
		 -0.044799998 -0.8829 -0.99360001 0.1118 -0.0185 -0.98390001 0.1786 -0.0074999998
		 0.77689999 -0.60000002 -0.1908 0.54350001 -0.59460002 0.59240001 -0.032000002 -0.99900001
		 -0.030099999 0.34099999 -0.66189998 -0.66750002 -0.4673 -0.044799998 -0.8829 -0.49110001
		 -0.64109999 -0.58969998 -0.8563 -0.51249999 0.0638 -0.99360001 0.1118 -0.0185 0.4007
		 -0.119 -0.9084 0.96530002 -0.063100003 -0.25350001 0.77689999 -0.60000002 -0.1908
		 0.34099999 -0.66189998 -0.66750002 0.96649998 -0.1305 -0.2212 0.96530002 -0.063100003
		 -0.25350001 0.4007 -0.119 -0.9084 0.41980001 -0.067299999 -0.90509999 -0.2983 0.33199999
		 0.89490002 -0.48980001 0.2045 0.84750003 0.62669998 0.1036 0.77240002 0.53600001
		 -0.0447 0.84310001 0.53600001 -0.0447 0.84310001 0.2687 0.16410001 0.94910002 -0.31799999
		 0.58109999 0.74919999 -0.2983 0.33199999 0.89490002;
	setAttr ".n[2988:3153]" -type "float3"  -0.31799999 0.58109999 0.74919999 0.2687
		 0.16410001 0.94910002 0.24510001 0.51270002 0.82279998 -0.39469999 0.6814 0.6164
		 -0.4738 0.0656 0.87819999 -0.3576 -0.68400002 0.6358 0.54350001 -0.59460002 0.59240001
		 0.63389999 -0.030200001 0.77280003 0.62669998 0.1036 0.77240002 -0.48980001 0.2045
		 0.84750003 -0.4738 0.0656 0.87819999 0.63389999 -0.030200001 0.77280003 -0.95599997
		 0.2877 -0.0568 -0.97189999 0.23459999 -0.02 -0.31799999 0.58109999 0.74919999 -0.39469999
		 0.6814 0.6164 -0.8563 -0.51249999 0.0638 -0.3576 -0.68400002 0.6358 -0.4738 0.0656
		 0.87819999 -0.99360001 0.1118 -0.0185 -0.4738 0.0656 0.87819999 -0.48980001 0.2045
		 0.84750003 -0.98390001 0.1786 -0.0074999998 -0.99360001 0.1118 -0.0185 -0.2983 0.33199999
		 0.89490002 -0.97219998 0.1269 0.19660001 -0.98390001 0.1786 -0.0074999998 -0.48980001
		 0.2045 0.84750003 0.31979999 -0.1107 0.94099998 0.2897 -0.26519999 0.91960001 0.39300001
		 -0.90429997 0.16680001 0.61930001 -0.76700002 0.16779999 0.3786 -0.0614 0.9235 0.82029998
		 -0.55580002 0.13500001 0.87190002 -0.4858 0.061099999 0.49829999 -0.71270001 0.49380001
		 0.1582 -0.5783 -0.80040002 0.61930001 -0.76700002 0.16779999 0.39300001 -0.90429997
		 0.16680001 0.0352 -0.62730002 -0.778 0.27939999 -0.50800002 -0.81480002 0.4104 -0.83109999
		 -0.37529999 0.87190002 -0.4858 0.061099999 0.82029998 -0.55580002 0.13500001 0.91909999
		 -0.39120001 -0.046700001 0.92089999 -0.34060001 -0.18970001 0.95829999 -0.28569999
		 0.0038000001 0.69379997 -0.70560002 0.14399999 0.34999999 -0.62330002 0.69919997
		 0.47499999 -0.2492 0.84399998 0.67970002 -0.73339999 0.0070000002 0.81440002 -0.57929999
		 -0.032499999 0.1999 -0.308 0.93019998 0.16140001 -0.97670001 0.1418 0.45640001 -0.88749999
		 0.063600004 0.32570001 -0.36300001 0.87300003 0.1214 -0.29530001 0.94770002 -0.55680001
		 0.035700001 0.82980001 -0.78259999 -0.58609998 0.2097 -0.13240001 -0.97100002 0.1991
		 0.169 -0.96990001 0.17550001 -0.74860001 -0.63520002 0.19 -0.70450002 -0.45289999
		 -0.54640001 -0.1026 -0.64170003 -0.76010001 0.169 -0.96990001 0.17550001 0.1749 -0.31099999
		 0.93419999 -0.5485 -0.2332 0.80299997 -0.74860001 -0.63520002 0.19 0.93279999 -0.3017
		 0.1972 0.50999999 -0.68110001 -0.52530003 0.77340001 -0.63139999 0.057 0.92690003
		 -0.28169999 0.24789999 0.93279999 -0.3017 0.1972 0.89359999 -0.3698 0.2545 0.45410001
		 -0.48010001 -0.75050002 0.50999999 -0.68110001 -0.52530003 0.77600002 -0.56739998
		 0.27559999 0.65060002 -0.73199999 0.20200001 0.2386 -0.60369998 -0.76059997 0.3712
		 -0.58380002 -0.72210002 0.51179999 -0.8265 0.23459999 0.0317 -0.9637 0.2651 -0.4668
		 -0.73619998 -0.49000001 0.16580001 -0.63770002 -0.75220001 0.9515 0.02 0.30700001
		 0.92690003 -0.28169999 0.24789999 0.77340001 -0.63139999 0.057 0.95829999 -0.28569999
		 0.0038000001 0.9989 0.046399999 0.0080000004 0.92199999 0.26100001 0.2861 0.9515
		 0.02 0.30700001 0.95829999 -0.28569999 0.0038000001 0.9515 0.02 0.30700001 0.49720001
		 0.1349 0.85710001 0.26620001 0.075800002 0.96090001 0.92690003 -0.28169999 0.24789999
		 0.31850001 0.1621 0.9339 0.31740001 0.1122 0.94160002 0.89359999 -0.3698 0.2545 0.93279999
		 -0.3017 0.1972 0.65060002 -0.73199999 0.20200001 0.77600002 -0.56739998 0.27559999
		 0.2667 0.047600001 0.96259999 0.278 -0.071699999 0.95789999 0.2247 -0.1009 0.96920002
		 -0.4479 -0.3502 0.82260001 0.0317 -0.9637 0.2651 0.51179999 -0.8265 0.23459999 -0.78259999
		 -0.069600001 0.61870003 -0.79809999 0.28799999 0.52929997 0.31850001 0.1621 0.9339
		 0.26620001 0.075800002 0.96090001 -0.0147 -0.74199998 0.67019999 -0.4197 -0.3867
		 0.8211 0.49720001 0.1349 0.85710001 0.2687 0.16410001 0.94910002 0.2687 0.16410001
		 0.94910002 0.49720001 0.1349 0.85710001 0.64819998 0.39480001 0.65109998 0.24510001
		 0.51270002 0.82279998 0.64819998 0.39480001 0.65109998 0.49720001 0.1349 0.85710001
		 0.9515 0.02 0.30700001 0.92199999 0.26100001 0.2861 -0.4648 0.39480001 0.79250002
		 -0.99669999 0.080700003 -0.0125 -0.95599997 0.2877 -0.0568 -0.39469999 0.6814 0.6164
		 -0.3924 0.3567 0.84780002 0.56559998 0.38820001 0.72759998 0.4752 0.24169999 0.84600002
		 -0.46630001 0.3951 0.79149997 0.56559998 0.38820001 0.72759998 0.96310002 0.1786
		 0.20119999 0.95310003 0.0634 0.296 0.4752 0.24169999 0.84600002 0.78600001 -0.3396
		 -0.5165 0.027799999 -0.27509999 -0.96100003 0.027899999 -0.1837 -0.98259997 0.78049999
		 -0.0678 -0.62150002 0.98720002 -0.0108 -0.1593 0.92089999 -0.34060001 -0.18970001
		 0.78600001 -0.3396 -0.5165 0.78049999 -0.0678 -0.62150002 0.81440002 -0.57929999
		 -0.032499999 0.67970002 -0.73339999 0.0070000002 0.2033 -0.45359999 -0.86769998 0.25690001
		 -0.58130002 -0.77209997 0.45640001 -0.88749999 0.063600004 0.16140001 -0.97670001
		 0.1418 -0.14480001 -0.56120002 -0.81489998 0.0337 -0.56819999 -0.8222 -0.13240001
		 -0.97100002 0.1991 -0.78259999 -0.58609998 0.2097 -0.85219997 -0.121 -0.50910002
		 -0.3125 -0.54640001 -0.77700001 0.9989 0.046399999 0.0080000004 0.95829999 -0.28569999
		 0.0038000001 0.92089999 -0.34060001 -0.18970001 0.98720002 -0.0108 -0.1593 -0.77170002
		 -0.51300001 -0.3761 -0.7148 -0.46470001 -0.5226 -0.97189999 0.23459999 -0.02 -0.95599997
		 0.2877 -0.0568 -0.97189999 0.23459999 -0.02 -0.7148 -0.46470001 -0.5226;
	setAttr ".n[3154:3319]" -type "float3"  -0.5927 -0.3653 -0.71780002 -0.97219998
		 0.1269 0.19660001 -0.5927 -0.3653 -0.71780002 -0.7148 -0.46470001 -0.5226 -0.26980001
		 -0.92070001 -0.2818 0.1895 -0.6002 -0.77700001 0.2687 0.16410001 0.94910002 0.53600001
		 -0.0447 0.84310001 0.75980002 -0.64999998 -0.016100001 -0.0147 -0.74199998 0.67019999
		 -0.90179998 -0.4208 0.0986 -0.90039998 -0.4206 -0.1116 -0.79809999 0.28799999 0.52929997
		 -0.78259999 -0.069600001 0.61870003 -0.76190001 -0.1901 -0.61919999 0.027899999 -0.1837
		 -0.98259997 0.027799999 -0.27509999 -0.96100003 -0.8301 -0.2112 -0.51599997 -0.82810003
		 0.32780001 -0.45469999 -0.88249999 0.003 0.47029999 -0.96929997 -0.1998 0.1433 -0.90920001
		 -0.021400001 -0.41580001 -0.88249999 0.003 0.47029999 -0.98299998 -0.044100001 -0.178
		 -0.96640003 -0.204 0.1564 -0.96929997 -0.1998 0.1433 -0.90179998 -0.4208 0.0986 -0.94669998
		 -0.3071 0.097499996 -0.89179999 0.0616 0.4483 -0.90039998 -0.4206 -0.1116 -0.94669998
		 -0.3071 0.097499996 -0.96640003 -0.204 0.1564 -0.84600002 -0.1213 0.51910001 -0.97170001
		 -0.097499996 -0.21510001 -0.89179999 0.0616 0.4483 0.49829999 -0.71270001 0.49380001
		 0.50999999 -0.68110001 -0.52530003 -0.90039998 -0.4206 -0.1116 0.4104 -0.83109999
		 -0.37529999 -0.97170001 -0.097499996 -0.21510001 -0.84600002 -0.1213 0.51910001 0.34999999
		 -0.62330002 0.69919997 -0.77170002 -0.51300001 -0.3761 -0.95599997 0.2877 -0.0568
		 -0.99669999 0.080700003 -0.0125 -0.82990003 -0.40959999 -0.37889999 -0.90789998 -0.22310001
		 -0.35479999 -0.99669999 0.080700003 -0.0125 -0.97409999 -0.083999999 0.2098 -0.94
		 -0.2247 -0.25690001 -0.97409999 -0.083999999 0.2098 -0.99669999 0.080700003 -0.0125
		 -0.3924 0.3567 0.84780002 -0.46630001 0.3951 0.79149997 -0.63410002 -0.023 -0.77289999
		 -0.7956 0.43040001 0.42640001 -0.79809999 0.28799999 0.52929997 -0.90039998 -0.4206
		 -0.1116 0.45410001 -0.48010001 -0.75050002 -0.63410002 -0.023 -0.77289999 -0.90039998
		 -0.4206 -0.1116 0.50999999 -0.68110001 -0.52530003 -0.80059999 0.1934 -0.56709999
		 -0.77740002 0.4601 0.42879999 -0.47850001 0.7784 0.4064 -0.49059999 0.34540001 -0.80000001
		 -0.53780001 0.289 -0.792 -0.57380003 0.1574 -0.80369997 0.3712 -0.58380002 -0.72210002
		 0.2386 -0.60369998 -0.76059997 -0.69410002 0.58420002 0.42070001 -0.57380003 0.1574
		 -0.80369997 -0.53780001 0.289 -0.792 -0.54320002 0.70899999 0.44980001 -0.49059999
		 0.34540001 -0.80000001 0.16580001 -0.63770002 -0.75220001 -0.4668 -0.73619998 -0.49000001
		 -0.80059999 0.1934 -0.56709999 0.31740001 0.1122 0.94160002 0.31850001 0.1621 0.9339
		 -0.79809999 0.28799999 0.52929997 -0.7956 0.43040001 0.42640001 -0.54320002 0.70899999
		 0.44980001 0.278 -0.071699999 0.95789999 0.2667 0.047600001 0.96259999 -0.69410002
		 0.58420002 0.42070001 -0.77740002 0.4601 0.42879999 -0.4479 -0.3502 0.82260001 0.2247
		 -0.1009 0.96920002 -0.47850001 0.7784 0.4064 0.1978 -0.41010001 0.89029998 0.084299996
		 -0.4104 0.90799999 -0.1996 -0.9799 0.0018 0.102 -0.99400002 -0.039700001 -0.42039999
		 -0.9073 -0.0035999999 -0.92500001 -0.38 0.0024999999 -0.79680002 0.2042 -0.5686 -0.40630001
		 -0.37819999 -0.83179998 -0.42039999 -0.9073 -0.0035999999 -0.0167 -0.39289999 0.91939998
		 -0.5855 0.013 0.81059998 -0.92500001 -0.38 0.0024999999 -0.88249999 0.003 0.47029999
		 0.35170001 -0.93339998 0.070500001 0.25690001 -0.58130002 -0.77209997 -0.98299998
		 -0.044100001 -0.178 -0.29629999 -0.4377 -0.84890002 -0.14669999 -0.46090001 -0.87529999
		 0.102 -0.99400002 -0.039700001 -0.1996 -0.9799 0.0018 0.45120001 -0.88819999 -0.087200001
		 0.66280001 -0.69590002 -0.2762 0.35170001 -0.93339998 0.070500001 0.34799999 -0.37040001
		 0.86119998 0.78600001 -0.3396 -0.5165 0.92089999 -0.34060001 -0.18970001 0.6433 -0.75199997
		 -0.1437 0.71850002 -0.60619998 -0.34110001 0.66280001 -0.69590002 -0.2762 0.45120001
		 -0.88819999 -0.087200001 0.046599999 -0.40580001 -0.91280001 -0.037700001 -0.2572
		 -0.96560001 0.1999 -0.308 0.93019998 0.32570001 -0.36300001 0.87300003 -0.27770001
		 0.7166 0.63980001 -0.0691 0.79879999 0.5977 -0.84600002 -0.1213 0.51910001 -0.98299998
		 -0.044100001 -0.178 -0.65719998 0.38940001 -0.64539999 -0.43239999 0.60329998 0.67009997
		 -0.27770001 0.7166 0.63980001 -0.50529999 0.53320003 -0.6785 -0.31470001 0.616 -0.72210002
		 -0.0691 0.79879999 0.5977 -0.14480001 -0.56120002 -0.81489998 -0.31470001 0.616 -0.72210002
		 -0.50529999 0.53320003 -0.6785 0.0337 -0.56819999 -0.8222 0.20209999 0.80800003 0.55339998
		 -0.13070001 0.81660002 0.56220001 -0.55680001 0.035700001 0.82980001 0.1214 -0.29530001
		 0.94770002 0.20209999 0.80800003 0.55339998 -0.1071 0.66320002 -0.74070001 -0.4007
		 0.73940003 -0.54100001 -0.13070001 0.81660002 0.56220001 -0.85219997 -0.121 -0.50910002
		 -0.55680001 0.035700001 0.82980001 -0.13070001 0.81660002 0.56220001 -0.4007 0.73940003
		 -0.54100001 -0.85219997 -0.121 -0.50910002 -0.4007 0.73940003 -0.54100001 -0.1071
		 0.66320002 -0.74070001 -0.3125 -0.54640001 -0.77700001 0.78600001 -0.3396 -0.5165
		 0.71850002 -0.60619998 -0.34110001 -0.0052999998 -0.31169999 -0.95020002 0.027799999
		 -0.27509999 -0.96100003 0.2033 -0.45359999 -0.86769998 -0.65719998 0.38940001 -0.64539999
		 -0.98299998 -0.044100001 -0.178 0.25690001 -0.58130002 -0.77209997 -0.68449998 0.3337
		 -0.64819998 -0.97170001 -0.097499996 -0.21510001 0.4104 -0.83109999 -0.37529999 0.27939999
		 -0.50800002 -0.81480002;
	setAttr ".n[3320:3485]" -type "float3"  -0.84600002 -0.1213 0.51910001 -0.43239999
		 0.60329998 0.67009997 0.47499999 -0.2492 0.84399998 0.34999999 -0.62330002 0.69919997
		 -0.97219998 0.1269 0.19660001 -0.2983 0.33199999 0.89490002 -0.31799999 0.58109999
		 0.74919999 -0.97189999 0.23459999 -0.02 -0.6311 0.50980002 -0.58459997 -0.70450002
		 -0.45289999 -0.54640001 -0.5485 -0.2332 0.80299997 -0.47799999 0.68290001 0.55239999
		 0.66280001 -0.69590002 -0.2762 -0.037700001 -0.2572 -0.96560001 -0.0052999998 -0.31169999
		 -0.95020002 0.71850002 -0.60619998 -0.34110001 0.66280001 -0.69590002 -0.2762 0.71850002
		 -0.60619998 -0.34110001 0.6433 -0.75199997 -0.1437 0.35170001 -0.93339998 0.070500001
		 0.81440002 -0.57929999 -0.032499999 0.25690001 -0.58130002 -0.77209997 0.6433 -0.75199997
		 -0.1437 0.91909999 -0.39120001 -0.046700001 0.69379997 -0.70560002 0.14399999 0.34999999
		 -0.62330002 0.69919997 0.81440002 -0.57929999 -0.032499999 0.91909999 -0.39120001
		 -0.046700001 0.69379997 -0.70560002 0.14399999 0.89429998 -0.44209999 0.068700001
		 0.87190002 -0.4858 0.061099999 0.4104 -0.83109999 -0.37529999 0.87190002 -0.4858
		 0.061099999 0.89429998 -0.44209999 0.068700001 0.77340001 -0.63139999 0.057 0.49829999
		 -0.71270001 0.49380001 0.93279999 -0.3017 0.1972 0.92690003 -0.28169999 0.24789999
		 0.26620001 0.075800002 0.96090001 0.31850001 0.1621 0.9339 -0.8301 -0.2112 -0.51599997
		 -0.92919999 -0.3635 0.066399999 -0.88230002 -0.34740001 -0.31760001 -0.76190001 -0.1901
		 -0.61919999 -0.71609998 -0.67330003 0.1841 -0.4197 -0.3867 0.8211 -0.0147 -0.74199998
		 0.67019999 -0.26980001 -0.92070001 -0.2818 -0.88230002 -0.34740001 -0.31760001 -0.92860001
		 -0.36140001 0.084200002 -0.8373 -0.54280001 0.065399997 -0.82990003 -0.40959999 -0.37889999
		 0.96310002 0.1786 0.20119999 0.9989 0.046399999 0.0080000004 0.98720002 -0.0108 -0.1593
		 0.89950001 -0.048999999 -0.43419999 0.8926 -0.1346 -0.4303 0.88190001 -0.1574 -0.4443
		 0.95310003 0.0634 0.296 0.96310002 0.1786 0.20119999 -0.0052999998 -0.31169999 -0.95020002
		 -0.037700001 -0.2572 -0.96560001 -0.82810003 0.32780001 -0.45469999 -0.90920001 -0.021400001
		 -0.41580001 -0.97409999 -0.083999999 0.2098 -0.92570001 0.36250001 0.108 -0.89319998
		 0.28749999 -0.3459 -0.94 -0.2247 -0.25690001 0.95310003 0.0634 0.296 0.82029998 0.54210001
		 0.1822 0.31650001 0.68449998 0.65679997 0.4752 0.24169999 0.84600002 -0.89319998
		 0.28749999 -0.3459 -0.56330001 0.1099 -0.81889999 -0.6049 -0.35190001 -0.71439999
		 -0.94 -0.2247 -0.25690001 -0.3576 -0.68400002 0.6358 -0.8563 -0.51249999 0.0638 -0.032000002
		 -0.99900001 -0.030099999 0.54350001 -0.59460002 0.59240001 0.1895 -0.6002 -0.77700001
		 0.41980001 -0.067299999 -0.90509999 -0.55949998 -0.0156 -0.82870001 -0.5927 -0.3653
		 -0.71780002 -0.4673 -0.044799998 -0.8829 0.4007 -0.119 -0.9084 0.34099999 -0.66189998
		 -0.66750002 -0.49110001 -0.64109999 -0.58969998 -0.55949998 -0.0156 -0.82870001 0.41980001
		 -0.067299999 -0.90509999 0.4007 -0.119 -0.9084 -0.4673 -0.044799998 -0.8829 0.75980002
		 -0.64999998 -0.016100001 0.1895 -0.6002 -0.77700001 -0.26980001 -0.92070001 -0.2818
		 -0.0147 -0.74199998 0.67019999 -0.77170002 -0.51300001 -0.3761 -0.82990003 -0.40959999
		 -0.37889999 -0.8373 -0.54280001 0.065399997 -0.71609998 -0.67330003 0.1841 -0.90920001
		 -0.021400001 -0.41580001 -0.8301 -0.2112 -0.51599997 0.027799999 -0.27509999 -0.96100003
		 -0.0052999998 -0.31169999 -0.95020002 -0.90920001 -0.021400001 -0.41580001 -0.96929997
		 -0.1998 0.1433 -0.92919999 -0.3635 0.066399999 -0.8301 -0.2112 -0.51599997 -0.71609998
		 -0.67330003 0.1841 -0.8373 -0.54280001 0.065399997 -0.94669998 -0.3071 0.097499996
		 -0.90179998 -0.4208 0.0986 0.49720001 0.1349 0.85710001 -0.4197 -0.3867 0.8211 -0.78259999
		 -0.069600001 0.61870003 0.26620001 0.075800002 0.96090001 0.56559998 0.38820001 0.72759998
		 -0.4648 0.39480001 0.79250002 -0.39469999 0.6814 0.6164 0.24510001 0.51270002 0.82279998
		 0.96310002 0.1786 0.20119999 0.56559998 0.38820001 0.72759998 0.64819998 0.39480001
		 0.65109998 0.92199999 0.26100001 0.2861 -0.032000002 -0.99900001 -0.030099999 -0.8563
		 -0.51249999 0.0638 -0.49110001 -0.64109999 -0.58969998 0.34099999 -0.66189998 -0.66750002
		 -0.71609998 -0.67330003 0.1841 -0.90179998 -0.4208 0.0986 -0.78259999 -0.069600001
		 0.61870003 -0.4197 -0.3867 0.8211 -0.80059999 0.1934 -0.56709999 -0.4668 -0.73619998
		 -0.49000001 -0.4479 -0.3502 0.82260001 -0.77740002 0.4601 0.42879999 -0.92919999
		 -0.3635 0.066399999 -0.96929997 -0.1998 0.1433 -0.96640003 -0.204 0.1564 -0.92860001
		 -0.36140001 0.084200002 -0.8373 -0.54280001 0.065399997 -0.92860001 -0.36140001 0.084200002
		 -0.96640003 -0.204 0.1564 -0.94669998 -0.3071 0.097499996 -0.82990003 -0.40959999
		 -0.37889999 -0.99669999 0.080700003 -0.0125 -0.90789998 -0.22310001 -0.35479999 -0.88230002
		 -0.34740001 -0.31760001 -0.90789998 -0.22310001 -0.35479999 -0.94 -0.2247 -0.25690001
		 -0.6049 -0.35190001 -0.71439999 -0.51840001 -0.37720001 -0.76749998 -0.90789998 -0.22310001
		 -0.35479999 -0.65350002 -0.3299 -0.68129998 -0.76190001 -0.1901 -0.61919999 -0.88230002
		 -0.34740001 -0.31760001 0.3712 -0.58380002 -0.72210002 0.45410001 -0.48010001 -0.75050002
		 0.89359999 -0.3698 0.2545 0.77600002 -0.56739998 0.27559999 0.77600002 -0.56739998
		 0.27559999 0.89359999 -0.3698 0.2545 0.31740001 0.1122 0.94160002 0.2667 0.047600001
		 0.96259999 -0.63410002 -0.023 -0.77289999 -0.57380003 0.1574 -0.80369997;
	setAttr ".n[3486:3651]" -type "float3"  -0.69410002 0.58420002 0.42070001 -0.7956
		 0.43040001 0.42640001 -0.57380003 0.1574 -0.80369997 -0.63410002 -0.023 -0.77289999
		 0.45410001 -0.48010001 -0.75050002 0.3712 -0.58380002 -0.72210002 0.2667 0.047600001
		 0.96259999 0.31740001 0.1122 0.94160002 -0.7956 0.43040001 0.42640001 -0.69410002
		 0.58420002 0.42070001 0.16580001 -0.63770002 -0.75220001 0.2386 -0.60369998 -0.76059997
		 0.65060002 -0.73199999 0.20200001 0.51179999 -0.8265 0.23459999 0.51179999 -0.8265
		 0.23459999 0.65060002 -0.73199999 0.20200001 0.278 -0.071699999 0.95789999 0.2247
		 -0.1009 0.96920002 -0.47850001 0.7784 0.4064 -0.54320002 0.70899999 0.44980001 -0.53780001
		 0.289 -0.792 -0.49059999 0.34540001 -0.80000001 -0.49059999 0.34540001 -0.80000001
		 -0.53780001 0.289 -0.792 0.2386 -0.60369998 -0.76059997 0.16580001 -0.63770002 -0.75220001
		 0.2247 -0.1009 0.96920002 0.278 -0.071699999 0.95789999 -0.54320002 0.70899999 0.44980001
		 -0.47850001 0.7784 0.4064 -0.38510001 0.6936 0.60890001 -0.51859999 0.55650002 0.64910001
		 -0.68449998 0.3337 -0.64819998 -0.58639997 0.45339999 -0.67129999 -0.51859999 0.55650002
		 0.64910001 -0.38510001 0.6936 0.60890001 0.31979999 -0.1107 0.94099998 0.3786 -0.0614
		 0.9235 0.27939999 -0.50800002 -0.81480002 0.1582 -0.5783 -0.80040002 -0.58639997
		 0.45339999 -0.67129999 -0.68449998 0.3337 -0.64819998 0.3786 -0.0614 0.9235 0.31979999
		 -0.1107 0.94099998 0.61930001 -0.76700002 0.16779999 0.82029998 -0.55580002 0.13500001
		 0.82029998 -0.55580002 0.13500001 0.61930001 -0.76700002 0.16779999 0.1582 -0.5783
		 -0.80040002 0.27939999 -0.50800002 -0.81480002 0.0352 -0.62730002 -0.778 -0.1026
		 -0.64170003 -0.76010001 -0.27599999 0.60750002 -0.74489999 -0.45249999 0.5467 -0.70459998
		 -0.45249999 0.5467 -0.70459998 -0.27599999 0.60750002 -0.74489999 -0.015900001 0.82660002
		 0.5625 -0.2298 0.77219999 0.5923 -0.2298 0.77219999 0.5923 -0.015900001 0.82660002
		 0.5625 0.1749 -0.31099999 0.93419999 0.2897 -0.26519999 0.91960001 0.169 -0.96990001
		 0.17550001 0.39300001 -0.90429997 0.16680001 0.2897 -0.26519999 0.91960001 0.1749
		 -0.31099999 0.93419999 -0.1026 -0.64170003 -0.76010001 0.0352 -0.62730002 -0.778
		 0.39300001 -0.90429997 0.16680001 0.169 -0.96990001 0.17550001 0.45640001 -0.88749999
		 0.063600004 0.67970002 -0.73339999 0.0070000002 0.47499999 -0.2492 0.84399998 0.32570001
		 -0.36300001 0.87300003 0.0337 -0.56819999 -0.8222 0.2033 -0.45359999 -0.86769998
		 0.67970002 -0.73339999 0.0070000002 0.45640001 -0.88749999 0.063600004 -0.43239999
		 0.60329998 0.67009997 -0.27770001 0.7166 0.63980001 0.32570001 -0.36300001 0.87300003
		 0.47499999 -0.2492 0.84399998 -0.65719998 0.38940001 -0.64539999 -0.50529999 0.53320003
		 -0.6785 -0.27770001 0.7166 0.63980001 -0.43239999 0.60329998 0.67009997 0.2033 -0.45359999
		 -0.86769998 0.0337 -0.56819999 -0.8222 -0.50529999 0.53320003 -0.6785 -0.65719998
		 0.38940001 -0.64539999 -0.13240001 -0.97100002 0.1991 0.16140001 -0.97670001 0.1418
		 0.1999 -0.308 0.93019998 0.1214 -0.29530001 0.94770002 -0.3125 -0.54640001 -0.77700001
		 -0.14480001 -0.56120002 -0.81489998 0.16140001 -0.97670001 0.1418 -0.13240001 -0.97100002
		 0.1991 0.1214 -0.29530001 0.94770002 0.1999 -0.308 0.93019998 -0.0691 0.79879999
		 0.5977 0.20209999 0.80800003 0.55339998 -0.31470001 0.616 -0.72210002 -0.1071 0.66320002
		 -0.74070001 0.20209999 0.80800003 0.55339998 -0.0691 0.79879999 0.5977 -0.1071 0.66320002
		 -0.74070001 -0.31470001 0.616 -0.72210002 -0.14480001 -0.56120002 -0.81489998 -0.3125
		 -0.54640001 -0.77700001 -0.0070000002 0.7119 0.7022 -0.27509999 0.60210001 0.74949998
		 -0.56800002 0.5819 -0.58209997 -0.28780001 0.74910003 -0.59670001 0.046599999 -0.40580001
		 -0.91280001 -0.14669999 -0.46090001 -0.87529999 -0.28780001 0.74910003 -0.59670001
		 -0.56800002 0.5819 -0.58209997 0.1978 -0.41010001 0.89029998 0.34799999 -0.37040001
		 0.86119998 -0.27509999 0.60210001 0.74949998 -0.0070000002 0.7119 0.7022 0.34799999
		 -0.37040001 0.86119998 0.1978 -0.41010001 0.89029998 0.102 -0.99400002 -0.039700001
		 0.45120001 -0.88819999 -0.087200001 0.45120001 -0.88819999 -0.087200001 0.102 -0.99400002
		 -0.039700001 -0.14669999 -0.46090001 -0.87529999 0.046599999 -0.40580001 -0.91280001
		 -0.081 0.70889997 -0.70069999 0.052499998 0.68989998 -0.722 0.32839999 0.71600002
		 0.61610001 0.18719999 0.74830002 0.6365 -0.29629999 -0.4377 -0.84890002 -0.40630001
		 -0.37819999 -0.83179998 0.052499998 0.68989998 -0.722 -0.081 0.70889997 -0.70069999
		 -0.0167 -0.39289999 0.91939998 0.084299996 -0.4104 0.90799999 0.18719999 0.74830002
		 0.6365 0.32839999 0.71600002 0.61610001 -0.42039999 -0.9073 -0.0035999999 -0.1996
		 -0.9799 0.0018 0.084299996 -0.4104 0.90799999 -0.0167 -0.39289999 0.91939998 -0.1996
		 -0.9799 0.0018 -0.42039999 -0.9073 -0.0035999999 -0.40630001 -0.37819999 -0.83179998
		 -0.29629999 -0.4377 -0.84890002 -0.51840001 -0.37720001 -0.76749998 -0.30989999 -0.26539999
		 -0.91299999 0.1365 -0.34020001 -0.93040001 -0.65350002 -0.3299 -0.68129998 -0.26449999
		 0.96170002 0.072300002 -0.4824 0.86669999 -0.1268 -0.92570001 0.36250001 0.108 -0.4596
		 0.6024 0.65259999 0.062799998 0.99489999 0.078900002 -0.26449999 0.96170002 0.072300002
		 -0.4596 0.6024 0.65259999 0.31650001 0.68449998 0.65679997 0.2802 0.95609999 -0.085600004
		 0.062799998 0.99489999 0.078900002 0.31650001 0.68449998 0.65679997 0.82029998 0.54210001
		 0.1822;
	setAttr ".n[3652:3817]" -type "float3"  0.058600001 0.73949999 -0.6706 0.22679999
		 0.92159998 -0.315 0.7586 0.41119999 -0.5054 0.2446 0.1565 -0.9569 -0.4824 0.86669999
		 -0.1268 -0.50919998 0.80119997 -0.3143 -0.89319998 0.28749999 -0.3459 -0.92570001
		 0.36250001 0.108 -0.39590001 0.76340002 -0.5104 0.058600001 0.73949999 -0.6706 0.2446
		 0.1565 -0.9569 -0.56330001 0.1099 -0.81889999 0.22679999 0.92159998 -0.315 0.2802
		 0.95609999 -0.085600004 0.82029998 0.54210001 0.1822 0.7586 0.41119999 -0.5054 -0.50919998
		 0.80119997 -0.3143 -0.39590001 0.76340002 -0.5104 -0.56330001 0.1099 -0.81889999
		 -0.89319998 0.28749999 -0.3459 0.68099999 -0.2388 -0.69230002 0.6516 -0.065399997
		 -0.75569999 0.88190001 -0.1574 -0.4443 0.8926 -0.1346 -0.4303 0.6516 -0.065399997
		 -0.75569999 0.68099999 -0.2388 -0.69230002 0.1328 -0.42840001 -0.89380002 0.085100003
		 0.0524 -0.995 -0.30989999 -0.26539999 -0.91299999 -0.35710001 -0.12899999 -0.92510003
		 0.085100003 0.0524 -0.995 0.1328 -0.42840001 -0.89380002 -0.30989999 -0.26539999
		 -0.91299999 -0.51840001 -0.37720001 -0.76749998 -0.6049 -0.35190001 -0.71439999 -0.35710001
		 -0.12899999 -0.92510003 0.091300003 -0.084700003 -0.99220002 0.89950001 -0.048999999
		 -0.43419999 0.78049999 -0.0678 -0.62150002 0.027899999 -0.1837 -0.98259997 -0.76190001
		 -0.1901 -0.61919999 -0.65350002 -0.3299 -0.68129998 0.091300003 -0.084700003 -0.99220002
		 0.027899999 -0.1837 -0.98259997 -0.4249 -0.42390001 -0.79979998 -0.89300001 -0.44949999
		 0.0221 -0.86140001 -0.49939999 -0.092600003 -0.31439999 -0.37459999 -0.87230003 0.60509998
		 -0.1777 -0.77609998 -0.4249 -0.42390001 -0.79979998 -0.31439999 -0.37459999 -0.87230003
		 0.63440001 -0.1039 -0.76599997 0.63440001 -0.1039 -0.76599997 0.99440002 0.1021 0.0286
		 0.99449998 0.087700002 0.057999998 0.60509998 -0.1777 -0.77609998 0.52090001 0.0889
		 0.84899998 0.99449998 0.087700002 0.057999998 0.99440002 0.1021 0.0286 0.59100002
		 0.065099999 0.80400002 -0.4921 -0.1184 0.8624 0.52090001 0.0889 0.84899998 0.59100002
		 0.065099999 0.80400002 -0.48019999 -0.2006 0.85390002 -0.89300001 -0.44949999 0.0221
		 -0.4921 -0.1184 0.8624 -0.48019999 -0.2006 0.85390002 -0.86140001 -0.49939999 -0.092600003
		 0.99449998 0.087700002 0.057999998 0.52090001 0.0889 0.84899998 0.58170003 0.1327
		 0.80250001 0.99830002 0.0568 0.015900001 0.58170003 0.1327 0.80250001 0.52090001
		 0.0889 0.84899998 -0.4921 -0.1184 0.8624 -0.38859999 0.0052999998 0.92140001 -0.38859999
		 0.0052999998 0.92140001 -0.4921 -0.1184 0.8624 -0.89300001 -0.44949999 0.0221 -0.92479998
		 -0.30950001 0.22139999 0.62239999 -0.2359 -0.74629998 0.60509998 -0.1777 -0.77609998
		 0.99449998 0.087700002 0.057999998 0.99830002 0.0568 0.015900001 -0.4508 -0.4589
		 -0.76569998 -0.4249 -0.42390001 -0.79979998 0.60509998 -0.1777 -0.77609998 0.62239999
		 -0.2359 -0.74629998 -0.4249 -0.42390001 -0.79979998 -0.4508 -0.4589 -0.76569998 -0.92479998
		 -0.30950001 0.22139999 -0.89300001 -0.44949999 0.0221 0.69379997 -0.70560002 0.14399999
		 0.95829999 -0.28569999 0.0038000001 0.89429998 -0.44209999 0.068700001 0.95829999
		 -0.28569999 0.0038000001 0.77340001 -0.63139999 0.057 0.89429998 -0.44209999 0.068700001
		 0.1365 -0.34020001 -0.93040001 0.89950001 -0.048999999 -0.43419999 0.091300003 -0.084700003
		 -0.99220002 0.96310002 0.1786 0.20119999 0.92199999 0.26100001 0.2861 0.9989 0.046399999
		 0.0080000004 0.085100003 0.0524 -0.995 0.16329999 -0.19400001 -0.9673 0.6516 -0.065399997
		 -0.75569999 0.91909999 -0.39120001 -0.046700001 0.6433 -0.75199997 -0.1437 0.92089999
		 -0.34060001 -0.18970001 -0.92919999 -0.3635 0.066399999 -0.92860001 -0.36140001 0.084200002
		 -0.88230002 -0.34740001 -0.31760001 -0.89179999 0.0616 0.4483 -0.94669998 -0.3071
		 0.097499996 -0.97170001 -0.097499996 -0.21510001 -0.84600002 -0.1213 0.51910001 -0.96640003
		 -0.204 0.1564 -0.98299998 -0.044100001 -0.178 -0.6049 -0.35190001 -0.71439999 0.16329999
		 -0.19400001 -0.9673 -0.35710001 -0.12899999 -0.92510003 0.1365 -0.34020001 -0.93040001
		 0.091300003 -0.084700003 -0.99220002 -0.65350002 -0.3299 -0.68129998 0.98720002 -0.0108
		 -0.1593 0.78049999 -0.0678 -0.62150002 0.89950001 -0.048999999 -0.43419999 -0.92500001
		 -0.38 0.0024999999 -0.5855 0.013 0.81059998 -0.79680002 0.2042 -0.5686 -0.74860001
		 -0.63520002 0.19 -0.5485 -0.2332 0.80299997 -0.70450002 -0.45289999 -0.54640001 -0.78259999
		 -0.58609998 0.2097 -0.55680001 0.035700001 0.82980001 -0.85219997 -0.121 -0.50910002
		 0.0317 -0.9637 0.2651 -0.4479 -0.3502 0.82260001 -0.4668 -0.73619998 -0.49000001
		 -0.71609998 -0.67330003 0.1841 -0.26980001 -0.92070001 -0.2818 -0.77170002 -0.51300001
		 -0.3761 0.64819998 0.39480001 0.65109998 0.56559998 0.38820001 0.72759998 0.24510001
		 0.51270002 0.82279998 0.4104 -0.83109999 -0.37529999 0.34999999 -0.62330002 0.69919997
		 0.69379997 -0.70560002 0.14399999 0.35170001 -0.93339998 0.070500001 0.6433 -0.75199997
		 -0.1437 0.25690001 -0.58130002 -0.77209997 0.50999999 -0.68110001 -0.52530003 0.49829999
		 -0.71270001 0.49380001 0.77340001 -0.63139999 0.057 -0.99669999 0.080700003 -0.0125
		 -0.4648 0.39480001 0.79250002 -0.3924 0.3567 0.84780002 0.1365 -0.34020001 -0.93040001
		 0.1328 -0.42840001 -0.89380002 0.68099999 -0.2388 -0.69230002 -0.51840001 -0.37720001
		 -0.76749998 -0.65350002 -0.3299 -0.68129998 -0.90789998 -0.22310001 -0.35479999 0.16329999
		 -0.19400001 -0.9673 0.085100003 0.0524 -0.995;
	setAttr ".n[3818:3983]" -type "float3"  -0.35710001 -0.12899999 -0.92510003 -0.30989999
		 -0.26539999 -0.91299999 0.1328 -0.42840001 -0.89380002 0.1365 -0.34020001 -0.93040001
		 0.16329999 -0.19400001 -0.9673 0.88190001 -0.1574 -0.4443 0.6516 -0.065399997 -0.75569999
		 0.68099999 -0.2388 -0.69230002 0.89950001 -0.048999999 -0.43419999 0.1365 -0.34020001
		 -0.93040001 -0.3924 0.3567 0.84780002 -0.4648 0.39480001 0.79250002 0.56559998 0.38820001
		 0.72759998 0.96310002 0.1786 0.20119999 0.89950001 -0.048999999 -0.43419999 0.8926
		 -0.1346 -0.4303 0.8926 -0.1346 -0.4303 0.89950001 -0.048999999 -0.43419999 0.68099999
		 -0.2388 -0.69230002 -0.7148 -0.46470001 -0.5226 -0.77170002 -0.51300001 -0.3761 -0.26980001
		 -0.92070001 -0.2818 0.93809998 0.19859999 -0.28389999 0.60000002 0.14830001 -0.78609997
		 0.57870001 0.2158 -0.78649998 0.96259999 0.1124 -0.2463 0.60000002 0.14830001 -0.78609997
		 -0.2462 0.15629999 -0.95649999 -0.33860001 0.37099999 -0.86470002 0.57870001 0.2158
		 -0.78649998 -0.2033 -0.63569999 -0.74470001 -0.32609999 -0.068899997 -0.94279999
		 0.49689999 -0.046599999 -0.86650002 0.419 -0.67640001 -0.60579997 0.61330003 -0.74629998
		 -0.25850001 0.419 -0.67640001 -0.60579997 0.49689999 -0.046599999 -0.86650002 0.93449998
		 0.0208 -0.35530001 0.9436 0.32780001 0.0458 0.93809998 0.19859999 -0.28389999 0.96259999
		 0.1124 -0.2463 0.90630001 0.2149 0.36399999 -0.96090001 0.1971 0.1946 -0.4614 0.57029998
		 0.6796 -0.54879999 0.4452 0.7076 -0.95950001 0.22480001 0.1697 -0.4614 0.57029998
		 0.6796 -0.96090001 0.1971 0.1946 -0.8524 0.45719999 0.25369999 -0.28940001 0.8075
		 0.514 -0.99400002 -0.094099998 0.055799998 -0.99489999 0.031399999 0.096000001 -0.8524
		 0.45719999 0.25369999 -0.96090001 0.1971 0.1946 0.77179998 0.63150001 0.074699998
		 0.9436 0.32780001 0.0458 0.5104 0.61870003 0.59729999 0.30809999 0.85299999 0.42129999
		 0.9436 0.32780001 0.0458 0.77179998 0.63150001 0.074699998 0.96969998 0.1367 -0.2026
		 0.97390002 0.075800002 -0.2139 0.61330003 -0.74629998 -0.25850001 0.93449998 0.0208
		 -0.35530001 0.97390002 0.075800002 -0.2139 0.653 -0.72310001 -0.2251 0.98799998 0.1178
		 0.0999 0.96969998 0.1367 -0.2026 0.77179998 0.63150001 0.074699998 0.69559997 0.60790002
		 0.3829 0.96969998 0.1367 -0.2026 0.98799998 0.1178 0.0999 0.6979 -0.71280003 0.070200004
		 0.61680001 -0.76120001 -0.2001 0.71109998 -0.0044999998 0.70310003 0.24169999 -0.0517
		 0.96899998 0.1186 -0.80110002 0.58670002 0.48609999 -0.74180001 0.4619 -0.21359999
		 -0.76700002 0.60509998 -0.31169999 0.0218 0.94989997 -0.83310002 0.0339 0.5521 -0.61760002
		 -0.70450002 0.3495 -0.83310002 0.0339 0.5521 -0.31169999 0.0218 0.94989997 -0.38510001
		 0.63950002 0.66540003 -0.73019999 0.5474 0.40880001 -0.73019999 0.5474 0.40880001
		 -0.38510001 0.63950002 0.66540003 -0.28940001 0.8075 0.514 -0.8524 0.45719999 0.25369999
		 -0.83310002 0.0339 0.5521 -0.73019999 0.5474 0.40880001 -0.8524 0.45719999 0.25369999
		 -0.99489999 0.031399999 0.096000001 -0.83310002 0.0339 0.5521 -0.99489999 0.031399999
		 0.096000001 -0.68089998 -0.73229998 -0.0133 -0.61760002 -0.70450002 0.3495 0.69559997
		 0.60790002 0.3829 0.1936 0.66820002 0.7184 0.24169999 -0.0517 0.96899998 0.71109998
		 -0.0044999998 0.70310003 0.69559997 0.60790002 0.3829 0.77179998 0.63150001 0.074699998
		 0.30809999 0.85299999 0.42129999 0.1936 0.66820002 0.7184 -0.6638 -0.74669999 -0.0429
		 -0.68089998 -0.73229998 -0.0133 -0.99489999 0.031399999 0.096000001 -0.99400002 -0.094099998
		 0.055799998 -0.66600001 -0.74519998 0.034600001 -0.99159998 -0.1124 0.063600004 -0.90740001
		 -0.071699999 -0.41420001 -0.66299999 -0.6796 -0.31389999 -0.9971 0.053800002 0.054499999
		 -0.95950001 0.22480001 0.1697 -0.8495 0.39430001 -0.35049999 -0.87449998 0.18719999
		 -0.4474 -0.87449998 0.18719999 -0.4474 -0.8495 0.39430001 -0.35049999 -0.33860001
		 0.37099999 -0.86470002 -0.2462 0.15629999 -0.95649999 -0.66299999 -0.6796 -0.31389999
		 -0.90740001 -0.071699999 -0.41420001 -0.32609999 -0.068899997 -0.94279999 -0.2033
		 -0.63569999 -0.74470001 -0.68089998 -0.73229998 -0.0133 -0.6638 -0.74669999 -0.0429
		 -0.0239 -0.99479997 -0.099200003 -0.0077 -0.99830002 -0.058400001 -0.21359999 -0.76700002
		 0.60509998 -0.61760002 -0.70450002 0.3495 -0.00039999999 -1 -0.0046999999 0.1186
		 -0.80110002 0.58670002 0.653 -0.72310001 -0.2251 0.97390002 0.075800002 -0.2139 0.96969998
		 0.1367 -0.2026 0.61680001 -0.76120001 -0.2001 0.93809998 0.19859999 -0.28389999 0.9436
		 0.32780001 0.0458 0.97390002 0.075800002 -0.2139 0.93449998 0.0208 -0.35530001 0.60000002
		 0.14830001 -0.78609997 0.93809998 0.19859999 -0.28389999 0.93449998 0.0208 -0.35530001
		 0.49689999 -0.046599999 -0.86650002 -0.2462 0.15629999 -0.95649999 0.60000002 0.14830001
		 -0.78609997 0.49689999 -0.046599999 -0.86650002 -0.32609999 -0.068899997 -0.94279999
		 -0.90740001 -0.071699999 -0.41420001 -0.87449998 0.18719999 -0.4474 -0.2462 0.15629999
		 -0.95649999 -0.32609999 -0.068899997 -0.94279999 -0.9971 0.053800002 0.054499999
		 -0.87449998 0.18719999 -0.4474 -0.90740001 -0.071699999 -0.41420001 -0.99159998 -0.1124
		 0.063600004 -0.4614 0.57029998 0.6796 0.5104 0.61870003 0.59729999 0.4007 0.52319998
		 0.75209999 -0.54879999 0.4452 0.7076 0.5104 0.61870003 0.59729999 -0.4614 0.57029998
		 0.6796 -0.28940001 0.8075 0.514 0.30809999 0.85299999 0.42129999;
	setAttr ".n[3984:4149]" -type "float3"  -0.21359999 -0.76700002 0.60509998 0.1186
		 -0.80110002 0.58670002 0.24169999 -0.0517 0.96899998 -0.31169999 0.0218 0.94989997
		 0.1936 0.66820002 0.7184 -0.38510001 0.63950002 0.66540003 -0.31169999 0.0218 0.94989997
		 0.24169999 -0.0517 0.96899998 0.30809999 0.85299999 0.42129999 -0.28940001 0.8075
		 0.514 -0.38510001 0.63950002 0.66540003 0.1936 0.66820002 0.7184 0.9436 0.32780001
		 0.0458 0.90630001 0.2149 0.36399999 0.4007 0.52319998 0.75209999 0.5104 0.61870003
		 0.59729999 0.98799998 0.1178 0.0999 0.71109998 -0.0044999998 0.70310003 0.48609999
		 -0.74180001 0.4619 0.6979 -0.71280003 0.070200004 0.653 -0.72310001 -0.2251 -0.0239
		 -0.99479997 -0.099200003 -0.015 -0.99809998 -0.059700001 0.61330003 -0.74629998 -0.25850001
		 0.61680001 -0.76120001 -0.2001 -0.0077 -0.99830002 -0.058400001 -0.0239 -0.99479997
		 -0.099200003 0.653 -0.72310001 -0.2251 -0.00039999999 -1 -0.0046999999 0.6979 -0.71280003
		 0.070200004 0.48609999 -0.74180001 0.4619 0.1186 -0.80110002 0.58670002 -0.015 -0.99809998
		 -0.059700001 -0.66600001 -0.74519998 0.034600001 -0.66299999 -0.6796 -0.31389999
		 -0.2033 -0.63569999 -0.74470001 -0.015 -0.99809998 -0.059700001 -0.2033 -0.63569999
		 -0.74470001 0.419 -0.67640001 -0.60579997 0.61330003 -0.74629998 -0.25850001 -0.99159998
		 -0.1124 0.063600004 -0.99400002 -0.094099998 0.055799998 -0.96090001 0.1971 0.1946
		 -0.9971 0.053800002 0.054499999 -0.6638 -0.74669999 -0.0429 -0.99400002 -0.094099998
		 0.055799998 -0.99159998 -0.1124 0.063600004 -0.66600001 -0.74519998 0.034600001 -0.0239
		 -0.99479997 -0.099200003 -0.6638 -0.74669999 -0.0429 -0.66600001 -0.74519998 0.034600001
		 -0.015 -0.99809998 -0.059700001 -0.00039999999 -1 -0.0046999999 -0.61760002 -0.70450002
		 0.3495 -0.68089998 -0.73229998 -0.0133 -0.0077 -0.99830002 -0.058400001 0.6979 -0.71280003
		 0.070200004 -0.00039999999 -1 -0.0046999999 -0.0077 -0.99830002 -0.058400001 0.61680001
		 -0.76120001 -0.2001 -0.9971 0.053800002 0.054499999 -0.96090001 0.1971 0.1946 -0.95950001
		 0.22480001 0.1697 0.69559997 0.60790002 0.3829 0.71109998 -0.0044999998 0.70310003
		 0.98799998 0.1178 0.0999 -0.3698 0.1767 -0.91210002 -0.9091 0.0471 -0.41389999 -0.84609997
		 0.043400001 -0.53130001 -0.27919999 0.1541 -0.94779998 0.46700001 0.2129 -0.85829997
		 -0.3698 0.1767 -0.91210002 -0.27919999 0.1541 -0.94779998 0.49309999 0.2462 -0.8344
		 0.96259999 0.16140001 -0.2177 0.95060003 0.2362 -0.2015 0.8524 0.1278 0.50700003
		 0.8876 0.081100002 0.4535 -0.86189997 -0.065700002 0.50269997 -0.80699998 -0.2401
		 0.5395 -0.27079999 -0.2676 0.92470002 -0.26899999 -0.0524 0.96170002 0.8876 0.081100002
		 0.4535 0.8524 0.1278 0.50700003 0.4258 0.068999998 0.90219998 0.47389999 -0.1091
		 0.87379998 -0.66960001 -0.74260002 0.0134 -0.59780002 -0.2474 -0.76249999 -0.84609997
		 0.043400001 -0.53130001 -0.99980003 -0.015 0.0099999998 -0.99980003 -0.015 0.0099999998
		 -0.84609997 0.043400001 -0.53130001 -0.9091 0.0471 -0.41389999 -0.98000002 -0.1706
		 0.1024 -0.99980003 -0.015 0.0099999998 -0.86189997 -0.065700002 0.50269997 -0.60229999
		 -0.38940001 0.69679999 -0.66960001 -0.74260002 0.0134 -0.80699998 -0.2401 0.5395
		 -0.86189997 -0.065700002 0.50269997 -0.99980003 -0.015 0.0099999998 -0.98000002 -0.1706
		 0.1024 0.47389999 -0.1091 0.87379998 0.4258 0.068999998 0.90219998 -0.26899999 -0.0524
		 0.96170002 -0.27079999 -0.2676 0.92470002 0.96259999 0.16140001 -0.2177 0.46700001
		 0.2129 -0.85829997 0.49309999 0.2462 -0.8344 0.95060003 0.2362 -0.2015 0.8876 0.081100002
		 0.4535 0.47389999 -0.1091 0.87379998 0.37290001 -0.51289999 0.77319998 0.87290001
		 -0.32190001 0.36660001 0.46900001 -0.2062 -0.85879999 0.46700001 0.2129 -0.85829997
		 0.96259999 0.16140001 -0.2177 0.93040001 -0.1824 -0.31799999 -0.9091 0.0471 -0.41389999
		 -0.3698 0.1767 -0.91210002 -0.27880001 -0.2669 -0.92250001 -0.85750002 -0.3337 -0.3917
		 -0.98000002 -0.1706 0.1024 -0.9091 0.0471 -0.41389999 -0.85750002 -0.3337 -0.3917
		 -0.87720001 -0.46630001 0.1141 -0.27079999 -0.2676 0.92470002 -0.80699998 -0.2401
		 0.5395 -0.69410002 -0.57419997 0.43430001 -0.2251 -0.62480003 0.74760002 0.47389999
		 -0.1091 0.87379998 -0.27079999 -0.2676 0.92470002 -0.2251 -0.62480003 0.74760002
		 0.37290001 -0.51289999 0.77319998 -0.69410002 -0.57419997 0.43430001 -0.80699998
		 -0.2401 0.5395 -0.98000002 -0.1706 0.1024 -0.87720001 -0.46630001 0.1141 0.93040001
		 -0.1824 -0.31799999 0.96259999 0.16140001 -0.2177 0.8876 0.081100002 0.4535 0.87290001
		 -0.32190001 0.36660001 -0.27880001 -0.2669 -0.92250001 -0.3698 0.1767 -0.91210002
		 0.46700001 0.2129 -0.85829997 0.46900001 -0.2062 -0.85879999 -0.55949998 -0.57249999
		 -0.59939998 -0.80070001 -0.59799999 0.035799999 -0.87720001 -0.46630001 0.1141 -0.85750002
		 -0.3337 -0.3917 -0.2251 -0.62480003 0.74760002 -0.149 -0.79699999 0.58530003 0.366
		 -0.74559999 0.55690002 0.37290001 -0.51289999 0.77319998 0.87290001 -0.32190001 0.36660001
		 0.70289999 -0.67129999 0.2353 0.80769998 -0.48879999 -0.32980001 0.93040001 -0.1824
		 -0.31799999 -0.69410002 -0.57419997 0.43430001 -0.53149998 -0.75819999 0.37779999
		 -0.149 -0.79699999 0.58530003 -0.2251 -0.62480003 0.74760002 -0.87720001 -0.46630001
		 0.1141 -0.80070001 -0.59799999 0.035799999 -0.53149998 -0.75819999 0.37779999 -0.69410002
		 -0.57419997 0.43430001;
	setAttr ".n[4150:4315]" -type "float3"  0.37290001 -0.51289999 0.77319998 0.366
		 -0.74559999 0.55690002 0.70289999 -0.67129999 0.2353 0.87290001 -0.32190001 0.36660001
		 0.93040001 -0.1824 -0.31799999 0.80769998 -0.48879999 -0.32980001 0.3497 -0.53490001
		 -0.76920003 0.46900001 -0.2062 -0.85879999 0.3497 -0.53490001 -0.76920003 -0.1471
		 -0.63620001 -0.75730002 -0.27880001 -0.2669 -0.92250001 0.46900001 -0.2062 -0.85879999
		 -0.1471 -0.63620001 -0.75730002 -0.55949998 -0.57249999 -0.59939998 -0.85750002 -0.3337
		 -0.3917 -0.27880001 -0.2669 -0.92250001 0.57069999 0.1644 -0.80449998 0.97219998
		 0.21250001 -0.098099999 0.95060003 0.2362 -0.2015 0.49309999 0.2462 -0.8344 -0.038600001
		 -0.073100001 -0.99659997 0.57069999 0.1644 -0.80449998 0.49309999 0.2462 -0.8344
		 -0.27919999 0.1541 -0.94779998 -0.59780002 -0.2474 -0.76249999 -0.038600001 -0.073100001
		 -0.99659997 -0.27919999 0.1541 -0.94779998 -0.84609997 0.043400001 -0.53130001 0.95060003
		 0.2362 -0.2015 0.97219998 0.21250001 -0.098099999 0.74659997 0.084399998 0.65990001
		 0.8524 0.1278 0.50700003 -0.26899999 -0.0524 0.96170002 -0.048999999 -0.2104 0.97640002
		 -0.60229999 -0.38940001 0.69679999 -0.86189997 -0.065700002 0.50269997 0.4258 0.068999998
		 0.90219998 0.38569999 0.11 0.91600001 -0.048999999 -0.2104 0.97640002 -0.26899999
		 -0.0524 0.96170002 0.8524 0.1278 0.50700003 0.74659997 0.084399998 0.65990001 0.38569999
		 0.11 0.91600001 0.4258 0.068999998 0.90219998 0 -1 0.0051000002 0 -0.77490002 -0.63209999
		 -0.59780002 -0.2474 -0.76249999 -0.66960001 -0.74260002 0.0134 0 -0.76289999 0.64649999
		 0 -1 0.0051000002 -0.66960001 -0.74260002 0.0134 -0.60229999 -0.38940001 0.69679999
		 0 -0.4659 0.88480002 0 -0.76289999 0.64649999 -0.60229999 -0.38940001 0.69679999
		 -0.048999999 -0.2104 0.97640002 0 -0.77490002 -0.63209999 0 -0.35350001 -0.93540001
		 -0.038600001 -0.073100001 -0.99659997 -0.59780002 -0.2474 -0.76249999 -0.86729997
		 -0.030300001 -0.49680001 -0.85470003 -0.14380001 -0.49869999 -0.91900003 -0.1201
		 0.37549999 -0.9181 -0.1007 0.38319999 0.33919999 -0.071500003 0.93800002 -0.38080001
		 -0.12620001 0.91600001 -0.38260001 -0.1398 0.91329998 0.35080001 -0.075900003 0.93339998
		 0.77609998 0.084899999 -0.62480003 0.99730003 0.0251 0.068700001 0.99940002 -0.0274
		 0.0206 0.74379998 0.088600002 -0.66250002 0.74379998 0.088600002 -0.66250002 -0.032200001
		 -0.064499997 -0.99739999 -0.0052 0.035300002 -0.99940002 0.77609998 0.084899999 -0.62480003
		 -0.26050001 -0.029300001 -0.96499997 -0.1684 -0.1497 -0.97430003 0.74699998 -0.12639999
		 -0.65270001 0.6063 -0.0766 -0.79159999 0.99730003 0.0251 0.068700001 0.78860003 -0.0062000002
		 0.61479998 0.81879997 -0.0133 0.574 0.99940002 -0.0274 0.0206 -0.85470003 -0.14380001
		 -0.49869999 -0.86729997 -0.030300001 -0.49680001 -0.0052 0.035300002 -0.99940002
		 -0.032200001 -0.064499997 -0.99739999 -0.91900003 -0.1201 0.37549999 -0.85470003
		 -0.14380001 -0.49869999 -0.87959999 -0.163 -0.447 -0.92040002 -0.040199999 0.3888
		 -0.91689998 0.051399998 0.39579999 -0.94169998 -0.1077 0.31869999 -0.86540002 -0.071199998
		 -0.49590001 -0.884 0.1428 -0.44499999 -0.38260001 -0.1398 0.91329998 -0.38080001
		 -0.12620001 0.91600001 -0.9181 -0.1007 0.38319999 -0.91900003 -0.1201 0.37549999
		 0.41679999 0.20730001 0.88499999 0.35190001 0.063699998 0.9339 -0.38409999 -0.00069999998
		 0.92330003 -0.41339999 0.12970001 0.9012 0.86799997 0.1561 0.47139999 0.8409 0.0142
		 0.54110003 0.35190001 0.063699998 0.9339 0.41679999 0.20730001 0.88499999 0.99980003
		 -0.0123 0.0135 0.96249998 0.027899999 -0.27000001 0.6063 -0.0766 -0.79159999 0.74699998
		 -0.12639999 -0.65270001 -0.12620001 -0.099600002 -0.98699999 -0.1684 -0.1497 -0.97430003
		 -0.89810002 -0.1917 -0.39570001 -0.87959999 -0.163 -0.447 0.30489999 -0.067900002
		 0.94999999 -0.4375 -0.1219 0.89090002 -0.39840001 0.065700002 0.91479999 0.3346 0.096500002
		 0.93739998 0.99739999 -0.0251 0.067500003 0.79280001 -0.059500001 0.60659999 0.76880002
		 0.0854 0.63370001 0.98720002 0.1166 0.1085 -0.4375 -0.1219 0.89090002 -0.94169998
		 -0.1077 0.31869999 -0.91689998 0.051399998 0.39579999 -0.39840001 0.065700002 0.91479999
		 0.79280001 -0.059500001 0.60659999 0.30489999 -0.067900002 0.94999999 0.3346 0.096500002
		 0.93739998 0.76880002 0.0854 0.63370001 0.78860003 -0.0062000002 0.61479998 0.33919999
		 -0.071500003 0.93800002 0.35080001 -0.075900003 0.93339998 0.81879997 -0.0133 0.574
		 0.99980003 -0.0123 0.0135 0.99910003 -0.0394 0.0174 0.8409 0.0142 0.54110003 0.86799997
		 0.1561 0.47139999 -0.41339999 0.12970001 0.9012 -0.38409999 -0.00069999998 0.92330003
		 -0.92040002 -0.040199999 0.3888 -0.92390001 -0.0374 0.38069999 0.43889999 0.264 0.85890001
		 0.4434 0.52789998 0.72430003 0.92510003 0.2403 0.29409999 0.94999999 0.083400004
		 0.301 0.4684 0.047800001 -0.8822 0.50400001 0.18799999 -0.84299999 -0.38429999 0.23819999
		 -0.8919 -0.4179 0.040899999 -0.90759999 -0.92650002 -0.021299999 0.3757 -0.94559997
		 -0.062100001 -0.31940001 -0.94660002 -0.057 -0.31740001 -0.9375 -0.066200003 0.34150001
		 -0.94559997 -0.062100001 -0.31940001 -0.26050001 -0.029300001 -0.96499997 -0.4179
		 0.040899999 -0.90759999 -0.94660002 -0.057 -0.31740001 -0.94660002 -0.057 -0.31740001
		 -0.4179 0.040899999 -0.90759999 -0.38429999 0.23819999 -0.8919 -0.94809997 0.1111
		 -0.2978 0.4684 0.047800001 -0.8822 -0.4179 0.040899999 -0.90759999;
	setAttr ".n[4316:4481]" -type "float3"  -0.26050001 -0.029300001 -0.96499997
		 0.6063 -0.0766 -0.79159999 0.34990001 0.2449 0.90420002 0.43889999 0.264 0.85890001
		 0.94999999 0.083400004 0.301 0.91829997 0.1969 0.34349999 -0.40669999 0.2075 0.8897
		 -0.92650002 -0.021299999 0.3757 -0.9375 -0.066200003 0.34150001 -0.47310001 0.27739999
		 0.8362 -0.9375 -0.066200003 0.34150001 -0.9745 0.1639 0.1529 -0.47459999 0.52810001
		 0.70420003 -0.47310001 0.27739999 0.8362 -0.94809997 0.1111 -0.2978 -0.9745 0.1639
		 0.1529 -0.9375 -0.066200003 0.34150001 -0.94660002 -0.057 -0.31740001 0.82480001
		 -0.026900001 -0.56480002 0.99739999 -0.0251 0.067500003 0.98720002 0.1166 0.1085
		 0.78509998 0.1357 -0.60439998 0.82480001 -0.026900001 -0.56480002 0.78509998 0.1357
		 -0.60439998 -0.021299999 0.15539999 -0.98760003 0.049699999 -0.088 -0.99489999 -0.884
		 0.1428 -0.44499999 -0.86540002 -0.071199998 -0.49590001 0.049699999 -0.088 -0.99489999
		 -0.021299999 0.15539999 -0.98760003 0.74159998 0.0328 -0.67009997 0.74699998 -0.12639999
		 -0.65270001 -0.1684 -0.1497 -0.97430003 -0.12620001 -0.099600002 -0.98699999 -0.89810002
		 -0.1917 -0.39570001 -0.94559997 -0.062100001 -0.31940001 -0.92650002 -0.021299999
		 0.3757 -0.92390001 -0.0374 0.38069999 0.41679999 0.20730001 0.88499999 -0.41339999
		 0.12970001 0.9012 -0.40669999 0.2075 0.8897 0.34990001 0.2449 0.90420002 0.86799997
		 0.1561 0.47139999 0.41679999 0.20730001 0.88499999 0.34990001 0.2449 0.90420002 0.91829997
		 0.1969 0.34349999 0.99940002 -0.0274 0.0206 0.99910003 -0.0394 0.0174 0.74159998
		 0.0328 -0.67009997 0.74379998 0.088600002 -0.66250002 -0.1684 -0.1497 -0.97430003
		 -0.26050001 -0.029300001 -0.96499997 -0.94559997 -0.062100001 -0.31940001 -0.89810002
		 -0.1917 -0.39570001 0.99980003 -0.0123 0.0135 0.86799997 0.1561 0.47139999 0.91829997
		 0.1969 0.34349999 0.96249998 0.027899999 -0.27000001 -0.41339999 0.12970001 0.9012
		 -0.92390001 -0.0374 0.38069999 -0.92650002 -0.021299999 0.3757 -0.40669999 0.2075
		 0.8897 0.4434 0.52789998 0.72430003 0.43889999 0.264 0.85890001 -0.47310001 0.27739999
		 0.8362 -0.47459999 0.52810001 0.70420003 0.43889999 0.264 0.85890001 0.34990001 0.2449
		 0.90420002 -0.40669999 0.2075 0.8897 -0.47310001 0.27739999 0.8362 0.50400001 0.18799999
		 -0.84299999 0.4684 0.047800001 -0.8822 0.93430001 -0.0228 -0.35589999 0.93409997
		 0.1246 -0.33469999 0.6063 -0.0766 -0.79159999 0.96249998 0.027899999 -0.27000001
		 0.93430001 -0.0228 -0.35589999 0.4684 0.047800001 -0.8822 0.91829997 0.1969 0.34349999
		 0.94999999 0.083400004 0.301 0.93430001 -0.0228 -0.35589999 0.96249998 0.027899999
		 -0.27000001 0.92510003 0.2403 0.29409999 0.93409997 0.1246 -0.33469999 0.93430001
		 -0.0228 -0.35589999 0.94999999 0.083400004 0.301 -0.87959999 -0.163 -0.447 -0.89810002
		 -0.1917 -0.39570001 -0.92390001 -0.0374 0.38069999 -0.92040002 -0.040199999 0.3888
		 -0.38409999 -0.00069999998 0.92330003 0.35190001 0.063699998 0.9339 0.35080001 -0.075900003
		 0.93339998 -0.38260001 -0.1398 0.91329998 0.8409 0.0142 0.54110003 0.81879997 -0.0133
		 0.574 0.35080001 -0.075900003 0.93339998 0.35190001 0.063699998 0.9339 -0.12620001
		 -0.099600002 -0.98699999 -0.87959999 -0.163 -0.447 -0.85470003 -0.14380001 -0.49869999
		 -0.032200001 -0.064499997 -0.99739999 0.99910003 -0.0394 0.0174 0.99940002 -0.0274
		 0.0206 0.81879997 -0.0133 0.574 0.8409 0.0142 0.54110003 -0.38409999 -0.00069999998
		 0.92330003 -0.38260001 -0.1398 0.91329998 -0.91900003 -0.1201 0.37549999 -0.92040002
		 -0.040199999 0.3888 -0.12620001 -0.099600002 -0.98699999 -0.032200001 -0.064499997
		 -0.99739999 0.74379998 0.088600002 -0.66250002 0.74159998 0.0328 -0.67009997 0.99910003
		 -0.0394 0.0174 0.99980003 -0.0123 0.0135 0.74699998 -0.12639999 -0.65270001 0.74159998
		 0.0328 -0.67009997 -0.91689998 0.051399998 0.39579999 -0.884 0.1428 -0.44499999 -0.86729997
		 -0.030300001 -0.49680001 -0.9181 -0.1007 0.38319999 0.3346 0.096500002 0.93739998
		 -0.39840001 0.065700002 0.91479999 -0.38080001 -0.12620001 0.91600001 0.33919999
		 -0.071500003 0.93800002 0.76880002 0.0854 0.63370001 0.78860003 -0.0062000002 0.61479998
		 0.99730003 0.0251 0.068700001 0.98720002 0.1166 0.1085 -0.39840001 0.065700002 0.91479999
		 -0.91689998 0.051399998 0.39579999 -0.9181 -0.1007 0.38319999 -0.38080001 -0.12620001
		 0.91600001 0.76880002 0.0854 0.63370001 0.3346 0.096500002 0.93739998 0.33919999
		 -0.071500003 0.93800002 0.78860003 -0.0062000002 0.61479998 0.98720002 0.1166 0.1085
		 0.99730003 0.0251 0.068700001 0.77609998 0.084899999 -0.62480003 0.78509998 0.1357
		 -0.60439998 0.78509998 0.1357 -0.60439998 0.77609998 0.084899999 -0.62480003 -0.0052
		 0.035300002 -0.99940002 -0.021299999 0.15539999 -0.98760003 -0.021299999 0.15539999
		 -0.98760003 -0.0052 0.035300002 -0.99940002 -0.86729997 -0.030300001 -0.49680001
		 -0.884 0.1428 -0.44499999 -0.8757 0.2886 0.38699999 -0.77100003 0.53750002 0.34150001
		 -0.67339998 0.67030001 -0.31169999 -0.83160001 0.42160001 -0.36149999 0.1591 0.40450001
		 0.90060002 0.16249999 0.7572 0.63260001 -0.2221 0.59079999 0.77560002 -0.4711 0.32589999
		 0.8197 0.87470001 0.4684 0.1246 0.66079998 0.73580003 0.14839999 0.37259999 0.84500003
		 0.38350001 0.62349999 0.52539998 0.579 -0.4711 0.32589999 0.8197 -0.2221 0.59079999
		 0.77560002 -0.77100003 0.53750002 0.34150001 -0.8757 0.2886 0.38699999;
	setAttr ".n[4482:4647]" -type "float3"  0.62349999 0.52539998 0.579 0.37259999
		 0.84500003 0.38350001 0.16249999 0.7572 0.63260001 0.1591 0.40450001 0.90060002 0.72899997
		 0.54549998 -0.41350001 0.537 0.80699998 -0.2457 0.66079998 0.73580003 0.14839999
		 0.87470001 0.4684 0.1246 -0.0109 0.5327 -0.84630001 0.089299999 0.79659998 -0.59780002
		 0.537 0.80699998 -0.2457 0.72899997 0.54549998 -0.41350001 -0.83160001 0.42160001
		 -0.36149999 -0.67339998 0.67030001 -0.31169999 0.089299999 0.79659998 -0.59780002
		 -0.0109 0.5327 -0.84630001 -0.92009997 0.070699997 0.38519999 -0.8757 0.2886 0.38699999
		 -0.83160001 0.42160001 -0.36149999 -0.912 0.19580001 -0.36039999 0.1119 0.069399998
		 0.99129999 0.1591 0.40450001 0.90060002 -0.4711 0.32589999 0.8197 -0.56569999 0.0078999996
		 0.82450002 0.97850001 0.1706 0.1156 0.87470001 0.4684 0.1246 0.62349999 0.52539998
		 0.579 0.74610001 0.17829999 0.6415 -0.56569999 0.0078999996 0.82450002 -0.4711 0.32589999
		 0.8197 -0.8757 0.2886 0.38699999 -0.92009997 0.070699997 0.38519999 0.74610001 0.17829999
		 0.6415 0.62349999 0.52539998 0.579 0.1591 0.40450001 0.90060002 0.1119 0.069399998
		 0.99129999 0.81800002 0.296 -0.49329999 0.72899997 0.54549998 -0.41350001 0.87470001
		 0.4684 0.1246 0.97850001 0.1706 0.1156 -0.078599997 0.25330001 -0.96420002 -0.0109
		 0.5327 -0.84630001 0.72899997 0.54549998 -0.41350001 0.81800002 0.296 -0.49329999
		 -0.912 0.19580001 -0.36039999 -0.83160001 0.42160001 -0.36149999 -0.0109 0.5327 -0.84630001
		 -0.078599997 0.25330001 -0.96420002 0.3698 0.1767 -0.91210002 0.27919999 0.1541 -0.94779998
		 0.84609997 0.043400001 -0.53130001 0.9091 0.0471 -0.41389999 -0.46700001 0.2129 -0.85829997
		 -0.49309999 0.2462 -0.8344 0.27919999 0.1541 -0.94779998 0.3698 0.1767 -0.91210002
		 -0.96259999 0.16140001 -0.2177 -0.8876 0.081100002 0.4535 -0.8524 0.1278 0.50700003
		 -0.95060003 0.2362 -0.2015 0.86189997 -0.065700002 0.50269997 0.26899999 -0.0524
		 0.96170002 0.27079999 -0.2676 0.92470002 0.80699998 -0.2401 0.5395 -0.8876 0.081100002
		 0.4535 -0.47389999 -0.1091 0.87379998 -0.4258 0.068999998 0.90219998 -0.8524 0.1278
		 0.50700003 0.66960001 -0.74260002 0.0134 0.99980003 -0.015 0.0099999998 0.84609997
		 0.043400001 -0.53130001 0.59780002 -0.2474 -0.76249999 0.99980003 -0.015 0.0099999998
		 0.98000002 -0.1706 0.1024 0.9091 0.0471 -0.41389999 0.84609997 0.043400001 -0.53130001
		 0.99980003 -0.015 0.0099999998 0.66960001 -0.74260002 0.0134 0.60229999 -0.38940001
		 0.69679999 0.86189997 -0.065700002 0.50269997 0.80699998 -0.2401 0.5395 0.98000002
		 -0.1706 0.1024 0.99980003 -0.015 0.0099999998 0.86189997 -0.065700002 0.50269997
		 -0.47389999 -0.1091 0.87379998 0.27079999 -0.2676 0.92470002 0.26899999 -0.0524 0.96170002
		 -0.4258 0.068999998 0.90219998 -0.96259999 0.16140001 -0.2177 -0.95060003 0.2362
		 -0.2015 -0.49309999 0.2462 -0.8344 -0.46700001 0.2129 -0.85829997 -0.8876 0.081100002
		 0.4535 -0.87290001 -0.32190001 0.36660001 -0.37290001 -0.51289999 0.77319998 -0.47389999
		 -0.1091 0.87379998 -0.46900001 -0.2062 -0.85879999 -0.93040001 -0.1824 -0.31799999
		 -0.96259999 0.16140001 -0.2177 -0.46700001 0.2129 -0.85829997 0.9091 0.0471 -0.41389999
		 0.85750002 -0.3337 -0.3917 0.27880001 -0.2669 -0.92250001 0.3698 0.1767 -0.91210002
		 0.98000002 -0.1706 0.1024 0.87720001 -0.46630001 0.1141 0.85750002 -0.3337 -0.3917
		 0.9091 0.0471 -0.41389999 0.27079999 -0.2676 0.92470002 0.2251 -0.62480003 0.74760002
		 0.69410002 -0.57419997 0.43430001 0.80699998 -0.2401 0.5395 -0.47389999 -0.1091 0.87379998
		 -0.37290001 -0.51289999 0.77319998 0.2251 -0.62480003 0.74760002 0.27079999 -0.2676
		 0.92470002 0.69410002 -0.57419997 0.43430001 0.87720001 -0.46630001 0.1141 0.98000002
		 -0.1706 0.1024 0.80699998 -0.2401 0.5395 -0.93040001 -0.1824 -0.31799999 -0.87290001
		 -0.32190001 0.36660001 -0.8876 0.081100002 0.4535 -0.96259999 0.16140001 -0.2177
		 0.27880001 -0.2669 -0.92250001 -0.46900001 -0.2062 -0.85879999 -0.46700001 0.2129
		 -0.85829997 0.3698 0.1767 -0.91210002 0.55949998 -0.57249999 -0.59939998 0.85750002
		 -0.3337 -0.3917 0.87720001 -0.46630001 0.1141 0.80070001 -0.59799999 0.035799999
		 0.2251 -0.62480003 0.74760002 -0.37290001 -0.51289999 0.77319998 -0.366 -0.74559999
		 0.55690002 0.149 -0.79699999 0.58530003 -0.87290001 -0.32190001 0.36660001 -0.93040001
		 -0.1824 -0.31799999 -0.80769998 -0.48879999 -0.32980001 -0.70289999 -0.67129999 0.2353
		 0.69410002 -0.57419997 0.43430001 0.2251 -0.62480003 0.74760002 0.149 -0.79699999
		 0.58530003 0.53149998 -0.75819999 0.37779999 0.87720001 -0.46630001 0.1141 0.69410002
		 -0.57419997 0.43430001 0.53149998 -0.75819999 0.37779999 0.80070001 -0.59799999 0.035799999
		 -0.37290001 -0.51289999 0.77319998 -0.87290001 -0.32190001 0.36660001 -0.70289999
		 -0.67129999 0.2353 -0.366 -0.74559999 0.55690002 -0.93040001 -0.1824 -0.31799999
		 -0.46900001 -0.2062 -0.85879999 -0.3497 -0.53490001 -0.76920003 -0.80769998 -0.48879999
		 -0.32980001 -0.3497 -0.53490001 -0.76920003 -0.46900001 -0.2062 -0.85879999 0.27880001
		 -0.2669 -0.92250001 0.1471 -0.63620001 -0.75730002 0.1471 -0.63620001 -0.75730002
		 0.27880001 -0.2669 -0.92250001 0.85750002 -0.3337 -0.3917 0.55949998 -0.57249999
		 -0.59939998 -0.57069999 0.1644 -0.80449998 -0.49309999 0.2462 -0.8344;
	setAttr ".n[4648:4813]" -type "float3"  -0.95060003 0.2362 -0.2015 -0.97219998
		 0.21250001 -0.098099999 0.038600001 -0.073100001 -0.99659997 0.27919999 0.1541 -0.94779998
		 -0.49309999 0.2462 -0.8344 -0.57069999 0.1644 -0.80449998 0.59780002 -0.2474 -0.76249999
		 0.84609997 0.043400001 -0.53130001 0.27919999 0.1541 -0.94779998 0.038600001 -0.073100001
		 -0.99659997 -0.95060003 0.2362 -0.2015 -0.8524 0.1278 0.50700003 -0.74659997 0.084399998
		 0.65990001 -0.97219998 0.21250001 -0.098099999 0.26899999 -0.0524 0.96170002 0.86189997
		 -0.065700002 0.50269997 0.60229999 -0.38940001 0.69679999 0.048999999 -0.2104 0.97640002
		 -0.4258 0.068999998 0.90219998 0.26899999 -0.0524 0.96170002 0.048999999 -0.2104
		 0.97640002 -0.38569999 0.11 0.91600001 -0.8524 0.1278 0.50700003 -0.4258 0.068999998
		 0.90219998 -0.38569999 0.11 0.91600001 -0.74659997 0.084399998 0.65990001 0 -1 0.0051000002
		 0.66960001 -0.74260002 0.0134 0.59780002 -0.2474 -0.76249999 0 -0.77490002 -0.63209999
		 0 -0.76289999 0.64649999 0.60229999 -0.38940001 0.69679999 0.66960001 -0.74260002
		 0.0134 0 -1 0.0051000002 0 -0.4659 0.88480002 0.048999999 -0.2104 0.97640002 0.60229999
		 -0.38940001 0.69679999 0 -0.76289999 0.64649999 0 -0.77490002 -0.63209999 0.59780002
		 -0.2474 -0.76249999 0.038600001 -0.073100001 -0.99659997 0 -0.35350001 -0.93540001
		 0.99940002 -0.015699999 -0.0306 0.99970001 -0.0083999997 -0.023700001 0.99910003
		 0.0092000002 -0.0403 0.9989 0.0049999999 -0.046999998 -0.99910003 0.0049999999 -0.042100001
		 -0.99879998 0.033100002 -0.037 -0.99910003 0.032099999 -0.027100001 -0.99959999 0.0071999999
		 -0.0284 -0.99940002 -0.015699999 -0.0306 -0.9989 0.0049999999 -0.046999998 -0.99910003
		 0.0092000002 -0.0403 -0.99970001 -0.0083999997 -0.023700001 0.94260001 0.087300003
		 0.3222 0.97030002 0.017100001 0.2413 0.99049997 0.0046999999 0.1372 0.96759999 0.085900001
		 0.23729999 0.96759999 0.085900001 0.23729999 0.99049997 0.0046999999 0.1372 0.8944
		 -0.0085000005 0.44710001 0.77069998 0.1249 0.62489998 0.94260001 0.087300003 0.3222
		 0.96759999 0.085900001 0.23729999 0.9824 0.18000001 0.048900001 0.91399997 -0.033199999
		 -0.40439999 0.77069998 0.1249 0.62489998 0.78079998 0.3414 0.52329999 0.9824 0.18000001
		 0.048900001 0.96759999 0.085900001 0.23729999 0.91399997 -0.033199999 -0.40439999
		 0.9824 0.18000001 0.048900001 0.89399999 0.3495 0.28029999 0.8926 0.42109999 0.1608
		 0.78079998 0.3414 0.52329999 0.82359999 0.4113 0.3906 0.89399999 0.3495 0.28029999
		 0.9824 0.18000001 0.048900001 0.97030002 0.079899997 0.22840001 0.97369999 0.049800001
		 0.2225 0.98860002 0.070699997 0.13330001 0.97500002 0.115 0.1903 0.97500002 0.115
		 0.1903 0.98860002 0.070699997 0.13330001 0.97030002 0.017100001 0.2413 0.94260001
		 0.087300003 0.3222 0.97030002 0.079899997 0.22840001 0.97500002 0.115 0.1903 0.97009999
		 0.1654 -0.1778 0.6875 -0.0603 -0.72369999 0.94260001 0.087300003 0.3222 0.8215 0.2852
		 0.4937 0.97009999 0.1654 -0.1778 0.97500002 0.115 0.1903 0.6875 -0.0603 -0.72369999
		 0.97009999 0.1654 -0.1778 0.91799998 0.336 0.21070001 0.7604 0.0583 -0.64679998 0.8215
		 0.2852 0.4937 0.4664 0.27950001 0.83929998 0.91799998 0.336 0.21070001 0.97009999
		 0.1654 -0.1778 0.99610001 0.068700001 -0.0561 0.99879998 0.0242 0.041499998 0.99119997
		 0.1065 -0.078000002 0.99370003 0.1056 0.037799999 0.99370003 0.1056 0.037799999 0.99119997
		 0.1065 -0.078000002 0.97369999 0.049800001 0.2225 0.97030002 0.079899997 0.22840001
		 0.99610001 0.068700001 -0.0561 0.99370003 0.1056 0.037799999 0.95560002 0.1883 -0.22660001
		 0.58670002 -0.059799999 -0.80760002 0.97030002 0.079899997 0.22840001 0.74800003
		 0.30970001 0.58710003 0.95560002 0.1883 -0.22660001 0.99370003 0.1056 0.037799999
		 0.58670002 -0.059799999 -0.80760002 0.95560002 0.1883 -0.22660001 0.86849999 0.44850001
		 0.2112 0.65179998 0.020400001 -0.75809997 0.74800003 0.30970001 0.58710003 0.43470001
		 0.3849 0.81419998 0.86849999 0.44850001 0.2112 0.95560002 0.1883 -0.22660001 0.99589998
		 0.090499997 -0.0057000001 0.9993 0.031099999 -0.0184 0.9971 0.070100002 0.028100001
		 0.99190003 0.1067 0.068899997 0.99190003 0.1067 0.068899997 0.9971 0.070100002 0.028100001
		 0.99879998 0.0242 0.041499998 0.99610001 0.068700001 -0.0561 0.99589998 0.090499997
		 -0.0057000001 0.99190003 0.1067 0.068899997 0.96469998 0.2606 -0.036899999 0.8215
		 0.065899998 -0.56639999 0.99610001 0.068700001 -0.0561 0.75410002 0.30579999 0.58130002
		 0.96469998 0.2606 -0.036899999 0.99190003 0.1067 0.068899997 0.8215 0.065899998 -0.56639999
		 0.96469998 0.2606 -0.036899999 0.83630002 0.45429999 0.30700001 0.71469998 0.0102
		 -0.69940001 0.75410002 0.30579999 0.58130002 0.44490001 0.38319999 0.80949998 0.83630002
		 0.45429999 0.30700001 0.96469998 0.2606 -0.036899999 0.95910001 0.084899999 -0.26989999
		 0.9461 0.036200002 -0.322 0.99349999 0.078299999 -0.082500003 0.98989999 0.1214 -0.073700003
		 0.98989999 0.1214 -0.073700003 0.99349999 0.078299999 -0.082500003 0.9993 0.031099999
		 -0.0184 0.99589998 0.090499997 -0.0057000001 0.95910001 0.084899999 -0.26989999 0.98989999
		 0.1214 -0.073700003 0.9217 0.27900001 -0.26949999 0.65130001 0.080399998 -0.75459999
		 0.99589998 0.090499997 -0.0057000001 0.87470001 0.30840001 0.37380001 0.9217 0.27900001
		 -0.26949999 0.98989999 0.1214 -0.073700003;
	setAttr ".n[4814:4979]" -type "float3"  0.65130001 0.080399998 -0.75459999 0.9217
		 0.27900001 -0.26949999 0.88260001 0.46309999 0.080499999 0.57270002 0.1191 -0.81099999
		 0.87470001 0.30840001 0.37380001 0.62510002 0.35120001 0.69709998 0.88260001 0.46309999
		 0.080499999 0.9217 0.27900001 -0.26949999 0.28729999 0.0145 -0.95770001 0.5151 -0.0154
		 -0.85699999 0.84249997 0.0792 -0.53289998 0.80449998 0.122 -0.58130002 0.80449998
		 0.122 -0.58130002 0.84249997 0.0792 -0.53289998 0.9461 0.036200002 -0.322 0.95910001
		 0.084899999 -0.26989999 0.28729999 0.0145 -0.95770001 0.80449998 0.122 -0.58130002
		 0.61180001 0.38850001 -0.68900001 0.199 0.1436 -0.96939999 0.95910001 0.084899999
		 -0.26989999 0.88630003 0.45410001 -0.0911 0.61180001 0.38850001 -0.68900001 0.80449998
		 0.122 -0.58130002 0.199 0.1436 -0.96939999 0.61180001 0.38850001 -0.68900001 0.67369998
		 0.68150002 -0.28580001 0.3811 0.54259998 -0.74860001 0.88630003 0.45410001 -0.0911
		 0.73519999 0.6778 -0.0089999996 0.67369998 0.68150002 -0.28580001 0.61180001 0.38850001
		 -0.68900001 0.7238 0.042399999 -0.68870002 0.90319997 0.0187 -0.4289 0.99019998 0.1392
		 0.0060000001 0.96350002 0.1574 -0.2163 0.96350002 0.1574 -0.2163 0.99019998 0.1392
		 0.0060000001 0.9131 0.15889999 0.37560001 0.921 0.1955 0.33700001 0.7238 0.042399999
		 -0.68870002 0.96350002 0.1574 -0.2163 0.91820002 0.30410001 -0.25369999 0.66839999
		 0.1232 -0.7335 0.921 0.1955 0.33700001 0.84009999 0.38060001 0.3865 0.91820002 0.30410001
		 -0.25369999 0.96350002 0.1574 -0.2163 0.66839999 0.1232 -0.7335 0.91820002 0.30410001
		 -0.25369999 0.8319 0.5323 0.1568 0.64789999 0.17479999 -0.7414 0.84009999 0.38060001
		 0.3865 0.56690001 0.44420001 0.69370002 0.8319 0.5323 0.1568 0.91820002 0.30410001
		 -0.25369999 0.80919999 0.22229999 -0.54390001 0.88859999 0.1027 -0.447 0.96100003
		 0.1265 0.2458 0.91649997 0.25080001 -0.31169999 0.59600002 0.1489 -0.78909999 0.75139999
		 0.1532 -0.64179999 0.62169999 0.1442 -0.76990002 0.51810002 0.22830001 -0.82429999
		 0.18189999 0.1099 -0.97719997 0.17200001 0.13860001 -0.97530001 0.2119 0.16410001
		 -0.96340001 0.2304 0.14300001 -0.96249998 0.83469999 0.48590001 -0.259 0.91649997
		 0.25080001 -0.31169999 0.96100003 0.1265 0.2458 0.92309999 0.3134 0.2228 0.51810002
		 0.22830001 -0.82429999 0.62169999 0.1442 -0.76990002 0.56349999 0.2352 -0.79189998
		 0.55720001 0.45460001 -0.69489998 0.2304 0.14300001 -0.96249998 0.2119 0.16410001
		 -0.96340001 0.1382 0.30930001 -0.94090003 -0.0112 0.37940001 -0.92519999 0.2277 0.38609999
		 -0.89389998 0.34290001 0.30779999 -0.88749999 0.63840002 0.4919 -0.59200001 0.19
		 0.49689999 -0.84670001 0.33329999 0.171 -0.92720002 0.38659999 0.1566 -0.90880001
		 0.42109999 0.18610001 -0.88770002 0.32339999 0.2132 -0.92189997 0.74519998 0.18960001
		 -0.63929999 0.82609999 0.192 -0.5298 0.77689999 0.2386 -0.5826 0.58219999 0.243 -0.77590001
		 0.38510001 0.48730001 -0.78369999 0.41600001 0.42559999 -0.80360001 0.76160002 0.37329999
		 -0.52969998 0.79960001 0.48109999 -0.35929999 0.69999999 0.6045 -0.3802 0.83469999
		 0.48590001 -0.259 0.92309999 0.3134 0.2228 0.76969999 0.3328 0.5449 0.55720001 0.45460001
		 -0.69489998 0.56349999 0.2352 -0.79189998 0.93730003 0.34040001 -0.074100003 0.48649999
		 0.50440001 -0.71340001 -0.0112 0.37940001 -0.92519999 0.1382 0.30930001 -0.94090003
		 0.61930001 0.4228 -0.66159999 0.16410001 0.49110001 -0.85549998 0.2277 0.38609999
		 -0.89389998 0.1382 0.30930001 -0.94090003 0.2119 0.16410001 -0.96340001 0.32339999
		 0.2132 -0.92189997 0.58219999 0.243 -0.77590001 0.41600001 0.42559999 -0.80360001
		 0.56349999 0.2352 -0.79189998 0.62169999 0.1442 -0.76990002 0.82609999 0.192 -0.5298
		 0.80919999 0.22229999 -0.54390001 0.91649997 0.25080001 -0.31169999 0.77689999 0.2386
		 -0.5826 0.38659999 0.1566 -0.90880001 0.59600002 0.1489 -0.78909999 0.51810002 0.22830001
		 -0.82429999 0.42109999 0.18610001 -0.88770002 0.18189999 0.1099 -0.97719997 0.2304
		 0.14300001 -0.96249998 0 0.094099998 -0.99559999 0 0.1406 -0.99010003 0.91649997
		 0.25080001 -0.31169999 0.83469999 0.48590001 -0.259 0.76160002 0.37329999 -0.52969998
		 0.77689999 0.2386 -0.5826 0.42109999 0.18610001 -0.88770002 0.51810002 0.22830001
		 -0.82429999 0.55720001 0.45460001 -0.69489998 0.34290001 0.30779999 -0.88749999 0.2304
		 0.14300001 -0.96249998 -0.52209997 0.2748 -0.80739999 0 0.0484 -0.99879998 0 0.094099998
		 -0.99559999 0.1382 0.30930001 -0.94090003 0.2277 0.38609999 -0.89389998 0.19 0.49689999
		 -0.84670001 -0.50889999 0.26449999 -0.81919998 0.17200001 0.13860001 -0.97530001
		 0.33329999 0.171 -0.92720002 0.32339999 0.2132 -0.92189997 0.2119 0.16410001 -0.96340001
		 0.75139999 0.1532 -0.64179999 0.74519998 0.18960001 -0.63929999 0.58219999 0.243
		 -0.77590001 0.62169999 0.1442 -0.76990002 0.41600001 0.42559999 -0.80360001 0.38510001
		 0.48730001 -0.78369999 -0.048500001 0.36230001 -0.93080002 0.56349999 0.2352 -0.79189998
		 0.83469999 0.48590001 -0.259 0.69999999 0.6045 -0.3802 0.18189999 0.26800001 -0.9461
		 0.76160002 0.37329999 -0.52969998 0.34290001 0.30779999 -0.88749999 0.55720001 0.45460001
		 -0.69489998 0.48649999 0.50440001 -0.71340001 -0.23280001 0.27700001 -0.93220001
		 -0.52209997 0.2748 -0.80739999 -0.0112 0.37940001 -0.92519999;
	setAttr ".n[4980:5145]" -type "float3"  0.16410001 0.49110001 -0.85549998 -0.2313
		 0.52429998 -0.81950003 0.2277 0.38609999 -0.89389998 0.32339999 0.2132 -0.92189997
		 0.42109999 0.18610001 -0.88770002 0.34290001 0.30779999 -0.88749999 0.41600001 0.42559999
		 -0.80360001 0.58219999 0.243 -0.77590001 0.77689999 0.2386 -0.5826 0.76160002 0.37329999
		 -0.52969998 -0.0112 0.37940001 -0.92519999 -0.52209997 0.2748 -0.80739999 0.2304
		 0.14300001 -0.96249998 -0.94950002 0.0757 0.3046 -0.95959997 0.091499999 0.26620001
		 -0.9939 0.0014 0.1099 -0.9896 0.0154 0.1432 -0.95959997 0.091499999 0.26620001 -0.77069998
		 0.1249 0.62489998 -0.8944 -0.0085000005 0.44710001 -0.9939 0.0014 0.1099 -0.94950002
		 0.0757 0.3046 -0.9138 -0.038600001 -0.40439999 -0.9824 0.18000001 0.048900001 -0.95959997
		 0.091499999 0.26620001 -0.77069998 0.1249 0.62489998 -0.95959997 0.091499999 0.26620001
		 -0.9824 0.18000001 0.048900001 -0.78079998 0.3414 0.52329999 -0.9138 -0.038600001
		 -0.40439999 -0.8926 0.42109999 0.1608 -0.89399999 0.3495 0.28029999 -0.9824 0.18000001
		 0.048900001 -0.78079998 0.3414 0.52329999 -0.9824 0.18000001 0.048900001 -0.89399999
		 0.3495 0.28029999 -0.82359999 0.4113 0.3906 -0.95719999 0.1025 0.27070001 -0.9824
		 0.1131 0.1486 -0.99849999 0.054900002 0.0077999998 -0.9738 0.0405 0.2238 -0.9824
		 0.1131 0.1486 -0.94950002 0.0757 0.3046 -0.9896 0.0154 0.1432 -0.99849999 0.054900002
		 0.0077999998 -0.95719999 0.1025 0.27070001 -0.68720001 -0.0669 -0.7234 -0.96990001
		 0.1673 -0.1771 -0.9824 0.1131 0.1486 -0.94950002 0.0757 0.3046 -0.9824 0.1131 0.1486
		 -0.96990001 0.1673 -0.1771 -0.82389998 0.27399999 0.49599999 -0.68720001 -0.0669
		 -0.7234 -0.7604 0.0583 -0.64679998 -0.91799998 0.336 0.21070001 -0.96990001 0.1673
		 -0.1771 -0.82389998 0.27399999 0.49599999 -0.96990001 0.1673 -0.1771 -0.91799998
		 0.336 0.21070001 -0.4664 0.27950001 0.83929998 -0.99769998 0.058200002 -0.035399999
		 -0.99250001 0.1029 0.066299997 -0.99220002 0.099399999 -0.074699998 -0.99910003 0.020099999
		 -0.037599999 -0.99250001 0.1029 0.066299997 -0.95719999 0.1025 0.27070001 -0.9738
		 0.0405 0.2238 -0.99220002 0.099399999 -0.074699998 -0.99769998 0.058200002 -0.035399999
		 -0.58630002 -0.0682 -0.80720001 -0.9576 0.2031 -0.2045 -0.99250001 0.1029 0.066299997
		 -0.95719999 0.1025 0.27070001 -0.99250001 0.1029 0.066299997 -0.9576 0.2031 -0.2045
		 -0.74629998 0.3175 0.58499998 -0.58630002 -0.0682 -0.80720001 -0.68019998 0.094499998
		 -0.72689998 -0.87519997 0.43790001 0.20559999 -0.9576 0.2031 -0.2045 -0.74629998
		 0.3175 0.58499998 -0.9576 0.2031 -0.2045 -0.87519997 0.43790001 0.20559999 -0.40939999
		 0.32969999 0.85070002 -0.99589998 0.090499997 -0.0057000001 -0.9914 0.1087 0.072999999
		 -0.9971 0.070100002 0.028100001 -0.9993 0.031099999 -0.0184 -0.9914 0.1087 0.072999999
		 -0.99769998 0.058200002 -0.035399999 -0.99910003 0.020099999 -0.037599999 -0.9971
		 0.070100002 0.028100001 -0.99589998 0.090499997 -0.0057000001 -0.8215 0.065899998
		 -0.56639999 -0.96469998 0.2606 -0.036899999 -0.9914 0.1087 0.072999999 -0.99769998
		 0.058200002 -0.035399999 -0.9914 0.1087 0.072999999 -0.96469998 0.2606 -0.036899999
		 -0.75400001 0.30599999 0.5812 -0.8215 0.065899998 -0.56639999 -0.71469998 0.0102
		 -0.69940001 -0.83630002 0.45429999 0.30700001 -0.96469998 0.2606 -0.036899999 -0.75400001
		 0.30599999 0.5812 -0.96469998 0.2606 -0.036899999 -0.83630002 0.45429999 0.30700001
		 -0.44490001 0.38319999 0.80949998 -0.95929998 0.094400004 -0.266 -0.98940003 0.1188
		 -0.083800003 -0.98839998 0.075599998 -0.13169999 -0.9307 0.0414 -0.3633 -0.98940003
		 0.1188 -0.083800003 -0.99589998 0.090499997 -0.0057000001 -0.9993 0.031099999 -0.0184
		 -0.98839998 0.075599998 -0.13169999 -0.95929998 0.094400004 -0.266 -0.65109998 0.081699997
		 -0.75459999 -0.9217 0.27900001 -0.26949999 -0.98940003 0.1188 -0.083800003 -0.99589998
		 0.090499997 -0.0057000001 -0.98940003 0.1188 -0.083800003 -0.9217 0.27900001 -0.26949999
		 -0.87470001 0.30840001 0.37380001 -0.65109998 0.081699997 -0.75459999 -0.57270002
		 0.1191 -0.81099999 -0.88260001 0.46309999 0.080499999 -0.9217 0.27900001 -0.26949999
		 -0.87470001 0.30840001 0.37380001 -0.9217 0.27900001 -0.26949999 -0.88260001 0.46309999
		 0.080499999 -0.62510002 0.35120001 0.69709998 -0.28729999 0.0145 -0.95770001 -0.81089997
		 0.1201 -0.57270002 -0.84960002 0.079899997 -0.52139997 -0.5151 -0.0154 -0.85699999
		 -0.81089997 0.1201 -0.57270002 -0.95929998 0.094400004 -0.266 -0.9307 0.0414 -0.3633
		 -0.84960002 0.079899997 -0.52139997 -0.28729999 0.0145 -0.95770001 -0.199 0.1436
		 -0.96939999 -0.61180001 0.38850001 -0.68900001 -0.81089997 0.1201 -0.57270002 -0.95929998
		 0.094400004 -0.266 -0.81089997 0.1201 -0.57270002 -0.61180001 0.38850001 -0.68900001
		 -0.88450003 0.4576 -0.0911 -0.199 0.1436 -0.96939999 -0.3811 0.54259998 -0.74860001
		 -0.67369998 0.68150002 -0.28580001 -0.61180001 0.38850001 -0.68900001 -0.88450003
		 0.4576 -0.0911 -0.61180001 0.38850001 -0.68900001 -0.67369998 0.68150002 -0.28580001
		 -0.73519999 0.6778 -0.0089999996 -0.7245 0.0348 -0.68839997 -0.95959997 0.13600001
		 -0.2465 -0.99019998 0.1392 0.0060000001 -0.90319997 0.0187 -0.4289 -0.95959997 0.13600001
		 -0.2465 -0.94959998 0.156 0.27200001 -0.91109997 0.178 0.37169999 -0.99019998 0.1392
		 0.0060000001 -0.7245 0.0348 -0.68839997;
	setAttr ".n[5146:5311]" -type "float3"  -0.70480001 0.13510001 -0.69639999 -0.92049998
		 0.3344 -0.2022 -0.95959997 0.13600001 -0.2465 -0.94959998 0.156 0.27200001 -0.95959997
		 0.13600001 -0.2465 -0.92049998 0.3344 -0.2022 -0.82810003 0.33489999 0.44949999 -0.70480001
		 0.13510001 -0.69639999 -0.6566 0.1999 -0.72729999 -0.81309998 0.56160003 0.1532 -0.92049998
		 0.3344 -0.2022 -0.82810003 0.33489999 0.44949999 -0.92049998 0.3344 -0.2022 -0.81309998
		 0.56160003 0.1532 -0.5751 0.4817 0.6613 -0.80919999 0.22229999 -0.54390001 -0.91649997
		 0.25080001 -0.31169999 -0.96100003 0.1265 0.2458 -0.88859999 0.1027 -0.447 -0.59600002
		 0.1489 -0.78909999 -0.51810002 0.22830001 -0.82429999 -0.62169999 0.1442 -0.76990002
		 -0.75139999 0.1532 -0.64179999 -0.18189999 0.1099 -0.97719997 -0.2304 0.14300001
		 -0.96249998 -0.2119 0.16410001 -0.96340001 -0.17200001 0.13860001 -0.97530001 -0.83469999
		 0.48590001 -0.259 -0.92309999 0.3134 0.2228 -0.96100003 0.1265 0.2458 -0.91649997
		 0.25080001 -0.31169999 -0.51810002 0.22830001 -0.82429999 -0.55720001 0.45460001
		 -0.69489998 -0.56349999 0.2352 -0.79189998 -0.62169999 0.1442 -0.76990002 -0.2304
		 0.14300001 -0.96249998 0.0112 0.37940001 -0.92519999 -0.1382 0.30930001 -0.94090003
		 -0.2119 0.16410001 -0.96340001 -0.2277 0.38609999 -0.89389998 -0.19 0.49689999 -0.84670001
		 -0.63840002 0.4919 -0.59200001 -0.34290001 0.30779999 -0.88749999 -0.33329999 0.171
		 -0.92720002 -0.32339999 0.2132 -0.92189997 -0.42109999 0.18610001 -0.88770002 -0.38659999
		 0.1566 -0.90880001 -0.74519998 0.18960001 -0.63929999 -0.58219999 0.243 -0.77590001
		 -0.77689999 0.2386 -0.5826 -0.82609999 0.192 -0.5298 -0.38510001 0.48730001 -0.78369999
		 -0.79960001 0.48109999 -0.35929999 -0.76160002 0.37329999 -0.52969998 -0.41600001
		 0.42559999 -0.80360001 -0.69999999 0.6045 -0.3802 -0.76969999 0.3328 0.5449 -0.92309999
		 0.3134 0.2228 -0.83469999 0.48590001 -0.259 -0.55720001 0.45460001 -0.69489998 -0.48649999
		 0.50440001 -0.71340001 -0.93730003 0.34040001 -0.074100003 -0.56349999 0.2352 -0.79189998
		 0.0112 0.37940001 -0.92519999 -0.16410001 0.49110001 -0.85549998 -0.61930001 0.4228
		 -0.66159999 -0.1382 0.30930001 -0.94090003 -0.2277 0.38609999 -0.89389998 -0.32339999
		 0.2132 -0.92189997 -0.2119 0.16410001 -0.96340001 -0.1382 0.30930001 -0.94090003
		 -0.58219999 0.243 -0.77590001 -0.62169999 0.1442 -0.76990002 -0.56349999 0.2352 -0.79189998
		 -0.41600001 0.42559999 -0.80360001 -0.82609999 0.192 -0.5298 -0.77689999 0.2386 -0.5826
		 -0.91649997 0.25080001 -0.31169999 -0.80919999 0.22229999 -0.54390001 -0.38659999
		 0.1566 -0.90880001 -0.42109999 0.18610001 -0.88770002 -0.51810002 0.22830001 -0.82429999
		 -0.59600002 0.1489 -0.78909999 -0.18189999 0.1099 -0.97719997 0 0.1406 -0.99010003
		 0 0.094099998 -0.99559999 -0.2304 0.14300001 -0.96249998 -0.91649997 0.25080001 -0.31169999
		 -0.77689999 0.2386 -0.5826 -0.76160002 0.37329999 -0.52969998 -0.83469999 0.48590001
		 -0.259 -0.42109999 0.18610001 -0.88770002 -0.34290001 0.30779999 -0.88749999 -0.55720001
		 0.45460001 -0.69489998 -0.51810002 0.22830001 -0.82429999 -0.2304 0.14300001 -0.96249998
		 0 0.094099998 -0.99559999 0 0.0484 -0.99879998 0.52209997 0.2748 -0.80739999 -0.1382
		 0.30930001 -0.94090003 0.50889999 0.26449999 -0.81919998 -0.19 0.49689999 -0.84670001
		 -0.2277 0.38609999 -0.89389998 -0.17200001 0.13860001 -0.97530001 -0.2119 0.16410001
		 -0.96340001 -0.32339999 0.2132 -0.92189997 -0.33329999 0.171 -0.92720002 -0.75139999
		 0.1532 -0.64179999 -0.62169999 0.1442 -0.76990002 -0.58219999 0.243 -0.77590001 -0.74519998
		 0.18960001 -0.63929999 -0.41600001 0.42559999 -0.80360001 -0.56349999 0.2352 -0.79189998
		 0.048500001 0.36230001 -0.93080002 -0.38510001 0.48730001 -0.78369999 -0.83469999
		 0.48590001 -0.259 -0.76160002 0.37329999 -0.52969998 -0.18189999 0.26800001 -0.9461
		 -0.69999999 0.6045 -0.3802 -0.34290001 0.30779999 -0.88749999 0.23280001 0.27700001
		 -0.93220001 -0.48649999 0.50440001 -0.71340001 -0.55720001 0.45460001 -0.69489998
		 0.52209997 0.2748 -0.80739999 0.2313 0.52429998 -0.81950003 -0.16410001 0.49110001
		 -0.85549998 0.0112 0.37940001 -0.92519999 -0.2277 0.38609999 -0.89389998 -0.34290001
		 0.30779999 -0.88749999 -0.42109999 0.18610001 -0.88770002 -0.32339999 0.2132 -0.92189997
		 -0.41600001 0.42559999 -0.80360001 -0.76160002 0.37329999 -0.52969998 -0.77689999
		 0.2386 -0.5826 -0.58219999 0.243 -0.77590001 0.0112 0.37940001 -0.92519999 -0.2304
		 0.14300001 -0.96249998 0.52209997 0.2748 -0.80739999 0 -0.95910001 0.28310001 0 -0.21259999
		 0.97710001 0.59789997 -0.030999999 0.80089998 0.63319999 -0.72729999 0.26480001 0.89709997
		 0.44049999 0.034200002 0.58209997 0.71869999 0.3804 0.49529999 0.8682 0.0285 0.64209998
		 0.51359999 -0.56910002 0.2104 0.75010002 0.62690002 0.285 0.66369998 0.69160002 0.091600001
		 0.60769999 0.78890002 0.079599999 0.73189998 0.67680001 0.079599999 0.73189998 0.67680001
		 0 0.69620001 0.71789998 0 0.57200003 0.82020003 0.1077 0.5255 0.84390002 0.2104 0.75010002
		 0.62690002 0.079599999 0.73189998 0.67680001 0.1077 0.5255 0.84390002 -0.0814 0.81870002
		 0.56849998 0.59789997 -0.030999999 0.80089998 0.091600001 0.60769999 0.78890002 0.285
		 0.66369998 0.69160002 0.69779998 0.32280001 0.63950002 0.69779998 0.32280001 0.63950002
		 0.285 0.66369998 0.69160002 0.2104 0.75010002 0.62690002 0.58209997 0.71869999 0.3804;
	setAttr ".n[5312:5477]" -type "float3"  0.091600001 0.60769999 0.78890002 0.59789997
		 -0.030999999 0.80089998 0 -0.21259999 0.97710001 0 0.58859998 0.80839998 0.079599999
		 0.73189998 0.67680001 0.091600001 0.60769999 0.78890002 0 0.58859998 0.80839998 0
		 0.69620001 0.71789998 0.69779998 0.32280001 0.63950002 0.98180002 -0.13070001 0.1381
		 0.8628 -0.50300002 0.050999999 0.59789997 -0.030999999 0.80089998 0.89709997 0.44049999
		 0.034200002 0.96319997 -0.0059000002 -0.2687 0.98180002 -0.13070001 0.1381 0.69779998
		 0.32280001 0.63950002 0.64209998 0.51359999 -0.56910002 0.51730001 -0.15620001 -0.84149998
		 0.96319997 -0.0059000002 -0.2687 0.89709997 0.44049999 0.034200002 0.64209998 0.51359999
		 -0.56910002 0 0.13079999 -0.9914 0 -0.1577 -0.98750001 0.51730001 -0.15620001 -0.84149998
		 0 0.1217 0.99260002 0 0.5341 0.84539998 0.6286 0.42590001 0.65079999 0.60170001 -0.095700003
		 0.79299998 0.74629998 -0.046999998 0.66399997 0.51560003 0.0385 0.85600001 0.4445
		 -0.79689997 0.4091 0.60460001 -0.7561 0.25049999 0.70480001 -0.171 0.68849999 0.45050001
		 -0.20720001 0.86839998 0.51560003 0.0385 0.85600001 0.74629998 -0.046999998 0.66399997
		 0.94270003 -0.1978 0.2687 0.92089999 -0.28909999 0.2613 0.77469999 -0.6239 -0.1033
		 0.92379999 -0.35789999 -0.1358 0.74629998 -0.046999998 0.66399997 0.60460001 -0.7561
		 0.25049999 0.77509999 -0.62620002 0.084600002 0.83679998 -0.1807 0.5169 0.84560001
		 0.34549999 0.40700001 0.72939998 0.0319 0.68330002 0.60170001 -0.095700003 0.79299998
		 0.6286 0.42590001 0.65079999 0.69870001 -0.54909998 0.4585 0.9368 0.18709999 0.2958
		 0.84930003 0.182 0.49559999 0.6961 -0.5068 0.50849998 0.77389997 -0.1787 0.60759997
		 0.84500003 0.062399998 0.53109998 0.94270003 -0.1978 0.2687 0.90700001 -0.2933 0.30219999
		 0.30930001 0.032400001 0.95039999 0.5528 0.29809999 0.77819997 0.294 0.12809999 0.9472
		 0.22139999 0.041200001 0.97430003 0.92379999 -0.35789999 -0.1358 0.77469999 -0.6239
		 -0.1033 0.63319999 -0.72729999 0.26480001 0.8628 -0.50300002 0.050999999 0.65530002
		 -0.2255 0.7209 0.66119999 -0.19159999 0.72530001 0.70480001 -0.171 0.68849999 0.73890001
		 -0.35960001 0.56989998 0.61699998 -0.116 0.7784 0.48100001 0.1691 0.8603 0.523 0.070299998
		 0.84939998 0.8603 0.067299999 0.50529999 0.69929999 -0.043200001 0.71359998 0.40059999
		 -0.1657 0.9012 0.2315 0.53250003 0.81410003 0.51539999 0.34760001 0.78329998 0.1811
		 -0.59380001 0.78399998 0 -0.55720001 0.83039999 0 -0.2624 0.96499997 0.45050001 -0.20720001
		 0.86839998 0.38890001 -0.54530001 0.74250001 0.34850001 -0.53740001 0.76789999 0.3057
		 -0.5661 0.76550001 0.3188 -0.47549999 0.81989998 0.56400001 -0.2418 -0.78960001 0.53130001
		 -0.085699998 -0.84289998 0.94669998 -0.1363 -0.29179999 0.9479 -0.19859999 -0.2492
		 0.9479 -0.19859999 -0.2492 0.94669998 -0.1363 -0.29179999 0.99339998 -0.0031000001
		 0.1142 0.99000001 -0.1312 0.051899999 0.53070003 0.30500001 0.79079998 0 0.34240001
		 0.93959999 0 -0.46540001 0.88510001 0.50340003 -0.42460001 0.7525 0 0.1214 0.99260002
		 0 -0.1477 0.98900002 0.37439999 0.0127 0.92720002 0.2577 0.0274 0.96579999 0.30939999
		 0.211 0.92720002 0 0.104 0.9946 0 0.1214 0.99260002 0.2577 0.0274 0.96579999 0 -0.24420001
		 -0.96969998 0 -0.083099999 -0.99650002 0.53130001 -0.085699998 -0.84289998 0.56400001
		 -0.2418 -0.78960001 0.73470002 -0.027799999 0.6778 0.93790001 -0.040600002 0.34459999
		 0.84500003 0.062399998 0.53109998 0.70090002 0.0669 0.71020001 0.60680002 -0.13349999
		 0.78350002 0.76450002 -0.13860001 0.62949997 0.77469999 -0.091899998 0.62559998 0.63789999
		 0.16869999 0.75139999 0.8865 -0.32300001 0.33129999 0.92089999 -0.28909999 0.2613
		 0.94270003 -0.1978 0.2687 0.93790001 -0.040600002 0.34459999 0.8865 -0.32300001 0.33129999
		 0.93790001 -0.040600002 0.34459999 0.73470002 -0.027799999 0.6778 0.7216 -0.1488
		 0.67619997 0.72659999 -0.3836 0.57010001 0.76950002 -0.1609 0.61799997 0.76450002
		 -0.13860001 0.62949997 0.60680002 -0.13349999 0.78350002 0.6286 0.42590001 0.65079999
		 0 0.5341 0.84539998 0 0.58289999 0.81260002 0.57929999 0.48390001 0.6559 0.294 0.12809999
		 0.9472 0.5528 0.29809999 0.77819997 0.75080001 0.2942 0.59140003 0.51010001 0.0283
		 0.85970002 0.30939999 0.211 0.92720002 0.2315 0.53250003 0.81410003 0 0.47499999
		 0.88 0 0.104 0.9946 0.84500003 0.062399998 0.53109998 0.65270001 0.13249999 0.74589998
		 0.63559997 0.1292 0.76120001 0.70090002 0.0669 0.71020001 0.85769999 0.18799999 0.47850001
		 0.65270001 0.13249999 0.74589998 0.51010001 0.0283 0.85970002 0.75080001 0.2942 0.59140003
		 0.51539999 0.34760001 0.78329998 0.63559997 0.1292 0.76120001 0.65270001 0.13249999
		 0.74589998 0.69929999 -0.043200001 0.71359998 0.63889998 0.015699999 0.76910001 0.76950002
		 -0.1609 0.61799997 0.63559997 0.1292 0.76120001 0.51539999 0.34760001 0.78329998
		 0.59869999 -0.0506 0.79939997 0.76450002 -0.13860001 0.62949997 0.76950002 -0.1609
		 0.61799997 0.63889998 0.015699999 0.76910001 0.67839998 -0.1444 0.72030002 0.77469999
		 -0.091899998 0.62559998 0.76450002 -0.13860001 0.62949997 0.59869999 -0.0506 0.79939997
		 0.66119999 -0.19159999 0.72530001 0.50050002 -0.46950001 0.72729999;
	setAttr ".n[5478:5643]" -type "float3"  0.45050001 -0.20720001 0.86839998 0.70480001
		 -0.171 0.68849999 0.70090002 0.0669 0.71020001 0.63559997 0.1292 0.76120001 0.76950002
		 -0.1609 0.61799997 0.72659999 -0.3836 0.57010001 0.84500003 0.062399998 0.53109998
		 0.77389997 -0.1787 0.60759997 0.51010001 0.0283 0.85970002 0.65270001 0.13249999
		 0.74589998 0.2315 0.53250003 0.81410003 0.40059999 -0.1657 0.9012 0 -0.33160001 0.94340003
		 0 0.47499999 0.88 0 -0.033799998 0.99940002 0.51560003 0.0385 0.85600001 0.45050001
		 -0.20720001 0.86839998 0 -0.2624 0.96499997 0 -0.72210002 0.69169998 0.4445 -0.79689997
		 0.4091 0.51560003 0.0385 0.85600001 0 -0.033799998 0.99940002 0.30939999 0.211 0.92720002
		 0.63889998 0.015699999 0.76910001 0.51539999 0.34760001 0.78329998 0.2315 0.53250003
		 0.81410003 0.2577 0.0274 0.96579999 0.59869999 -0.0506 0.79939997 0.63889998 0.015699999
		 0.76910001 0.30939999 0.211 0.92720002 0.37439999 0.0127 0.92720002 0.67839998 -0.1444
		 0.72030002 0.59869999 -0.0506 0.79939997 0.2577 0.0274 0.96579999 0.77469999 -0.091899998
		 0.62559998 0.66119999 -0.19159999 0.72530001 0.65530002 -0.2255 0.7209 0.63789999
		 0.16869999 0.75139999 0.50050002 -0.46950001 0.72729999 0.66119999 -0.19159999 0.72530001
		 0.77469999 -0.091899998 0.62559998 0.67839998 -0.1444 0.72030002 0.1811 -0.59380001
		 0.78399998 0.50050002 -0.46950001 0.72729999 0.67839998 -0.1444 0.72030002 0.37439999
		 0.0127 0.92720002 0 -0.55720001 0.83039999 0.1811 -0.59380001 0.78399998 0.37439999
		 0.0127 0.92720002 0 -0.1477 0.98900002 0.53070003 0.30500001 0.79079998 0.57929999
		 0.48390001 0.6559 0 0.58289999 0.81260002 0 0.34240001 0.93959999 0.4386 -0.75819999
		 0.4824 0.39019999 -0.84020001 0.37650001 0 -0.33160001 0.94340003 0.40059999 -0.1657
		 0.9012 0.4386 -0.75819999 0.4824 0.40059999 -0.1657 0.9012 0.69929999 -0.043200001
		 0.71359998 0.69870001 -0.54909998 0.4585 0.9368 0.18709999 0.2958 0.69870001 -0.54909998
		 0.4585 0.69929999 -0.043200001 0.71359998 0.85769999 0.18799999 0.47850001 0.75080001
		 0.2942 0.59140003 0.8477 0.37509999 0.3752 0.9368 0.18709999 0.2958 0.85769999 0.18799999
		 0.47850001 0.84560001 0.34549999 0.40700001 0.8477 0.37509999 0.3752 0.75080001 0.2942
		 0.59140003 0.5528 0.29809999 0.77819997 0.84560001 0.34549999 0.40700001 0.5528 0.29809999
		 0.77819997 0.30930001 0.032400001 0.95039999 0.72939998 0.0319 0.68330002 0.34850001
		 -0.53740001 0.76789999 0.068099998 -0.26930001 0.96069998 0.3064 -0.4316 0.84850001
		 0.3057 -0.5661 0.76550001 0.5036 -0.2714 0.82020003 0.55430001 -0.47979999 0.68010002
		 0.3057 -0.5661 0.76550001 0.3064 -0.4316 0.84850001 0.60170001 -0.095700003 0.79299998
		 0.38890001 -0.54530001 0.74250001 0 -0.40149999 0.91589999 0 0.1217 0.99260002 0.72939998
		 0.0319 0.68330002 0.34850001 -0.53740001 0.76789999 0.38890001 -0.54530001 0.74250001
		 0.60170001 -0.095700003 0.79299998 0.30930001 0.032400001 0.95039999 0.068099998
		 -0.26930001 0.96069998 0.34850001 -0.53740001 0.76789999 0.72939998 0.0319 0.68330002
		 0.6286 0.42590001 0.65079999 0.57929999 0.48390001 0.6559 0.8477 0.37509999 0.3752
		 0.84560001 0.34549999 0.40700001 0.84930003 0.182 0.49559999 0.8477 0.37509999 0.3752
		 0.57929999 0.48390001 0.6559 0.53070003 0.30500001 0.79079998 0.50340003 -0.42460001
		 0.7525 0.6961 -0.5068 0.50849998 0.84930003 0.182 0.49559999 0.53070003 0.30500001
		 0.79079998 0 -0.86570001 0.50059998 0.39019999 -0.84020001 0.37650001 0.50340003
		 -0.42460001 0.7525 0 -0.46540001 0.88510001 0.523 0.070299998 0.84939998 0.63800001
		 -0.2192 0.73820001 0.89359999 -0.27309999 0.35609999 0.8603 0.067299999 0.50529999
		 0.523 0.070299998 0.84939998 0.294 0.12809999 0.9472 0.51010001 0.0283 0.85970002
		 0.63800001 -0.2192 0.73820001 0.96020001 -0.2656 0.086199999 0.99000001 -0.1312 0.051899999
		 0.89359999 -0.27309999 0.35609999 0.90700001 -0.2933 0.30219999 0.5036 -0.2714 0.82020003
		 0.3064 -0.4316 0.84850001 0.22139999 0.041200001 0.97430003 0.48100001 0.1691 0.8603
		 0.523 0.070299998 0.84939998 0.48100001 0.1691 0.8603 0.22139999 0.041200001 0.97430003
		 0.294 0.12809999 0.9472 0.96319997 -0.0059000002 -0.2687 0.51730001 -0.15620001 -0.84149998
		 0.56400001 -0.2418 -0.78960001 0.9479 -0.19859999 -0.2492 0.51730001 -0.15620001
		 -0.84149998 0 -0.1577 -0.98750001 0 -0.24420001 -0.96969998 0.56400001 -0.2418 -0.78960001
		 0.73470002 -0.027799999 0.6778 0.70090002 0.0669 0.71020001 0.72659999 -0.3836 0.57010001
		 0.60680002 -0.13349999 0.78350002 0.7216 -0.1488 0.67619997 0.73470002 -0.027799999
		 0.6778 0.60680002 -0.13349999 0.78350002 0.63789999 0.16869999 0.75139999 0.8865
		 -0.32300001 0.33129999 0.7216 -0.1488 0.67619997 0.65530002 -0.2255 0.7209 0.73890001
		 -0.35960001 0.56989998 0.77509999 -0.62620002 0.084600002 0.77469999 -0.6239 -0.1033
		 0.92089999 -0.28909999 0.2613 0.83679998 -0.1807 0.5169 0.8628 -0.50300002 0.050999999
		 0.63319999 -0.72729999 0.26480001 0.59789997 -0.030999999 0.80089998 0.69779998 0.32280001
		 0.63950002 0.58209997 0.71869999 0.3804 0.89709997 0.44049999 0.034200002 0.99000001
		 -0.1312 0.051899999 0.8603 0.067299999 0.50529999;
	setAttr ".n[5644:5809]" -type "float3"  0.89359999 -0.27309999 0.35609999 0.63800001
		 -0.2192 0.73820001 0.77389997 -0.1787 0.60759997 0.89359999 -0.27309999 0.35609999
		 0.63319999 -0.72729999 0.26480001 0.60460001 -0.7561 0.25049999 0 -0.95910001 0.28310001
		 0.69870001 -0.54909998 0.4585 0.6961 -0.5068 0.50849998 0.4386 -0.75819999 0.4824
		 0.55430001 -0.47979999 0.68010002 0.3188 -0.47549999 0.81989998 0.3057 -0.5661 0.76550001
		 0.38890001 -0.54530001 0.74250001 0.3188 -0.47549999 0.81989998 0 -0.40149999 0.91589999
		 0.77389997 -0.1787 0.60759997 0.63800001 -0.2192 0.73820001 0.51010001 0.0283 0.85970002
		 0.60460001 -0.7561 0.25049999 0 -0.96700001 -0.25459999 0 -0.95910001 0.28310001
		 0.96020001 -0.2656 0.086199999 0.90700001 -0.2933 0.30219999 0.92379999 -0.35789999
		 -0.1358 0.92379999 -0.35789999 -0.1358 0.8628 -0.50300002 0.050999999 0.96020001
		 -0.2656 0.086199999 0.61699998 -0.116 0.7784 0.8603 0.067299999 0.50529999 0.82370001
		 0.0502 0.56470001 0.5036 -0.2714 0.82020003 0.48100001 0.1691 0.8603 0.61699998 -0.116
		 0.7784 0.92379999 -0.35789999 -0.1358 0.90700001 -0.2933 0.30219999 0.94270003 -0.1978
		 0.2687 0.63319999 -0.72729999 0.26480001 0.77469999 -0.6239 -0.1033 0.77509999 -0.62620002
		 0.084600002 0.60460001 -0.7561 0.25049999 0.63319999 -0.72729999 0.26480001 0.77509999
		 -0.62620002 0.084600002 0.5036 -0.2714 0.82020003 0.61699998 -0.116 0.7784 0.55430001
		 -0.47979999 0.68010002 0.8603 0.067299999 0.50529999 0.99339998 -0.0031000001 0.1142
		 0.82370001 0.0502 0.56470001 0.84500003 0.062399998 0.53109998 0.93790001 -0.040600002
		 0.34459999 0.94270003 -0.1978 0.2687 0.99000001 -0.1312 0.051899999 0.96020001 -0.2656
		 0.086199999 0.9479 -0.19859999 -0.2492 0.83679998 -0.1807 0.5169 0.70480001 -0.171
		 0.68849999 0.74629998 -0.046999998 0.66399997 0 -0.96700001 -0.25459999 0.60460001
		 -0.7561 0.25049999 0.4445 -0.79689997 0.4091 0.30930001 0.032400001 0.95039999 0.22139999
		 0.041200001 0.97430003 0.068099998 -0.26930001 0.96069998 0.4445 -0.79689997 0.4091
		 0 -0.72210002 0.69169998 0 -0.96700001 -0.25459999 0.85769999 0.18799999 0.47850001
		 0.69929999 -0.043200001 0.71359998 0.65270001 0.13249999 0.74589998 0.1811 -0.59380001
		 0.78399998 0.45050001 -0.20720001 0.86839998 0.50050002 -0.46950001 0.72729999 0.84930003
		 0.182 0.49559999 0.9368 0.18709999 0.2958 0.8477 0.37509999 0.3752 0.55430001 -0.47979999
		 0.68010002 0.61699998 -0.116 0.7784 0.82370001 0.0502 0.56470001 0.6961 -0.5068 0.50849998
		 0.39019999 -0.84020001 0.37650001 0.4386 -0.75819999 0.4824 0.39019999 -0.84020001
		 0.37650001 0 -0.86570001 0.50059998 0 -0.33160001 0.94340003 0.6961 -0.5068 0.50849998
		 0.50340003 -0.42460001 0.7525 0.39019999 -0.84020001 0.37650001 0.9479 -0.19859999
		 -0.2492 0.98180002 -0.13070001 0.1381 0.96319997 -0.0059000002 -0.2687 0.98180002
		 -0.13070001 0.1381 0.96020001 -0.2656 0.086199999 0.8628 -0.50300002 0.050999999
		 0.22139999 0.041200001 0.97430003 0.3064 -0.4316 0.84850001 0.068099998 -0.26930001
		 0.96069998 0.70480001 -0.171 0.68849999 0.83679998 -0.1807 0.5169 0.73890001 -0.35960001
		 0.56989998 0.63789999 0.16869999 0.75139999 0.65530002 -0.2255 0.7209 0.7216 -0.1488
		 0.67619997 0.8865 -0.32300001 0.33129999 0.73890001 -0.35960001 0.56989998 0.83679998
		 -0.1807 0.5169 0.8865 -0.32300001 0.33129999 0.83679998 -0.1807 0.5169 0.92089999
		 -0.28909999 0.2613 0.9479 -0.19859999 -0.2492 0.96020001 -0.2656 0.086199999 0.98180002
		 -0.13070001 0.1381 0.99000001 -0.1312 0.051899999 0.99339998 -0.0031000001 0.1142
		 0.8603 0.067299999 0.50529999 0.77389997 -0.1787 0.60759997 0.90700001 -0.2933 0.30219999
		 0.89359999 -0.27309999 0.35609999 0 -0.95910001 0.28310001 -0.63319999 -0.72729999
		 0.26480001 -0.59789997 -0.030999999 0.80089998 0 -0.21259999 0.97710001 -0.89709997
		 0.44049999 0.034200002 -0.64209998 0.51359999 -0.56910002 -0.49529999 0.8682 0.0285
		 -0.58209997 0.71869999 0.3804 -0.2104 0.75010002 0.62690002 -0.079599999 0.73189998
		 0.67680001 -0.091600001 0.60769999 0.78890002 -0.285 0.66369998 0.69160002 -0.079599999
		 0.73189998 0.67680001 -0.1077 0.5255 0.84390002 0 0.57200003 0.82020003 0 0.69620001
		 0.71789998 -0.2104 0.75010002 0.62690002 0.0814 0.81870002 0.56849998 -0.1077 0.5255
		 0.84390002 -0.079599999 0.73189998 0.67680001 -0.59789997 -0.030999999 0.80089998
		 -0.69779998 0.32280001 0.63950002 -0.285 0.66369998 0.69160002 -0.091600001 0.60769999
		 0.78890002 -0.69779998 0.32280001 0.63950002 -0.58209997 0.71869999 0.3804 -0.2104
		 0.75010002 0.62690002 -0.285 0.66369998 0.69160002 -0.091600001 0.60769999 0.78890002
		 0 0.58859998 0.80839998 0 -0.21259999 0.97710001 -0.59789997 -0.030999999 0.80089998
		 -0.079599999 0.73189998 0.67680001 0 0.69620001 0.71789998 0 0.58859998 0.80839998
		 -0.091600001 0.60769999 0.78890002 -0.69779998 0.32280001 0.63950002 -0.59789997
		 -0.030999999 0.80089998 -0.8628 -0.50300002 0.050999999 -0.98180002 -0.13070001 0.1381
		 -0.89709997 0.44049999 0.034200002 -0.69779998 0.32280001 0.63950002 -0.98180002
		 -0.13070001 0.1381 -0.96319997 -0.0059000002 -0.2687 -0.64209998 0.51359999 -0.56910002
		 -0.89709997 0.44049999 0.034200002 -0.96319997 -0.0059000002 -0.2687 -0.51730001
		 -0.15620001 -0.84149998;
	setAttr ".n[5810:5975]" -type "float3"  -0.64209998 0.51359999 -0.56910002 -0.51730001
		 -0.15620001 -0.84149998 0 -0.1577 -0.98750001 0 0.13079999 -0.9914 0 0.1217 0.99260002
		 -0.60170001 -0.095700003 0.79299998 -0.6286 0.42590001 0.65079999 0 0.5341 0.84539998
		 -0.74629998 -0.046999998 0.66399997 -0.60460001 -0.7561 0.25049999 -0.4445 -0.79689997
		 0.4091 -0.51560003 0.0385 0.85600001 -0.70480001 -0.171 0.68849999 -0.74629998 -0.046999998
		 0.66399997 -0.51560003 0.0385 0.85600001 -0.45050001 -0.20720001 0.86839998 -0.94270003
		 -0.1978 0.2687 -0.92379999 -0.35789999 -0.1358 -0.77469999 -0.6239 -0.1033 -0.92089999
		 -0.28909999 0.2613 -0.74629998 -0.046999998 0.66399997 -0.83679998 -0.1807 0.5169
		 -0.77509999 -0.62620002 0.084600002 -0.60460001 -0.7561 0.25049999 -0.84560001 0.34549999
		 0.40700001 -0.6286 0.42590001 0.65079999 -0.60170001 -0.095700003 0.79299998 -0.72939998
		 0.0319 0.68330002 -0.69870001 -0.54909998 0.4585 -0.6961 -0.5068 0.50849998 -0.84930003
		 0.182 0.49559999 -0.9368 0.18709999 0.2958 -0.77389997 -0.1787 0.60759997 -0.90700001
		 -0.2933 0.30219999 -0.94270003 -0.1978 0.2687 -0.84500003 0.062399998 0.53109998
		 -0.30930001 0.032400001 0.95039999 -0.22139999 0.041200001 0.97430003 -0.294 0.12809999
		 0.9472 -0.5528 0.29809999 0.77819997 -0.92379999 -0.35789999 -0.1358 -0.8628 -0.50300002
		 0.050999999 -0.63319999 -0.72729999 0.26480001 -0.77469999 -0.6239 -0.1033 -0.65530002
		 -0.2255 0.7209 -0.73890001 -0.35960001 0.56989998 -0.70480001 -0.171 0.68849999 -0.66119999
		 -0.19159999 0.72530001 -0.61699998 -0.116 0.7784 -0.8603 0.067299999 0.50529999 -0.523
		 0.070299998 0.84939998 -0.48100001 0.1691 0.8603 -0.69929999 -0.043200001 0.71359998
		 -0.51539999 0.34760001 0.78329998 -0.2315 0.53250003 0.81410003 -0.40059999 -0.1657
		 0.9012 -0.1811 -0.59380001 0.78399998 -0.45050001 -0.20720001 0.86839998 0 -0.2624
		 0.96499997 0 -0.55720001 0.83039999 -0.38890001 -0.54530001 0.74250001 -0.3188 -0.47549999
		 0.81989998 -0.3057 -0.5661 0.76550001 -0.34850001 -0.53740001 0.76789999 -0.56400001
		 -0.2418 -0.78960001 -0.9479 -0.19859999 -0.2492 -0.94669998 -0.1363 -0.29179999 -0.53130001
		 -0.085699998 -0.84289998 -0.9479 -0.19859999 -0.2492 -0.99000001 -0.1312 0.051899999
		 -0.99339998 -0.0031000001 0.1142 -0.94669998 -0.1363 -0.29179999 -0.53070003 0.30500001
		 0.79079998 -0.50340003 -0.42460001 0.7525 0 -0.46540001 0.88510001 0 0.34240001 0.93959999
		 0 0.1214 0.99260002 -0.2577 0.0274 0.96579999 -0.37439999 0.0127 0.92720002 0 -0.1477
		 0.98900002 -0.30939999 0.211 0.92720002 -0.2577 0.0274 0.96579999 0 0.1214 0.99260002
		 0 0.104 0.9946 0 -0.24420001 -0.96969998 -0.56400001 -0.2418 -0.78960001 -0.53130001
		 -0.085699998 -0.84289998 0 -0.083099999 -0.99650002 -0.73470002 -0.027799999 0.6778
		 -0.70090002 0.0669 0.71020001 -0.84500003 0.062399998 0.53109998 -0.93790001 -0.040600002
		 0.34459999 -0.60680002 -0.13349999 0.78350002 -0.63789999 0.16869999 0.75139999 -0.77469999
		 -0.091899998 0.62559998 -0.76450002 -0.13860001 0.62949997 -0.8865 -0.32300001 0.33129999
		 -0.93790001 -0.040600002 0.34459999 -0.94270003 -0.1978 0.2687 -0.92089999 -0.28909999
		 0.2613 -0.8865 -0.32300001 0.33129999 -0.7216 -0.1488 0.67619997 -0.73470002 -0.027799999
		 0.6778 -0.93790001 -0.040600002 0.34459999 -0.72659999 -0.3836 0.57010001 -0.60680002
		 -0.13349999 0.78350002 -0.76450002 -0.13860001 0.62949997 -0.76950002 -0.1609 0.61799997
		 -0.6286 0.42590001 0.65079999 -0.57929999 0.48390001 0.6559 0 0.58289999 0.81260002
		 0 0.5341 0.84539998 -0.294 0.12809999 0.9472 -0.51010001 0.0283 0.85970002 -0.75080001
		 0.2942 0.59140003 -0.5528 0.29809999 0.77819997 -0.30939999 0.211 0.92720002 0 0.104
		 0.9946 0 0.47499999 0.88 -0.2315 0.53250003 0.81410003 -0.84500003 0.062399998 0.53109998
		 -0.70090002 0.0669 0.71020001 -0.63559997 0.1292 0.76120001 -0.65270001 0.13249999
		 0.74589998 -0.85769999 0.18799999 0.47850001 -0.75080001 0.2942 0.59140003 -0.51010001
		 0.0283 0.85970002 -0.65270001 0.13249999 0.74589998 -0.51539999 0.34760001 0.78329998
		 -0.69929999 -0.043200001 0.71359998 -0.65270001 0.13249999 0.74589998 -0.63559997
		 0.1292 0.76120001 -0.63889998 0.015699999 0.76910001 -0.51539999 0.34760001 0.78329998
		 -0.63559997 0.1292 0.76120001 -0.76950002 -0.1609 0.61799997 -0.59869999 -0.0506
		 0.79939997 -0.63889998 0.015699999 0.76910001 -0.76950002 -0.1609 0.61799997 -0.76450002
		 -0.13860001 0.62949997 -0.67839998 -0.1444 0.72030002 -0.59869999 -0.0506 0.79939997
		 -0.76450002 -0.13860001 0.62949997 -0.77469999 -0.091899998 0.62559998 -0.66119999
		 -0.19159999 0.72530001 -0.70480001 -0.171 0.68849999 -0.45050001 -0.20720001 0.86839998
		 -0.50050002 -0.46950001 0.72729999 -0.70090002 0.0669 0.71020001 -0.72659999 -0.3836
		 0.57010001 -0.76950002 -0.1609 0.61799997 -0.63559997 0.1292 0.76120001 -0.84500003
		 0.062399998 0.53109998 -0.65270001 0.13249999 0.74589998 -0.51010001 0.0283 0.85970002
		 -0.77389997 -0.1787 0.60759997 -0.2315 0.53250003 0.81410003 0 0.47499999 0.88 0
		 -0.33160001 0.94340003 -0.40059999 -0.1657 0.9012 0 -0.033799998 0.99940002 0 -0.2624
		 0.96499997 -0.45050001 -0.20720001 0.86839998 -0.51560003 0.0385 0.85600001 0 -0.72210002
		 0.69169998 0 -0.033799998 0.99940002;
	setAttr ".n[5976:6141]" -type "float3"  -0.51560003 0.0385 0.85600001 -0.4445
		 -0.79689997 0.4091 -0.30939999 0.211 0.92720002 -0.2315 0.53250003 0.81410003 -0.51539999
		 0.34760001 0.78329998 -0.63889998 0.015699999 0.76910001 -0.2577 0.0274 0.96579999
		 -0.30939999 0.211 0.92720002 -0.63889998 0.015699999 0.76910001 -0.59869999 -0.0506
		 0.79939997 -0.37439999 0.0127 0.92720002 -0.2577 0.0274 0.96579999 -0.59869999 -0.0506
		 0.79939997 -0.67839998 -0.1444 0.72030002 -0.77469999 -0.091899998 0.62559998 -0.63789999
		 0.16869999 0.75139999 -0.65530002 -0.2255 0.7209 -0.66119999 -0.19159999 0.72530001
		 -0.50050002 -0.46950001 0.72729999 -0.67839998 -0.1444 0.72030002 -0.77469999 -0.091899998
		 0.62559998 -0.66119999 -0.19159999 0.72530001 -0.1811 -0.59380001 0.78399998 -0.37439999
		 0.0127 0.92720002 -0.67839998 -0.1444 0.72030002 -0.50050002 -0.46950001 0.72729999
		 0 -0.55720001 0.83039999 0 -0.1477 0.98900002 -0.37439999 0.0127 0.92720002 -0.1811
		 -0.59380001 0.78399998 -0.53070003 0.30500001 0.79079998 0 0.34240001 0.93959999
		 0 0.58289999 0.81260002 -0.57929999 0.48390001 0.6559 -0.4386 -0.75819999 0.4824
		 -0.40059999 -0.1657 0.9012 0 -0.33160001 0.94340003 -0.39019999 -0.84020001 0.37650001
		 -0.4386 -0.75819999 0.4824 -0.69870001 -0.54909998 0.4585 -0.69929999 -0.043200001
		 0.71359998 -0.40059999 -0.1657 0.9012 -0.9368 0.18709999 0.2958 -0.85769999 0.18799999
		 0.47850001 -0.69929999 -0.043200001 0.71359998 -0.69870001 -0.54909998 0.4585 -0.75080001
		 0.2942 0.59140003 -0.85769999 0.18799999 0.47850001 -0.9368 0.18709999 0.2958 -0.8477
		 0.37509999 0.3752 -0.84560001 0.34549999 0.40700001 -0.5528 0.29809999 0.77819997
		 -0.75080001 0.2942 0.59140003 -0.8477 0.37509999 0.3752 -0.84560001 0.34549999 0.40700001
		 -0.72939998 0.0319 0.68330002 -0.30930001 0.032400001 0.95039999 -0.5528 0.29809999
		 0.77819997 -0.34850001 -0.53740001 0.76789999 -0.3057 -0.5661 0.76550001 -0.3064
		 -0.4316 0.84850001 -0.068099998 -0.26930001 0.96069998 -0.5036 -0.2714 0.82020003
		 -0.3064 -0.4316 0.84850001 -0.3057 -0.5661 0.76550001 -0.55430001 -0.47979999 0.68010002
		 -0.60170001 -0.095700003 0.79299998 0 0.1217 0.99260002 0 -0.40149999 0.91589999
		 -0.38890001 -0.54530001 0.74250001 -0.72939998 0.0319 0.68330002 -0.60170001 -0.095700003
		 0.79299998 -0.38890001 -0.54530001 0.74250001 -0.34850001 -0.53740001 0.76789999
		 -0.30930001 0.032400001 0.95039999 -0.72939998 0.0319 0.68330002 -0.34850001 -0.53740001
		 0.76789999 -0.068099998 -0.26930001 0.96069998 -0.6286 0.42590001 0.65079999 -0.84560001
		 0.34549999 0.40700001 -0.8477 0.37509999 0.3752 -0.57929999 0.48390001 0.6559 -0.84930003
		 0.182 0.49559999 -0.53070003 0.30500001 0.79079998 -0.57929999 0.48390001 0.6559
		 -0.8477 0.37509999 0.3752 -0.50340003 -0.42460001 0.7525 -0.53070003 0.30500001 0.79079998
		 -0.84930003 0.182 0.49559999 -0.6961 -0.5068 0.50849998 0 -0.86570001 0.50059998
		 0 -0.46540001 0.88510001 -0.50340003 -0.42460001 0.7525 -0.39019999 -0.84020001 0.37650001
		 -0.523 0.070299998 0.84939998 -0.8603 0.067299999 0.50529999 -0.89359999 -0.27309999
		 0.35609999 -0.63800001 -0.2192 0.73820001 -0.523 0.070299998 0.84939998 -0.63800001
		 -0.2192 0.73820001 -0.51010001 0.0283 0.85970002 -0.294 0.12809999 0.9472 -0.96020001
		 -0.2656 0.086199999 -0.90700001 -0.2933 0.30219999 -0.89359999 -0.27309999 0.35609999
		 -0.99000001 -0.1312 0.051899999 -0.5036 -0.2714 0.82020003 -0.48100001 0.1691 0.8603
		 -0.22139999 0.041200001 0.97430003 -0.3064 -0.4316 0.84850001 -0.523 0.070299998
		 0.84939998 -0.294 0.12809999 0.9472 -0.22139999 0.041200001 0.97430003 -0.48100001
		 0.1691 0.8603 -0.96319997 -0.0059000002 -0.2687 -0.9479 -0.19859999 -0.2492 -0.56400001
		 -0.2418 -0.78960001 -0.51730001 -0.15620001 -0.84149998 -0.51730001 -0.15620001 -0.84149998
		 -0.56400001 -0.2418 -0.78960001 0 -0.24420001 -0.96969998 0 -0.1577 -0.98750001 -0.73470002
		 -0.027799999 0.6778 -0.60680002 -0.13349999 0.78350002 -0.72659999 -0.3836 0.57010001
		 -0.70090002 0.0669 0.71020001 -0.7216 -0.1488 0.67619997 -0.63789999 0.16869999 0.75139999
		 -0.60680002 -0.13349999 0.78350002 -0.73470002 -0.027799999 0.6778 -0.8865 -0.32300001
		 0.33129999 -0.73890001 -0.35960001 0.56989998 -0.65530002 -0.2255 0.7209 -0.7216
		 -0.1488 0.67619997 -0.77509999 -0.62620002 0.084600002 -0.83679998 -0.1807 0.5169
		 -0.92089999 -0.28909999 0.2613 -0.77469999 -0.6239 -0.1033 -0.8628 -0.50300002 0.050999999
		 -0.59789997 -0.030999999 0.80089998 -0.63319999 -0.72729999 0.26480001 -0.69779998
		 0.32280001 0.63950002 -0.89709997 0.44049999 0.034200002 -0.58209997 0.71869999 0.3804
		 -0.99000001 -0.1312 0.051899999 -0.89359999 -0.27309999 0.35609999 -0.8603 0.067299999
		 0.50529999 -0.63800001 -0.2192 0.73820001 -0.89359999 -0.27309999 0.35609999 -0.77389997
		 -0.1787 0.60759997 -0.63319999 -0.72729999 0.26480001 0 -0.95910001 0.28310001 -0.60460001
		 -0.7561 0.25049999 -0.69870001 -0.54909998 0.4585 -0.4386 -0.75819999 0.4824 -0.6961
		 -0.5068 0.50849998 -0.55430001 -0.47979999 0.68010002 -0.3057 -0.5661 0.76550001
		 -0.3188 -0.47549999 0.81989998 -0.38890001 -0.54530001 0.74250001 0 -0.40149999 0.91589999
		 -0.3188 -0.47549999 0.81989998 -0.77389997 -0.1787 0.60759997 -0.51010001 0.0283
		 0.85970002 -0.63800001 -0.2192 0.73820001 -0.60460001 -0.7561 0.25049999;
	setAttr ".n[6142:6307]" -type "float3"  0 -0.95910001 0.28310001 0 -0.96700001
		 -0.25459999 -0.96020001 -0.2656 0.086199999 -0.92379999 -0.35789999 -0.1358 -0.90700001
		 -0.2933 0.30219999 -0.92379999 -0.35789999 -0.1358 -0.96020001 -0.2656 0.086199999
		 -0.8628 -0.50300002 0.050999999 -0.61699998 -0.116 0.7784 -0.82370001 0.0502 0.56470001
		 -0.8603 0.067299999 0.50529999 -0.5036 -0.2714 0.82020003 -0.61699998 -0.116 0.7784
		 -0.48100001 0.1691 0.8603 -0.92379999 -0.35789999 -0.1358 -0.94270003 -0.1978 0.2687
		 -0.90700001 -0.2933 0.30219999 -0.63319999 -0.72729999 0.26480001 -0.77509999 -0.62620002
		 0.084600002 -0.77469999 -0.6239 -0.1033 -0.60460001 -0.7561 0.25049999 -0.77509999
		 -0.62620002 0.084600002 -0.63319999 -0.72729999 0.26480001 -0.5036 -0.2714 0.82020003
		 -0.55430001 -0.47979999 0.68010002 -0.61699998 -0.116 0.7784 -0.8603 0.067299999
		 0.50529999 -0.82370001 0.0502 0.56470001 -0.99339998 -0.0031000001 0.1142 -0.84500003
		 0.062399998 0.53109998 -0.94270003 -0.1978 0.2687 -0.93790001 -0.040600002 0.34459999
		 -0.99000001 -0.1312 0.051899999 -0.9479 -0.19859999 -0.2492 -0.96020001 -0.2656 0.086199999
		 -0.83679998 -0.1807 0.5169 -0.74629998 -0.046999998 0.66399997 -0.70480001 -0.171
		 0.68849999 0 -0.96700001 -0.25459999 -0.4445 -0.79689997 0.4091 -0.60460001 -0.7561
		 0.25049999 -0.30930001 0.032400001 0.95039999 -0.068099998 -0.26930001 0.96069998
		 -0.22139999 0.041200001 0.97430003 -0.4445 -0.79689997 0.4091 0 -0.96700001 -0.25459999
		 0 -0.72210002 0.69169998 -0.85769999 0.18799999 0.47850001 -0.65270001 0.13249999
		 0.74589998 -0.69929999 -0.043200001 0.71359998 -0.1811 -0.59380001 0.78399998 -0.50050002
		 -0.46950001 0.72729999 -0.45050001 -0.20720001 0.86839998 -0.84930003 0.182 0.49559999
		 -0.8477 0.37509999 0.3752 -0.9368 0.18709999 0.2958 -0.55430001 -0.47979999 0.68010002
		 -0.82370001 0.0502 0.56470001 -0.61699998 -0.116 0.7784 -0.6961 -0.5068 0.50849998
		 -0.4386 -0.75819999 0.4824 -0.39019999 -0.84020001 0.37650001 -0.39019999 -0.84020001
		 0.37650001 0 -0.33160001 0.94340003 0 -0.86570001 0.50059998 -0.6961 -0.5068 0.50849998
		 -0.39019999 -0.84020001 0.37650001 -0.50340003 -0.42460001 0.7525 -0.9479 -0.19859999
		 -0.2492 -0.96319997 -0.0059000002 -0.2687 -0.98180002 -0.13070001 0.1381 -0.98180002
		 -0.13070001 0.1381 -0.8628 -0.50300002 0.050999999 -0.96020001 -0.2656 0.086199999
		 -0.22139999 0.041200001 0.97430003 -0.068099998 -0.26930001 0.96069998 -0.3064 -0.4316
		 0.84850001 -0.70480001 -0.171 0.68849999 -0.73890001 -0.35960001 0.56989998 -0.83679998
		 -0.1807 0.5169 -0.63789999 0.16869999 0.75139999 -0.7216 -0.1488 0.67619997 -0.65530002
		 -0.2255 0.7209 -0.8865 -0.32300001 0.33129999 -0.83679998 -0.1807 0.5169 -0.73890001
		 -0.35960001 0.56989998 -0.8865 -0.32300001 0.33129999 -0.92089999 -0.28909999 0.2613
		 -0.83679998 -0.1807 0.5169 -0.9479 -0.19859999 -0.2492 -0.98180002 -0.13070001 0.1381
		 -0.96020001 -0.2656 0.086199999 -0.99000001 -0.1312 0.051899999 -0.8603 0.067299999
		 0.50529999 -0.99339998 -0.0031000001 0.1142 -0.77389997 -0.1787 0.60759997 -0.89359999
		 -0.27309999 0.35609999 -0.90700001 -0.2933 0.30219999 0.82239997 0.1155 0.55699998
		 0.85509998 0.1142 0.50580001 0.41780001 0.046399999 0.9073 0.41029999 0.046999998
		 0.91070002 0.97140002 0.22939999 -0.060699999 0.96880001 0.2289 -0.094800003 0.85509998
		 0.1142 0.50580001 0.82239997 0.1155 0.55699998 0.41780001 0.046399999 0.9073 0.1781
		 0.039000001 0.98320001 0.0055 0.075300001 0.9971 0.41029999 0.046999998 0.91070002
		 0.28220001 0.1157 -0.95230001 0.71880001 0.1816 -0.671 0.71740001 0.1815 -0.67259997
		 0.27610001 0.116 -0.95410001 0.28220001 0.1157 -0.95230001 0.27610001 0.116 -0.95410001
		 -0.1115 0.1761 -0.97799999 -0.060600001 0.16069999 -0.98509997 0.71880001 0.1816
		 -0.671 0.96880001 0.2289 -0.094800003 0.97140002 0.22939999 -0.060699999 0.71740001
		 0.1815 -0.67259997 -0.90460002 0.30250001 0.3003 -0.63639998 0.3249 0.69959998 -0.66619998
		 0.33250001 0.66750002 -0.89880002 0.30180001 0.31799999 -0.91320002 0.31240001 -0.26179999
		 -0.90460002 0.30250001 0.3003 -0.89880002 0.30180001 0.31799999 -0.92140001 0.31470001
		 -0.2278 -0.13330001 0.078400001 0.98799998 -0.1005 0.070100002 0.99250001 -0.0669
		 0.0766 0.99479997 0.0027999999 0.0616 0.99809998 -0.5855 0.2111 -0.7827 -0.060600001
		 0.16069999 -0.98509997 -0.1115 0.1761 -0.97799999 -0.59750003 0.21520001 -0.77249998
		 -0.5855 0.2111 -0.7827 -0.59750003 0.21520001 -0.77249998 -0.91320002 0.31240001
		 -0.26179999 -0.92140001 0.31470001 -0.2278 -0.66619998 0.33250001 0.66750002 -0.63639998
		 0.3249 0.69959998 -0.29820001 0.13 0.94559997 -0.45469999 0.1662 0.875 -0.29820001
		 0.13 0.94559997 -0.1005 0.070100002 0.99250001 -0.13330001 0.078400001 0.98799998
		 -0.45469999 0.1662 0.875 0.1781 0.039000001 0.98320001 0.0027999999 0.0616 0.99809998
		 -0.0669 0.0766 0.99479997 0.0055 0.075300001 0.9971 0 -0.054499999 -0.99849999 0
		 0.67269999 -0.73989999 0.65030003 0.5442 -0.52999997 0.73720002 0.0568 -0.67330003
		 0 -0.7683 -0.6401 0 -0.054499999 -0.99849999 0.73720002 0.0568 -0.67330003 0.73629999
		 -0.53850001 -0.40970001 0.62290001 0.65740001 -0.42410001 0.94760001 0.0682 -0.31220001
		 0.73720002 0.0568 -0.67330003 0.65030003 0.5442 -0.52999997;
	setAttr ".n[6308:6473]" -type "float3"  0 0.96329999 -0.2683 0.62290001 0.65740001
		 -0.42410001 0.65030003 0.5442 -0.52999997 0 0.67269999 -0.73989999 0.94760001 0.0682
		 -0.31220001 0.76179999 -0.62480003 -0.17110001 0.73629999 -0.53850001 -0.40970001
		 0.73720002 0.0568 -0.67330003 0 -0.99489999 -0.1009 0 -0.7683 -0.6401 0.73629999
		 -0.53850001 -0.40970001 0.76179999 -0.62480003 -0.17110001 0 -0.054499999 -0.99849999
		 -0.73720002 0.0568 -0.67330003 -0.65030003 0.5442 -0.52999997 0 0.67269999 -0.73989999
		 0 -0.7683 -0.6401 -0.73629999 -0.53850001 -0.40970001 -0.73720002 0.0568 -0.67330003
		 0 -0.054499999 -0.99849999 -0.62290001 0.65740001 -0.42410001 -0.65030003 0.5442
		 -0.52999997 -0.73720002 0.0568 -0.67330003 -0.94760001 0.0682 -0.31220001 0 0.96329999
		 -0.2683 0 0.67269999 -0.73989999 -0.65030003 0.5442 -0.52999997 -0.62290001 0.65740001
		 -0.42410001 -0.94760001 0.0682 -0.31220001 -0.73720002 0.0568 -0.67330003 -0.73629999
		 -0.53850001 -0.40970001 -0.76179999 -0.62480003 -0.17110001 0 -0.99489999 -0.1009
		 -0.76179999 -0.62480003 -0.17110001 -0.73629999 -0.53850001 -0.40970001 0 -0.7683
		 -0.6401 0.24590001 0.30669999 -0.91949999 0.2401 0.26449999 -0.93400002 0.57980001
		 0.1724 -0.79629999 0.52969998 0.3427 -0.77590001 0.2401 0.26449999 -0.93400002 0.24590001
		 0.30669999 -0.91949999 0.2278 0.18629999 -0.95569998 0.2273 0.1551 -0.96139997 0.2273
		 0.1551 -0.96139997 0.2278 0.18629999 -0.95569998 0.13060001 0.1137 -0.9849 0.1286
		 0.059300002 -0.98989999 0.0031999999 0.287 -0.95789999 -0.24510001 0.36149999 -0.89960003
		 -0.2789 0.2617 -0.92400002 0.0035000001 0.2931 -0.95609999 0.0035000001 0.2931 -0.95609999
		 -0.1275 0.20739999 -0.96990001 -0.1266 0.1488 -0.98070002 0.0031999999 0.287 -0.95789999
		 -0.1275 0.20739999 -0.96990001 -0.18719999 0.081900001 -0.97890002 -0.1868 0.057399999
		 -0.98070002 -0.1266 0.1488 -0.98070002 0.75880003 0.61699998 0.2088 0.70450002 0.43149999
		 0.56349999 0.86330003 0.1376 0.48559999 0.96609998 0.2172 0.13940001 0.75880003 0.61699998
		 0.2088 0.96609998 0.2172 0.13940001 0.94840002 0.2676 -0.1701 0.7349 0.65670002 -0.1692
		 0.9601 0.1767 -0.21690001 0.9734 0.1409 0.1806 0.96249998 0.21520001 0.1654 0.94660002
		 0.2175 -0.23800001 0.9734 0.1409 0.1806 0.96609998 0.2172 0.13940001 0.86330003 0.1376
		 0.48559999 0.87370002 -0.0077 0.48640001 0.2572 0.2465 0.93440002 0.3748 0.65960002
		 0.65149999 0 0.7101 0.70410001 0 0.25409999 0.96719998 0.87370002 -0.0077 0.48640001
		 0.86330003 0.1376 0.48559999 0.54659998 0.1855 0.81660002 0.62279999 -0.0031999999
		 0.78240001 0.2572 0.2465 0.93440002 0.54659998 0.1855 0.81660002 0.70450002 0.43149999
		 0.56349999 0.3748 0.65960002 0.65149999 0.74070001 0.1997 -0.6415 0.375 0.1891 -0.90750003
		 0.35049999 0.64920002 -0.67510003 0.7101 0.4887 -0.50690001 0.3748 0.65960002 0.65149999
		 0.70450002 0.43149999 0.56349999 0.75880003 0.61699998 0.2088 0.3443 0.91579998 0.2066
		 0.3443 0.91579998 0.2066 0.75880003 0.61699998 0.2088 0.7349 0.65670002 -0.1692 0.35519999
		 0.9156 -0.1882 0.7101 0.4887 -0.50690001 0.35049999 0.64920002 -0.67510003 0.35519999
		 0.9156 -0.1882 0.7349 0.65670002 -0.1692 0.62279999 -0.0031999999 0.78240001 0.54659998
		 0.1855 0.81660002 0.2572 0.2465 0.93440002 0.28870001 0.1018 0.95200002 0.74070001
		 0.1997 -0.6415 0.94840002 0.2676 -0.1701 0.9601 0.1767 -0.21690001 0.69069999 0.1763
		 -0.70130002 0.375 0.1891 -0.90750003 0.74070001 0.1997 -0.6415 0.69069999 0.1763
		 -0.70130002 0.3619 0.1732 -0.91600001 0 0.22499999 -0.97439998 0.375 0.1891 -0.90750003
		 0.3619 0.1732 -0.91600001 0 0.1488 -0.98890001 0.9734 0.1409 0.1806 0.9601 0.1767
		 -0.21690001 0.94840002 0.2676 -0.1701 0.96609998 0.2172 0.13940001 0.96249998 0.21520001
		 0.1654 0.9734 0.1409 0.1806 0.87370002 -0.0077 0.48640001 0.86339998 0.032299999
		 0.50340003 0.86339998 0.032299999 0.50340003 0.87370002 -0.0077 0.48640001 0.62279999
		 -0.0031999999 0.78240001 0.63910002 -0.032099999 0.76849997 0.63910002 -0.032099999
		 0.76849997 0.62279999 -0.0031999999 0.78240001 0.28870001 0.1018 0.95200002 0.31389999
		 0.1091 0.94319999 0.69069999 0.1763 -0.70130002 0.9601 0.1767 -0.21690001 0.94660002
		 0.2175 -0.23800001 0.70349997 0.2649 -0.6595 0.3619 0.1732 -0.91600001 0.69069999
		 0.1763 -0.70130002 0.70349997 0.2649 -0.6595 0.34279999 0.2958 -0.89160001 0 0.1488
		 -0.98890001 0.3619 0.1732 -0.91600001 0.34279999 0.2958 -0.89160001 0 0.22310001
		 -0.97479999 0.375 0.1891 -0.90750003 0 0.22499999 -0.97439998 0 0.67809999 -0.73500001
		 0.35049999 0.64920002 -0.67510003 0 0.98079997 -0.19509999 0 0.97289997 0.23109999
		 0.3443 0.91579998 0.2066 0.35519999 0.9156 -0.1882 0.35049999 0.64920002 -0.67510003
		 0 0.67809999 -0.73500001 0 0.98079997 -0.19509999 0.35519999 0.9156 -0.1882 0 0.97289997
		 0.23109999 0 0.7101 0.70410001 0.3748 0.65960002 0.65149999 0.3443 0.91579998 0.2066
		 0 0.25409999 0.96719998 0 0.096199997 0.99540001;
	setAttr ".n[6474:6609]" -type "float3"  0.28870001 0.1018 0.95200002 0.2572 0.2465
		 0.93440002 0 0.096199997 0.99540001 0 0.094599999 0.99550003 0.31389999 0.1091 0.94319999
		 0.28870001 0.1018 0.95200002 0.86330003 0.1376 0.48559999 0.70450002 0.43149999 0.56349999
		 0.54659998 0.1855 0.81660002 0.74070001 0.1997 -0.6415 0.7101 0.4887 -0.50690001
		 0.94840002 0.2676 -0.1701 0.7101 0.4887 -0.50690001 0.7349 0.65670002 -0.1692 0.94840002
		 0.2676 -0.1701 -0.75880003 0.61699998 0.2088 -0.96609998 0.2172 0.13940001 -0.86330003
		 0.1376 0.48559999 -0.70450002 0.43149999 0.56349999 -0.75880003 0.61699998 0.2088
		 -0.7349 0.65670002 -0.1692 -0.94840002 0.2676 -0.1701 -0.96609998 0.2172 0.13940001
		 -0.9601 0.1767 -0.21690001 -0.94660002 0.2175 -0.23800001 -0.96249998 0.21520001
		 0.1654 -0.9734 0.1409 0.1806 -0.9734 0.1409 0.1806 -0.87370002 -0.0077 0.48640001
		 -0.86330003 0.1376 0.48559999 -0.96609998 0.2172 0.13940001 -0.2572 0.2465 0.93440002
		 0 0.25409999 0.96719998 0 0.7101 0.70410001 -0.3748 0.65960002 0.65149999 -0.87370002
		 -0.0077 0.48640001 -0.62279999 -0.0031999999 0.78240001 -0.54659998 0.1855 0.81660002
		 -0.86330003 0.1376 0.48559999 -0.2572 0.2465 0.93440002 -0.3748 0.65960002 0.65149999
		 -0.70450002 0.43149999 0.56349999 -0.54659998 0.1855 0.81660002 -0.74070001 0.1997
		 -0.6415 -0.7101 0.4887 -0.50690001 -0.35049999 0.64920002 -0.67510003 -0.375 0.1891
		 -0.90750003 -0.3748 0.65960002 0.65149999 -0.3443 0.91579998 0.2066 -0.75880003 0.61699998
		 0.2088 -0.70450002 0.43149999 0.56349999 -0.3443 0.91579998 0.2066 -0.35519999 0.9156
		 -0.1882 -0.7349 0.65670002 -0.1692 -0.75880003 0.61699998 0.2088 -0.7101 0.4887 -0.50690001
		 -0.7349 0.65670002 -0.1692 -0.35519999 0.9156 -0.1882 -0.35049999 0.64920002 -0.67510003
		 -0.62279999 -0.0031999999 0.78240001 -0.28870001 0.1018 0.95200002 -0.2572 0.2465
		 0.93440002 -0.54659998 0.1855 0.81660002 -0.74070001 0.1997 -0.6415 -0.69069999 0.1763
		 -0.70130002 -0.9601 0.1767 -0.21690001 -0.94840002 0.2676 -0.1701 -0.375 0.1891 -0.90750003
		 -0.3619 0.1732 -0.91600001 -0.69069999 0.1763 -0.70130002 -0.74070001 0.1997 -0.6415
		 0 0.22499999 -0.97439998 0 0.1488 -0.98890001 -0.3619 0.1732 -0.91600001 -0.375 0.1891
		 -0.90750003 -0.9734 0.1409 0.1806 -0.96609998 0.2172 0.13940001 -0.94840002 0.2676
		 -0.1701 -0.9601 0.1767 -0.21690001 -0.96249998 0.21520001 0.1654 -0.86339998 0.032299999
		 0.50340003 -0.87370002 -0.0077 0.48640001 -0.9734 0.1409 0.1806 -0.86339998 0.032299999
		 0.50340003 -0.63910002 -0.032099999 0.76849997 -0.62279999 -0.0031999999 0.78240001
		 -0.87370002 -0.0077 0.48640001 -0.63910002 -0.032099999 0.76849997 -0.31389999 0.1091
		 0.94319999 -0.28870001 0.1018 0.95200002 -0.62279999 -0.0031999999 0.78240001 -0.69069999
		 0.1763 -0.70130002 -0.70349997 0.2649 -0.6595 -0.94660002 0.2175 -0.23800001 -0.9601
		 0.1767 -0.21690001 -0.3619 0.1732 -0.91600001 -0.34279999 0.2958 -0.89160001 -0.70349997
		 0.2649 -0.6595 -0.69069999 0.1763 -0.70130002 0 0.1488 -0.98890001 0 0.22310001 -0.97479999
		 -0.34279999 0.2958 -0.89160001 -0.3619 0.1732 -0.91600001 -0.375 0.1891 -0.90750003
		 -0.35049999 0.64920002 -0.67510003 0 0.67809999 -0.73500001 0 0.22499999 -0.97439998
		 0 0.98079997 -0.19509999 -0.35519999 0.9156 -0.1882 -0.3443 0.91579998 0.2066 0 0.97289997
		 0.23109999 -0.35049999 0.64920002 -0.67510003 -0.35519999 0.9156 -0.1882 0 0.98079997
		 -0.19509999 0 0.67809999 -0.73500001 0 0.97289997 0.23109999 -0.3443 0.91579998 0.2066
		 -0.3748 0.65960002 0.65149999 0 0.7101 0.70410001 0 0.25409999 0.96719998 -0.2572
		 0.2465 0.93440002 -0.28870001 0.1018 0.95200002 0 0.096199997 0.99540001 0 0.096199997
		 0.99540001 -0.28870001 0.1018 0.95200002 -0.31389999 0.1091 0.94319999 0 0.094599999
		 0.99550003 -0.86330003 0.1376 0.48559999 -0.54659998 0.1855 0.81660002 -0.70450002
		 0.43149999 0.56349999 -0.74070001 0.1997 -0.6415 -0.94840002 0.2676 -0.1701 -0.7101
		 0.4887 -0.50690001 -0.7101 0.4887 -0.50690001 -0.94840002 0.2676 -0.1701 -0.7349
		 0.65670002 -0.1692;
	setAttr -s 1706 -ch 6610 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 11
		f 4 12 13 14 15
		mu 0 4 12 13 14 5
		f 4 -5 16 17 -16
		mu 0 4 5 4 15 12
		f 4 18 19 20 -17
		mu 0 4 4 8 16 15
		f 4 21 22 -20 -12
		mu 0 4 11 17 16 8
		f 4 23 24 25 26
		mu 0 4 18 19 17 20
		f 4 27 28 -23 -25
		mu 0 4 19 21 16 17
		f 4 29 -21 -29 30
		mu 0 4 22 15 16 21
		f 4 31 -18 -30 32
		mu 0 4 23 12 15 22
		f 4 33 34 -13 -32
		mu 0 4 23 24 13 12
		f 4 35 36 37 -2
		mu 0 4 1 25 26 2
		f 4 38 39 40 -37
		mu 0 4 25 27 28 26
		f 4 -35 41 -39 42
		mu 0 4 13 24 27 25
		f 4 43 44 -34 45
		mu 0 4 29 30 24 23
		f 4 -33 46 47 -46
		mu 0 4 23 22 31 29
		f 4 48 49 -47 -31
		mu 0 4 21 32 31 22
		f 4 -28 50 51 -49
		mu 0 4 21 19 33 32
		f 4 52 53 -51 -24
		mu 0 4 18 34 33 19
		f 4 54 55 56 -53
		mu 0 4 18 35 36 34
		f 4 57 58 59 60
		mu 0 4 37 38 39 40
		f 4 61 62 63 64
		mu 0 4 41 42 43 44
		f 4 65 66 -42 -45
		mu 0 4 30 45 27 24
		f 4 -56 -40 -67 67
		mu 0 4 46 28 27 45
		f 4 68 69 70 71
		mu 0 4 47 48 49 50
		f 4 72 73 74 75
		mu 0 4 51 52 53 54
		f 4 76 77 78 79
		mu 0 4 55 52 49 56
		f 4 80 81 -63 82
		mu 0 4 57 58 43 42
		f 4 83 84 85 86
		mu 0 4 59 60 61 62
		f 4 87 88 89 90
		mu 0 4 63 64 62 65
		f 4 91 92 93 94
		mu 0 4 66 67 68 69
		f 4 95 96 97 -92
		mu 0 4 66 70 53 67
		f 4 98 -75 -97 99
		mu 0 4 71 54 53 70
		f 4 100 101 -90 -86
		mu 0 4 61 72 65 62
		f 4 -99 102 103 104
		mu 0 4 73 74 75 76
		f 4 105 106 -72 107
		mu 0 4 77 78 79 80
		f 4 -62 108 -60 109
		mu 0 4 42 41 40 39
		f 4 110 111 -108 112
		mu 0 4 81 82 77 80
		f 4 -14 -43 113 114
		mu 0 4 14 13 25 83
		f 4 -94 115 -88 116
		mu 0 4 69 68 64 63
		f 4 117 -41 -55 -27
		mu 0 4 20 84 35 18
		f 4 118 119 120 121
		mu 0 4 85 86 20 87
		f 4 -8 122 -9 -19
		mu 0 4 4 7 9 8
		f 4 123 -106 124 -58
		mu 0 4 37 78 77 38
		f 4 -101 125 -104 126
		mu 0 4 72 61 76 75
		f 4 -15 127 128 -6
		mu 0 4 5 14 88 6
		f 4 129 130 131 -66
		mu 0 4 30 89 48 45
		f 4 132 -125 -112 133
		mu 0 4 60 38 77 82
		f 4 134 135 -22 -11
		mu 0 4 10 90 17 11
		f 4 136 137 138 139
		mu 0 4 91 92 93 94
		f 4 140 141 142 -137
		mu 0 4 91 95 96 92
		f 4 143 144 145 146
		mu 0 4 97 98 99 100
		f 4 147 -145 148 149
		mu 0 4 101 99 98 102
		f 4 150 151 152 -150
		mu 0 4 102 103 104 101
		f 4 153 154 155 156
		mu 0 4 105 106 107 108
		f 4 157 158 159 160
		mu 0 4 109 110 111 112
		f 4 -161 161 162 163
		mu 0 4 113 114 115 116
		f 4 164 165 166 -154
		mu 0 4 117 118 119 120
		f 4 167 168 169 170
		mu 0 4 121 122 123 124
		f 4 -169 171 172 173
		mu 0 4 125 126 127 128
		f 4 -156 174 175 176
		mu 0 4 129 130 131 132
		f 4 177 -171 178 179
		mu 0 4 133 134 135 136
		f 4 -163 180 181 182
		mu 0 4 137 138 139 140
		f 4 -164 -183 183 -158
		mu 0 4 141 142 140 110
		f 4 184 185 186 187
		mu 0 4 143 144 145 146
		f 4 188 189 190 191
		mu 0 4 147 148 149 150
		f 4 192 193 194 195
		mu 0 4 151 152 153 154
		f 4 196 197 -191 198
		mu 0 4 155 156 157 158
		f 4 -195 199 -185 200
		mu 0 4 159 160 161 162
		f 4 201 202 203 204
		mu 0 4 163 164 165 166
		f 4 -189 205 206 207
		mu 0 4 167 168 169 170
		f 4 208 209 -203 210
		mu 0 4 171 172 173 174
		f 4 211 212 213 214
		mu 0 4 175 176 177 178
		f 4 215 -212 216 217
		mu 0 4 179 176 175 180
		f 4 -218 218 219 220
		mu 0 4 179 180 181 182
		f 4 221 222 -221 223
		mu 0 4 183 184 185 186
		f 4 224 225 226 227
		mu 0 4 187 188 189 190
		f 4 -228 228 229 230
		mu 0 4 187 190 191 192
		f 4 231 232 233 -214
		mu 0 4 193 194 195 196
		f 4 -230 234 235 236
		mu 0 4 192 191 197 198
		f 4 237 -232 -213 238
		mu 0 4 199 194 193 200
		f 4 -223 239 -239 -216
		mu 0 4 185 184 199 200
		f 4 240 -219 241 242
		mu 0 4 201 181 180 202
		f 4 -241 243 244 245
		mu 0 4 181 201 203 204
		f 4 246 247 248 -245
		mu 0 4 203 205 206 204
		f 4 249 -215 250 251
		mu 0 4 207 175 178 208
		f 4 -217 -250 252 -242
		mu 0 4 180 175 207 202
		f 4 253 -247 254 255
		mu 0 4 209 205 203 210
		f 4 -235 256 -252 257
		mu 0 4 197 191 207 208
		f 4 -257 -229 258 -253
		mu 0 4 207 191 190 202
		f 4 -243 -259 -227 259
		mu 0 4 201 202 190 189
		f 4 260 261 262 -197
		mu 0 4 155 211 212 156
		f 4 -205 263 264 265
		mu 0 4 163 166 213 214
		f 4 -207 266 -262 267
		mu 0 4 170 169 212 211
		f 4 268 -265 269 270
		mu 0 4 215 214 213 216
		f 4 271 272 273 274
		mu 0 4 217 218 219 220
		f 4 275 276 277 278
		mu 0 4 221 222 223 224
		f 4 279 280 281 282
		mu 0 4 225 226 227 228
		f 4 283 284 285 286
		mu 0 4 229 230 231 232
		f 4 287 -187 288 289
		mu 0 4 233 146 145 234
		f 4 -290 290 -193 291
		mu 0 4 233 234 152 151
		f 4 292 293 294 295
		mu 0 4 235 236 237 238
		f 4 -296 296 297 298
		mu 0 4 235 238 239 240
		f 4 299 300 301 302
		mu 0 4 241 242 243 244
		f 4 303 304 305 306
		mu 0 4 245 246 247 248
		f 4 307 308 -294 309
		mu 0 4 249 219 237 236
		f 4 310 -308 311 312
		mu 0 4 250 219 249 251
		f 4 -310 313 314 315
		mu 0 4 249 236 252 253
		f 4 316 -299 317 318
		mu 0 4 254 235 240 255
		f 4 319 320 321 -303
		mu 0 4 244 256 257 241
		f 4 322 -307 323 324
		mu 0 4 258 245 248 259
		f 4 325 326 327 328
		mu 0 4 260 252 254 261
		f 4 329 330 331 332
		mu 0 4 262 204 253 263
		f 4 -249 333 334 -331
		mu 0 4 204 206 264 253
		f 4 335 -312 -316 -335
		mu 0 4 264 251 249 253
		f 4 336 -254 337 338
		mu 0 4 265 205 209 266
		f 4 339 -143 340 341
		mu 0 4 267 92 96 268
		f 4 -341 342 343 344
		mu 0 4 268 96 103 269
		f 4 345 346 347 348
		mu 0 4 270 271 272 273
		f 4 349 -346 350 351
		mu 0 4 274 271 270 220
		f 4 352 353 354 -277
		mu 0 4 222 275 276 223
		f 4 355 356 357 -282
		mu 0 4 227 277 278 228
		f 4 358 359 360 -285
		mu 0 4 230 279 280 231
		f 4 361 -352 -274 -311
		mu 0 4 250 274 220 219
		f 4 362 -256 363 364
		mu 0 4 281 209 210 282
		f 4 365 -226 366 -364
		mu 0 4 210 189 188 282
		f 4 367 368 369 -367
		mu 0 4 188 183 283 282
		f 4 -330 370 -220 -246
		mu 0 4 204 262 182 181
		f 4 371 -329 372 373
		mu 0 4 284 285 286 287
		f 4 374 375 -348 376
		mu 0 4 288 289 273 272
		f 4 377 378 379 -168
		mu 0 4 121 290 291 122
		f 4 -380 380 381 382
		mu 0 4 122 291 292 293
		f 4 -374 383 384 385
		mu 0 4 284 287 173 294
		f 4 386 387 388 389
		mu 0 4 294 172 295 292
		f 4 -384 390 391 -204
		mu 0 4 165 296 238 166
		f 4 392 393 -388 394
		mu 0 4 216 221 297 298
		f 4 395 396 -338 -363
		mu 0 4 281 299 266 209
		f 4 397 398 399 400
		mu 0 4 300 301 93 266
		f 4 -138 -340 401 -400
		mu 0 4 93 92 267 266
		f 4 402 -373 403 404
		mu 0 4 302 287 286 303
		f 4 -297 -391 -403 405
		mu 0 4 239 238 296 304
		f 4 406 407 408 409
		mu 0 4 305 306 307 308
		f 4 410 -301 411 412
		mu 0 4 309 243 242 310
		f 4 413 414 -413 415
		mu 0 4 311 312 313 314
		f 4 -407 416 -305 417
		mu 0 4 315 316 247 246
		f 4 418 -404 -328 -319
		mu 0 4 255 317 261 254
		f 4 -414 419 -321 420
		mu 0 4 318 319 257 256
		f 4 -409 421 -325 422
		mu 0 4 320 321 258 259
		f 4 423 424 425 -176
		mu 0 4 131 322 323 132
		f 4 426 -159 427 428
		mu 0 4 324 111 110 325
		f 4 -429 429 -182 430
		mu 0 4 324 325 140 139
		f 4 -383 431 432 -172
		mu 0 4 126 326 275 127
		f 4 433 -425 434 -166
		mu 0 4 118 323 322 119
		f 4 435 -173 436 437
		mu 0 4 327 128 127 328
		f 4 438 439 440 -351
		mu 0 4 270 329 330 220
		f 4 441 -180 442 -438
		mu 0 4 328 133 136 327
		f 4 443 444 445 -280
		mu 0 4 225 331 332 226
		f 4 446 447 448 449
		mu 0 4 295 333 334 293
		f 4 -445 450 451 452
		mu 0 4 335 336 337 338
		f 4 -357 453 -452 454
		mu 0 4 278 277 339 340
		f 4 455 -287 456 457
		mu 0 4 341 229 232 342
		f 4 -458 458 459 460
		mu 0 4 343 344 345 346
		f 4 461 -459 -457 462
		mu 0 4 280 347 348 232
		f 4 -360 463 -460 -462
		mu 0 4 280 279 349 350
		f 4 -349 464 465 -439
		mu 0 4 270 273 351 329
		f 4 -354 -432 -449 466
		mu 0 4 276 275 326 352
		f 4 467 -271 -395 -209
		mu 0 4 353 215 216 298
		f 4 -394 -279 468 -447
		mu 0 4 297 221 224 354
		f 4 -366 -255 -244 -260
		mu 0 4 189 210 203 201
		f 4 -200 -194 469 -186
		mu 0 4 355 356 152 145
		f 4 470 -466 471 -442
		mu 0 4 328 329 351 133
		f 4 -437 472 -440 -471
		mu 0 4 328 127 330 329
		f 4 473 474 475 -353
		mu 0 4 222 217 330 275
		f 4 -272 -474 -276 476
		mu 0 4 218 217 222 221
		f 4 477 -270 478 479
		mu 0 4 218 216 213 357
		f 4 -264 480 481 -479
		mu 0 4 213 166 237 357
		f 4 -317 -327 -314 -293
		mu 0 4 235 254 252 236
		f 4 -375 482 483 484
		mu 0 4 358 359 360 361
		f 4 485 486 -333 487
		mu 0 4 362 283 363 364
		f 4 488 489 490 491
		mu 0 4 360 299 365 366
		f 4 492 493 -362 494
		mu 0 4 269 367 274 250
		f 4 495 -344 -151 496
		mu 0 4 368 269 103 102
		f 4 497 -378 -178 -472
		mu 0 4 351 369 134 133
		f 4 -399 498 499 -139
		mu 0 4 93 301 370 94
		f 4 -343 -142 500 -152
		mu 0 4 103 96 95 104
		f 4 -499 501 -147 502
		mu 0 4 370 301 371 372
		f 4 -251 -234 503 -258
		mu 0 4 208 178 373 197
		f 4 -368 -225 504 -222
		mu 0 4 183 188 187 184
		f 4 -237 505 -238 506
		mu 0 4 192 374 194 199
		f 4 -231 -507 -240 -505
		mu 0 4 187 192 199 184
		f 4 -371 -487 -369 -224
		mu 0 4 186 363 283 183
		f 4 507 508 -490 -396
		mu 0 4 281 362 365 299
		f 4 -498 -465 -376 509
		mu 0 4 369 351 273 289
		f 4 -510 -485 510 -379
		mu 0 4 290 358 361 291
		f 4 511 -386 512 -509
		mu 0 4 362 284 294 365
		f 4 -315 -326 513 -332
		mu 0 4 253 252 260 263
		f 4 514 -248 -337 515
		mu 0 4 268 206 205 265
		f 4 516 -336 517 -345
		mu 0 4 269 251 264 268
		f 4 -233 -506 -236 -504
		mu 0 4 195 194 374 375
		f 4 -488 -514 -372 -512
		mu 0 4 362 364 285 284
		f 4 -410 -423 518 -417
		mu 0 4 376 377 259 247
		f 4 519 520 -381 -511
		mu 0 4 361 366 292 291
		f 4 -513 -390 -521 -491
		mu 0 4 365 294 292 366
		f 4 -489 521 -401 -397
		mu 0 4 299 360 300 266
		f 4 522 523 -502 -398
		mu 0 4 300 378 371 301
		f 4 -522 -483 524 525
		mu 0 4 300 360 359 379
		f 4 -300 526 -298 527
		mu 0 4 242 241 240 239
		f 4 -322 528 -318 -527
		mu 0 4 241 257 255 240
		f 4 -405 529 -416 530
		mu 0 4 302 303 311 314
		f 4 -412 -528 -406 -531
		mu 0 4 310 242 239 304
		f 4 -420 -530 -419 -529
		mu 0 4 257 319 317 255
		f 4 -304 531 -302 532
		mu 0 4 246 245 244 243
		f 4 -323 533 -320 -532
		mu 0 4 245 258 256 244
		f 4 -408 534 -415 535
		mu 0 4 307 306 313 312
		f 4 -418 -533 -411 -535
		mu 0 4 315 246 243 309
		f 4 -422 -536 -421 -534
		mu 0 4 258 321 318 256
		f 4 -190 536 -211 537
		mu 0 4 149 148 171 174
		f 4 -202 538 -199 -538
		mu 0 4 164 163 155 158
		f 4 -468 -537 -208 539
		mu 0 4 215 353 167 170
		f 4 -266 540 -261 -539
		mu 0 4 163 214 211 155
		f 4 -269 -540 -268 -541
		mu 0 4 214 215 170 211
		f 4 -206 541 -188 542
		mu 0 4 169 168 143 146
		f 4 -192 543 -201 -542
		mu 0 4 147 150 159 162
		f 4 -198 544 -196 -544
		mu 0 4 157 156 151 154
		f 4 -292 -545 -263 545
		mu 0 4 233 151 156 212
		f 4 -288 -546 -267 -543
		mu 0 4 146 233 212 169
		f 4 -281 546 -278 547
		mu 0 4 227 226 224 223
		f 4 -356 -548 -355 548
		mu 0 4 277 227 223 276
		f 4 -469 -547 -446 549
		mu 0 4 354 224 226 332
		f 4 -448 -550 -453 550
		mu 0 4 334 333 335 338
		f 4 -467 -551 -454 -549
		mu 0 4 276 352 339 277
		f 4 -284 551 -283 552
		mu 0 4 230 229 225 228
		f 4 -359 -553 -358 553
		mu 0 4 279 230 228 278
		f 4 -456 554 -444 -552
		mu 0 4 229 341 331 225
		f 4 -451 -555 -461 555
		mu 0 4 337 336 343 346
		f 4 -464 -554 -455 -556
		mu 0 4 349 279 278 340
		f 4 -155 556 -170 557
		mu 0 4 107 106 124 123
		f 4 -179 -557 -167 558
		mu 0 4 136 135 120 119
		f 4 -175 -558 -174 559
		mu 0 4 131 130 125 128
		f 4 -436 560 -424 -560
		mu 0 4 128 327 322 131
		f 4 -443 -559 -435 -561
		mu 0 4 327 136 119 322
		f 4 -157 561 -162 562
		mu 0 4 105 108 115 114
		f 4 -165 -563 -160 563
		mu 0 4 118 117 112 111
		f 4 -181 -562 -177 564
		mu 0 4 139 138 129 132
		f 4 -431 -565 -426 565
		mu 0 4 324 139 132 323
		f 4 -434 -564 -427 -566
		mu 0 4 323 118 111 324
		f 4 566 567 568 569
		mu 0 4 380 381 382 383
		f 4 570 -140 571 572
		mu 0 4 384 91 94 385
		f 4 573 -141 -571 574
		mu 0 4 386 95 91 384
		f 4 575 -501 -574 576
		mu 0 4 387 104 95 386
		f 4 577 -148 578 579
		mu 0 4 388 99 101 389
		f 4 -572 -500 580 581
		mu 0 4 385 94 370 390
		f 4 582 -146 -578 583
		mu 0 4 391 100 99 388
		f 4 -579 -153 -576 584
		mu 0 4 389 101 104 387
		f 4 -581 -503 -583 585
		mu 0 4 390 370 372 392
		f 4 586 -497 587 588
		mu 0 4 393 368 102 394
		f 4 589 590 591 -589
		mu 0 4 394 395 396 393
		f 4 592 -591 593 594
		mu 0 4 383 396 395 397
		f 4 -595 595 -524 -570
		mu 0 4 383 397 97 380
		f 4 596 -347 597 598
		mu 0 4 398 272 271 367
		f 4 -377 -597 599 -525
		mu 0 4 288 272 398 381
		f 4 600 601 602 603
		mu 0 4 399 400 401 402
		f 4 604 605 -601 606
		mu 0 4 403 404 405 406
		f 4 -605 607 608 609
		mu 0 4 404 403 407 408
		f 4 610 611 -609 612
		mu 0 4 409 410 408 407
		f 4 613 614 -611 615
		mu 0 4 411 412 410 409
		f 4 -603 616 -614 617
		mu 0 4 402 401 412 411
		f 4 618 619 620 -613
		mu 0 4 407 413 414 409
		f 4 621 622 -616 -621
		mu 0 4 414 415 411 409
		f 4 623 624 -618 -623
		mu 0 4 415 416 402 411
		f 4 625 -619 -608 626
		mu 0 4 417 413 407 403
		f 4 627 -627 -607 628
		mu 0 4 418 417 403 406
		f 4 -604 -625 629 -629
		mu 0 4 399 402 416 419
		f 4 -121 -26 -136 630
		mu 0 4 87 20 17 90
		f 4 -130 -44 631 632
		mu 0 4 89 30 29 44
		f 4 633 -80 634 -82
		mu 0 4 58 55 56 43
		f 4 635 -52 636 -61
		mu 0 4 40 32 33 37
		f 4 -632 -48 637 -65
		mu 0 4 44 29 31 41
		f 4 -68 -132 -69 638
		mu 0 4 46 45 48 47
		f 4 639 -57 -639 -107
		mu 0 4 78 34 36 79
		f 4 -638 -50 -636 -109
		mu 0 4 41 31 32 40
		f 4 -54 -640 -124 -637
		mu 0 4 33 34 78 37
		f 4 640 -79 -70 -131
		mu 0 4 89 56 49 48
		f 4 -635 -641 -633 -64
		mu 0 4 43 56 89 44
		f 4 -71 -78 -73 -113
		mu 0 4 50 49 52 51
		f 4 -98 -74 -77 641
		mu 0 4 67 53 52 55
		f 4 642 643 -81 644
		mu 0 4 420 421 58 57
		f 4 645 -59 -133 -84
		mu 0 4 59 39 38 60
		f 4 -105 646 -111 -76
		mu 0 4 73 76 82 81
		f 4 -83 -110 -646 647
		mu 0 4 57 42 39 59
		f 4 -647 -126 -85 -134
		mu 0 4 82 76 61 60
		f 4 -93 -642 648 649
		mu 0 4 68 67 55 421
		f 4 -116 -650 -643 650
		mu 0 4 64 68 421 420
		f 4 -89 -651 651 -87
		mu 0 4 62 64 420 59
		f 3 652 653 654
		mu 0 3 422 83 1
		f 3 655 -655 -1
		mu 0 3 0 422 1
		f 3 -115 656 -128
		mu 0 3 14 83 88
		f 3 -38 -118 -120
		mu 0 3 86 84 20
		f 3 -652 -645 -648
		mu 0 3 59 420 57
		f 3 -480 657 -273
		mu 0 3 218 357 219
		f 3 -658 -482 -309
		mu 0 3 219 357 237
		f 3 658 -599 659
		mu 0 3 382 398 367
		f 3 -495 -313 -517
		mu 0 3 269 250 251
		f 3 -590 660 661
		mu 0 3 395 394 98
		f 3 -275 -441 -475
		mu 0 3 217 220 330
		f 3 -484 -492 -520
		mu 0 3 361 360 366
		f 3 -210 -387 -385
		mu 0 3 173 172 294
		f 3 -450 -382 -389
		mu 0 3 295 293 292
		f 3 -596 662 -144
		mu 0 3 97 397 98
		f 3 -568 -600 -659
		mu 0 3 382 381 398
		f 3 -494 -598 -350
		mu 0 3 274 367 271
		f 3 -428 -184 -430
		mu 0 3 325 110 140
		f 3 -289 -470 -291
		mu 0 3 234 145 152
		f 3 -361 -463 -286
		mu 0 3 231 280 232
		f 3 -306 -519 -324
		mu 0 3 248 247 259
		f 3 -508 663 -486
		mu 0 3 362 281 283
		f 3 -334 -515 -518
		mu 0 3 264 206 268
		f 3 -478 -477 -393
		mu 0 3 216 218 221
		f 3 -433 -476 -473
		mu 0 3 127 275 330
		f 3 -295 -481 -392
		mu 0 3 238 237 166
		f 3 -402 664 -339
		mu 0 3 266 267 265
		f 3 665 -592 666
		mu 0 3 382 393 396
		f 3 -523 -526 -567
		mu 0 3 378 300 379
		f 3 -663 -594 -662
		mu 0 3 98 397 395
		f 3 -569 -667 -593
		mu 0 3 383 382 396
		f 3 -661 -588 -149
		mu 0 3 98 394 102
		f 3 -666 -660 667
		mu 0 3 393 382 367
		f 3 -342 -516 -665
		mu 0 3 267 268 265
		f 3 -496 668 -493
		mu 0 3 269 368 367
		f 3 -587 -668 -669
		mu 0 3 368 393 367
		f 3 -370 -664 -365
		mu 0 3 282 283 281
		f 3 -114 -36 -654
		mu 0 3 83 25 1
		f 3 -634 -644 -649
		mu 0 3 55 58 421
		f 3 -91 669 670
		mu 0 3 423 424 425
		f 3 -95 671 672
		mu 0 3 426 427 425
		f 3 -96 -673 673
		mu 0 3 428 426 425
		f 3 -100 -674 674
		mu 0 3 429 428 425
		f 3 -102 675 -670
		mu 0 3 424 430 425
		f 3 -103 -675 676
		mu 0 3 431 432 425
		f 3 -117 -671 -672
		mu 0 3 427 423 425
		f 3 -127 -677 -676
		mu 0 3 430 431 425
		f 4 677 678 679 680
		mu 0 4 433 434 435 436
		f 4 681 682 683 684
		mu 0 4 1270 1271 1272 1273
		f 4 685 686 687 688
		mu 0 4 1274 1275 1276 1277
		f 4 689 690 691 692
		mu 0 4 1278 1279 1280 1281
		f 4 -690 693 694 -685
		mu 0 4 1282 1283 1284 1285
		f 4 -695 695 696 697
		mu 0 4 1286 1287 1288 1289
		f 4 -686 -697 698 699
		mu 0 4 1290 1291 1292 1293
		f 4 700 701 702 703
		mu 0 4 1294 1295 1296 1297
		f 4 -703 -699 704 705
		mu 0 4 1298 1299 1300 1301
		f 4 706 -705 -696 707
		mu 0 4 1302 1303 1304 1305
		f 4 708 -708 -694 709
		mu 0 4 1306 1307 1308 1309
		f 4 -710 -693 710 711
		mu 0 4 1310 1311 1312 1313
		f 4 -680 712 713 714
		mu 0 4 436 435 1314 1315
		f 4 -714 715 716 717
		mu 0 4 1316 1317 1318 1319
		f 4 718 -718 719 -711
		mu 0 4 1320 1321 1322 1323
		f 4 720 -712 721 722
		mu 0 4 1324 1325 1326 1327
		f 4 -721 723 724 -709
		mu 0 4 1328 1329 1330 1331
		f 4 -707 -725 725 726
		mu 0 4 1332 1333 1334 1335
		f 4 -727 727 728 -706
		mu 0 4 1336 1337 1338 1339
		f 4 -704 -729 729 730
		mu 0 4 1340 1341 1342 1343
		f 4 -731 731 732 733
		mu 0 4 1344 1345 1346 1347
		f 4 734 735 736 737
		mu 0 4 1348 1349 1350 1351
		f 4 738 739 740 741
		mu 0 4 1352 1353 1354 1355
		f 4 -722 -720 742 743
		mu 0 4 1356 1357 1358 1359
		f 4 744 -743 -717 -733
		mu 0 4 1360 1361 1362 1363
		f 4 745 746 747 748
		mu 0 4 1364 1365 1366 1367
		f 4 749 750 751 752
		mu 0 4 1368 1369 1370 1371
		f 4 753 754 755 756
		mu 0 4 1372 1373 1374 1375
		f 4 757 -741 758 759
		mu 0 4 1376 1377 1378 1379
		f 4 760 761 762 763
		mu 0 4 1380 1381 1382 1383
		f 4 764 765 766 767
		mu 0 4 1384 1385 1386 1387
		f 4 768 769 770 771
		mu 0 4 1388 1389 1390 1391
		f 4 -772 772 773 774
		mu 0 4 1392 1393 1394 1395
		f 4 775 -774 -751 776
		mu 0 4 1396 1397 1398 1399
		f 4 -762 -766 777 778
		mu 0 4 1400 1401 1402 1403
		f 4 779 780 781 -777
		mu 0 4 1404 1405 1406 1407
		f 4 782 -746 783 784
		mu 0 4 1408 1409 1410 1411
		f 4 785 -736 786 -742
		mu 0 4 1412 1413 1414 1415
		f 4 787 -783 788 789
		mu 0 4 1416 1417 1418 1419
		f 4 790 791 -719 -692
		mu 0 4 1420 437 1421 1422
		f 4 792 -768 793 -770
		mu 0 4 1423 1424 1425 1426
		f 4 -701 -734 -716 794
		mu 0 4 1427 1428 1429 1430
		f 4 795 796 797 798
		mu 0 4 1431 1432 1433 1434
		f 4 -698 -689 799 -682
		mu 0 4 1435 1436 1437 1438
		f 4 -738 800 -785 801
		mu 0 4 1439 1440 1441 1442
		f 4 802 -781 803 -779
		mu 0 4 1443 1444 1445 1446
		f 4 -684 804 805 -691
		mu 0 4 1447 1448 1449 1450
		f 4 -744 806 807 808
		mu 0 4 1451 1452 1453 1454
		f 4 809 -789 -801 810
		mu 0 4 1455 1456 1457 1458
		f 4 -687 -700 811 812
		mu 0 4 1459 1460 1461 1462
		f 4 813 -812 -702 -797
		mu 0 4 1463 1464 1465 1466
		f 4 814 815 -723 -809
		mu 0 4 1467 1468 1469 1470
		f 4 -759 816 -754 817
		mu 0 4 1471 1472 1473 1474
		f 4 -735 818 -728 819
		mu 0 4 1475 1476 1477 1478
		f 4 -739 820 -724 -816
		mu 0 4 1479 1480 1481 1482
		f 4 821 -749 -807 -745
		mu 0 4 1483 1484 1485 1486
		f 4 -784 -822 -732 822
		mu 0 4 1487 1488 1489 1490
		f 4 -787 -820 -726 -821
		mu 0 4 1491 1492 1493 1494
		f 4 -819 -802 -823 -730
		mu 0 4 1495 1496 1497 1498
		f 4 -808 -748 -755 823
		mu 0 4 1499 1500 1501 1502
		f 4 -740 -815 -824 -817
		mu 0 4 1503 1504 1505 1506
		f 4 -788 -753 -756 -747
		mu 0 4 1507 1508 1509 1510
		f 4 824 -757 -752 -773
		mu 0 4 1511 1512 1513 1514
		f 4 825 -760 826 827
		mu 0 4 1515 1516 1517 1518
		f 4 -764 -811 -737 828
		mu 0 4 1519 1520 1521 1522
		f 4 -750 -790 829 -780
		mu 0 4 1523 1524 1525 1526
		f 4 830 -829 -786 -758
		mu 0 4 1527 1528 1529 1530
		f 4 -810 -763 -804 -830
		mu 0 4 1531 1532 1533 1534
		f 4 831 832 -825 -771
		mu 0 4 1535 1536 1537 1538
		f 4 833 -828 -832 -794
		mu 0 4 1539 1540 1541 1542
		f 4 -761 834 -834 -767
		mu 0 4 1543 1544 1545 1546
		f 3 835 836 837
		mu 0 3 438 436 437
		f 3 -681 -836 838
		mu 0 3 433 436 438
		f 3 -806 839 -791
		mu 0 3 1547 1548 437
		f 3 -798 -795 -713
		mu 0 3 1549 1550 1551
		f 3 -831 -826 -835
		mu 0 3 1552 1553 1554
		f 3 -837 -715 -792
		mu 0 3 437 436 1555
		f 3 -833 -827 -818
		mu 0 3 1556 1557 1558
		f 3 -765 840 841
		mu 0 3 439 440 441
		f 3 -769 842 843
		mu 0 3 442 443 441
		f 3 -775 844 -843
		mu 0 3 443 444 441
		f 3 -776 845 -845
		mu 0 3 444 445 441
		f 3 -778 -842 846
		mu 0 3 446 439 441
		f 3 -782 847 -846
		mu 0 3 447 448 441
		f 3 -793 -844 -841
		mu 0 3 440 442 441
		f 3 -803 -847 -848
		mu 0 3 448 446 441
		f 4 848 849 850 851
		mu 0 4 449 450 451 452
		f 4 852 853 854 855
		mu 0 4 453 454 455 456
		f 4 856 -852 857 858
		mu 0 4 457 449 452 458
		f 4 -851 859 860 861
		mu 0 4 452 451 459 460
		f 4 862 863 864 -860
		mu 0 4 451 461 462 459
		f 4 -858 -862 865 866
		mu 0 4 458 452 460 463
		f 4 867 868 869 -864
		mu 0 4 461 453 464 462
		f 4 870 871 872 873
		mu 0 4 465 466 467 468
		f 4 -873 874 -859 875
		mu 0 4 468 467 457 458
		f 4 876 -874 877 878
		mu 0 4 469 465 468 470
		f 4 879 880 -877 881
		mu 0 4 471 472 465 469
		f 4 -878 -876 -867 882
		mu 0 4 470 468 458 463
		f 4 883 884 -880 885
		mu 0 4 473 474 472 471
		f 3 -850 886 887
		mu 0 3 451 450 475
		f 3 -868 888 -853
		mu 0 3 453 461 454
		f 3 889 890 -889
		mu 0 3 461 475 454
		f 3 891 892 893
		mu 0 3 474 476 477
		f 3 -881 894 895
		mu 0 3 465 472 478
		f 3 -885 -894 896
		mu 0 3 472 474 477
		f 3 -895 -897 897
		mu 0 3 478 472 477
		f 3 -871 -896 898
		mu 0 3 466 465 478
		f 3 -863 -888 -890
		mu 0 3 461 451 475
		f 3 899 900 -855
		mu 0 3 455 479 456
		f 4 901 902 903 904
		mu 0 4 480 481 482 483
		f 4 905 906 907 908
		mu 0 4 484 485 486 487
		f 4 -907 909 910 911
		mu 0 4 486 485 488 489
		f 4 912 913 914 915
		mu 0 4 490 491 488 492
		f 4 -913 916 917 918
		mu 0 4 491 490 493 494
		f 4 919 920 -918 921
		mu 0 4 495 496 494 493
		f 4 922 -915 -910 923
		mu 0 4 497 492 488 485
		f 4 924 -924 -906 925
		mu 0 4 498 497 485 484
		f 4 926 927 928 -921
		mu 0 4 496 499 500 494
		f 4 929 930 -911 -914
		mu 0 4 491 501 489 488
		f 4 -919 -929 931 -930
		mu 0 4 491 494 500 501
		f 4 932 933 934 935
		mu 0 4 502 503 504 505
		f 4 936 937 938 -935
		mu 0 4 504 506 507 505
		f 4 -916 939 940 941
		mu 0 4 490 492 507 508
		f 4 942 943 -917 -942
		mu 0 4 508 509 493 490
		f 4 -922 -944 944 945
		mu 0 4 495 493 509 510
		f 4 946 -939 -940 -923
		mu 0 4 497 505 507 492
		f 4 -945 947 948 949
		mu 0 4 510 509 511 512
		f 4 -941 -938 950 951
		mu 0 4 508 507 506 513
		f 4 -952 952 -948 -943
		mu 0 4 508 513 511 509
		f 4 -947 953 892 -936
		mu 0 4 505 497 514 502
		f 3 -909 954 890
		mu 0 3 484 487 515
		f 3 897 955 -933
		mu 0 3 502 516 503
		f 4 956 957 958 959
		mu 0 4 517 518 519 520
		f 4 -959 960 961 962
		mu 0 4 520 519 521 522
		f 4 963 964 965 966
		mu 0 4 523 524 525 526
		f 4 967 968 -965 969
		mu 0 4 527 528 525 524
		f 4 970 971 -957 972
		mu 0 4 529 530 518 517
		f 4 973 974 975 976
		mu 0 4 531 532 533 534
		f 4 977 978 979 -977
		mu 0 4 534 535 536 531
		f 4 980 -980 981 982
		mu 0 4 537 531 536 538
		f 4 983 984 985 986
		mu 0 4 539 540 541 529
		f 4 987 988 989 -987
		mu 0 4 529 542 543 539
		f 4 990 991 992 -968
		mu 0 4 527 544 542 528
		f 4 993 994 -990 995
		mu 0 4 545 546 539 543
		f 4 996 997 998 -996
		mu 0 4 543 547 548 545
		f 4 999 1000 1001 1002
		mu 0 4 549 550 551 552
		f 4 1003 1004 1005 1006
		mu 0 4 553 554 555 556
		f 4 1007 1008 1009 -1006
		mu 0 4 555 557 558 556
		f 4 1010 -979 1011 -1009
		mu 0 4 557 536 535 558
		f 4 1012 -982 -1011 -1008
		mu 0 4 555 538 536 557
		f 4 -1005 1013 1014 -1013
		mu 0 4 555 554 559 538
		f 4 1015 -1003 1016 1017
		mu 0 4 546 549 552 560
		f 4 -1018 1018 -984 -995
		mu 0 4 546 560 540 539
		f 4 1019 -983 -1015 1020
		mu 0 4 561 537 538 559
		f 4 1021 1022 1023 1024
		mu 0 4 562 563 564 565
		f 4 1025 1026 1027 1028
		mu 0 4 566 567 568 532
		f 4 1029 -962 1030 -1027
		mu 0 4 567 569 570 568
		f 4 1031 -967 1032 -1023
		mu 0 4 563 571 572 564;
	setAttr ".fc[500:999]"
		f 4 1033 1034 1035 -1021
		mu 0 4 573 574 575 576
		f 4 1036 1037 1038 -1004
		mu 0 4 577 578 579 580
		f 4 1039 -997 -989 -992
		mu 0 4 544 547 543 542
		f 4 1040 -993 -988 -973
		mu 0 4 517 528 542 529
		f 4 1041 -969 -1041 -960
		mu 0 4 520 525 528 517
		f 4 1042 -966 -1042 -963
		mu 0 4 522 526 525 520
		f 4 -1033 -1043 -1030 1043
		mu 0 4 564 572 569 567
		f 4 1044 -1024 -1044 -1026
		mu 0 4 566 565 564 567
		f 4 -976 1045 1046 1047
		mu 0 4 534 533 581 541
		f 4 -985 1048 -978 -1048
		mu 0 4 541 540 535 534
		f 4 -1007 1049 -1002 -1037
		mu 0 4 553 556 552 551
		f 4 -1017 -1050 -1010 1050
		mu 0 4 560 552 556 558
		f 4 -1019 -1051 -1012 -1049
		mu 0 4 540 560 558 535
		f 4 -986 -1047 1051 -971
		mu 0 4 529 541 581 530
		f 4 -999 1052 -1000 1053
		mu 0 4 545 548 550 549
		f 4 -991 1054 1055 1056
		mu 0 4 582 583 584 575
		f 4 -1040 -1057 -1035 1057
		mu 0 4 585 582 575 574
		f 4 -1038 -1001 -1053 1058
		mu 0 4 579 578 586 587
		f 4 1059 -1032 -1022 1060
		mu 0 4 584 588 589 590
		f 4 -1055 -970 -964 -1060
		mu 0 4 584 583 591 588
		f 4 -1045 1061 -981 1062
		mu 0 4 565 566 531 537
		f 4 1063 -1025 -1063 -1020
		mu 0 4 561 562 565 537
		f 4 -1056 -1061 -1064 -1036
		mu 0 4 575 584 590 576
		f 4 1064 -1034 -1014 -1039
		mu 0 4 579 574 573 580
		f 4 -998 -1058 -1065 -1059
		mu 0 4 587 585 574 579
		f 3 -1029 -974 -1062
		mu 0 3 566 532 531
		f 3 -994 -1054 -1016
		mu 0 3 546 545 549
		f 4 1065 1066 1067 1068
		mu 0 4 592 593 594 595
		f 4 1069 -1069 1070 1071
		mu 0 4 596 592 595 597
		f 4 1072 1073 1074 1075
		mu 0 4 598 599 600 601
		f 4 -1072 1076 -1073 1077
		mu 0 4 596 597 599 598
		f 4 1078 1079 1080 1081
		mu 0 4 602 603 604 605
		f 4 1082 1083 1084 1085
		mu 0 4 606 607 608 609
		f 4 1086 1087 1088 1089
		mu 0 4 610 611 612 613
		f 4 -1087 1090 1091 1092
		mu 0 4 611 610 614 615
		f 4 1093 1094 1095 1096
		mu 0 4 616 617 618 619
		f 4 -1089 1097 1098 1099
		mu 0 4 613 612 620 621
		f 4 1100 -1092 1101 -1082
		mu 0 4 605 615 614 602
		f 4 1102 1103 1104 -1081
		mu 0 4 604 622 623 605
		f 4 1105 1106 1107 1108
		mu 0 4 624 625 626 627
		f 4 1109 -1080 1110 -1085
		mu 0 4 608 628 629 609
		f 4 1111 1112 1113 1114
		mu 0 4 630 631 632 633
		f 4 1115 -1115 1116 1117
		mu 0 4 634 630 633 635
		f 4 1118 -1095 1119 1120
		mu 0 4 636 618 617 637
		f 4 1121 1122 1123 1124
		mu 0 4 638 623 639 619
		f 4 1125 1126 1127 1128
		mu 0 4 640 641 642 643
		f 4 1129 1130 1131 1132
		mu 0 4 644 645 646 647
		f 4 -1128 1133 -1109 1134
		mu 0 4 643 642 648 649
		f 4 -1132 1135 -1126 1136
		mu 0 4 647 646 641 640
		f 4 -1099 1137 -1083 1138
		mu 0 4 621 620 607 606
		f 4 1139 -1118 1140 1141
		mu 0 4 636 634 635 650
		f 4 1142 1143 1144 -1113
		mu 0 4 631 651 652 632
		f 4 1145 1146 1147 1148
		mu 0 4 653 654 655 656
		f 4 1149 1150 1151 1152
		mu 0 4 657 658 659 660
		f 4 1153 1154 1155 1156
		mu 0 4 661 662 663 664
		f 4 -1156 1157 1158 1159
		mu 0 4 664 663 658 616
		f 4 1160 1161 -1151 -1158
		mu 0 4 663 665 659 658
		f 4 1162 -1094 -1159 -1150
		mu 0 4 657 617 616 658
		f 4 1163 1164 -1146 1165
		mu 0 4 666 667 654 653
		f 4 1166 1167 -1154 1168
		mu 0 4 668 669 670 671
		f 4 -1168 1169 1170 1171
		mu 0 4 670 669 672 673
		f 4 -1161 -1155 -1172 1172
		mu 0 4 665 663 662 674
		f 4 1173 1174 -1130 1175
		mu 0 4 675 676 645 644
		f 4 1176 1177 1178 -1174
		mu 0 4 675 677 678 676
		f 4 1179 -1178 1180 -1107
		mu 0 4 625 678 677 626
		f 4 1181 -1125 -1096 1182
		mu 0 4 679 638 619 618
		f 4 1183 1184 -1157 1185
		mu 0 4 639 680 661 664
		f 4 1186 1187 1188 -1112
		mu 0 4 630 666 668 631
		f 4 1189 -1164 -1187 -1116
		mu 0 4 634 667 666 630
		f 4 -1088 1190 1191 1192
		mu 0 4 612 611 679 650
		f 4 -1124 -1186 -1160 -1097
		mu 0 4 619 639 664 616
		f 4 -1121 1193 -1190 -1140
		mu 0 4 636 637 667 634
		f 4 -1189 -1169 -1185 -1143
		mu 0 4 631 668 671 651
		f 4 1194 -1170 1195 -1149
		mu 0 4 656 672 669 653
		f 4 -1196 -1167 -1188 -1166
		mu 0 4 653 669 668 666
		f 4 1196 1197 1198 -1153
		mu 0 4 660 681 682 657
		f 4 -1163 -1199 1199 -1120
		mu 0 4 617 657 682 637
		f 4 -1194 -1200 1200 -1165
		mu 0 4 667 637 682 654
		f 4 -1147 -1201 -1198 1201
		mu 0 4 655 654 682 681
		f 4 -1104 -1144 -1184 -1123
		mu 0 4 623 622 680 639
		f 4 1202 -1084 1203 -1114
		mu 0 4 632 608 607 633
		f 4 -1117 -1204 -1138 1204
		mu 0 4 635 633 607 620
		f 4 1205 -1101 -1105 -1122
		mu 0 4 638 615 605 623
		f 4 -1141 -1205 -1098 -1193
		mu 0 4 650 635 620 612
		f 4 -1145 -1103 -1110 -1203
		mu 0 4 632 652 628 608
		f 4 -1182 -1191 -1093 -1206
		mu 0 4 638 679 611 615
		f 4 -1192 -1183 -1119 -1142
		mu 0 4 650 679 618 636
		f 4 1206 -1079 1207 -1106
		mu 0 4 624 603 602 625
		f 4 1208 -1086 1209 -1127
		mu 0 4 641 606 609 642
		f 4 -1131 1210 -1100 1211
		mu 0 4 646 645 613 621
		f 4 -1210 -1111 -1207 -1134
		mu 0 4 642 609 629 648
		f 4 -1212 -1139 -1209 -1136
		mu 0 4 646 621 606 641
		f 4 -1175 1212 -1090 -1211
		mu 0 4 645 676 610 613
		f 4 -1179 1213 -1091 -1213
		mu 0 4 676 678 614 610
		f 4 -1180 -1208 -1102 -1214
		mu 0 4 678 625 602 614
		f 4 1214 1215 1107 1216
		mu 0 4 683 684 685 686
		f 4 1217 1218 1128 1219
		mu 0 4 687 688 689 690
		f 4 1220 1221 1132 1222
		mu 0 4 691 692 693 694
		f 4 1223 -1217 1134 -1219
		mu 0 4 688 695 696 689
		f 4 1224 -1220 1136 -1222
		mu 0 4 692 687 690 693
		f 4 1225 -1223 1175 1226
		mu 0 4 697 691 694 698
		f 4 1227 -1227 1176 1228
		mu 0 4 699 697 698 700
		f 4 1229 -1229 1180 -1216
		mu 0 4 684 699 700 685
		f 4 1230 1231 -1215 1232
		mu 0 4 701 702 684 683
		f 4 1233 1234 -1218 1235
		mu 0 4 703 704 688 687
		f 4 1236 1237 -1221 1238
		mu 0 4 705 706 692 691
		f 4 1239 -1233 -1224 -1235
		mu 0 4 704 707 695 688
		f 4 1240 -1236 -1225 -1238
		mu 0 4 706 703 687 692
		f 4 1241 -1239 -1226 1242
		mu 0 4 708 705 691 697
		f 4 1243 -1243 -1228 1244
		mu 0 4 709 708 697 699
		f 4 1245 -1245 -1230 -1232
		mu 0 4 702 709 699 684
		f 4 1246 1247 1248 1249
		mu 0 4 710 711 712 713
		f 4 1250 1251 1252 1253
		mu 0 4 714 715 716 717
		f 4 1254 1255 1256 1257
		mu 0 4 718 719 720 717
		f 4 1258 1259 1260 1261
		mu 0 4 721 722 723 724
		f 4 1262 1263 1264 1265
		mu 0 4 725 726 727 728
		f 4 1266 -1264 1267 1268
		mu 0 4 723 727 726 729
		f 4 1269 -1268 1270 1271
		mu 0 4 730 729 726 731
		f 4 1272 -1270 1273 -1255
		mu 0 4 718 729 730 719
		f 4 1274 1275 1276 1277
		mu 0 4 732 710 733 734
		f 4 1278 1279 -1247 -1275
		mu 0 4 732 735 711 710
		f 4 1280 1281 1282 -1278
		mu 0 4 734 736 737 732
		f 4 1283 1284 1285 1286
		mu 0 4 738 739 740 741
		f 4 1287 1288 1289 1290
		mu 0 4 742 738 737 743
		f 4 1291 1292 -1290 -1282
		mu 0 4 736 744 743 737
		f 4 1293 1294 -1293 1295
		mu 0 4 745 746 743 744
		f 4 -1295 1296 1297 -1291
		mu 0 4 743 746 747 742
		f 4 1298 1299 -1271 -1263
		mu 0 4 725 748 731 726
		f 4 1300 1301 1302 1303
		mu 0 4 749 750 751 752
		f 4 -1302 1304 1305 1306
		mu 0 4 751 750 753 754
		f 4 -1306 1307 1308 1309
		mu 0 4 754 753 755 756
		f 4 -1269 -1273 1310 -1261
		mu 0 4 723 729 718 724
		f 4 1311 -1303 1312 1313
		mu 0 4 757 752 751 728
		f 4 1314 -1266 -1313 -1307
		mu 0 4 754 725 728 751
		f 4 -1299 -1315 -1310 1315
		mu 0 4 748 725 754 756
		f 4 -1312 -1284 -1288 1316
		mu 0 4 758 739 738 742
		f 4 1317 -1304 -1317 -1298
		mu 0 4 747 759 758 742
		f 4 -1265 1318 1319 -1314
		mu 0 4 728 727 760 757
		f 4 1320 -1252 -1249 1321
		mu 0 4 761 716 715 762
		f 4 1322 -1321 1323 -1262
		mu 0 4 724 716 761 721
		f 4 -1253 -1323 -1311 -1258
		mu 0 4 717 716 724 718
		f 4 -1250 1324 1325 -1276
		mu 0 4 710 713 763 733
		f 4 1326 -1319 -1267 -1260
		mu 0 4 722 760 727 723
		f 4 -1257 1327 1328 -1254
		mu 0 4 717 720 764 714
		f 4 1329 1330 -1248 1331
		mu 0 4 765 766 712 711
		f 4 1332 1333 -1259 1334
		mu 0 4 767 768 722 721
		f 4 1335 1336 -1322 -1331
		mu 0 4 769 770 761 762
		f 4 1337 -1335 -1324 -1337
		mu 0 4 770 767 721 761
		f 4 1338 -1283 -1289 -1287
		mu 0 4 741 732 737 738
		f 3 -1325 -1251 1339
		mu 0 3 771 715 714
		f 3 -1339 1340 -1279
		mu 0 3 732 741 735
		f 3 -1280 1341 -1332
		mu 0 3 711 735 765
		f 3 -1327 -1334 1342
		mu 0 3 760 722 768
		f 3 1343 -1285 -1320
		mu 0 3 760 772 757
		f 4 1344 1345 1346 1347
		mu 0 4 1559 1560 1561 1562
		f 4 1348 1349 1350 1351
		mu 0 4 1563 1564 1565 1566
		f 4 1352 1353 -1256 1354
		mu 0 4 1567 1568 720 719
		f 4 1355 1356 1357 1358
		mu 0 4 1569 1570 1571 1572
		f 4 1359 1360 1361 1362
		mu 0 4 1573 1574 1575 1576
		f 4 1363 1364 -1362 1365
		mu 0 4 1577 1578 1579 1580
		f 4 -1272 1366 -1365 1367
		mu 0 4 730 731 1581 1582
		f 4 -1355 -1274 -1368 1368
		mu 0 4 1583 719 730 1584
		f 4 1369 1370 1371 1372
		mu 0 4 1585 1586 1587 1588
		f 4 -1373 -1348 1373 1374
		mu 0 4 1589 1590 1591 1592
		f 4 -1370 1375 1376 1377
		mu 0 4 1593 1594 1595 1596
		f 4 1378 1379 1380 1381
		mu 0 4 1597 1598 1599 1600
		f 4 1382 1383 1384 1385
		mu 0 4 1601 1602 1603 1604
		f 4 -1377 -1384 1386 1387
		mu 0 4 1605 1606 1607 1608
		f 4 1388 -1387 1389 1390
		mu 0 4 1609 1610 1611 1612
		f 4 -1383 1391 1392 -1390
		mu 0 4 1613 1614 1615 1616
		f 4 -1363 -1367 -1300 1393
		mu 0 4 1617 1618 731 748
		f 4 1394 1395 1396 1397
		mu 0 4 1619 1620 1621 1622
		f 4 1398 1399 1400 -1397
		mu 0 4 1623 1624 1625 1626
		f 4 1401 -1309 1402 -1400
		mu 0 4 1627 756 755 1628
		f 4 -1357 1403 -1369 -1364
		mu 0 4 1629 1630 1631 1632
		f 4 1404 1405 -1396 1406
		mu 0 4 1633 1634 1635 1636
		f 4 -1399 -1406 -1360 1407
		mu 0 4 1637 1638 1639 1640
		f 4 -1316 -1402 -1408 -1394
		mu 0 4 748 756 1641 1642
		f 4 1408 -1386 -1382 -1407
		mu 0 4 1643 1644 1645 1646
		f 4 -1392 -1409 -1395 1409
		mu 0 4 1647 1648 1649 1650
		f 4 -1405 1410 1411 -1361
		mu 0 4 1651 1652 1653 1654
		f 4 1412 -1346 -1351 1413
		mu 0 4 1655 1656 1657 1658
		f 4 -1356 1414 -1414 1415
		mu 0 4 1659 1660 1661 1662
		f 4 -1353 -1404 -1416 -1350
		mu 0 4 1663 1664 1665 1666
		f 4 -1372 1416 1417 -1345
		mu 0 4 1667 1668 1669 1670
		f 4 -1358 -1366 -1412 1418
		mu 0 4 1671 1672 1673 1674
		f 4 -1349 1419 -1328 -1354
		mu 0 4 1675 1676 764 720
		f 4 1420 -1347 1421 1422
		mu 0 4 1677 1678 1679 1680
		f 4 1423 -1359 1424 1425
		mu 0 4 1681 1682 1683 1684
		f 4 -1422 -1413 1426 1427
		mu 0 4 1685 1686 1687 1688
		f 4 -1427 -1415 -1424 1428
		mu 0 4 1689 1690 1691 1692
		f 4 -1379 -1385 -1376 1429
		mu 0 4 1693 1694 1695 1696
		f 3 1430 -1352 -1418
		mu 0 3 1697 1698 1699
		f 3 -1375 1431 -1430
		mu 0 3 1700 1701 1702
		f 3 -1421 1432 -1374
		mu 0 3 1703 1704 1705
		f 3 1433 -1425 -1419
		mu 0 3 1706 1707 1708
		f 3 -1411 -1381 1434
		mu 0 3 1709 1710 1711
		f 4 1435 1436 1437 1438
		mu 0 4 773 774 775 776
		f 4 1439 1440 1441 -1437
		mu 0 4 774 777 778 775
		f 4 1442 1443 1444 -1441
		mu 0 4 777 779 780 778
		f 4 1445 1446 1447 1448
		mu 0 4 781 782 783 784
		f 4 1449 1450 -1446 1451
		mu 0 4 785 786 782 781
		f 4 -1448 1452 -1444 1453
		mu 0 4 784 783 780 779
		f 4 1454 1455 1456 1457
		mu 0 4 1712 1713 1714 1715
		f 4 -1457 1458 1459 1460
		mu 0 4 1716 1717 1718 1719
		f 4 -1460 1461 1462 1463
		mu 0 4 1720 1721 1722 1723
		f 4 1464 1465 1466 1467
		mu 0 4 1724 1725 1726 1727
		f 4 1468 -1468 1469 -1450
		mu 0 4 785 1728 1729 786
		f 4 1470 -1463 1471 -1466
		mu 0 4 1730 1731 1732 1733
		f 4 1472 1473 1474 1475
		mu 0 4 787 788 789 790
		f 4 1476 1477 -1473 1478
		mu 0 4 791 792 788 787
		f 4 1479 1480 1481 1482
		mu 0 4 793 794 795 796
		f 4 1483 1484 1485 1486
		mu 0 4 797 798 799 800
		f 4 -1487 1487 1488 1489
		mu 0 4 797 800 801 802
		f 4 1490 -1489 1491 1492
		mu 0 4 803 802 801 804
		f 4 1493 -1477 1494 -1485
		mu 0 4 798 805 806 799
		f 4 1495 -1483 1496 -1475
		mu 0 4 789 793 796 790
		f 4 1497 1498 1499 1500
		mu 0 4 807 808 809 810
		f 4 1501 -1501 1502 1503
		mu 0 4 811 807 810 812
		f 4 1504 1505 -1481 1506
		mu 0 4 813 814 795 794
		f 4 1507 -1493 1508 1509
		mu 0 4 815 803 804 816
		f 4 -1510 1510 -1504 1511
		mu 0 4 815 816 811 812
		f 4 -1499 1512 -1505 1513
		mu 0 4 809 808 814 813
		f 4 1514 1515 -1502 1516
		mu 0 4 817 818 807 811
		f 4 1517 1518 -1506 1519
		mu 0 4 819 820 821 822
		f 4 -1520 -1513 1520 1521
		mu 0 4 819 822 823 824
		f 4 1522 -1518 1523 1524
		mu 0 4 825 820 819 826
		f 4 -1522 1525 1526 -1524
		mu 0 4 819 824 827 826
		f 4 1527 1528 1529 1530
		mu 0 4 828 829 830 831
		f 4 1531 1532 1533 -1530
		mu 0 4 830 832 833 831
		f 4 1534 -1525 1535 -1529
		mu 0 4 829 825 826 830
		f 4 -1527 1536 -1532 -1536
		mu 0 4 826 827 832 830
		f 3 -1498 -1516 1537
		mu 0 3 808 807 818
		f 3 -1511 1538 -1517
		mu 0 3 811 816 817
		f 4 1539 1540 1541 1542
		mu 0 4 1734 1735 1736 1737
		f 4 -1543 1543 1544 1545
		mu 0 4 1738 1739 1740 1741
		f 4 1546 1547 1548 1549
		mu 0 4 1742 1743 1744 1745
		f 4 1550 1551 -1549 1552
		mu 0 4 1746 1747 1748 1749
		f 4 -1551 1553 1554 1555
		mu 0 4 1750 1751 1752 1753
		f 4 1556 1557 1558 1559
		mu 0 4 1754 1755 1756 1757
		f 4 1560 1561 1562 1563
		mu 0 4 1758 1759 1760 1761
		f 4 1564 1565 1566 -1561
		mu 0 4 1762 1763 1764 1765
		f 4 -1560 1567 1568 1569
		mu 0 4 1766 1767 1768 1769
		f 4 1570 1571 1572 1573
		mu 0 4 1770 1771 1772 1773
		f 4 1574 1575 1576 -1573
		mu 0 4 1774 1775 1776 1777
		f 4 1577 1578 1579 -1558
		mu 0 4 1778 1779 1780 1781
		f 4 1580 1581 -1571 1582
		mu 0 4 1782 1783 1784 1785
		f 4 1583 1584 1585 -1566
		mu 0 4 1786 1787 1788 1789
		f 4 -1564 1586 -1584 -1565
		mu 0 4 1790 1791 1792 1793
		f 4 1587 1588 1589 1590
		mu 0 4 1794 1795 1796 1797
		f 4 1591 1592 1593 1594
		mu 0 4 1798 1799 1800 1801
		f 4 1595 1596 1597 1598
		mu 0 4 1802 1803 1804 1805
		f 4 1599 -1593 1600 1601
		mu 0 4 1806 1807 1808 1809
		f 4 1602 -1591 1603 -1597
		mu 0 4 1810 1811 1812 1813
		f 4 1604 1605 1606 1607
		mu 0 4 1814 1815 1816 1817
		f 4 1608 1609 1610 -1595
		mu 0 4 1818 1819 1820 1821
		f 4 1611 -1607 1612 1613
		mu 0 4 1822 1823 1824 1825
		f 4 1614 1615 1616 1617
		mu 0 4 1826 1827 1828 1829
		f 4 1618 1619 -1618 1620
		mu 0 4 1830 1831 1832 1833
		f 4 1621 1622 1623 -1619
		mu 0 4 1834 1835 1836 1837
		f 4 1624 -1622 1625 1626
		mu 0 4 1838 1839 1840 1841
		f 4 1627 1628 1629 1630
		mu 0 4 1842 1843 1844 1845
		f 4 1631 1632 1633 -1628
		mu 0 4 1846 1847 1848 1849
		f 4 -1616 1634 1635 1636
		mu 0 4 1850 1851 1852 1853
		f 4 1637 1638 1639 -1633
		mu 0 4 1854 1855 1856 1857
		f 4 1640 -1617 -1637 1641
		mu 0 4 1858 1859 1860 1861
		f 4 -1621 -1641 1642 -1626
		mu 0 4 1862 1863 1864 1865
		f 4 1643 1644 -1624 1645
		mu 0 4 1866 1867 1868 1869
		f 4 1646 1647 1648 -1646
		mu 0 4 1870 1871 1872 1873
		f 4 -1648 1649 1650 1651
		mu 0 4 1874 1875 1876 1877
		f 4 1652 1653 -1615 1654
		mu 0 4 1878 1879 1880 1881
		f 4 -1645 1655 -1655 -1620
		mu 0 4 1882 1883 1884 1885
		f 4 1656 1657 -1652 1658
		mu 0 4 1886 1887 1888 1889
		f 4 1659 -1653 1660 -1640
		mu 0 4 1890 1891 1892 1893
		f 4 -1656 1661 -1634 -1661
		mu 0 4 1894 1895 1896 1897
		f 4 1662 -1629 -1662 -1644
		mu 0 4 1898 1899 1900 1901
		f 4 -1602 1663 1664 1665
		mu 0 4 1902 1903 1904 1905
		f 4 1666 1667 1668 -1605
		mu 0 4 1906 1907 1908 1909
		f 4 1669 -1665 1670 -1610
		mu 0 4 1910 1911 1912 1913
		f 4 1671 1672 -1668 1673
		mu 0 4 1914 1915 1916 1917
		f 4 1674 1675 1676 1677
		mu 0 4 1918 1919 1920 1921
		f 4 1678 1679 1680 1681
		mu 0 4 1922 1923 1924 1925
		f 4 1682 1683 1684 1685
		mu 0 4 1926 1927 1928 1929
		f 4 1686 1687 1688 1689
		mu 0 4 1930 1931 1932 1933
		f 4 1690 1691 -1589 1692
		mu 0 4 1934 1935 1936 1937
		f 4 1693 -1599 1694 -1691
		mu 0 4 1938 1939 1940 1941
		f 4 1695 1696 1697 1698
		mu 0 4 1942 1943 1944 1945
		f 4 1699 1700 1701 -1696
		mu 0 4 1946 1947 1948 1949
		f 4 1702 1703 1704 1705
		mu 0 4 1950 1951 1952 1953
		f 4 1706 1707 1708 1709
		mu 0 4 1954 1955 1956 1957
		f 4 1710 -1698 1711 1712
		mu 0 4 1958 1959 1960 1961
		f 4 1713 1714 -1713 1715
		mu 0 4 1962 1963 1964 1965
		f 4 1716 1717 1718 -1711
		mu 0 4 1966 1967 1968 1969
		f 4 1719 1720 -1700 1721
		mu 0 4 1970 1971 1972 1973
		f 4 -1703 1722 1723 1724
		mu 0 4 1974 1975 1976 1977
		f 4 1725 1726 -1707 1727
		mu 0 4 1978 1979 1980 1981
		f 4 1728 1729 1730 1731
		mu 0 4 1982 1983 1984 1985
		f 4 1732 1733 1734 1735
		mu 0 4 1986 1987 1988 1989
		f 4 -1735 1736 1737 -1650
		mu 0 4 1990 1991 1992 1993
		f 4 -1737 -1717 -1715 1738
		mu 0 4 1994 1995 1996 1997
		f 4 1739 1740 -1659 1741
		mu 0 4 1998 1999 2000 2001
		f 4 1742 1743 -1544 1744
		mu 0 4 2002 2003 2004 2005
		f 4 1745 1746 1747 -1744
		mu 0 4 2006 2007 2008 2009
		f 4 1748 1749 1750 1751
		mu 0 4 2010 2011 2012 2013
		f 4 1752 1753 -1752 1754
		mu 0 4 2014 2015 2016 2017
		f 4 -1681 1755 1756 1757
		mu 0 4 2018 2019 2020 2021
		f 4 -1684 1758 1759 1760
		mu 0 4 2022 2023 2024 2025
		f 4 -1689 1761 1762 1763
		mu 0 4 2026 2027 2028 2029
		f 4 -1716 -1676 -1753 1764
		mu 0 4 2030 2031 2032 2033
		f 4 1765 1766 -1657 1767
		mu 0 4 2034 2035 2036 2037
		f 4 -1767 1768 -1630 1769
		mu 0 4 2038 2039 2040 2041
		f 4 -1769 1770 1771 1772
		mu 0 4 2042 2043 2044 2045
		f 4 -1647 -1623 1773 -1736
		mu 0 4 2046 2047 2048 2049
		f 4 1774 1775 -1729 1776
		mu 0 4 2050 2051 2052 2053
		f 4 1777 -1750 1778 1779
		mu 0 4 2054 2055 2056 2057
		f 4 -1574 1780 1781 1782
		mu 0 4 2058 2059 2060 2061
		f 4 1783 1784 1785 -1781
		mu 0 4 2062 2063 2064 2065
		f 4 1786 1787 1788 -1775
		mu 0 4 2066 2067 2068 2069
		f 4 1789 1790 1791 1792
		mu 0 4 2070 2071 2072 2073
		f 4 -1606 1793 1794 -1789
		mu 0 4 2074 2075 2076 2077
		f 4 1795 -1792 1796 1797
		mu 0 4 2078 2079 2080 2081
		f 4 -1768 -1741 1798 1799
		mu 0 4 2082 2083 2084 2085
		f 4 1800 1801 1802 1803
		mu 0 4 2086 2087 2088 2089
		f 4 -1802 1804 -1745 -1542
		mu 0 4 2090 2091 2092 2093
		f 4 1805 1806 -1776 1807
		mu 0 4 2094 2095 2096 2097
		f 4 1808 -1808 -1795 -1702
		mu 0 4 2098 2099 2100 2101
		f 4 1809 1810 1811 1812
		mu 0 4 2102 2103 2104 2105
		f 4 1813 1814 -1705 1815
		mu 0 4 2106 2107 2108 2109
		f 4 1816 -1814 1817 1818
		mu 0 4 2110 2111 2112 2113
		f 4 1819 -1709 1820 -1813
		mu 0 4 2114 2115 2116 2117
		f 4 -1720 -1730 -1807 1821
		mu 0 4 2118 2119 2120 2121
		f 4 1822 -1724 1823 -1819
		mu 0 4 2122 2123 2124 2125
		f 4 1824 -1726 1825 -1811
		mu 0 4 2126 2127 2128 2129
		f 4 -1579 1826 1827 1828
		mu 0 4 2130 2131 2132 2133
		f 4 1829 1830 -1563 1831
		mu 0 4 2134 2135 2136 2137
		f 4 1832 -1585 1833 -1830
		mu 0 4 2138 2139 2140 2141
		f 4 -1577 1834 1835 -1784
		mu 0 4 2142 2143 2144 2145
		f 4 -1569 1836 -1828 1837
		mu 0 4 2146 2147 2148 2149
		f 4 1838 1839 -1576 1840
		mu 0 4 2150 2151 2152 2153
		f 4 -1754 1841 1842 1843
		mu 0 4 2154 2155 2156 2157
		f 4 -1839 1844 -1581 1845
		mu 0 4 2158 2159 2160 2161
		f 4 -1686 1846 1847 1848
		mu 0 4 2162 2163 2164 2165
		f 4 1849 1850 1851 1852
		mu 0 4 2166 2167 2168 2169
		f 4 1853 1854 1855 -1848
		mu 0 4 2170 2171 2172 2173
		f 4 1856 -1855 1857 -1760
		mu 0 4 2174 2175 2176 2177
		f 4 1858 1859 -1687 1860
		mu 0 4 2178 2179 2180 2181
		f 4 1861 1862 1863 -1859
		mu 0 4 2182 2183 2184 2185
		f 4 1864 -1860 -1864 1865
		mu 0 4 2186 2187 2188 2189
		f 4 -1866 -1863 1866 -1763
		mu 0 4 2190 2191 2192 2193
		f 4 -1844 1867 1868 -1749
		mu 0 4 2194 2195 2196 2197
		f 4 1869 -1851 -1836 -1757
		mu 0 4 2198 2199 2200 2201
		f 4 -1614 -1796 -1672 1870
		mu 0 4 2202 2203 2204 2205
		f 4 -1853 1871 -1679 -1797
		mu 0 4 2206 2207 2208 2209
		f 4 -1663 -1649 -1658 -1770
		mu 0 4 2210 2211 2212 2213
		f 4 -1590 1872 -1598 -1604
		mu 0 4 2214 2215 2216 2217
		f 4 -1846 1873 -1868 1874
		mu 0 4 2218 2219 2220 2221
		f 4 -1875 -1843 1875 -1840
		mu 0 4 2222 2223 2224 2225
		f 4 -1758 1876 1877 1878
		mu 0 4 2226 2227 2228 2229
		f 4 1879 -1682 -1879 -1678
		mu 0 4 2230 2231 2232 2233
		f 4 1880 1881 -1673 1882
		mu 0 4 2234 2235 2236 2237
		f 4 -1882 1883 1884 -1669
		mu 0 4 2238 2239 2240 2241
		f 4 -1699 -1719 -1731 -1722
		mu 0 4 2242 2243 2244 2245
		f 4 1885 1886 1887 -1780
		mu 0 4 2246 2247 2248 2249
		f 4 1888 -1733 1889 1890
		mu 0 4 2250 2251 2252 2253
		f 4 1891 1892 1893 1894
		mu 0 4 2254 2255 2256 2257
		f 4 1895 -1765 1896 1897
		mu 0 4 2258 2259 2260 2261
		f 4 1898 -1556 -1747 1899
		mu 0 4 2262 2263 2264 2265
		f 4 -1874 -1583 -1783 1900
		mu 0 4 2266 2267 2268 2269
		f 4 -1541 1901 1902 -1803
		mu 0 4 2270 2271 2272 2273
		f 4 -1555 1903 -1545 -1748
		mu 0 4 2274 2275 2276 2277
		f 4 1904 -1547 1905 -1903
		mu 0 4 2278 2279 2280 2281
		f 4 -1660 1906 -1635 -1654
		mu 0 4 2282 2283 2284 2285
		f 4 -1627 1907 -1631 -1773
		mu 0 4 2286 2287 2288 2289
		f 4 1908 -1642 1909 -1638
		mu 0 4 2290 2291 2292 2293
		f 4 -1908 -1643 -1909 -1632
		mu 0 4 2294 2295 2296 2297
		f 4 -1625 -1772 -1890 -1774
		mu 0 4 2298 2299 2300 2301
		f 4 -1800 -1894 1910 1911
		mu 0 4 2302 2303 2304 2305
		f 4 1912 -1779 -1869 -1901
		mu 0 4 2306 2307 2308 2309
		f 4 -1782 1913 -1886 -1913
		mu 0 4 2310 2311 2312 2313
		f 4 -1911 1914 -1787 1915
		mu 0 4 2314 2315 2316 2317
		f 4 -1734 1916 -1732 -1718
		mu 0 4 2318 2319 2320 2321
		f 4 1917 -1742 -1651 1918
		mu 0 4 2322 2323 2324 2325
		f 4 -1746 1919 -1739 1920
		mu 0 4 2326 2327 2328 2329
		f 4 -1907 -1639 -1910 -1636
		mu 0 4 2330 2331 2332 2333
		f 4 -1916 -1777 -1917 -1889
		mu 0 4 2334 2335 2336 2337
		f 4 -1821 1921 -1825 -1810
		mu 0 4 2338 2339 2340 2341
		f 4 -1914 -1786 1922 1923
		mu 0 4 2342 2343 2344 2345
		f 4 -1893 -1923 -1790 -1915
		mu 0 4 2346 2347 2348 2349
		f 4 -1799 -1801 1924 -1895
		mu 0 4 2350 2351 2352 2353
		f 4 -1804 -1906 1925 1926
		mu 0 4 2354 2355 2356 2357
		f 4 1927 1928 -1888 -1925
		mu 0 4 2358 2359 2360 2361
		f 4 1929 -1701 1930 -1706
		mu 0 4 2362 2363 2364 2365
		f 4 -1931 -1721 1931 -1723
		mu 0 4 2366 2367 2368 2369
		f 4 1932 -1817 1933 -1806
		mu 0 4 2370 2371 2372 2373
		f 4 -1933 -1809 -1930 -1815
		mu 0 4 2374 2375 2376 2377
		f 4 -1932 -1822 -1934 -1824
		mu 0 4 2378 2379 2380 2381
		f 4 1934 -1704 1935 -1710
		mu 0 4 2382 2383 2384 2385
		f 4 -1936 -1725 1936 -1728
		mu 0 4 2386 2387 2388 2389
		f 4 1937 -1818 1938 -1812
		mu 0 4 2390 2391 2392 2393
		f 4 -1939 -1816 -1935 -1820
		mu 0 4 2394 2395 2396 2397
		f 4 -1937 -1823 -1938 -1826
		mu 0 4 2398 2399 2400 2401
		f 4 1939 -1612 1940 -1594
		mu 0 4 2402 2403 2404 2405
		f 4 -1940 -1600 1941 -1608
		mu 0 4 2406 2407 2408 2409
		f 4 1942 -1609 -1941 -1871
		mu 0 4 2410 2411 2412 2413
		f 4 -1942 -1666 1943 -1667
		mu 0 4 2414 2415 2416 2417
		f 4 -1944 -1670 -1943 -1674
		mu 0 4 2418 2419 2420 2421
		f 4 1944 -1588 1945 -1611
		mu 0 4 2422 2423 2424 2425
		f 4 -1946 -1603 1946 -1592
		mu 0 4 2426 2427 2428 2429
		f 4 -1947 -1596 1947 -1601
		mu 0 4 2430 2431 2432 2433
		f 4 1948 -1664 -1948 -1694
		mu 0 4 2434 2435 2436 2437
		f 4 -1945 -1671 -1949 -1693
		mu 0 4 2438 2439 2440 2441
		f 4 1949 -1680 1950 -1685
		mu 0 4 2442 2443 2444 2445
		f 4 1951 -1756 -1950 -1761
		mu 0 4 2446 2447 2448 2449
		f 4 1952 -1847 -1951 -1872
		mu 0 4 2450 2451 2452 2453
		f 4 1953 -1854 -1953 -1852
		mu 0 4 2454 2455 2456 2457
		f 4 -1952 -1858 -1954 -1870
		mu 0 4 2458 2459 2460 2461
		f 4 1954 -1683 1955 -1690
		mu 0 4 2462 2463 2464 2465
		f 4 1956 -1759 -1955 -1764
		mu 0 4 2466 2467 2468 2469
		f 4 -1956 -1849 1957 -1861
		mu 0 4 2470 2471 2472 2473
		f 4 1958 -1862 -1958 -1856
		mu 0 4 2474 2475 2476 2477
		f 4 -1959 -1857 -1957 -1867
		mu 0 4 2478 2479 2480 2481
		f 4 1959 -1572 1960 -1559
		mu 0 4 2482 2483 2484 2485
		f 4 1961 -1568 -1961 -1582
		mu 0 4 2486 2487 2488 2489
		f 4 1962 -1575 -1960 -1580
		mu 0 4 2490 2491 2492 2493
		f 4 -1963 -1829 1963 -1841
		mu 0 4 2494 2495 2496 2497
		f 4 -1964 -1837 -1962 -1845
		mu 0 4 2498 2499 2500 2501
		f 4 1964 -1567 1965 -1557
		mu 0 4 2502 2503 2504 2505
		f 4 1966 -1562 -1965 -1570
		mu 0 4 2506 2507 2508 2509
		f 4 1967 -1578 -1966 -1586
		mu 0 4 2510 2511 2512 2513
		f 4 1968 -1827 -1968 -1833
		mu 0 4 2514 2515 2516 2517
		f 4 -1969 -1832 -1967 -1838
		mu 0 4 2518 2519 2520 2521
		f 4 1969 1970 1971 1972
		mu 0 4 2522 2523 2524 2525
		f 4 1973 1974 -1540 1975
		mu 0 4 2526 2527 2528 2529
		f 4 1976 -1976 -1546 1977
		mu 0 4 2530 2531 2532 2533
		f 4 1978 -1978 -1904 1979
		mu 0 4 2534 2535 2536 2537
		f 4 1980 1981 -1553 1982
		mu 0 4 2538 2539 2540 2541
		f 4 1983 1984 -1902 -1975
		mu 0 4 2542 2543 2544 2545
		f 4 1985 -1983 -1548 1986
		mu 0 4 2546 2547 2548 2549
		f 4 1987 -1980 -1554 -1982
		mu 0 4 2550 2551 2552 2553
		f 4 1988 -1987 -1905 -1985
		mu 0 4 2554 2555 2556 2557
		f 4 1989 1990 -1899 1991
		mu 0 4 2558 2559 2560 2561
		f 4 -1990 1992 1993 1994
		mu 0 4 2562 2563 2564 2565
		f 4 1995 1996 -1994 1997
		mu 0 4 2566 2567 2568 2569
		f 4 -1970 -1926 1998 -1996
		mu 0 4 2570 2571 2572 2573
		f 4 1999 2000 -1751 2001
		mu 0 4 2574 2575 2576 2577
		f 4 -1929 2002 -2002 -1778
		mu 0 4 2578 2579 2580 2581
		f 4 2003 2004 2005 2006
		mu 0 4 2582 2583 2584 2585
		f 4 2007 -2007 2008 2009
		mu 0 4 2586 2587 2588 2589
		f 4 2010 2011 2012 -2010
		mu 0 4 2590 2591 2592 2593
		f 4 2013 -2012 2014 2015
		mu 0 4 2594 2595 2596 2597
		f 4 2016 -2016 2017 2018
		mu 0 4 2598 2599 2600 2601
		f 4 2019 -2019 2020 -2005
		mu 0 4 2602 2603 2604 2605
		f 4 -2014 2021 2022 2023
		mu 0 4 2606 2607 2608 2609
		f 4 -2022 -2017 2024 2025
		mu 0 4 2610 2611 2612 2613
		f 4 -2025 -2020 2026 2027
		mu 0 4 2614 2615 2616 2617
		f 4 2028 -2013 -2024 2029
		mu 0 4 2618 2619 2620 2621
		f 4 2030 -2008 -2029 2031
		mu 0 4 2622 2623 2624 2625
		f 4 -2031 2032 -2027 -2004
		mu 0 4 2626 2627 2628 2629
		f 3 -1677 2033 -1881
		mu 0 3 2630 2631 2632
		f 3 -1712 -1884 -2034
		mu 0 3 2633 2634 2635
		f 3 2034 -2000 2035
		mu 0 3 2636 2637 2638
		f 3 -1921 -1714 -1896
		mu 0 3 2639 2640 2641
		f 3 2036 2037 -1995
		mu 0 3 2642 2643 2644
		f 3 -1878 -1842 -1675
		mu 0 3 2645 2646 2647
		f 3 -1924 -1892 -1887
		mu 0 3 2648 2649 2650
		f 3 -1788 -1793 -1613
		mu 0 3 2651 2652 2653
		f 3 -1791 -1785 -1850
		mu 0 3 2654 2655 2656
		f 3 -1550 2038 -1999
		mu 0 3 2657 2658 2659
		f 3 -2036 -2003 -1972
		mu 0 3 2660 2661 2662
		f 3 -1755 -2001 -1897
		mu 0 3 2663 2664 2665
		f 3 -1834 -1587 -1831
		mu 0 3 2666 2667 2668
		f 3 -1695 -1873 -1692
		mu 0 3 2669 2670 2671
		f 3 -1688 -1865 -1762
		mu 0 3 2672 2673 2674
		f 3 -1727 -1922 -1708
		mu 0 3 2675 2676 2677
		f 3 -1891 2039 -1912
		mu 0 3 2678 2679 2680
		f 3 -1920 -1919 -1738
		mu 0 3 2681 2682 2683
		f 3 -1798 -1880 -1883
		mu 0 3 2684 2685 2686
		f 3 -1876 -1877 -1835
		mu 0 3 2687 2688 2689
		f 3 -1794 -1885 -1697
		mu 0 3 2690 2691 2692
		f 3 -1740 2040 -1805
		mu 0 3 2693 2694 2695
		f 3 2041 -1993 2042
		mu 0 3 2696 2697 2698
		f 3 -1973 -1928 -1927
		mu 0 3 2699 2700 2701
		f 3 -2037 -1997 -2039
		mu 0 3 2702 2703 2704
		f 3 -1998 -2042 -1971
		mu 0 3 2705 2706 2707
		f 3 -1552 -1991 -2038
		mu 0 3 2708 2709 2710
		f 3 2043 -2035 -2043
		mu 0 3 2711 2712 2713
		f 3 -2041 -1918 -1743
		mu 0 3 2714 2715 2716
		f 3 -1898 2044 -1900
		mu 0 3 2717 2718 2719
		f 3 -2045 -2044 -1992
		mu 0 3 2720 2721 2722
		f 3 -1766 -2040 -1771
		mu 0 3 2723 2724 2725
		f 4 2045 2046 2047 2048
		mu 0 4 2726 2727 2728 2729
		f 4 2049 2050 2051 -2047
		mu 0 4 2730 2731 2732 2733
		f 4 2052 2053 2054 2055
		mu 0 4 2734 2735 2736 2737
		f 4 2056 -2055 2057 2058
		mu 0 4 2738 2739 2740 2741
		f 4 2059 -2049 2060 2061
		mu 0 4 2742 2743 2744 2745
		f 4 2062 2063 2064 2065
		mu 0 4 2746 2747 2748 2749
		f 4 -2063 2066 2067 2068
		mu 0 4 2750 2751 2752 2753
		f 4 2069 2070 -2067 2071
		mu 0 4 2754 2755 2756 2757
		f 4 2072 2073 2074 2075
		mu 0 4 2758 2759 2760 2761
		f 4 -2073 2076 2077 2078
		mu 0 4 2762 2763 2764 2765;
	setAttr ".fc[1000:1499]"
		f 4 -2059 2079 2080 2081
		mu 0 4 2766 2767 2768 2769
		f 4 2082 -2077 2083 2084
		mu 0 4 2770 2771 2772 2773
		f 4 -2083 2085 2086 2087
		mu 0 4 2774 2775 2776 2777
		f 4 2088 2089 2090 2091
		mu 0 4 2778 2779 2780 2781
		f 4 2092 2093 2094 2095
		mu 0 4 2782 2783 2784 2785
		f 4 -2094 2096 2097 2098
		mu 0 4 2786 2787 2788 2789
		f 4 -2098 2099 -2068 2100
		mu 0 4 2790 2791 2792 2793
		f 4 -2099 -2101 -2071 2101
		mu 0 4 2794 2795 2796 2797
		f 4 -2102 2102 2103 -2095
		mu 0 4 2798 2799 2800 2801
		f 4 2104 2105 -2089 2106
		mu 0 4 2802 2803 2804 2805
		f 4 -2084 -2076 2107 -2105
		mu 0 4 2806 2807 2808 2809
		f 4 2108 -2103 -2070 2109
		mu 0 4 2810 2811 2812 2813
		f 4 2110 2111 2112 2113
		mu 0 4 2814 2815 2816 2817
		f 4 2114 2115 2116 2117
		mu 0 4 2818 2819 2820 2821
		f 4 -2117 2118 -2051 2119
		mu 0 4 2822 2823 2824 2825
		f 4 -2113 2120 -2053 2121
		mu 0 4 2826 2827 2828 2829
		f 4 -2109 2122 2123 2124
		mu 0 4 2830 2831 2832 2833
		f 4 -2096 2125 2126 2127
		mu 0 4 2834 2835 2836 2837
		f 4 -2081 -2078 -2088 2128
		mu 0 4 2838 2839 2840 2841
		f 4 -2060 -2079 -2080 2129
		mu 0 4 2842 2843 2844 2845
		f 4 -2046 -2130 -2058 2130
		mu 0 4 2846 2847 2848 2849
		f 4 -2050 -2131 -2054 2131
		mu 0 4 2850 2851 2852 2853
		f 4 2132 -2120 -2132 -2121
		mu 0 4 2854 2855 2856 2857
		f 4 -2118 -2133 -2112 2133
		mu 0 4 2858 2859 2860 2861
		f 4 2134 2135 2136 -2064
		mu 0 4 2862 2863 2864 2865
		f 4 -2135 -2069 2137 -2075
		mu 0 4 2866 2867 2868 2869
		f 4 -2128 -2090 2138 -2093
		mu 0 4 2870 2871 2872 2873
		f 4 2139 -2097 -2139 -2106
		mu 0 4 2874 2875 2876 2877
		f 4 -2138 -2100 -2140 -2108
		mu 0 4 2878 2879 2880 2881
		f 4 -2062 2140 -2136 -2074
		mu 0 4 2882 2883 2884 2885
		f 4 2141 -2092 2142 -2086
		mu 0 4 2886 2887 2888 2889
		f 4 2143 2144 2145 -2082
		mu 0 4 2890 2891 2892 2893
		f 4 2146 -2124 -2144 -2129
		mu 0 4 2894 2895 2896 2897
		f 4 2147 -2143 -2091 -2127
		mu 0 4 2898 2899 2900 2901
		f 4 2148 -2114 -2122 2149
		mu 0 4 2902 2903 2904 2905
		f 4 -2150 -2056 -2057 -2146
		mu 0 4 2906 2907 2908 2909
		f 4 2150 -2072 2151 -2134
		mu 0 4 2910 2911 2912 2913
		f 4 -2110 -2151 -2111 2152
		mu 0 4 2914 2915 2916 2917
		f 4 -2123 -2153 -2149 -2145
		mu 0 4 2918 2919 2920 2921
		f 4 -2126 -2104 -2125 2153
		mu 0 4 2922 2923 2924 2925
		f 4 -2148 -2154 -2147 -2087
		mu 0 4 2926 2927 2928 2929
		f 3 -2152 -2066 -2115
		mu 0 3 2930 2931 2932
		f 3 -2107 -2142 -2085
		mu 0 3 2933 2934 2935
		f 4 2154 2155 2156 2157
		mu 0 4 834 835 836 837
		f 4 2158 -2158 2159 2160
		mu 0 4 838 834 837 839
		f 4 2161 2162 2163 2164
		mu 0 4 840 841 842 843
		f 4 2165 2166 2167 2168
		mu 0 4 844 845 846 847
		f 4 -2164 2169 2170 2171
		mu 0 4 843 842 848 849
		f 4 2172 2173 2174 2175
		mu 0 4 850 851 836 852
		f 4 -2175 -2156 2176 2177
		mu 0 4 852 836 835 853
		f 4 2178 2179 2180 -2176
		mu 0 4 854 844 855 856
		f 4 -2166 -2179 -2178 2181
		mu 0 4 845 844 854 857
		f 4 -2171 2182 -2168 2183
		mu 0 4 849 848 847 846
		f 4 2184 -2161 2185 -2162
		mu 0 4 840 838 839 841
		f 4 -2172 2186 2187 2188
		mu 0 4 843 849 858 859
		f 4 2189 -2185 2190 2191
		mu 0 4 860 838 840 861
		f 4 -2155 2192 2193 2194
		mu 0 4 835 834 862 863
		f 4 -2177 -2195 2195 2196
		mu 0 4 853 835 863 864
		f 4 -2167 2197 2198 2199
		mu 0 4 846 845 865 866
		f 4 -2184 -2200 2200 -2187
		mu 0 4 849 846 866 858
		f 4 -2198 -2182 -2197 2201
		mu 0 4 865 845 857 867
		f 4 -2191 -2165 -2189 2202
		mu 0 4 861 840 843 859
		f 4 -2193 -2159 -2190 2203
		mu 0 4 862 834 838 860
		f 4 2204 2205 -2196 2206
		mu 0 4 868 869 864 863
		f 4 2207 2208 2209 -2201
		mu 0 4 866 870 871 858
		f 4 2210 2211 2212 -2203
		mu 0 4 859 872 873 861
		f 4 2213 2214 -2208 -2199
		mu 0 4 865 874 870 866
		f 4 -2206 2215 -2214 -2202
		mu 0 4 867 875 874 865
		f 4 -2210 2216 -2211 -2188
		mu 0 4 858 871 872 859
		f 4 -2213 2217 2218 -2192
		mu 0 4 861 873 876 860
		f 4 2219 2220 -2204 -2219
		mu 0 4 876 877 862 860
		f 4 2221 -2207 -2194 -2221
		mu 0 4 877 868 863 862
		f 4 2222 2223 -2186 2224
		mu 0 4 878 879 841 839
		f 4 2225 -2225 -2160 2226
		mu 0 4 880 878 839 837
		f 4 2227 -2227 -2157 -2174
		mu 0 4 851 880 837 836
		f 4 -2224 2228 2229 -2163
		mu 0 4 841 879 881 842
		f 4 2230 2231 -2180 -2169
		mu 0 4 847 882 855 844
		f 4 2232 2233 -2231 -2183
		mu 0 4 848 883 882 847
		f 4 -2230 2234 -2233 -2170
		mu 0 4 842 881 883 848
		f 4 2235 2236 -2173 2237
		mu 0 4 884 885 851 850
		f 4 2238 -2238 -2181 2239
		mu 0 4 886 887 856 855
		f 4 2240 -2240 -2232 2241
		mu 0 4 888 886 855 882
		f 4 2242 2243 -2228 -2237
		mu 0 4 885 889 880 851
		f 4 2244 2245 2246 2247
		mu 0 4 2936 2937 2938 2939
		f 4 2248 2249 2250 2251
		mu 0 4 2940 2941 2942 2943
		f 4 2252 2253 2254 2255
		mu 0 4 2944 2945 2946 2947
		f 4 2256 2257 2258 -2256
		mu 0 4 2948 2949 2950 2951
		f 4 2259 2260 2261 2262
		mu 0 4 2952 2953 2954 2955
		f 4 2263 2264 2265 -2254
		mu 0 4 2956 2957 2958 2959
		f 4 -2245 2266 -2258 2267
		mu 0 4 2960 2961 2962 2963
		f 4 -2246 2268 2269 2270
		mu 0 4 2964 2965 2966 2967
		f 4 2271 2272 2273 2274
		mu 0 4 2968 2969 2970 2971
		f 4 -2250 2275 -2247 2276
		mu 0 4 2972 2973 2974 2975
		f 4 2277 2278 2279 2280
		mu 0 4 2976 2977 2978 2979
		f 4 2281 2282 -2278 2283
		mu 0 4 2980 2981 2982 2983
		f 4 2284 2285 -2262 2286
		mu 0 4 2984 2985 2986 2987
		f 4 2287 2288 2289 2290
		mu 0 4 2988 2989 2990 2991
		f 4 2291 2292 2293 2294
		mu 0 4 2992 2993 2994 2995
		f 4 2295 2296 2297 2298
		mu 0 4 2996 2997 2998 2999
		f 4 2299 -2272 2300 -2293
		mu 0 4 3000 3001 3002 3003
		f 4 2301 -2295 2302 -2297
		mu 0 4 3004 3005 3006 3007
		f 4 2303 -2252 2304 -2265
		mu 0 4 3008 3009 3010 3011
		f 4 2305 2306 -2282 2307
		mu 0 4 3012 3013 3014 3015
		f 4 -2280 2308 2309 2310
		mu 0 4 3016 3017 3018 3019
		f 4 2311 2312 2313 2314
		mu 0 4 3020 3021 3022 3023
		f 4 2315 2316 2317 2318
		mu 0 4 3024 3025 3026 3027
		f 4 2319 2320 2321 2322
		mu 0 4 3028 3029 3030 3031
		f 4 2323 2324 2325 -2321
		mu 0 4 3032 3033 3034 3035
		f 4 -2326 -2318 2326 2327
		mu 0 4 3036 3037 3038 3039
		f 4 -2319 -2325 -2263 2328
		mu 0 4 3040 3041 3042 3043
		f 4 2329 -2315 2330 2331
		mu 0 4 3044 3045 3046 3047
		f 4 2332 -2323 2333 2334
		mu 0 4 3048 3049 3050 3051
		f 4 2335 2336 2337 -2334
		mu 0 4 3052 3053 3054 3055
		f 4 2338 -2336 -2322 -2328
		mu 0 4 3056 3057 3058 3059
		f 4 2339 -2299 2340 2341
		mu 0 4 3060 3061 3062 3063
		f 4 -2342 2342 2343 2344
		mu 0 4 3064 3065 3066 3067
		f 4 -2274 2345 -2344 2346
		mu 0 4 3068 3069 3070 3071
		f 4 2347 -2261 -2288 2348
		mu 0 4 3072 3073 3074 3075
		f 4 2349 -2320 2350 2351
		mu 0 4 3076 3077 3078 3079
		f 4 -2281 2352 2353 2354
		mu 0 4 3080 3081 3082 3083
		f 4 -2284 -2355 -2332 2355
		mu 0 4 3084 3085 3086 3087
		f 4 2356 2357 2358 -2255
		mu 0 4 3088 3089 3090 3091
		f 4 -2260 -2324 -2350 -2289
		mu 0 4 3092 3093 3094 3095
		f 4 -2308 -2356 2359 -2285
		mu 0 4 3096 3097 3098 3099
		f 4 -2311 -2351 -2333 -2353
		mu 0 4 3100 3101 3102 3103
		f 4 -2312 2360 -2338 2361
		mu 0 4 3104 3105 3106 3107
		f 4 -2330 -2354 -2335 -2361
		mu 0 4 3108 3109 3110 3111
		f 4 -2316 2362 2363 2364
		mu 0 4 3112 3113 3114 3115
		f 4 -2286 2365 -2363 -2329
		mu 0 4 3116 3117 3118 3119
		f 4 -2331 2366 -2366 -2360
		mu 0 4 3120 3121 3122 3123
		f 4 2367 -2364 -2367 -2314
		mu 0 4 3124 3125 3126 3127
		f 4 -2290 -2352 -2310 -2270
		mu 0 4 3128 3129 3130 3131
		f 4 -2279 2368 -2251 2369
		mu 0 4 3132 3133 3134 3135
		f 4 2370 -2305 -2369 -2283
		mu 0 4 3136 3137 3138 3139
		f 4 -2291 -2269 -2268 2371
		mu 0 4 3140 3141 3142 3143
		f 4 -2357 -2266 -2371 -2307
		mu 0 4 3144 3145 3146 3147
		f 4 -2370 -2277 -2271 -2309
		mu 0 4 3148 3149 3150 3151
		f 4 -2372 -2257 -2359 -2349
		mu 0 4 3152 3153 3154 3155
		f 4 -2306 -2287 -2348 -2358
		mu 0 4 3156 3157 3158 3159
		f 4 -2275 2372 -2248 2373
		mu 0 4 3160 3161 3162 3163
		f 4 -2294 2374 -2249 2375
		mu 0 4 3164 3165 3166 3167
		f 4 2376 -2264 2377 -2298
		mu 0 4 3168 3169 3170 3171
		f 4 -2301 -2374 -2276 -2375
		mu 0 4 3172 3173 3174 3175
		f 4 -2303 -2376 -2304 -2377
		mu 0 4 3176 3177 3178 3179
		f 4 -2378 -2253 2378 -2341
		mu 0 4 3180 3181 3182 3183
		f 4 -2379 -2259 2379 -2343
		mu 0 4 3184 3185 3186 3187
		f 4 -2380 -2267 -2373 -2347
		mu 0 4 3188 3189 3190 3191
		f 4 2380 2272 2381 2382
		mu 0 4 3192 3193 3194 3195
		f 4 2383 2291 2384 2385
		mu 0 4 3196 3197 3198 3199
		f 4 2386 2295 2387 2388
		mu 0 4 3200 3201 3202 3203
		f 4 -2385 2299 -2381 2389
		mu 0 4 3204 3205 3206 3207
		f 4 -2388 2301 -2384 2390
		mu 0 4 3208 3209 3210 3211
		f 4 2391 2339 -2387 2392
		mu 0 4 3212 3213 3214 3215
		f 4 2393 2344 -2392 2394
		mu 0 4 3216 3217 3218 3219
		f 4 -2382 2345 -2394 2395
		mu 0 4 3220 3221 3222 3223
		f 4 2396 -2383 2397 2398
		mu 0 4 3224 3225 3226 3227
		f 4 2399 -2386 2400 2401
		mu 0 4 3228 3229 3230 3231
		f 4 2402 -2389 2403 2404
		mu 0 4 3232 3233 3234 3235
		f 4 -2401 -2390 -2397 2405
		mu 0 4 3236 3237 3238 3239
		f 4 -2404 -2391 -2400 2406
		mu 0 4 3240 3241 3242 3243
		f 4 2407 -2393 -2403 2408
		mu 0 4 3244 3245 3246 3247
		f 4 2409 -2395 -2408 2410
		mu 0 4 3248 3249 3250 3251
		f 4 -2398 -2396 -2410 2411
		mu 0 4 3252 3253 3254 3255
		f 4 2412 2413 2414 2415
		mu 0 4 3256 3257 3258 3259
		f 4 2416 2417 -2413 2418
		mu 0 4 3260 3261 3262 3263
		f 4 2419 2420 2421 2422
		mu 0 4 3264 3265 3266 3267
		f 4 2423 2424 2425 2426
		mu 0 4 3268 3269 3270 3271
		f 4 2427 2428 2429 -2421
		mu 0 4 3272 3273 3274 3275
		f 4 2430 2431 2432 2433
		mu 0 4 3276 3277 3278 3279
		f 4 2434 2435 -2415 -2432
		mu 0 4 3280 3281 3282 3283
		f 4 -2431 2436 2437 2438
		mu 0 4 3284 3285 3286 3287
		f 4 2439 -2435 -2439 -2427
		mu 0 4 3288 3289 3290 3291
		f 4 2440 -2425 2441 -2429
		mu 0 4 3292 3293 3294 3295
		f 4 -2423 2442 -2417 2443
		mu 0 4 3296 3297 3298 3299
		f 4 2444 2445 2446 -2428
		mu 0 4 3300 3301 3302 3303
		f 4 2447 2448 -2444 2449
		mu 0 4 3304 3305 3306 3307
		f 4 2450 2451 2452 -2416
		mu 0 4 3308 3309 3310 3311
		f 4 2453 2454 -2451 -2436
		mu 0 4 3312 3313 3314 3315
		f 4 2455 2456 2457 -2426
		mu 0 4 3316 3317 3318 3319
		f 4 -2447 2458 -2456 -2441
		mu 0 4 3320 3321 3322 3323
		f 4 2459 -2454 -2440 -2458
		mu 0 4 3324 3325 3326 3327
		f 4 2460 -2445 -2420 -2449
		mu 0 4 3328 3329 3330 3331
		f 4 2461 -2450 -2419 -2453
		mu 0 4 3332 3333 3334 3335
		f 4 2462 -2455 2463 2464
		mu 0 4 3336 3337 3338 3339
		f 4 -2459 2465 2466 2467
		mu 0 4 3340 3341 3342 3343
		f 4 -2461 2468 2469 2470
		mu 0 4 3344 3345 3346 3347
		f 4 -2457 -2468 2471 2472
		mu 0 4 3348 3349 3350 3351
		f 4 -2460 -2473 2473 -2464
		mu 0 4 3352 3353 3354 3355
		f 4 -2446 -2471 2474 -2466
		mu 0 4 3356 3357 3358 3359
		f 4 -2448 2475 2476 -2469
		mu 0 4 3360 3361 3362 3363
		f 4 -2476 -2462 2477 2478
		mu 0 4 3364 3365 3366 3367
		f 4 -2478 -2452 -2463 2479
		mu 0 4 3368 3369 3370 3371
		f 4 2480 -2443 2481 2482
		mu 0 4 3372 3373 3374 3375
		f 4 2483 -2418 -2481 2484
		mu 0 4 3376 3377 3378 3379
		f 4 -2433 -2414 -2484 2485
		mu 0 4 3380 3381 3382 3383
		f 4 -2422 2486 2487 -2482
		mu 0 4 3384 3385 3386 3387
		f 4 -2424 -2438 2488 2489
		mu 0 4 3388 3389 3390 3391
		f 4 -2442 -2490 2490 2491
		mu 0 4 3392 3393 3394 3395
		f 4 -2430 -2492 2492 -2487
		mu 0 4 3396 3397 3398 3399
		f 4 2493 -2434 2494 -2236
		mu 0 4 884 3400 3401 885
		f 4 2495 -2437 -2494 -2239
		mu 0 4 886 3402 3403 887
		f 4 2496 -2489 -2496 -2241
		mu 0 4 888 3404 3405 886
		f 4 -2495 -2486 2497 -2243
		mu 0 4 885 3406 3407 889
		f 4 2498 2499 2500 2501
		mu 0 4 890 891 892 893
		f 4 2502 2503 2504 2505
		mu 0 4 3408 3409 3410 3411
		f 4 2506 2507 2508 2509
		mu 0 4 3412 3413 3414 3415
		f 4 2510 2511 2512 2513
		mu 0 4 894 895 896 897
		f 4 -2513 2514 2515 2516
		mu 0 4 897 896 898 899
		f 4 -2514 2517 2518 2519
		mu 0 4 894 897 900 901
		f 4 2520 2521 -2518 -2517
		mu 0 4 899 902 900 897
		f 4 -2519 2522 2523 2524
		mu 0 4 901 900 903 904
		f 4 2525 2526 -2523 -2522
		mu 0 4 902 905 903 900
		f 4 2527 2528 2529 2530
		mu 0 4 906 907 908 909
		f 4 -2530 2531 -2511 2532
		mu 0 4 909 908 910 911
		f 4 -2531 2533 2534 2535
		mu 0 4 906 909 912 913
		f 4 2536 2537 -2534 -2533
		mu 0 4 911 914 912 909
		f 4 -2535 2538 2539 2540
		mu 0 4 913 912 915 916
		f 4 2541 2542 -2539 -2538
		mu 0 4 914 917 915 912
		f 4 2543 2544 2545 2546
		mu 0 4 918 919 920 921
		f 4 -2546 2547 -2528 2548
		mu 0 4 921 920 922 923
		f 4 -2547 2549 2550 2551
		mu 0 4 918 921 924 925
		f 4 2552 2553 -2550 -2549
		mu 0 4 923 926 924 921
		f 4 -2551 2554 2555 2556
		mu 0 4 925 924 927 928
		f 4 2557 2558 -2555 -2554
		mu 0 4 926 929 927 924
		f 4 2559 2560 2561 2562
		mu 0 4 930 931 932 933
		f 4 -2562 2563 -2544 2564
		mu 0 4 933 932 934 935
		f 4 -2563 2565 2566 2567
		mu 0 4 930 933 936 937
		f 4 2568 2569 -2566 -2565
		mu 0 4 935 938 936 933
		f 4 -2567 2570 2571 2572
		mu 0 4 937 936 939 940
		f 4 2573 2574 -2571 -2570
		mu 0 4 938 941 939 936
		f 4 2575 2576 2577 2578
		mu 0 4 942 943 944 945
		f 4 -2578 2579 -2560 2580
		mu 0 4 945 944 946 947
		f 4 -2579 2581 2582 2583
		mu 0 4 942 945 948 949
		f 4 2584 2585 -2582 -2581
		mu 0 4 947 950 948 945
		f 4 -2583 2586 2587 2588
		mu 0 4 949 948 951 952
		f 4 2589 2590 -2587 -2586
		mu 0 4 950 953 951 948
		f 4 2591 2592 2593 2594
		mu 0 4 954 955 956 957
		f 4 -2594 2595 -2576 2596
		mu 0 4 957 956 958 959
		f 4 -2595 2597 2598 2599
		mu 0 4 954 957 960 961
		f 4 2600 2601 -2598 -2597
		mu 0 4 959 962 960 957
		f 4 -2599 2602 2603 2604
		mu 0 4 961 960 963 964
		f 4 2605 2606 -2603 -2602
		mu 0 4 962 965 963 960
		f 4 2607 2608 2609 2610
		mu 0 4 966 967 968 969
		f 4 -2610 2611 2612 2613
		mu 0 4 969 968 970 971
		f 4 -2611 2614 2615 2616
		mu 0 4 966 969 972 973
		f 4 2617 2618 -2615 -2614
		mu 0 4 971 974 972 969
		f 4 -2616 2619 2620 2621
		mu 0 4 973 972 975 976
		f 4 2622 2623 -2620 -2619
		mu 0 4 974 977 975 972
		f 4 2624 2625 2626 2627
		mu 0 4 978 979 980 981
		f 4 2628 2629 2630 2631
		mu 0 4 982 983 984 985
		f 4 2632 2633 2634 2635
		mu 0 4 986 987 988 989
		f 4 2636 -2627 2637 2638
		mu 0 4 990 981 980 991
		f 4 -2631 2639 2640 2641
		mu 0 4 985 984 992 993
		f 4 -2635 2642 2643 2644
		mu 0 4 989 988 994 995
		f 4 2645 2646 2647 2648
		mu 0 4 996 997 998 999
		f 4 2649 2650 2651 2652
		mu 0 4 1000 1001 1002 1003
		f 4 2653 2654 2655 2656
		mu 0 4 1004 1005 1006 1007
		f 4 2657 2658 2659 2660
		mu 0 4 1008 1009 1010 1011
		f 4 2661 -2639 2662 2663
		mu 0 4 1012 990 991 1013
		f 4 -2641 2664 2665 2666
		mu 0 4 993 992 1014 1015
		f 4 -2644 2667 2668 2669
		mu 0 4 995 994 1016 1017
		f 4 2670 -2643 2671 2672
		mu 0 4 996 1018 1019 1003
		f 4 2673 2674 -2640 2675
		mu 0 4 1007 1009 1020 1021
		f 4 2676 -2628 2677 -2655
		mu 0 4 1022 978 981 1023
		f 4 2678 -2632 2679 -2651
		mu 0 4 1024 982 985 1025
		f 4 -2636 2680 2681 2682
		mu 0 4 986 989 1026 1027
		f 4 -2637 2683 2684 -2678
		mu 0 4 981 990 1028 1023
		f 4 -2680 -2642 2685 2686
		mu 0 4 1025 985 993 1029
		f 4 2687 2688 2689 -2681
		mu 0 4 989 1030 1031 1026
		f 4 -2671 -2649 2690 2691
		mu 0 4 1018 996 999 1032
		f 4 2692 -2653 -2672 -2634
		mu 0 4 1033 1000 1003 1019
		f 4 2693 -2657 -2676 -2630
		mu 0 4 1034 1004 1007 1021
		f 4 -2658 2694 2695 -2675
		mu 0 4 1009 1008 1035 1020
		f 4 -2662 2696 2697 -2684
		mu 0 4 990 1012 1036 1028
		f 4 -2686 -2667 2698 2699
		mu 0 4 1029 993 1015 1037
		f 4 2700 -2670 2701 2702
		mu 0 4 1030 995 1017 1038
		f 4 -2673 -2652 -2687 -2646
		mu 0 4 996 1003 1002 997
		f 4 -2674 -2656 -2685 -2659
		mu 0 4 1009 1007 1006 1010
		f 3 -2701 -2688 -2645
		mu 0 3 995 1030 989
		f 4 2703 2704 2705 2706
		mu 0 4 3416 3417 3418 3419
		f 4 2707 2708 2709 -2705
		mu 0 4 3420 3421 3422 3423
		f 4 2710 2711 2712 -2704
		mu 0 4 3424 3425 3426 3427
		f 4 -2708 -2713 2713 2714
		mu 0 4 3428 3429 3430 3431
		f 4 2715 2716 2717 -2712
		mu 0 4 3432 3433 3434 3435
		f 4 -2714 -2718 2718 2719
		mu 0 4 3436 3437 3438 3439
		f 4 2720 2721 2722 2723
		mu 0 4 3440 3441 3442 3443
		f 4 2724 -2707 2725 -2722
		mu 0 4 3444 3445 3446 3447
		f 4 2726 2727 2728 -2721
		mu 0 4 3448 3449 3450 3451
		f 4 -2725 -2729 2729 2730
		mu 0 4 3452 3453 3454 3455
		f 4 2731 2732 2733 -2728
		mu 0 4 3456 3457 3458 3459
		f 4 -2730 -2734 2734 2735
		mu 0 4 3460 3461 3462 3463
		f 4 2736 2737 2738 2739
		mu 0 4 3464 3465 3466 3467
		f 4 2740 -2724 2741 -2738
		mu 0 4 3468 3469 3470 3471
		f 4 2742 2743 2744 -2737
		mu 0 4 3472 3473 3474 3475
		f 4 -2741 -2745 2745 2746
		mu 0 4 3476 3477 3478 3479
		f 4 2747 2748 2749 -2744
		mu 0 4 3480 3481 3482 3483
		f 4 -2746 -2750 2750 2751
		mu 0 4 3484 3485 3486 3487
		f 4 2752 2753 2754 2755
		mu 0 4 3488 3489 3490 3491
		f 4 2756 -2740 2757 -2754
		mu 0 4 3492 3493 3494 3495
		f 4 2758 2759 2760 -2753
		mu 0 4 3496 3497 3498 3499
		f 4 -2757 -2761 2761 2762
		mu 0 4 3500 3501 3502 3503
		f 4 2763 2764 2765 -2760
		mu 0 4 3504 3505 3506 3507
		f 4 -2762 -2766 2766 2767
		mu 0 4 3508 3509 3510 3511
		f 4 2768 2769 2770 2771
		mu 0 4 3512 3513 3514 3515
		f 4 2772 -2756 2773 -2770
		mu 0 4 3516 3517 3518 3519
		f 4 2774 2775 2776 -2769
		mu 0 4 3520 3521 3522 3523
		f 4 -2773 -2777 2777 2778
		mu 0 4 3524 3525 3526 3527
		f 4 2779 2780 2781 -2776
		mu 0 4 3528 3529 3530 3531
		f 4 -2778 -2782 2782 2783
		mu 0 4 3532 3533 3534 3535
		f 4 2784 2785 2786 2787
		mu 0 4 3536 3537 3538 3539
		f 4 2788 -2772 2789 -2786
		mu 0 4 3540 3541 3542 3543
		f 4 2790 2791 2792 -2785
		mu 0 4 3544 3545 3546 3547
		f 4 -2789 -2793 2793 2794
		mu 0 4 3548 3549 3550 3551
		f 4 2795 2796 2797 -2792
		mu 0 4 3552 3553 3554 3555
		f 4 -2794 -2798 2798 2799
		mu 0 4 3556 3557 3558 3559
		f 4 2800 2801 2802 2803
		mu 0 4 3560 3561 3562 3563
		f 4 2804 2805 2806 -2802
		mu 0 4 3564 3565 3566 3567
		f 4 2807 2808 2809 -2801
		mu 0 4 3568 3569 3570 3571
		f 4 -2805 -2810 2810 2811
		mu 0 4 3572 3573 3574 3575
		f 4 2812 2813 2814 -2809
		mu 0 4 3576 3577 3578 3579
		f 4 -2811 -2815 2815 2816
		mu 0 4 3580 3581 3582 3583
		f 4 2817 2818 2819 2820
		mu 0 4 3584 3585 3586 3587
		f 4 2821 2822 2823 2824
		mu 0 4 3588 3589 3590 3591
		f 4 2825 2826 2827 2828
		mu 0 4 3592 3593 3594 3595
		f 4 2829 2830 -2819 2831
		mu 0 4 3596 3597 3598 3599
		f 4 2832 2833 2834 -2823
		mu 0 4 3600 3601 3602 3603
		f 4 2835 2836 2837 -2827
		mu 0 4 3604 3605 3606 3607
		f 4 2838 2839 2840 2841
		mu 0 4 3608 3609 3610 3611
		f 4 2842 2843 2844 2845
		mu 0 4 3612 3613 3614 3615
		f 4 2846 2847 2848 2849
		mu 0 4 3616 3617 3618 3619
		f 4 2850 2851 2852 2853
		mu 0 4 3620 3621 3622 3623
		f 4 2854 2855 -2830 2856
		mu 0 4 3624 3625 3626 3627
		f 4 2857 2858 2859 -2834
		mu 0 4 3628 3629 3630 3631
		f 4 2860 2861 2862 -2837
		mu 0 4 3632 3633 3634 3635
		f 4 2863 2864 -2838 2865
		mu 0 4 3636 3637 3638 3639
		f 4 2866 -2835 2867 2868
		mu 0 4 3640 3641 3642 3643
		f 4 -2849 2869 -2818 2870
		mu 0 4 3644 3645 3646 3647
		f 4 -2845 2871 -2822 2872
		mu 0 4 3648 3649 3650 3651
		f 4 2873 -2682 2874 -2826
		mu 0 4 3652 1027 1026 3653
		f 4 -2870 2875 2876 -2832
		mu 0 4 3654 3655 3656 3657
		f 4 2877 2878 -2833 -2872
		mu 0 4 3658 3659 3660 3661
		f 4 -2875 -2690 2879 2880
		mu 0 4 3662 1026 1031 3663
		f 4 2881 2882 -2839 -2866
		mu 0 4 3664 3665 3666 3667
		f 4 -2828 -2865 -2843 2883
		mu 0 4 3668 3669 3670 3671
		f 4 -2824 -2867 -2847 2884
		mu 0 4 3672 3673 3674 3675
		f 4 -2868 2885 2886 -2854
		mu 0 4 3676 3677 3678 3679
		f 4 -2877 2887 2888 -2857
		mu 0 4 3680 3681 3682 3683
		f 4 2889 2890 -2858 -2879
		mu 0 4 3684 3685 3686 3687
		f 4 2891 2892 -2861 2893
		mu 0 4 3688 3689 3690 3691
		f 4 -2842 -2878 -2844 -2864
		mu 0 4 3692 3693 3694 3695
		f 4 -2853 -2876 -2848 -2869
		mu 0 4 3696 3697 3698 3699
		f 3 -2836 -2881 -2894
		mu 0 3 3700 3701 3702
		f 4 2894 2895 2896 2897
		mu 0 4 1039 1040 1041 1042
		f 4 2898 2899 2900 2901
		mu 0 4 1043 1044 1045 1046
		f 4 2902 2903 2904 2905
		mu 0 4 1047 1048 1049 1050
		f 4 2906 2907 2908 2909
		mu 0 4 1050 1051 1052 1053
		f 4 -2906 -2910 2910 2911
		mu 0 4 1047 1050 1053 1054
		f 4 2912 -2904 2913 2914
		mu 0 4 1041 1049 1048 1055
		f 4 -2914 -2903 2915 2916
		mu 0 4 1055 1048 1047 1044
		f 4 -2913 -2896 2917 2918
		mu 0 4 1049 1041 1040 1056
		f 4 -2905 -2919 2919 -2907
		mu 0 4 1050 1049 1056 1051
		f 4 2920 2921 2922 -2915
		mu 0 4 1055 1057 1058 1041
		f 4 2923 2924 -2921 2925
		mu 0 4 1043 1059 1057 1055
		f 4 2926 2927 -2924 -2902
		mu 0 4 1046 1060 1059 1043
		f 4 2928 2929 2930 -2927
		mu 0 4 1046 1061 1062 1060
		f 4 2931 2932 2933 2934
		mu 0 4 1063 1064 1065 1066
		f 4 2935 2936 2937 2938
		mu 0 4 1067 1068 1069 1070
		f 4 2939 2940 -2936 2941
		mu 0 4 1071 1072 1068 1067
		f 4 2942 2943 2944 2945
		mu 0 4 1073 1074 1075 1076
		f 4 -2939 2946 2947 2948
		mu 0 4 1067 1070 1077 1078
		f 4 2949 2950 -2934 2951
		mu 0 4 1079 1080 1066 1065
		f 4 2952 2953 2954 2955
		mu 0 4 1081 1082 1083 1084
		f 4 2956 2957 2958 2959
		mu 0 4 1085 1086 1073 1087
		f 4 2960 2961 2962 2963
		mu 0 4 1088 1089 1090 1091
		f 4 -2945 2964 2965 2966
		mu 0 4 1076 1075 1092 1093
		f 4 2967 2968 2969 2970
		mu 0 4 1094 1095 1071 1096
		f 4 2971 2972 2973 2974
		mu 0 4 1097 1098 1099 1100
		f 4 2975 2976 2977 2978
		mu 0 4 1101 1102 1103 1104
		f 4 2979 2980 2981 2982
		mu 0 4 1105 1106 1107 1072
		f 4 2983 2984 2985 2986
		mu 0 4 1108 1109 1110 1111
		f 4 2987 2988 2989 2990
		mu 0 4 1112 1113 1114 1115
		f 4 -2990 2991 2992 2993
		mu 0 4 1115 1114 1116 1117
		f 4 2994 2995 2996 2997
		mu 0 4 1118 1119 1120 1121
		f 4 2998 2999 3000 3001
		mu 0 4 1122 1123 1124 1125
		f 4 3002 3003 -3002 3004
		mu 0 4 1126 1127 1122 1125
		f 4 3005 3006 -2988 3007
		mu 0 4 1128 1129 1113 1112
		f 4 3008 3009 3010 3011
		mu 0 4 1130 1131 1086 1132
		f 4 3012 3013 3014 3015
		mu 0 4 1133 1134 1135 1136
		f 4 3016 -2943 3017 3018
		mu 0 4 1137 1074 1073 1131
		f 4 -3019 -3009 3019 3020
		mu 0 4 1137 1131 1130 1138
		f 4 3021 3022 -3013 3023
		mu 0 4 1139 1140 1134 1133
		f 4 -2933 3024 3025 3026
		mu 0 4 1065 1064 1141 1142
		f 4 -2962 3027 3028 3029
		mu 0 4 1090 1089 1143 1144
		f 4 3030 3031 3032 -3003
		mu 0 4 1126 1103 1145 1127
		f 4 3033 3034 3035 -3011
		mu 0 4 1086 1146 1147 1132
		f 4 3036 3037 -3029 3038
		mu 0 4 1148 1146 1144 1143
		f 4 3039 -3035 3040 -2979
		mu 0 4 1104 1147 1146 1101
		f 4 3041 3042 -3040 3043
		mu 0 4 1149 1140 1147 1104
		f 4 3044 -3023 -3042 3045
		mu 0 4 1150 1134 1140 1149
		f 4 3046 -3014 -3045 3047
		mu 0 4 1151 1135 1134 1150
		f 4 3048 3049 -2940 -2969
		mu 0 4 1095 1152 1072 1071
		f 4 -3036 -3043 -3022 3050
		mu 0 4 1132 1147 1140 1139
		f 4 -2957 3051 -3038 -3034
		mu 0 4 1086 1085 1144 1146
		f 4 -2977 3052 3053 -3032
		mu 0 4 1103 1102 1153 1145
		f 4 3054 -2941 -2982 3055
		mu 0 4 1154 1068 1072 1107
		f 4 3056 -2937 -3055 3057
		mu 0 4 1155 1069 1068 1154
		f 4 3058 -3044 -2978 -3031
		mu 0 4 1126 1149 1104 1103
		f 4 3059 -3046 -3059 -3005
		mu 0 4 1125 1150 1149 1126
		f 4 3060 -3048 -3060 -3001
		mu 0 4 1124 1151 1150 1125
		f 4 3061 -2968 3062 -3015
		mu 0 4 1135 1095 1094 1136
		f 4 -3049 -3062 -3047 3063
		mu 0 4 1152 1095 1135 1151
		f 4 3064 -3064 -3061 3065
		mu 0 4 1105 1152 1151 1124
		f 4 -2980 -3066 -3000 3066
		mu 0 4 1106 1105 1124 1123
		f 4 3067 -3026 3068 -2995
		mu 0 4 1118 1142 1141 1119
		f 4 3069 3070 -3053 3071
		mu 0 4 1156 1157 1153 1102
		f 4 -3072 -2976 3072 3073
		mu 0 4 1156 1102 1101 1081
		f 4 -2953 -3073 3074 3075
		mu 0 4 1082 1081 1101 1148
		f 4 3076 3077 -3076 -3039
		mu 0 4 1143 1158 1082 1148
		f 4 3078 -3077 -3028 3079
		mu 0 4 1079 1158 1143 1089
		f 4 -3080 -2961 3080 -2950
		mu 0 4 1079 1089 1088 1080
		f 4 3081 3082 3083 -2985
		mu 0 4 1109 1159 1160 1110
		f 4 3084 3085 -3084 3086
		mu 0 4 1161 1162 1110 1160
		f 4 3087 3088 3089 -2935
		mu 0 4 1066 1108 1163 1063
		f 4 3090 -2984 -3088 -2951
		mu 0 4 1080 1109 1108 1066
		f 4 3091 -3082 -3091 -3081
		mu 0 4 1088 1159 1109 1080
		f 4 -3027 3092 -3079 -2952
		mu 0 4 1065 1142 1158 1079
		f 4 3093 -3093 -3068 3094
		mu 0 4 1083 1158 1142 1118
		f 4 3095 -2955 -3095 -2998
		mu 0 4 1121 1084 1083 1118
		f 4 3096 3097 -2997 3098
		mu 0 4 1164 1157 1121 1120
		f 4 3099 3100 3101 -2974
		mu 0 4 1099 1165 1166 1100
		f 4 3102 -3030 3103 -3100
		mu 0 4 1099 1090 1144 1165
		f 4 3104 3105 3106 3107
		mu 0 4 1167 1168 1166 1087
		f 4 -3087 3108 3109 3110
		mu 0 4 1161 1160 1091 1098
		f 4 -2973 -3110 -2963 -3103
		mu 0 4 1099 1098 1091 1090
		f 4 -2928 3111 -2991 3112
		mu 0 4 1059 1060 1112 1115
		f 4 -2931 3113 -3008 -3112
		mu 0 4 1060 1062 1128 1112
		f 4 -3012 -3051 -3024 3114
		mu 0 4 1130 1132 1139 1133
		f 4 -3020 -3115 -3016 3115
		mu 0 4 1138 1130 1133 1136
		f 4 -3021 3116 -2971 3117
		mu 0 4 1137 1138 1094 1096
		f 4 3118 -2944 3119 -2948
		mu 0 4 1077 1075 1074 1078
		f 3 -2966 -2897 -2923
		mu 0 3 1058 1042 1041
		f 3 -2917 -2899 -2926
		mu 0 3 1055 1044 1043
		f 3 3120 -3102 -3106
		mu 0 3 1168 1100 1166
		f 3 3121 3122 -3101
		mu 0 3 1165 1085 1166
		f 3 3123 3124 -2898
		mu 0 3 1092 1070 1169
		f 3 -2956 3125 -3074
		mu 0 3 1081 1084 1156
		f 3 3126 -2986 -3086
		mu 0 3 1162 1111 1110
		f 3 -2987 3127 -3089
		mu 0 3 1108 1111 1163
		f 3 -3122 -3104 -3052
		mu 0 3 1085 1165 1144
		f 3 3128 3129 -3125
		mu 0 3 1070 1170 1169
		f 3 -3108 3130 3131
		mu 0 3 1167 1087 1076
		f 3 -2967 3132 -3132
		mu 0 3 1076 1093 1167
		f 3 -2975 3133 3134
		mu 0 3 1097 1100 1171
		f 3 -3111 -2972 3135
		mu 0 3 1161 1098 1097
		f 3 -3131 -2959 -2946
		mu 0 3 1076 1087 1073
		f 3 -2965 -3119 3136
		mu 0 3 1092 1075 1077
		f 3 -3124 -3137 -2947
		mu 0 3 1070 1092 1077
		f 3 -3136 3137 -3085
		mu 0 3 1161 1097 1162
		f 3 3138 3139 -3134
		mu 0 3 1100 1172 1171
		f 3 -3010 -3018 -2958
		mu 0 3 1086 1131 1073
		f 3 -3105 3140 -2994
		mu 0 3 1117 1173 1115
		f 3 3141 -2942 -2949
		mu 0 3 1078 1071 1067
		f 3 -3129 -2938 3142
		mu 0 3 1170 1070 1069
		f 3 -2964 3143 -3092
		mu 0 3 1088 1091 1159
		f 3 -3057 3144 -3143
		mu 0 3 1069 1155 1170
		f 3 -3075 -3041 -3037
		mu 0 3 1148 1101 1146
		f 3 -2983 -3050 -3065
		mu 0 3 1105 1072 1152
		f 3 -2954 -3078 -3094
		mu 0 3 1083 1082 1158
		f 3 -3138 -3135 3145
		mu 0 3 1162 1097 1171
		f 3 3146 -3070 -3126
		mu 0 3 1084 1157 1156
		f 3 -3097 3147 -3071
		mu 0 3 1157 1164 1153
		f 3 -3096 -3098 -3147
		mu 0 3 1084 1121 1157
		f 3 3148 -2925 -3113
		mu 0 3 1115 1057 1059
		f 3 3149 -3133 -2922
		mu 0 3 1057 1173 1058
		f 3 -3109 -3083 -3144
		mu 0 3 1091 1160 1159
		f 3 -3142 3150 -2970
		mu 0 3 1071 1078 1096
		f 3 -3063 -3117 -3116
		mu 0 3 1136 1094 1138
		f 3 -3118 -3151 3151
		mu 0 3 1137 1096 1078
		f 3 -3152 -3120 -3017
		mu 0 3 1137 1078 1074
		f 3 -3141 -3150 -3149
		mu 0 3 1115 1173 1057
		f 3 -2993 -3139 -3121
		mu 0 3 1168 1172 1100
		f 3 -2960 -3107 -3123
		mu 0 3 1085 1087 1166
		f 4 3152 3153 3154 -2895
		mu 0 4 1039 3703 3704 1040
		f 4 3155 3156 3157 3158
		mu 0 4 3705 3706 3707 3708
		f 4 3159 3160 3161 3162
		mu 0 4 3709 3710 3711 3712
		f 4 3163 3164 -2908 3165
		mu 0 4 3713 3714 1052 1051
		f 4 3166 3167 -3164 -3160
		mu 0 4 3715 3716 3717 3718
		f 4 3168 3169 -3162 3170
		mu 0 4 3719 3720 3721 3722
		f 4 3171 3172 -3163 -3170
		mu 0 4 3723 3724 3725 3726
		f 4 3173 -2918 -3155 -3171
		mu 0 4 3727 1056 1040 3728
		f 4 -3166 -2920 -3174 -3161
		mu 0 4 3729 1051 1056 3730
		f 4 -3169 3174 3175 3176
		mu 0 4 3731 3732 3733 3734
		f 4 3177 -3177 3178 3179
		mu 0 4 3735 3736 3737 3738
		f 4 -3156 -3180 3180 3181
		mu 0 4 3739 3740 3741 3742
		f 4 -3182 3182 -2930 3183
		mu 0 4 3743 3744 1062 1061
		f 4 3184 3185 3186 -2932
		mu 0 4 1063 3745 3746 1064
		f 4 3187 3188 3189 3190
		mu 0 4 3747 3748 3749 3750
		f 4 3191 -3191 3192 3193
		mu 0 4 3751 3752 3753 3754
		f 4 3194 3195 3196 3197
		mu 0 4 3755 3756 3757 3758
		f 4 3198 3199 3200 -3188
		mu 0 4 3759 3760 3761 3762;
	setAttr ".fc[1500:1705]"
		f 4 3201 -3186 3202 3203
		mu 0 4 3763 3764 3765 3766
		f 4 3204 3205 3206 3207
		mu 0 4 3767 3768 3769 3770
		f 4 3208 3209 3210 3211
		mu 0 4 3771 3772 3773 3774
		f 4 3212 3213 3214 3215
		mu 0 4 3775 3776 3777 3778
		f 4 3216 3217 3218 -3196
		mu 0 4 3779 3780 3781 3782
		f 4 3219 3220 3221 3222
		mu 0 4 3783 3784 3785 3786
		f 4 3223 3224 3225 3226
		mu 0 4 3787 3788 3789 3790
		f 4 3227 3228 3229 3230
		mu 0 4 3791 3792 3793 3794
		f 4 3231 3232 -2981 3233
		mu 0 4 3795 3796 1107 1106
		f 4 3234 3235 3236 3237
		mu 0 4 3797 3798 3799 3800
		f 4 3238 3239 3240 3241
		mu 0 4 3801 3802 3803 3804
		f 4 3242 3243 3244 -3240
		mu 0 4 3805 3806 3807 3808
		f 4 3245 3246 -2996 3247
		mu 0 4 3809 3810 1120 1119
		f 4 3248 3249 3250 -2999
		mu 0 4 1122 3811 3812 1123
		f 4 3251 -3249 -3004 3252
		mu 0 4 3813 3814 1122 1127
		f 4 3253 -3242 3254 -3006
		mu 0 4 1128 3815 3816 1129
		f 4 3255 3256 3257 3258
		mu 0 4 3817 3818 3819 3820
		f 4 3259 3260 3261 3262
		mu 0 4 3821 3822 3823 3824
		f 4 3263 3264 -3198 3265
		mu 0 4 3825 3826 3827 3828
		f 4 3266 3267 -3259 -3264
		mu 0 4 3829 3830 3831 3832
		f 4 3268 -3263 3269 3270
		mu 0 4 3833 3834 3835 3836
		f 4 3271 3272 -3025 -3187
		mu 0 4 3837 3838 1141 1064
		f 4 3273 3274 3275 -3215
		mu 0 4 3839 3840 3841 3842
		f 4 -3253 -3033 3276 3277
		mu 0 4 3843 1127 1145 3844
		f 4 -3257 3278 3279 3280
		mu 0 4 3845 3846 3847 3848
		f 4 3281 -3275 3282 3283
		mu 0 4 3849 3850 3851 3852
		f 4 -3228 3284 -3280 3285
		mu 0 4 3853 3854 3855 3856
		f 4 3286 -3286 3287 3288
		mu 0 4 3857 3858 3859 3860
		f 4 3289 -3289 -3270 3290
		mu 0 4 3861 3862 3863 3864
		f 4 3291 -3291 -3262 3292
		mu 0 4 3865 3866 3867 3868
		f 4 -3222 -3194 3293 3294
		mu 0 4 3869 3870 3871 3872
		f 4 3295 -3271 -3288 -3279
		mu 0 4 3873 3874 3875 3876
		f 4 -3281 -3283 3296 -3212
		mu 0 4 3877 3878 3879 3880
		f 4 -3277 -3054 3297 -3230
		mu 0 4 3881 1145 1153 3882
		f 4 -3056 -3233 -3193 3298
		mu 0 4 1154 1107 3883 3884
		f 4 -3058 -3299 -3190 3299
		mu 0 4 1155 1154 3885 3886
		f 4 -3278 -3229 -3287 3300
		mu 0 4 3887 3888 3889 3890
		f 4 -3252 -3301 -3290 3301
		mu 0 4 3891 3892 3893 3894
		f 4 -3250 -3302 -3292 3302
		mu 0 4 3895 3896 3897 3898
		f 4 -3261 3303 -3223 3304
		mu 0 4 3899 3900 3901 3902
		f 4 3305 -3293 -3305 -3295
		mu 0 4 3903 3904 3905 3906
		f 4 3306 -3303 -3306 3307
		mu 0 4 3907 3908 3909 3910
		f 4 -3067 -3251 -3307 -3234
		mu 0 4 1106 1123 3911 3912
		f 4 -3248 -3069 -3273 3308
		mu 0 4 3913 1119 1141 3914
		f 4 3309 -3298 3310 3311
		mu 0 4 3915 3916 1153 3917
		f 4 3312 3313 -3231 -3310
		mu 0 4 3918 3919 3920 3921
		f 4 3314 3315 -3314 -3208
		mu 0 4 3922 3923 3924 3925
		f 4 -3282 -3315 3316 3317
		mu 0 4 3926 3927 3928 3929
		f 4 3318 -3276 -3318 3319
		mu 0 4 3930 3931 3932 3933
		f 4 -3204 3320 -3216 -3319
		mu 0 4 3934 3935 3936 3937
		f 4 -3237 3321 3322 3323
		mu 0 4 3938 3939 3940 3941
		f 4 3324 -3322 3325 3326
		mu 0 4 3942 3943 3944 3945
		f 4 -3185 -3090 3327 3328
		mu 0 4 3946 1063 1163 3947
		f 4 -3203 -3329 -3238 3329
		mu 0 4 3948 3949 3950 3951
		f 4 -3321 -3330 -3324 3330
		mu 0 4 3952 3953 3954 3955
		f 4 -3202 -3320 3331 -3272
		mu 0 4 3956 3957 3958 3959
		f 4 3332 -3309 -3332 3333
		mu 0 4 3960 3961 3962 3963
		f 4 -3246 -3333 -3206 3334
		mu 0 4 3964 3965 3966 3967
		f 4 -3099 -3247 3335 3336
		mu 0 4 1164 1120 3968 3969
		f 4 -3225 3337 3338 3339
		mu 0 4 3970 3971 3972 3973
		f 4 -3340 3340 -3274 3341
		mu 0 4 3974 3975 3976 3977
		f 4 3342 3343 3344 3345
		mu 0 4 3978 3979 3980 3981
		f 4 3346 3347 3348 -3325
		mu 0 4 3982 3983 3984 3985
		f 4 -3342 -3214 -3348 -3226
		mu 0 4 3986 3987 3988 3989
		f 4 3349 -3239 3350 -3181
		mu 0 4 3990 3991 3992 3993
		f 4 -3351 -3254 -3114 -3183
		mu 0 4 3994 3995 1128 1062
		f 4 3351 -3269 -3296 -3256
		mu 0 4 3996 3997 3998 3999
		f 4 3352 -3260 -3352 -3268
		mu 0 4 4000 4001 4002 4003
		f 4 3353 -3220 3354 -3267
		mu 0 4 4004 4005 4006 4007
		f 4 -3200 3355 -3197 3356
		mu 0 4 4008 4009 4010 4011
		f 3 -3175 -3154 -3218
		mu 0 3 4012 4013 4014
		f 3 -3178 -3159 -3172
		mu 0 3 4015 4016 4017
		f 3 -3345 -3338 3357
		mu 0 3 4018 4019 4020
		f 3 -3339 3358 3359
		mu 0 3 4021 4022 4023
		f 3 -3153 3360 3361
		mu 0 3 4024 1169 4025
		f 3 -3313 3362 -3205
		mu 0 3 4026 4027 4028
		f 3 -3326 -3236 3363
		mu 0 3 4029 4030 4031
		f 3 -3328 3364 -3235
		mu 0 3 4032 1163 4033
		f 3 -3297 -3341 -3360
		mu 0 3 4034 4035 4036
		f 3 -3361 -3130 3365
		mu 0 3 4037 1169 1170
		f 3 3366 3367 -3343
		mu 0 3 4038 4039 4040
		f 3 -3367 3368 -3217
		mu 0 3 4041 4042 4043
		f 3 3369 3370 -3224
		mu 0 3 4044 4045 4046
		f 3 3371 -3227 -3347
		mu 0 3 4047 4048 4049
		f 3 -3195 -3210 -3368
		mu 0 3 4050 4051 4052
		f 3 3372 -3357 -3219
		mu 0 3 4053 4054 4055
		f 3 -3201 -3373 -3362
		mu 0 3 4056 4057 4058
		f 3 -3327 3373 -3372
		mu 0 3 4059 4060 4061
		f 3 -3371 3374 3375
		mu 0 3 4062 4063 4064
		f 3 -3211 -3265 -3258
		mu 0 3 4065 4066 4067
		f 3 -3243 3376 -3346
		mu 0 3 4068 4069 4070
		f 3 -3199 -3192 3377
		mu 0 3 4071 4072 4073
		f 3 3378 -3189 -3366
		mu 0 3 1170 4074 4075
		f 3 -3331 3379 -3213
		mu 0 3 4076 4077 4078
		f 3 -3379 -3145 -3300
		mu 0 3 4079 1170 1155
		f 3 -3284 -3285 -3316
		mu 0 3 4080 4081 4082
		f 3 -3308 -3294 -3232
		mu 0 3 4083 4084 4085
		f 3 -3334 -3317 -3207
		mu 0 3 4086 4087 4088
		f 3 3380 -3370 -3374
		mu 0 3 4089 4090 4091
		f 3 -3363 -3312 3381
		mu 0 3 4092 4093 4094
		f 3 -3311 -3148 -3337
		mu 0 3 4095 1153 1164
		f 3 -3382 -3336 -3335
		mu 0 3 4096 4097 4098
		f 3 -3350 -3179 3382
		mu 0 3 4099 4100 4101
		f 3 -3176 -3369 3383
		mu 0 3 4102 4103 4104
		f 3 -3380 -3323 -3349
		mu 0 3 4105 4106 4107
		f 3 -3221 3384 -3378
		mu 0 3 4108 4109 4110
		f 3 -3353 -3355 -3304
		mu 0 3 4111 4112 4113
		f 3 3385 -3385 -3354
		mu 0 3 4114 4115 4116
		f 3 -3266 -3356 -3386
		mu 0 3 4117 4118 4119
		f 3 -3383 -3384 -3377
		mu 0 3 4120 4121 4122
		f 3 -3358 -3376 -3244
		mu 0 3 4123 4124 4125
		f 3 -3359 -3344 -3209
		mu 0 3 4126 4127 4128
		f 4 3386 3387 3388 3389
		mu 0 4 1174 1175 1176 1177
		f 4 3390 3391 -3387 3392
		mu 0 4 1178 1179 1175 1174
		f 4 3393 3394 3395 -3389
		mu 0 4 1176 1180 1181 1177
		f 4 3396 3397 3398 3399
		mu 0 4 1182 1183 1184 1185
		f 4 -3400 3400 3401 3402
		mu 0 4 1182 1185 1186 1187
		f 4 3403 -3391 3404 -3398
		mu 0 4 1183 1179 1178 1184
		f 4 3405 3406 3407 3408
		mu 0 4 1188 1189 1190 1191
		f 4 3409 -3409 3410 3411
		mu 0 4 1192 1188 1191 1193
		f 4 3412 3413 3414 3415
		mu 0 4 1194 1195 1196 1197
		f 4 3416 -3402 3417 3418
		mu 0 4 1198 1199 1200 1201
		f 4 -3419 3419 -3412 3420
		mu 0 4 1198 1201 1192 1193
		f 4 -3407 3421 3422 3423
		mu 0 4 1190 1189 1202 1203
		f 4 3424 -3413 3425 -3423
		mu 0 4 1202 1195 1194 1203
		f 4 3426 -3415 3427 -3395
		mu 0 4 1180 1197 1196 1181
		f 4 3428 3429 3430 3431
		mu 0 4 1204 1205 1206 1207
		f 4 3432 -3432 3433 3434
		mu 0 4 1208 1204 1207 1209
		f 4 3435 3436 -3431 3437
		mu 0 4 1210 1211 1207 1206
		f 4 3438 -3438 -3430 3439
		mu 0 4 1212 1210 1206 1205
		f 4 3440 3441 -3434 -3437
		mu 0 4 1211 1213 1209 1207
		f 4 3442 -3435 -3442 3443
		mu 0 4 1214 1208 1209 1213
		f 4 3444 3445 3446 -3429
		mu 0 4 1204 4129 4130 1205
		f 4 3447 3448 -3445 -3433
		mu 0 4 1208 4131 4132 1204
		f 4 3449 -3446 3450 3451
		mu 0 4 4133 4134 4135 4136
		f 4 -3440 -3447 -3450 3452
		mu 0 4 1212 1205 4137 4138
		f 4 -3451 -3449 3453 3454
		mu 0 4 4139 4140 4141 4142
		f 4 3455 -3454 -3448 -3443
		mu 0 4 1214 4143 4144 1208
		f 4 3456 3457 3458 3459
		mu 0 4 1215 1216 1217 1218
		f 4 -3457 3460 3461 3462
		mu 0 4 1216 1215 1219 1220
		f 4 -3462 3463 3464 3465
		mu 0 4 1220 1219 1221 1222
		f 4 3466 3467 3468 3469
		mu 0 4 1223 1224 1225 1226
		f 4 3470 3471 3472 -3470
		mu 0 4 1226 1227 1228 1223
		f 4 3473 3474 3475 -3472
		mu 0 4 1227 1229 1230 1228
		f 4 3476 3477 3478 3479
		mu 0 4 1231 1232 1233 1234
		f 4 -3480 3480 3481 3482
		mu 0 4 1231 1234 1235 1236
		f 4 3483 3484 3485 3486
		mu 0 4 1237 1238 1239 1240
		f 4 3487 -3479 3488 3489
		mu 0 4 1238 1234 1233 1241
		f 4 3490 3491 3492 3493
		mu 0 4 1242 1243 1244 1245
		f 4 -3489 3494 3495 3496
		mu 0 4 1241 1233 1246 1247
		f 4 3497 3498 3499 -3491
		mu 0 4 1242 1246 1232 1243
		f 4 3500 3501 3502 3503
		mu 0 4 1248 1249 1250 1251
		f 4 -3500 -3477 3504 3505
		mu 0 4 1243 1232 1231 1252
		f 4 -3505 -3483 3506 3507
		mu 0 4 1252 1231 1236 1253
		f 4 -3503 3508 -3507 3509
		mu 0 4 1251 1250 1253 1236
		f 4 -3496 -3498 3510 3511
		mu 0 4 1247 1246 1242 1254
		f 4 3512 3513 3514 3515
		mu 0 4 1248 1235 1237 1255
		f 4 -3501 -3516 3516 3517
		mu 0 4 1249 1248 1255 1256
		f 4 3518 -3518 3519 3520
		mu 0 4 1257 1249 1256 1258
		f 4 -3484 -3514 -3481 -3488
		mu 0 4 1238 1237 1235 1234
		f 4 -3485 -3490 3521 3522
		mu 0 4 1239 1238 1241 1259
		f 4 -3522 -3497 3523 3524
		mu 0 4 1259 1241 1247 1260
		f 4 -3524 -3512 3525 3526
		mu 0 4 1260 1247 1254 1261
		f 4 -3515 -3487 3527 3528
		mu 0 4 1255 1237 1240 1262
		f 4 -3517 -3529 3529 3530
		mu 0 4 1256 1255 1262 1263
		f 4 -3520 -3531 3531 3532
		mu 0 4 1258 1256 1263 1264
		f 4 -3519 3533 3534 -3502
		mu 0 4 1249 1257 1265 1250
		f 4 3535 3536 -3508 3537
		mu 0 4 1266 1267 1252 1253
		f 4 -3535 3538 -3538 -3509
		mu 0 4 1250 1265 1266 1253
		f 4 3539 -3492 -3506 -3537
		mu 0 4 1267 1244 1243 1252
		f 4 3540 3541 -3511 -3494
		mu 0 4 1245 1268 1254 1242
		f 4 3542 3543 -3526 -3542
		mu 0 4 1268 1269 1261 1254
		f 3 -3478 -3499 -3495
		mu 0 3 1233 1232 1246
		f 3 -3504 3544 -3513
		mu 0 3 1248 1251 1235
		f 3 -3510 -3482 -3545
		mu 0 3 1251 1236 1235
		f 4 3545 3546 3547 3548
		mu 0 4 4145 4146 4147 4148
		f 4 3549 3550 3551 -3546
		mu 0 4 4149 4150 4151 4152
		f 4 3552 3553 3554 3555
		mu 0 4 4153 4154 4155 4156
		f 4 3556 3557 -3547 3558
		mu 0 4 4157 4158 4159 4160
		f 4 3559 -3493 3560 3561
		mu 0 4 4161 1245 1244 4162
		f 4 3562 3563 3564 -3558
		mu 0 4 4163 4164 4165 4166
		f 4 -3562 3565 3566 3567
		mu 0 4 4167 4168 4169 4170
		f 4 3568 3569 3570 3571
		mu 0 4 4171 4172 4173 4174
		f 4 3572 3573 -3549 -3566
		mu 0 4 4175 4176 4177 4178
		f 4 3574 3575 -3550 -3574
		mu 0 4 4179 4180 4181 4182
		f 4 3576 -3576 3577 -3570
		mu 0 4 4183 4184 4185 4186
		f 4 3578 3579 -3568 -3564
		mu 0 4 4187 4188 4189 4190
		f 4 3580 3581 3582 3583
		mu 0 4 4191 4192 4193 4194
		f 4 3584 3585 -3581 -3572
		mu 0 4 4195 4196 4197 4198
		f 4 -3521 3586 -3585 3587
		mu 0 4 1257 1258 4199 4200
		f 4 -3559 -3552 -3583 -3556
		mu 0 4 4201 4202 4203 4204
		f 4 3588 3589 -3557 -3555
		mu 0 4 4205 4206 4207 4208
		f 4 3590 3591 -3563 -3590
		mu 0 4 4209 4210 4211 4212
		f 4 3592 3593 -3579 -3592
		mu 0 4 4213 4214 4215 4216
		f 4 3594 3595 -3553 -3582
		mu 0 4 4217 4218 4219 4220
		f 4 3596 3597 -3595 -3586
		mu 0 4 4221 4222 4223 4224
		f 4 -3533 3598 -3597 -3587
		mu 0 4 1258 1264 4225 4226
		f 4 -3571 3599 -3534 -3588
		mu 0 4 4227 4228 1265 1257
		f 4 3600 -3575 3601 -3536
		mu 0 4 1266 4229 4230 1267
		f 4 -3578 -3601 -3539 -3600
		mu 0 4 4231 4232 1266 1265
		f 4 -3602 -3573 -3561 -3540
		mu 0 4 1267 4233 4234 1244
		f 4 -3560 -3580 3602 -3541
		mu 0 4 1245 4235 4236 1268
		f 4 -3603 -3594 3603 -3543
		mu 0 4 1268 4237 4238 1269
		f 3 -3565 -3567 -3548
		mu 0 3 4239 4240 4241
		f 3 -3584 3604 -3569
		mu 0 3 4242 4243 4244
		f 3 -3605 -3551 -3577
		mu 0 3 4245 4246 4247;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AF81A13E-466D-8AF2-B8E5-EDA7C0720D3E";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0C5B6EF0-45B4-E92C-C9F1-FD81E92BFF38";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "857628EC-4A25-2A42-AD3C-999A402EB170";
createNode displayLayerManager -n "layerManager";
	rename -uid "714842B2-4F53-47C3-EC0E-0B90A5F37342";
createNode displayLayer -n "defaultLayer";
	rename -uid "32858AEC-43F4-DC61-9B31-A2B79B2EF347";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "233CED44-4E9E-22D8-8549-31830A0AE988";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "BF7752FC-4A3E-0BBB-3792-E59995644658";
	setAttr ".g" yes;
createNode lambert -n "lambert2";
	rename -uid "BBBA1538-443D-234D-CC00-FCACBD2C7740";
createNode shadingEngine -n "lambert2SG";
	rename -uid "FC44CACB-4559-684B-25D2-9C99D6A803BF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "30C21016-49E1-C17F-53D5-D99C45844327";
createNode file -n "file1";
	rename -uid "68DB8E2A-4248-3740-CB7C-29878C80ED30";
	setAttr ".ftn" -type "string" "C:/Users/jas1/Desktop/NPC/OPEN FOLDER/cadnav.com_model/Male Pirate Character/ceshi.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "4897401A-47C2-8BF4-FE25-03B65C085D4F";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "3686C5B1-47F6-D720-7871-5AA092134208";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 54.285713195800781;
	setAttr ".tgi[0].ni[0].y" 150;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 361.42855834960937;
	setAttr ".tgi[0].ni[1].y" 127.14286041259766;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -252.85714721679687;
	setAttr ".tgi[0].ni[2].y" 150;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -560;
	setAttr ".tgi[0].ni[3].y" 127.14286041259766;
	setAttr ".tgi[0].ni[3].nvs" 1923;
createNode polyUnite -n "polyUnite1";
	rename -uid "6C6A5648-4020-6A86-384A-A284F743E079";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "67C59E90-4430-61D5-6709-14B39504A7B7";
	setAttr ".ics" -type "componentList" 1 "vtx[335]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "11F765D2-4FAF-D6DA-66F7-18943D9FE339";
	setAttr ".ics" -type "componentList" 4 "vtx[0]" "vtx[335]" "vtx[418]" "vtx[720]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "450FE704-4124-B8EE-77F0-2C983591F1B9";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[1]" -type "float3" 4.4447885 -1.3467407 0.97551054 ;
	setAttr ".tk[6]" -type "float3" -0.46159172 1.2675476 -2.5374708 ;
	setAttr ".tk[477]" -type "float3" 0.33291119 0 0 ;
	setAttr ".tk[484]" -type "float3" 0.33291119 0 0 ;
createNode polySplit -n "polySplit1";
	rename -uid "CAD42853-4575-599C-E696-2693C6B77AE4";
	setAttr -s 3 ".e[0:2]"  1 0.50525701 0;
	setAttr -s 3 ".d[0:2]"  -2147483534 -2147483535 -2147483613;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "45566B8B-4CB6-5F76-446E-1C8125273AFE";
	setAttr -s 4 ".e[0:3]"  1 0.56436801 0.57659101 1;
	setAttr -s 4 ".d[0:3]"  -2147483638 -2147483513 -2147483528 -2147483530;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "6BA1423E-4854-51D4-FEEF-2DB8780097D9";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[11]" -type "float3" 1.303573 0 0 ;
	setAttr ".tk[1917]" -type "float3" 0.94625837 0 0 ;
	setAttr ".tk[1918]" -type "float3" 0.4292424 0 0 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "41229B29-488A-80B5-26F8-2FABEA7C7DDC";
	setAttr ".dc" -type "componentList" 1 "e[119]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "4BCB4E0F-48FA-A527-2E27-35B3EEB87D4E";
	setAttr ".dc" -type "componentList" 1 "e[114]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "36D2CE36-427B-6909-9F8F-10BA4AA49B7E";
	setAttr ".dc" -type "componentList" 1 "e[651]";
createNode polySplit -n "polySplit3";
	rename -uid "95DE59F5-4735-8325-D646-6C9460011C0B";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483643 -2147483523;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "7F3B3A7E-4005-95AD-A76C-64B659E54C6E";
	setAttr ".dc" -type "componentList" 1 "e[5]";
createNode polyTweak -n "polyTweak3";
	rename -uid "8DA9FAC3-49F3-BC14-B24E-A69FEBE15ED0";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[17]" -type "float3" 0 -1.2119225 0 ;
	setAttr ".tk[20]" -type "float3" 0 -1.8683701 0 ;
	setAttr ".tk[25]" -type "float3" 0 -1.4750091 0 ;
	setAttr ".tk[26]" -type "float3" 0 -2.1314564 0 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "BAD9B7A8-472D-CD57-1E7B-1D83E58C6CA9";
	setAttr ".dc" -type "componentList" 5 "f[0:2]" "f[39]" "f[43]" "f[294]" "f[1703:1706]";
createNode polyTweak -n "polyTweak4";
	rename -uid "546D10C8-4E88-8E4D-0456-4292C131E195";
	setAttr ".uopa" yes;
	setAttr -s 337 ".tk";
	setAttr ".tk[1]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[2]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[3]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[4]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[5]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[6]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[7]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[8]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[9]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[10]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[11]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[12]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[13]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[14]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[15]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[16]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[17]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[18]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[19]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[20]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[21]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[22]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[23]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[24]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[25]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[26]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[27]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[28]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[29]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[30]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[31]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[32]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[33]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[34]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[35]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[36]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[37]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[38]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[39]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[40]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[41]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[42]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[43]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[44]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[45]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[46]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[47]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[48]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[49]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[50]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[51]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[52]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[53]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[54]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[55]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[56]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[57]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[58]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[59]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[60]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[61]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[62]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[63]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[64]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[65]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[66]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[67]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[68]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[69]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[70]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[71]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[72]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[73]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[74]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[75]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[76]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[77]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[78]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[79]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[80]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[81]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[82]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[83]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[84]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[85]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[86]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[87]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[88]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[89]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[90]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[91]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[92]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[93]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[94]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[95]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[96]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[97]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[98]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[99]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[100]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[101]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[102]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[103]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[104]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[105]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[106]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[107]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[108]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[109]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[110]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[111]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[112]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[113]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[114]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[115]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[116]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[117]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[118]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[119]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[120]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[121]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[122]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[123]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[124]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[125]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[126]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[127]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[128]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[129]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[130]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[131]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[132]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[133]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[134]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[135]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[136]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[137]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[138]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[139]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[140]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[141]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[142]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[143]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[144]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[145]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[146]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[147]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[148]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[149]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[150]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[151]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[152]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[153]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[154]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[155]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[156]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[157]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[158]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[159]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[160]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[161]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[162]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[163]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[164]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[165]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[166]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[167]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[168]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[169]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[170]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[171]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[172]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[173]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[174]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[175]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[176]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[177]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[178]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[179]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[180]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[181]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[182]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[183]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[184]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[185]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[186]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[187]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[188]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[189]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[190]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[191]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[192]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[193]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[194]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[195]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[196]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[197]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[198]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[199]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[200]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[201]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[202]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[203]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[204]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[205]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[206]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[207]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[208]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[209]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[210]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[211]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[212]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[213]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[214]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[215]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[216]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[217]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[218]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[219]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[220]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[221]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[222]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[223]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[224]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[225]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[226]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[227]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[228]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[229]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[230]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[231]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[232]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[233]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[234]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[235]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[236]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[237]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[238]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[239]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[240]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[241]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[242]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[243]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[244]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[245]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[246]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[247]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[248]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[249]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[250]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[251]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[252]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[253]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[254]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[255]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[256]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[257]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[258]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[259]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[260]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[261]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[262]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[263]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[264]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[265]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[266]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[267]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[268]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[269]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[270]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[271]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[272]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[273]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[274]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[275]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[276]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[277]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[278]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[279]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[280]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[281]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[282]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[283]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[284]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[285]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[286]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[287]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[288]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[289]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[290]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[291]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[292]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[293]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[294]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[295]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[296]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[297]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[298]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[299]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[300]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[301]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[302]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[303]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[304]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[305]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[306]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[307]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[308]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[309]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[310]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[311]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[312]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[313]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[314]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[315]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[316]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[317]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[318]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[319]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[320]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[321]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[322]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[323]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[324]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[325]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[1294]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[1295]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[1296]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[1297]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[1298]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[1299]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[1300]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[1301]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[1906]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[1907]" -type "float3" 4.3052464 0 0 ;
	setAttr ".tk[1908]" -type "float3" 4.3052464 0 0 ;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "22BE58A5-4F96-AE49-461F-EDB63CCFF84E";
	setAttr ".dc" -type "componentList" 1 "e[12]";
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "5F3B5EF5-46EF-7E8D-B285-888413ED9914";
	setAttr ".ics" -type "componentList" 1 "e[103]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "1CABEC2A-4483-12A3-50D6-AE818DD2AF2F";
	setAttr ".dc" -type "componentList" 1 "vtx[6]";
createNode polyTweak -n "polyTweak5";
	rename -uid "30D4DF08-4DB6-0CC1-6983-8C9512C4AA0B";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[1]" -type "float3" 1.1879234 0.75231934 1.04743 ;
	setAttr ".tk[2]" -type "float3" -0.39961147 -1.4811325 0.38377941 ;
	setAttr ".tk[3]" -type "float3" -3.0890522 0.51683807 -1.7231023 ;
	setAttr ".tk[4]" -type "float3" -3.068841 2.0062494 -2.7632556 ;
	setAttr ".tk[5]" -type "float3" -0.49889088 -0.82009125 -0.71731234 ;
	setAttr ".tk[8]" -type "float3" -0.70868301 2.0257318 -0.11353111 ;
	setAttr ".tk[463]" -type "float3" -0.090488411 0.059156634 -0.081477791 ;
	setAttr ".tk[686]" -type "float3" -0.017427284 0.011393032 -0.015691895 ;
	setAttr ".tk[687]" -type "float3" -0.12798119 0.083670139 -0.11523962 ;
	setAttr ".tk[725]" -type "float3" -0.25293922 0.16534722 -0.22774029 ;
	setAttr ".tk[726]" -type "float3" -0.12798508 0.083670184 -0.11524077 ;
	setAttr ".tk[1905]" -type "float3" 0.76363754 -1.6935425 0.12792206 ;
	setAttr ".tk[1906]" -type "float3" 0.26951504 -1.8550797 -0.50395036 ;
createNode polySplit -n "polySplit4";
	rename -uid "AF75C931-4F47-5606-F758-9DA75378BB29";
	setAttr -s 2 ".e[0:1]"  1 0.51898599;
	setAttr -s 2 ".d[0:1]"  -2147483624 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "B94A433C-4E11-61EA-B8B0-499327FFDBA8";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[325]" -type "float3" -10.634105 -2.7594166 0 ;
	setAttr ".tk[326]" -type "float3" -12.089849 -3.5968122 0 ;
	setAttr ".tk[327]" -type "float3" -10.439973 -2.8573053 0 ;
	setAttr ".tk[328]" -type "float3" -3.8844094 0 0 ;
	setAttr ".tk[329]" -type "float3" 3.1838639 0 0 ;
	setAttr ".tk[330]" -type "float3" 2.5681496 3.5348916 0 ;
	setAttr ".tk[331]" -type "float3" 2.2121744 3.4187138 0 ;
	setAttr ".tk[332]" -type "float3" 2.3417943 0 0 ;
	setAttr ".tk[333]" -type "float3" 2.1337807 0 0 ;
	setAttr ".tk[335]" -type "float3" -2.9761105 1.2901871 0 ;
	setAttr ".tk[336]" -type "float3" 0.38350973 2.5528367 0 ;
	setAttr ".tk[401]" -type "float3" -5.4216866 -0.18777932 0 ;
	setAttr ".tk[402]" -type "float3" -12.093747 -3.6004632 0 ;
	setAttr ".tk[403]" -type "float3" -10.504408 -2.7969084 0 ;
	setAttr ".tk[404]" -type "float3" -0.74066746 2.0903096 0 ;
	setAttr ".tk[406]" -type "float3" -6.5142155 -0.43019322 0 ;
	setAttr ".tk[409]" -type "float3" -8.758194 -1.5834768 0 ;
	setAttr ".tk[1907]" -type "float3" 0.046210289 -0.76758575 0.8960247 ;
createNode polySplit -n "polySplit5";
	rename -uid "276C1EEA-4B32-69FB-60DA-0591C6D8BDC7";
	setAttr -s 6 ".e[0:5]"  0 0.472491 0.45802501 0.54410899 0.42141801
		 1;
	setAttr -s 6 ".d[0:5]"  -2147482989 -2147482864 -2147482879 -2147482878 -2147482963 -2147482961;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "20FDB3A2-46A8-8587-49DD-92A6388C7046";
	setAttr ".dc" -type "componentList" 1 "e[770]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "1DE3C6CF-422E-DCAE-2EC5-6F8ED383FD36";
	setAttr ".dc" -type "componentList" 1 "e[3586]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "C65B7103-4E8D-7C53-8634-B2BC314A7D52";
	setAttr ".dc" -type "componentList" 1 "vtx[1910]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "2EBDF773-4F29-8BE5-A17A-55A3B5F3A69F";
	setAttr ".dc" -type "componentList" 1 "vtx[328]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "C38AF2E6-4FC3-19B8-C37F-3C8833E11CB6";
	setAttr ".dc" -type "componentList" 1 "e[652]";
createNode polySplit -n "polySplit6";
	rename -uid "EB1AB45A-4052-5A01-40BF-20B0F410E1F3";
	setAttr -s 3 ".e[0:2]"  0 0.46841201 0;
	setAttr -s 3 ".d[0:2]"  -2147482841 -2147482885 -2147482985;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent13";
	rename -uid "8DE90978-48F6-B681-7D09-DDADE99BA8A2";
	setAttr ".dc" -type "componentList" 1 "e[762]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "FF113903-4010-E4A2-12D9-C2925C5A141A";
	setAttr ".dc" -type "componentList" 1 "e[806]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "A6A8522F-4DCD-D2B7-A655-DB873DA5847C";
	setAttr ".dc" -type "componentList" 1 "e[652]";
createNode deleteComponent -n "deleteComponent16";
	rename -uid "CAAE1657-4625-A924-5E31-AAAD7FC1561E";
	setAttr ".dc" -type "componentList" 1 "vtx[327]";
createNode deleteComponent -n "deleteComponent17";
	rename -uid "BFB3DE31-44C9-F1BE-D80C-B9A31C6488F9";
	setAttr ".dc" -type "componentList" 1 "vtx[325]";
createNode deleteComponent -n "deleteComponent18";
	rename -uid "E3E27B6F-46F8-1BED-E604-79A764543708";
	setAttr ".dc" -type "componentList" 1 "vtx[326]";
createNode deleteComponent -n "deleteComponent19";
	rename -uid "8FB6BE7D-4D68-8C2C-4846-E1B6A102F0A2";
	setAttr ".dc" -type "componentList" 1 "vtx[326]";
createNode deleteComponent -n "deleteComponent20";
	rename -uid "0F20BE27-4A2F-405F-0A00-0E9C88DAB83E";
	setAttr ".dc" -type "componentList" 1 "vtx[326]";
createNode deleteComponent -n "deleteComponent21";
	rename -uid "C9C99D5F-4C28-205B-043F-7C86B5FC68D3";
	setAttr ".dc" -type "componentList" 2 "vtx[326]" "vtx[1530]";
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "119BCAF6-4B7D-3465-FA9F-06A02F452797";
	setAttr ".ics" -type "componentList" 1 "vtx[325]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "31D98226-43DD-BC19-C877-5A96700F4782";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[326]" -type "float3"  5.7220459e-006 -1.93387604 -0.34060049;
createNode deleteComponent -n "deleteComponent22";
	rename -uid "1E320DA2-4ACF-E0A3-DA06-4EBE65BEBF88";
	setAttr ".dc" -type "componentList" 6 "f[330:332]" "f[368]" "f[371:372]" "f[375]" "f[378:379]" "f[400]";
createNode polyTweak -n "polyTweak8";
	rename -uid "991C01A2-44CC-9C0F-81D4-03A4B80360C0";
	setAttr ".uopa" yes;
	setAttr -s 338 ".tk";
	setAttr ".tk[325]" -type "float3" -7.7381439 -4.045989 -0.84299278 ;
	setAttr ".tk[326]" -type "float3" -5.5426197 0.81000274 -1.2935001 ;
	setAttr ".tk[327]" -type "float3" -4.858284 1.7805214 -2.2625003 ;
	setAttr ".tk[328]" -type "float3" -7.2203741 -0.27450264 -0.56119943 ;
	setAttr ".tk[329]" -type "float3" -7.2029314 2.6092777 -0.047499657 ;
	setAttr ".tk[330]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[331]" -type "float3" -5.151742 1.2628298 0.16090012 ;
	setAttr ".tk[332]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[333]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[334]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[335]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[336]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[337]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[338]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[339]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[340]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[341]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[342]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[343]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[344]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[345]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[346]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[347]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[348]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[349]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[350]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[351]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[352]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[353]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[354]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[355]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[356]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[357]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[358]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[359]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[360]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[361]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[362]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[363]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[364]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[365]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[366]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[367]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[368]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[369]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[370]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[371]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[372]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[373]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[374]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[375]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[376]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[377]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[378]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[379]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[380]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[381]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[382]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[383]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[384]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[385]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[386]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[387]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[388]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[389]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[390]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[391]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[392]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[393]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[394]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[395]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[396]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[397]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[429]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[430]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[431]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[432]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[785]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[786]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[787]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[788]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[789]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[790]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[791]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[792]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[793]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[794]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[795]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[796]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[797]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[798]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[799]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[800]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[801]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[802]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[803]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[804]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[805]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[806]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[807]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[808]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[809]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[810]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[811]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[812]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[813]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[814]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[815]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[816]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[817]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[818]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[819]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[820]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[821]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[822]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[823]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[824]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[825]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[826]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[827]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[828]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[829]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[830]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[831]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[832]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[833]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[834]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[835]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[836]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[837]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[838]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[839]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[840]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[841]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[842]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[843]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[844]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[845]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[846]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[847]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[848]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[849]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[850]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[851]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[852]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[853]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[854]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[855]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[856]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[857]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[858]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[859]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[860]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[861]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[862]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[863]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[864]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[865]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[866]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[867]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[868]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[869]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[870]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[871]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[872]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[873]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[874]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[875]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[876]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[877]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[878]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[879]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[880]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[881]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[882]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[883]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[884]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[885]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[886]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[887]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[888]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[889]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[890]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[891]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[892]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[893]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[894]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[895]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[896]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[897]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[898]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[899]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[900]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[901]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[902]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[903]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[904]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[905]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[906]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[907]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[908]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[909]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[910]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[911]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[912]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[913]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[914]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[915]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[916]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[917]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[918]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[919]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[920]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[921]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[922]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[923]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[924]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[925]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[926]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[927]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[928]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[929]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[930]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[931]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[932]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[933]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[934]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[935]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[936]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[937]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[938]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[939]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[940]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[941]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[942]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[943]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[944]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[945]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[946]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[947]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[948]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[949]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[950]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[951]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[952]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[953]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[954]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[955]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[956]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[957]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[958]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[959]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[960]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[961]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[962]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[963]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[964]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[965]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[966]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[967]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[968]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[969]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[970]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[971]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[972]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[973]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[974]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[975]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[976]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[977]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[978]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[979]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[980]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[981]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[982]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[983]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[984]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[985]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[986]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[987]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[988]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[989]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[990]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[991]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[992]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[993]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[994]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[995]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[996]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[997]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[998]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[999]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1000]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1001]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1002]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1003]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1004]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1005]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1006]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1007]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1008]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1009]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1010]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1011]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1012]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1013]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1014]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1015]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1016]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1017]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1018]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1019]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1020]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1021]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1022]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1023]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1024]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1025]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1026]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1027]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1028]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1029]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1030]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1031]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1032]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1033]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1034]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1035]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1276]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1277]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1278]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1279]" -type "float3" -5.5579119 0 0 ;
	setAttr ".tk[1895]" -type "float3" -7.8517761 -1.1210067 -0.42520618 ;
	setAttr ".tk[1896]" -type "float3" -7.8614359 -2.3169889 -1.0918338 ;
	setAttr ".tk[1897]" -type "float3" -7.7432394 -3.2010398 -0.74904096 ;
	setAttr ".tk[1898]" -type "float3" -7.5314121 -2.554616 0.36275196 ;
createNode deleteComponent -n "deleteComponent23";
	rename -uid "2E84CB64-4A24-7C18-F05D-55A1D7EE0151";
	setAttr ".dc" -type "componentList" 1 "e[662]";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C4DE17C7-42AA-171A-9679-FAA0F864931A";
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
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1315\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1315\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1315\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E9704B9C-4AB2-2661-45E6-DF87A07BC3CD";
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
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
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
connectAttr "deleteComponent23.og" "cadnav_comShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "cadnav_comShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
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
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "polySurfaceShape1.o" "polyMergeVert1.ip";
connectAttr "cadnav_comShape.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "cadnav_comShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polySplit3.ip";
connectAttr "polySplit3.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "polySplit5.ip";
connectAttr "polySplit5.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "polySplit6.ip";
connectAttr "polySplit6.out" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "polyTweak7.out" "polyMergeVert3.ip";
connectAttr "cadnav_comShape.wm" "polyMergeVert3.mp";
connectAttr "deleteComponent21.og" "polyTweak7.ip";
connectAttr "polyMergeVert3.out" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "polyTweak8.ip";
connectAttr "polyTweak8.out" "deleteComponent23.ig";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of Male Pirate Character.ma
