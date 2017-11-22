//Maya ASCII 2018 scene
//Name: castle_interior.ma
//Last modified: Sun, Nov 19, 2017 12:13:20 AM
//Codeset: UTF-8
requires maya "2018";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "2.0.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Mac OS X 10.12.4";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "5209DAED-E547-2330-E095-CF9BC7BCAEE6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.349586840585465 7.2758395365332733 36.851393564982601 ;
	setAttr ".r" -type "double3" -3.3383527285038235 -337.40000000001487 -1.0765948204791226e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "66842554-E64B-8E4E-EF3A-12A6A8C91760";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 33.586921673506737;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 10.279554643258288 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "DF2B0C2E-5741-8B2D-F1C4-BEA3A1BEAA67";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8507320F-024E-F9A8-F8CE-64AF3856F121";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 37.788873038516428;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "4194A8FD-764B-5D1F-56E8-DFB3AEFB520C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.5969208352385191 10.661253730118698 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E16C962F-7B44-7342-B6B5-90977C5A879E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 19.069224447874852;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "12DD1472-9E49-4D82-C496-08804368DBC8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 4.1512125534950064 1.0699001426533539 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D72AB32E-CA40-F284-50B9-D48FA36F3992";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 24.86447931526391;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "0BA22C05-5542-C128-9065-7F8E1C7693DA";
	setAttr ".t" -type "double3" 0 6.5400496285031711 0 ;
	setAttr ".s" -type "double3" 20.602265990250135 13.152761893742952 20.602265990250135 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "02ED765C-0344-5948-95F3-1E9A214740B2";
	setAttr -k off ".v";
	setAttr -s 20 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47221958637237549 2.7305930852890015 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 35 ".pt";
	setAttr ".pt[8]" -type "float3" 0.032996532 0 0 ;
	setAttr ".pt[11]" -type "float3" 0.032996532 0 0 ;
	setAttr ".pt[12]" -type "float3" 0.032996532 0 0 ;
	setAttr ".pt[13]" -type "float3" 0.032996532 0 0 ;
	setAttr ".pt[16]" -type "float3" 0.032996532 0 0 ;
	setAttr ".pt[17]" -type "float3" 0.032996532 0 0 ;
	setAttr ".pt[21]" -type "float3" 0.036365077 -0.00060721685 0.020086614 ;
	setAttr ".pt[23]" -type "float3" 0.036365077 -0.00064131024 0.093096912 ;
	setAttr ".pt[25]" -type "float3" -0.036365077 -0.00060081063 0.020086611 ;
	setAttr ".pt[26]" -type "float3" -0.036365077 -0.00060724403 0.093096912 ;
	setAttr ".pt[29]" -type "float3" 0.034010772 0.00063530565 0.022458913 ;
	setAttr ".pt[30]" -type "float3" -0.034013435 0.00064131024 0.022400228 ;
	setAttr ".pt[31]" -type "float3" -0.034013432 0.00063528359 0.090715811 ;
	setAttr ".pt[32]" -type "float3" 0.034010772 0.00060342188 0.090715811 ;
	setAttr ".pt[107]" -type "float3" 0 0.041722447 0 ;
	setAttr ".pt[108]" -type "float3" 0 0.041722447 0 ;
	setAttr ".pt[200]" -type "float3" 0 -4.4703484e-08 0 ;
	setAttr ".pt[201]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".pt[203]" -type "float3" 0 -5.9604645e-08 0 ;
	setAttr ".pt[204]" -type "float3" -4.6566129e-10 0 0 ;
	setAttr ".pt[205]" -type "float3" -4.6566129e-10 0 0 ;
	setAttr ".pt[206]" -type "float3" -4.6566129e-10 -5.9604645e-08 0 ;
	setAttr ".pt[207]" -type "float3" -4.6566129e-10 -5.9604645e-08 0 ;
	setAttr ".pt[208]" -type "float3" 0.0029003038 0.0045478474 -0.0036949825 ;
	setAttr ".pt[209]" -type "float3" 0.0029010535 0.0045478474 0.0036949825 ;
	setAttr ".pt[210]" -type "float3" 0.0029003485 -0.0045478456 -0.0036949799 ;
	setAttr ".pt[211]" -type "float3" 0.0029010535 -0.004547847 0.0036949825 ;
	setAttr ".bck" 3;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "0288C9FB-B34F-869B-CA68-7D9187031D78";
	setAttr ".t" -type "double3" 8.8968680760935186 5.6238363019761719 9.3086673258922339 ;
	setAttr ".s" -type "double3" 0.46795880379264065 11.144276686953436 0.60732345279237532 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "25BF2A96-4449-BC42-7000-2492495D5073";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.5 0.30401676893234253 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0 0.0060372744 0 0 0.0060372744 
		0 0 0.0032816045 0 0 0.0032816045 0 0 0.0032816045 0 0 0.0032816045 0 0 0.0060372744 
		0 0 0.0060372744 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 
		0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 
		0 0 0.08554469 0 0 0.08554469 0 -4.2940283 0.3758246 0 -4.2940283 0.3758246 0 -4.2940292 
		0.33202177 0 -4.2940292 0.33202177 0;
	setAttr ".bck" 3;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3";
	rename -uid "58550206-614A-EAA6-A1FD-8A9011B59471";
	setAttr ".t" -type "double3" 8.8968680760935186 5.6238363019761719 1.5672070108244398 ;
	setAttr ".s" -type "double3" 0.46795880379264065 11.144276686953436 0.60732345279237532 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "FA26E3A5-E54F-DC17-98B1-259C1BB8E068";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.5 0.30401676893234253 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1 -1 0.66643399 0 2.33356619 0 0.66647398 -1
		 0.60803354 0 2.39196658 0 0.6044746 -1 0.60803354 0 0.6044746 0 0.66647398 -1 0.66643399
		 -1 0.60803354 0 0.6044746 0 0.66647398 -1 0.66643399 -1 0.60803354 0 0.6044746 0
		 0.66647398 -1 0.66643399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0 0.0060372744 0 0 0.0060372744 
		0 0 0.0032816045 0 0 0.0032816045 0 0 0.0032816045 0 0 0.0032816045 0 0 0.0060372744 
		0 0 0.0060372744 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 
		0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 
		0 0 0.08554469 0 0 0.08554469 0 -4.2940283 0.3758246 0 -4.2940283 0.3758246 0 -4.2940292 
		0.33202177 0 -4.2940292 0.33202177 0;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.49999994 0.49999714 0.49999428 -0.49999994 0.49999714
		 -0.5 0.48302937 0.49999714 0.49999428 0.48302937 0.49999714 -0.5 0.48302937 -0.5
		 0.49999428 0.48302937 -0.5 -0.5 -0.49999994 -0.5 0.49999428 -0.49999994 -0.5 -0.5 0.15668595 -0.5
		 -0.5 0.15668595 0.49999714 -0.5 0.069338143 -0.5 -0.5 0.069338143 0.49999714 -0.5 0.073351145 -0.4540596
		 -0.5 0.073351145 0.45405293 -0.5 0.15267295 0.45405293 -0.5 0.15267295 -0.4540596
		 -6.11213779 0.11330247 -0.4540596 -6.11213779 0.11330247 0.45405293 -5.16141033 0.15710568 0.45405293
		 -5.16141033 0.15710568 -0.4540596 -6.11213779 0.11330247 -0.4540596 -6.11213779 0.11330247 0.45405293
		 -5.16141033 0.15710568 0.45405293 -5.16141033 0.15710568 -0.4540596;
	setAttr -s 42 ".ed[0:41]"  0 1 0 2 3 0 4 5 0 6 7 0 0 11 0 1 3 0 2 4 0
		 3 5 0 4 8 0 5 7 0 6 0 0 7 1 0 8 10 0 9 2 0 8 9 0 10 6 0 11 9 0 10 11 0 10 12 0 11 13 0
		 12 13 0 9 14 0 13 14 0 8 15 0 15 14 0 15 12 0 12 16 0 13 17 0 16 17 0 14 18 0 17 18 0
		 15 19 0 19 18 0 19 16 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0 23 22 0 23 20 0;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 6 0 5 -2 -14 -17 -5
		mu 0 6 0 1 3 2 16 19
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 6 2 9 -4 -16 -13 -9
		mu 0 6 4 5 7 6 18 15
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 14 13 6 8
		mu 0 4 14 16 2 13
		f 4 36 38 -41 41
		mu 0 4 28 29 30 31
		f 4 10 4 -18 15
		mu 0 4 12 0 19 17
		f 4 17 19 -21 -19
		mu 0 4 17 19 21 20
		f 4 16 21 -23 -20
		mu 0 4 19 16 22 21
		f 4 -15 23 24 -22
		mu 0 4 16 14 23 22
		f 4 12 18 -26 -24
		mu 0 4 14 17 20 23
		f 4 20 27 -29 -27
		mu 0 4 20 21 25 24
		f 4 22 29 -31 -28
		mu 0 4 21 22 26 25
		f 4 -25 31 32 -30
		mu 0 4 22 23 27 26
		f 4 25 26 -34 -32
		mu 0 4 23 20 24 27
		f 4 28 35 -37 -35
		mu 0 4 24 25 29 28
		f 4 30 37 -39 -36
		mu 0 4 25 26 30 29
		f 4 -33 39 40 -38
		mu 0 4 26 27 31 30
		f 4 33 34 -42 -40
		mu 0 4 27 24 28 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4";
	rename -uid "A5D86E85-B348-EBF0-3DC1-9EBE9BB81F80";
	setAttr ".t" -type "double3" 8.8968680760935186 5.6238363019761719 -6.1180299712628443 ;
	setAttr ".s" -type "double3" 0.46795880379264065 11.144276686953436 0.60732345279237532 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "FC33FFFD-A34F-B180-73C4-22BE589377FA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.5 0.30401676893234253 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1 -1 0.66643399 0 2.33356619 0 0.66647398 -1
		 0.60803354 0 2.39196658 0 0.6044746 -1 0.60803354 0 0.6044746 0 0.66647398 -1 0.66643399
		 -1 0.60803354 0 0.6044746 0 0.66647398 -1 0.66643399 -1 0.60803354 0 0.6044746 0
		 0.66647398 -1 0.66643399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0 0.0060372744 0 0 0.0060372744 
		0 0 0.0032816045 0 0 0.0032816045 0 0 0.0032816045 0 0 0.0032816045 0 0 0.0060372744 
		0 0 0.0060372744 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 
		0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 
		0 0 0.08554469 0 0 0.08554469 0 -4.2940283 0.3758246 0 -4.2940283 0.3758246 0 -4.2940292 
		0.33202177 0 -4.2940292 0.33202177 0;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.49999994 0.49999714 0.49999428 -0.49999994 0.49999714
		 -0.5 0.48302937 0.49999714 0.49999428 0.48302937 0.49999714 -0.5 0.48302937 -0.5
		 0.49999428 0.48302937 -0.5 -0.5 -0.49999994 -0.5 0.49999428 -0.49999994 -0.5 -0.5 0.15668595 -0.5
		 -0.5 0.15668595 0.49999714 -0.5 0.069338143 -0.5 -0.5 0.069338143 0.49999714 -0.5 0.073351145 -0.4540596
		 -0.5 0.073351145 0.45405293 -0.5 0.15267295 0.45405293 -0.5 0.15267295 -0.4540596
		 -6.11213779 0.11330247 -0.4540596 -6.11213779 0.11330247 0.45405293 -5.16141033 0.15710568 0.45405293
		 -5.16141033 0.15710568 -0.4540596 -6.11213779 0.11330247 -0.4540596 -6.11213779 0.11330247 0.45405293
		 -5.16141033 0.15710568 0.45405293 -5.16141033 0.15710568 -0.4540596;
	setAttr -s 42 ".ed[0:41]"  0 1 0 2 3 0 4 5 0 6 7 0 0 11 0 1 3 0 2 4 0
		 3 5 0 4 8 0 5 7 0 6 0 0 7 1 0 8 10 0 9 2 0 8 9 0 10 6 0 11 9 0 10 11 0 10 12 0 11 13 0
		 12 13 0 9 14 0 13 14 0 8 15 0 15 14 0 15 12 0 12 16 0 13 17 0 16 17 0 14 18 0 17 18 0
		 15 19 0 19 18 0 19 16 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0 23 22 0 23 20 0;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 6 0 5 -2 -14 -17 -5
		mu 0 6 0 1 3 2 16 19
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 6 2 9 -4 -16 -13 -9
		mu 0 6 4 5 7 6 18 15
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 14 13 6 8
		mu 0 4 14 16 2 13
		f 4 36 38 -41 41
		mu 0 4 28 29 30 31
		f 4 10 4 -18 15
		mu 0 4 12 0 19 17
		f 4 17 19 -21 -19
		mu 0 4 17 19 21 20
		f 4 16 21 -23 -20
		mu 0 4 19 16 22 21
		f 4 -15 23 24 -22
		mu 0 4 16 14 23 22
		f 4 12 18 -26 -24
		mu 0 4 14 17 20 23
		f 4 20 27 -29 -27
		mu 0 4 20 21 25 24
		f 4 22 29 -31 -28
		mu 0 4 21 22 26 25
		f 4 -25 31 32 -30
		mu 0 4 22 23 27 26
		f 4 25 26 -34 -32
		mu 0 4 23 20 24 27
		f 4 28 35 -37 -35
		mu 0 4 24 25 29 28
		f 4 30 37 -39 -36
		mu 0 4 25 26 30 29
		f 4 -33 39 40 -38
		mu 0 4 26 27 31 30
		f 4 33 34 -42 -40
		mu 0 4 27 24 28 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5";
	rename -uid "3585D945-4B4B-F0D9-06EA-24977FD23E04";
	setAttr ".t" -type "double3" -8.9056928150720527 5.6238363019761621 9.3086673258922321 ;
	setAttr ".s" -type "double3" -0.46795880379264065 11.144276686953436 0.60732345279237532 ;
createNode transform -n "pCube6";
	rename -uid "554A0A89-CC42-179E-5335-88A90468B106";
	setAttr ".t" -type "double3" -8.9056928150720527 5.6238363019761621 1.2207848440099784 ;
	setAttr ".s" -type "double3" -0.46795880379264065 11.144276686953436 0.60732345279237532 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "8E6CC754-2347-E14C-CB7D-DD8259F4A58F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.5 0.30401676893234253 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1 -1 0.66643399 0 2.33356619 0 0.66647398 -1
		 0.60803354 0 2.39196658 0 0.6044746 -1 0.60803354 0 0.6044746 0 0.66647398 -1 0.66643399
		 -1 0.60803354 0 0.6044746 0 0.66647398 -1 0.66643399 -1 0.60803354 0 0.6044746 0
		 0.66647398 -1 0.66643399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0 0.0060372744 0 0 0.0060372744 
		0 0 0.0032816045 0 0 0.0032816045 0 0 0.0032816045 0 0 0.0032816045 0 0 0.0060372744 
		0 0 0.0060372744 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 
		0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 
		0 0 0.08554469 0 0 0.08554469 0 -4.2940283 0.3758246 0 -4.2940283 0.3758246 0 -4.2940292 
		0.33202177 0 -4.2940292 0.33202177 0;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.49999994 0.49999714 0.49999428 -0.49999994 0.49999714
		 -0.5 0.48302937 0.49999714 0.49999428 0.48302937 0.49999714 -0.5 0.48302937 -0.5
		 0.49999428 0.48302937 -0.5 -0.5 -0.49999994 -0.5 0.49999428 -0.49999994 -0.5 -0.5 0.15668595 -0.5
		 -0.5 0.15668595 0.49999714 -0.5 0.069338143 -0.5 -0.5 0.069338143 0.49999714 -0.5 0.073351145 -0.4540596
		 -0.5 0.073351145 0.45405293 -0.5 0.15267295 0.45405293 -0.5 0.15267295 -0.4540596
		 -6.11213779 0.11330247 -0.4540596 -6.11213779 0.11330247 0.45405293 -5.16141033 0.15710568 0.45405293
		 -5.16141033 0.15710568 -0.4540596 -6.11213779 0.11330247 -0.4540596 -6.11213779 0.11330247 0.45405293
		 -5.16141033 0.15710568 0.45405293 -5.16141033 0.15710568 -0.4540596;
	setAttr -s 42 ".ed[0:41]"  0 1 0 2 3 0 4 5 0 6 7 0 0 11 0 1 3 0 2 4 0
		 3 5 0 4 8 0 5 7 0 6 0 0 7 1 0 8 10 0 9 2 0 8 9 0 10 6 0 11 9 0 10 11 0 10 12 0 11 13 0
		 12 13 0 9 14 0 13 14 0 8 15 0 15 14 0 15 12 0 12 16 0 13 17 0 16 17 0 14 18 0 17 18 0
		 15 19 0 19 18 0 19 16 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0 23 22 0 23 20 0;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 6 0 5 -2 -14 -17 -5
		mu 0 6 0 1 3 2 16 19
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 6 2 9 -4 -16 -13 -9
		mu 0 6 4 5 7 6 18 15
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 14 13 6 8
		mu 0 4 14 16 2 13
		f 4 36 38 -41 41
		mu 0 4 28 29 30 31
		f 4 10 4 -18 15
		mu 0 4 12 0 19 17
		f 4 17 19 -21 -19
		mu 0 4 17 19 21 20
		f 4 16 21 -23 -20
		mu 0 4 19 16 22 21
		f 4 -15 23 24 -22
		mu 0 4 16 14 23 22
		f 4 12 18 -26 -24
		mu 0 4 14 17 20 23
		f 4 20 27 -29 -27
		mu 0 4 20 21 25 24
		f 4 22 29 -31 -28
		mu 0 4 21 22 26 25
		f 4 -25 31 32 -30
		mu 0 4 22 23 27 26
		f 4 25 26 -34 -32
		mu 0 4 23 20 24 27
		f 4 28 35 -37 -35
		mu 0 4 24 25 29 28
		f 4 30 37 -39 -36
		mu 0 4 25 26 30 29
		f 4 -33 39 40 -38
		mu 0 4 26 27 31 30
		f 4 33 34 -42 -40
		mu 0 4 27 24 28 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7";
	rename -uid "E36FD04B-2345-8294-9952-A68F4DB58D97";
	setAttr ".t" -type "double3" -8.9056928150720527 5.6238363019761621 -6.5821204503029822 ;
	setAttr ".s" -type "double3" -0.46795880379264065 11.144276686953436 0.60732345279237532 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "3CD0869F-4C46-5105-A96E-B0B33877E11E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.5 0.30401676893234253 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1 -1 0.66643399 0 2.33356619 0 0.66647398 -1
		 0.60803354 0 2.39196658 0 0.6044746 -1 0.60803354 0 0.6044746 0 0.66647398 -1 0.66643399
		 -1 0.60803354 0 0.6044746 0 0.66647398 -1 0.66643399 -1 0.60803354 0 0.6044746 0
		 0.66647398 -1 0.66643399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0 0.0060372744 0 0 0.0060372744 
		0 0 0.0032816045 0 0 0.0032816045 0 0 0.0032816045 0 0 0.0032816045 0 0 0.0060372744 
		0 0 0.0060372744 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 
		0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 0 0 0.08554469 
		0 0 0.08554469 0 0 0.08554469 0 -4.2940283 0.3758246 0 -4.2940283 0.3758246 0 -4.2940292 
		0.33202177 0 -4.2940292 0.33202177 0;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.49999994 0.49999714 0.49999428 -0.49999994 0.49999714
		 -0.5 0.48302937 0.49999714 0.49999428 0.48302937 0.49999714 -0.5 0.48302937 -0.5
		 0.49999428 0.48302937 -0.5 -0.5 -0.49999994 -0.5 0.49999428 -0.49999994 -0.5 -0.5 0.15668595 -0.5
		 -0.5 0.15668595 0.49999714 -0.5 0.069338143 -0.5 -0.5 0.069338143 0.49999714 -0.5 0.073351145 -0.4540596
		 -0.5 0.073351145 0.45405293 -0.5 0.15267295 0.45405293 -0.5 0.15267295 -0.4540596
		 -6.11213779 0.11330247 -0.4540596 -6.11213779 0.11330247 0.45405293 -5.16141033 0.15710568 0.45405293
		 -5.16141033 0.15710568 -0.4540596 -6.11213779 0.11330247 -0.4540596 -6.11213779 0.11330247 0.45405293
		 -5.16141033 0.15710568 0.45405293 -5.16141033 0.15710568 -0.4540596;
	setAttr -s 42 ".ed[0:41]"  0 1 0 2 3 0 4 5 0 6 7 0 0 11 0 1 3 0 2 4 0
		 3 5 0 4 8 0 5 7 0 6 0 0 7 1 0 8 10 0 9 2 0 8 9 0 10 6 0 11 9 0 10 11 0 10 12 0 11 13 0
		 12 13 0 9 14 0 13 14 0 8 15 0 15 14 0 15 12 0 12 16 0 13 17 0 16 17 0 14 18 0 17 18 0
		 15 19 0 19 18 0 19 16 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0 23 22 0 23 20 0;
	setAttr -s 20 -ch 84 ".fc[0:19]" -type "polyFaces" 
		f 6 0 5 -2 -14 -17 -5
		mu 0 6 0 1 3 2 16 19
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 6 2 9 -4 -16 -13 -9
		mu 0 6 4 5 7 6 18 15
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 14 13 6 8
		mu 0 4 14 16 2 13
		f 4 36 38 -41 41
		mu 0 4 28 29 30 31
		f 4 10 4 -18 15
		mu 0 4 12 0 19 17
		f 4 17 19 -21 -19
		mu 0 4 17 19 21 20
		f 4 16 21 -23 -20
		mu 0 4 19 16 22 21
		f 4 -15 23 24 -22
		mu 0 4 16 14 23 22
		f 4 12 18 -26 -24
		mu 0 4 14 17 20 23
		f 4 20 27 -29 -27
		mu 0 4 20 21 25 24
		f 4 22 29 -31 -28
		mu 0 4 21 22 26 25
		f 4 -25 31 32 -30
		mu 0 4 22 23 27 26
		f 4 25 26 -34 -32
		mu 0 4 23 20 24 27
		f 4 28 35 -37 -35
		mu 0 4 24 25 29 28
		f 4 30 37 -39 -36
		mu 0 4 25 26 30 29
		f 4 -33 39 40 -38
		mu 0 4 26 27 31 30
		f 4 33 34 -42 -40
		mu 0 4 27 24 28 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".ai_translator" -type "string" "polymesh";
parent -s -nc -r -add "|pCube2|pCubeShape2" "pCube5" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8808A49E-8A4A-96C5-FEA1-FDAE4B3F765D";
	setAttr -s 11 ".lnk";
	setAttr -s 11 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "E6BAF72D-1A41-4336-560A-789DE150BAB1";
createNode displayLayer -n "defaultLayer";
	rename -uid "CBF6865D-B74E-97DA-6C56-11999CA1EDF9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "02375552-4342-73ED-0047-A499241184A3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8EAEAABA-3A44-8910-7F7F-93ABD1A17B3B";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E746EB4B-7746-6616-96B0-98AABB8BED36";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8AB5CC0C-1444-320B-2A9A-91B3193C7CDF";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "8BE32D09-1449-3AAB-D78D-CC9BBD2E7825";
	setAttr ".version" -type "string" "2.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "7884E69C-DF48-0B21-5D10-4584BEFFD2A0";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "964E4337-C44B-2559-2B9D-1DBE84C3AE30";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "1ACEA653-8447-A6C5-5552-1CBCF8A8ED2A";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "7E3EE450-594E-B78B-EBD7-3590B4275FFA";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 447\n            -height 205\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 447\n            -height 205\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 447\n            -height 205\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 793\n            -height 435\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
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
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n"
		+ "                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 793\\n    -height 435\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 793\\n    -height 435\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6A6F8220-CE49-7373-480A-A5ADC475FA1A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "A8B30EEC-F449-C999-8087-7BA4D16172EC";
	setAttr ".cuv" 1;
createNode polyNormal -n "polyNormal1";
	rename -uid "63EA8E97-104C-17FE-CFA1-8D8649F986D2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polySplit -n "polySplit1";
	rename -uid "B7E8D955-8C41-50A0-2CBC-1084D9692F86";
	setAttr -s 2 ".v[0:1]" -type "float3"  -0.196513 0.035241999 0.5 
		0.19168 0.033174001 0.5;
	setAttr -s 4 ".e[0:3]"  0.30480701 0 0 0.69432002;
	setAttr -s 4 ".d[0:3]"  -2147483648 0 1 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "809A00AF-1249-8EFC-30A7-949A2835CCF5";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.12394686 1.5626051 10.301133 ;
	setAttr ".rs" 1928323395;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5543222142426805 -0.051524573643837002 10.301132995125068 ;
	setAttr ".cbx" -type "double3" 2.3064284898586376 3.176734857852102 10.301132995125068 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "056F3F9E-294E-A1FD-AD44-12953ED2610B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.074478135 0.00046002865
		 0 -0.082369789 -0.001155138 0 -0.08431752 -0.29256859 0 0.072530411 -0.29095367 0;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "53967F25-2444-E09C-E169-88A21BE12581";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.12190372 1.410146 10.301133 ;
	setAttr ".rs" 1491937015;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2943881940937652 -0.032705868986380615 10.301132995125068 ;
	setAttr ".cbx" -type "double3" 2.0505807624156045 2.8529977897653964 10.301132995125068 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "57FA78DB-4D4E-324D-F0B7-259D9A9B7510";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" 0.012616767 -0.024613624 0 ;
	setAttr ".tk[13]" -type "float3" 0.012270028 0.0012593959 0 ;
	setAttr ".tk[14]" -type "float3" -0.011931607 -0.024222825 0 ;
	setAttr ".tk[15]" -type "float3" -0.012418417 0.0014307862 0 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "FF806B8F-4F4B-7E5D-0815-E296128288A3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[16]" -type "float3" 0 0 0.011874735 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.011874735 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.011874735 ;
	setAttr ".tk[19]" -type "float3" 0 0 0.011874735 ;
createNode polySplit -n "polySplit2";
	rename -uid "2F015205-CE44-396B-A76D-BEBF458BF5C9";
	setAttr -s 2 ".e[0:1]"  0.59228998 0.84179097;
	setAttr -s 2 ".d[0:1]"  -2147483635 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "3E632C78-7145-05DF-EB5A-C0AEBD68820B";
	setAttr -s 2 ".e[0:1]"  0.84349102 0.141617;
	setAttr -s 2 ".d[0:1]"  -2147483613 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "F195E297-3341-A515-E9B2-7C9EDCAFAE4C";
	setAttr -s 2 ".e[0:1]"  0.191993 0.81008601;
	setAttr -s 2 ".d[0:1]"  -2147483613 -2147483611;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "965E9DFD-284C-3867-51F8-CC905900A80E";
	setAttr -s 2 ".e[0:1]"  0.81373203 0.81264198;
	setAttr -s 2 ".d[0:1]"  -2147483610 -2147483607;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "AB5A5C9E-0A43-0EFB-CA87-918B3BB02468";
	setAttr ".dc" -type "componentList" 1 "e[43]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "EB0576A9-BB48-88EC-4470-B886B7C6F0AE";
	setAttr ".dc" -type "componentList" 1 "e[42]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "868CB226-AD40-670A-C6B3-E99CBC9B6303";
	setAttr ".dc" -type "componentList" 1 "e[35]";
createNode polySplitRing -n "polySplitRing1";
	rename -uid "855FA5D4-484D-A164-4054-6F989F5C52CA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1:2]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".wt" 0.26432940363883972;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "511D57FC-0C4E-EA27-87A6-8E89B49541AC";
	setAttr ".dc" -type "componentList" 1 "e[43]";
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "48F52BF1-3449-2C9D-8694-FD99B31B132A";
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.02080554 -0.038476247 -2.1783218 ;
	setAttr ".rs" 286976312;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.0358973357041803 -0.040273097910377587 -7.2990486686975258 ;
	setAttr ".cbx" -type "double3" 5.0775084161249495 -0.036679399139322832 2.9424052041667235 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak4";
	rename -uid "89BA7498-7845-F0A0-E575-3DB1068ADC02";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk[0:29]" -type "float3"  0.056318283 0.00012144446
		 0.070776045 -0.056080718 0.00012144446 0.070776045 0.056318283 -0.17182508 0.070788145
		 -0.056080718 -0.17182508 0.070788145 0.056206603 -0.1719465 -0.078214705 -0.056192458
		 -0.1719465 -0.078214705 0.056206603 0 -0.078226805 -0.056192458 0 -0.078226805 0.00012577325
		 0.00012144446 0.070776045 0.00012577325 0.00012141466 0.070776045 0.00012577325 0.00012144446
		 0.070776045 0.00012577325 0.00012144446 0.070776045 0.00012577325 0.00012144446 0.070776045
		 0.00012577325 0.00012144446 0.070776045 0.00012577325 0.00012144446 0.070776045 0.00012577325
		 0.00012144446 0.070776045 0.00012577325 0.00012144446 0.070776045 0.00012577325 0.00012144446
		 0.070776045 0.00012577325 0.00012144446 0.070776045 0.00012577325 0.00012144446 0.070776045
		 0.00012582541 0.00012141466 0.070776045 0 0 -0.078226805 -0.095336676 4.0275781e-06
		 -0.0021085506 0.056206603 0 0 -0.095336191 9.498038e-05 -0.19523615 0.056206603 0
		 0 0.098767214 -1.2725593e-05 0.0013253371 0.098507375 4.0955251e-06 -0.19498876 0
		 -0.1719465 -0.078214705 0.0001257658 -0.17182508 0.070788145;
createNode polyTweak -n "polyTweak5";
	rename -uid "21D4DFC6-F441-8494-CFA5-F993F411A0E1";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk[0:33]" -type "float3"  0 0.014410224 0 0 0.014410224
		 0 0 0.014410224 0 0 0.014410224 0 0 0.014410224 0 0 0.014410224 0 0 0.014410224 0
		 0 0.014410224 0 0 0.014410224 0 0 0.014410224 0 0 0.014410224 0 0 0.014410224 0 0
		 0.014410224 0 0 0.014410224 0 0 0.014410224 0 0 0.014410224 0 0 0.014410224 0 0 0.014410224
		 0 0 0.014410224 0 0 0.014410224 0 0 0.014410224 0 0 0.014410224 0 -7.0909903e-07
		 0.014410224 -0.0043420796 0 0.014410224 0 7.0909903e-07 0.014410224 -0.00031292709
		 0 0.014410224 0 0.00032867893 0.014410224 0.0043420796 -0.00032867893 0.014410224
		 0.00031292709 0 0.014410224 0 0 0.014410224 0 -0.015880277 0.029784512 0.01165891
		 0.016190264 0.029781708 0.019947197 0.015532906 0.029784527 -0.015747476 -0.015878839
		 0.029799394 -0.01637332;
createNode polySplit -n "polySplit6";
	rename -uid "EB4B27B6-D246-E5CC-C9CC-FB843F3A2B1B";
	setAttr -s 2 ".e[0:1]"  0.87506902 0.162532;
	setAttr -s 2 ".d[0:1]"  -2147483638 -2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "A91A6CD0-F942-4DA1-B037-84956DE7FD1B";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "925357BB-5943-A8A5-9A15-F787A382CD79";
	setAttr ".ics" -type "componentList" 1 "e[10:11]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 6;
	setAttr ".sv2" 35;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polySplit -n "polySplit7";
	rename -uid "81649885-F649-ABA2-E58B-B28296CEF7B6";
	setAttr ".e[0]"  0.93220901;
	setAttr ".d[0]"  -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "BC581BD5-0E47-B3EC-63A3-5EAF85CB8008";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[34]" -type "float3" 0 0 0.0063388036 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.0063388036 ;
	setAttr ".tk[36]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[37]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[38]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[39]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[40]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[41]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[42]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[43]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".tk[44]" -type "float3" 0 5.9604645e-08 0 ;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "78E50A96-3B42-80DB-EEA6-D9A63606F908";
	setAttr ".dc" -type "componentList" 1 "e[53]";
createNode polySplit -n "polySplit8";
	rename -uid "596D122F-EA4C-DF53-58D8-F1B3EFD9D5C5";
	setAttr -s 2 ".e[0:1]"  1 0.93548101;
	setAttr -s 2 ".d[0:1]"  -2147483637 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "785FA14C-0D41-D002-D693-6D8FDF602AF1";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.00033339948 0.15333252 -9.9607954 ;
	setAttr ".rs" 1934228096;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.1431493876374503 0.15320258127970465 -11.912782433807386 ;
	setAttr ".cbx" -type "double3" 9.143816186612483 0.15346246590941792 -8.008808899976346 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "0A94C998-E84A-6B63-EAC4-90B01EC18E7E";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[35]" -type "float3" 7.4505806e-09 0 -0.0035961051 ;
	setAttr ".tk[37]" -type "float3" -7.4505806e-09 0 0.0035961051 ;
createNode polySplit -n "polySplit9";
	rename -uid "61AD1E0F-A646-91E3-3056-95923D7EBCDE";
	setAttr -s 2 ".e[0:1]"  0.205027 0.79927999;
	setAttr -s 2 ".d[0:1]"  -2147483584 -2147483587;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "E826C1ED-8D40-0713-F734-D7B6BAB98459";
	setAttr -s 2 ".e[0:1]"  0.79416502 0.19123399;
	setAttr -s 2 ".d[0:1]"  -2147483592 -2147483587;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "77B2BD53-A746-2909-C728-62885D9AF989";
	setAttr -s 2 ".e[0:1]"  1 0.74107897;
	setAttr -s 2 ".d[0:1]"  -2147483587 -2147483583;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "C8FB8877-5544-3803-8A1A-6AA822733F63";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.039851371 0.15330587 -9.9607964 ;
	setAttr ".rs" 1769272234;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.3697456538382706 0.15320258127970465 -11.912782433807386 ;
	setAttr ".cbx" -type "double3" 5.4494483932020108 0.15340915624178386 -8.0088095139717179 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "CE8716F6-BC4F-E57B-D718-37A757CD50FC";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[42]" -type "float3" 0.0026673572 0 0 ;
	setAttr ".tk[43]" -type "float3" -0.0011410665 0 0 ;
	setAttr ".tk[45]" -type "float3" 0.047485434 8.5209617e-14 -1.3038516e-08 ;
	setAttr ".tk[46]" -type "float3" 0.00045166421 -8.5320639e-14 3.7252903e-09 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "721C8F30-B742-E35B-4DB3-E2AECEEF4977";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[47]" -type "float3" 0 0.11689781 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.11689781 0 ;
	setAttr ".tk[49]" -type "float3" 0 0.11689781 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.11689781 0 ;
createNode polySplit -n "polySplit12";
	rename -uid "E8BFA194-1345-224E-2D36-F48559D107F5";
	setAttr -s 2 ".e[0:1]"  0 0.77475798;
	setAttr -s 2 ".d[0:1]"  -2147483581 -2147483589;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "1B43FC6F-9549-F9EB-0A17-329E8624CB7A";
	setAttr -s 2 ".e[0:1]"  0 0.56255502;
	setAttr -s 2 ".d[0:1]"  -2147483581 -2147483589;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "96750443-784C-3607-2D10-99A483A7CF1F";
	setAttr -s 2 ".e[0:1]"  0 0.70860702;
	setAttr -s 2 ".d[0:1]"  -2147483581 -2147483582;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "2575F116-8245-2A2C-D1BC-ECA9B0E8CBA7";
	setAttr -s 2 ".e[0:1]"  0 0.42809701;
	setAttr -s 2 ".d[0:1]"  -2147483581 -2147483582;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "F2698EF8-F840-E836-E6C8-8EA134364614";
	setAttr -s 2 ".e[0:1]"  1 0.77868599;
	setAttr -s 2 ".d[0:1]"  -2147483592 -2147483587;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "C84B6EE7-AA46-0F1E-575B-FFB47F9D422D";
	setAttr -s 2 ".e[0:1]"  1 0.92421299;
	setAttr -s 2 ".d[0:1]"  -2147483592 -2147483587;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "D975AA30-514F-3562-379D-9EB33640B6B5";
	setAttr -s 2 ".e[0:1]"  0 0.73556298;
	setAttr -s 2 ".d[0:1]"  -2147483578 -2147483585;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "7DF60C6B-4743-7B98-E5CE-C9A94AD45B3D";
	setAttr -s 3 ".e[0:2]"  1 0.0040621301 0.44622999;
	setAttr -s 3 ".d[0:2]"  -2147483592 -2147483557 -2147483585;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "EF4ABBDC-CC42-E2B6-E226-1B98D7AB973E";
	setAttr -s 3 ".e[0:2]"  1 0.75969702 0.33230099;
	setAttr -s 3 ".d[0:2]"  -2147483592 -2147483557 -2147483587;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "9DF723E8-4941-A95A-DFD6-248CBF1DA3DA";
	setAttr -s 3 ".e[0:2]"  0 0.00196514 0.949687;
	setAttr -s 3 ".d[0:2]"  -2147483554 -2147483551 -2147483552;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "CA06C71D-B445-6A8F-53C2-499CFDCE463E";
	setAttr ".ics" -type "componentList" 1 "f[39]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.9442539 0.15322943 -9.9607964 ;
	setAttr ".rs" 1543339614;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.5187655428760669 0.15320258127970465 -11.912782433807386 ;
	setAttr ".cbx" -type "double3" -5.369742583861405 0.15325628293018845 -8.0088101279670916 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "2266C01E-8F46-2BBD-EA1F-0389AE91FB0F";
	setAttr ".ics" -type "componentList" 1 "f[37]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.8138771 0.15322943 -9.9662218 ;
	setAttr ".rs" 2130552977;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.2407481080929053 0.15320258127970465 -11.912782433807386 ;
	setAttr ".cbx" -type "double3" -5.3870056777675064 0.15325628293018845 -8.0196618821887604 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak10";
	rename -uid "73412A38-4544-D9D6-0CCE-06BC3A8866A7";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[64]" -type "float3" 0 0.091837429 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.091837429 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.091837429 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.091837429 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.091837429 0 ;
	setAttr ".tk[69]" -type "float3" 0 0.091837429 0 ;
	setAttr ".tk[70]" -type "float3" 0 0.091837429 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "5CE6DD1F-9940-9A5F-6199-55A5A7E4E223";
	setAttr ".ics" -type "componentList" 1 "f[36]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.2641101 0.15322943 -9.9628935 ;
	setAttr ".rs" 541058804;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.1431493876374503 0.15320258127970465 -11.912782433807386 ;
	setAttr ".cbx" -type "double3" -5.3850703643519413 0.15325628293018845 -8.0130043303597702 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak11";
	rename -uid "1D4FE189-E042-2D5F-A824-EFABF87E1656";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[71]" -type "float3" 0 0.059127197 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.059127197 0 ;
	setAttr ".tk[73]" -type "float3" 0 0.059127197 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "3A6A0315-D64A-6AE4-A771-7997CE1890D3";
	setAttr ".ics" -type "componentList" 1 "f[35]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.2641101 0.15322904 -9.3221931 ;
	setAttr ".rs" 557412583;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.1431493876374503 0.15320258127970465 -10.631381458387501 ;
	setAttr ".cbx" -type "double3" -5.3850703643519413 0.15325549896448809 -8.0130043303597702 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak12";
	rename -uid "C6CA58D2-E44F-D140-CF61-1BA18DF4C61E";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[74]" -type "float3" 0 0.02872066 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.02872066 0 ;
	setAttr ".tk[76]" -type "float3" 0 0.02872066 0 ;
	setAttr ".tk[77]" -type "float3" 0 0.02872066 0 ;
	setAttr ".tk[78]" -type "float3" 0 0.02872066 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "D639F412-4F49-6DE1-B57A-848603095A08";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.2564459 0.15322924 -8.5249882 ;
	setAttr ".rs" 1690614854;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.1431493876374503 0.15320258127970465 -9.0411653701844195 ;
	setAttr ".cbx" -type "double3" -5.369742583861405 0.15325589094733783 -8.0088101279670916 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak13";
	rename -uid "FD02759B-1B4D-D05A-B074-39BEFFAFF0C9";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[79]" -type "float3" 0 0.018639993 0 ;
	setAttr ".tk[80]" -type "float3" 0 0.018639993 0 ;
	setAttr ".tk[81]" -type "float3" 0 0.018639993 0 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "C4571E47-AB46-F6E3-144C-52A9A2FD8675";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[64]" -type "float3" 0 0.0033111712 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.0033111712 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.0033111712 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.0033111712 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.0033111712 0 ;
	setAttr ".tk[69]" -type "float3" 0 0.0033111712 0 ;
	setAttr ".tk[70]" -type "float3" 0 0.0033111712 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.010096769 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.010096769 0 ;
	setAttr ".tk[73]" -type "float3" 0 0.010096769 0 ;
	setAttr ".tk[74]" -type "float3" 0 0.011303533 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.011303533 0 ;
	setAttr ".tk[76]" -type "float3" 0 0.011303533 0 ;
	setAttr ".tk[77]" -type "float3" 0 0.011303533 0 ;
	setAttr ".tk[78]" -type "float3" 0 0.011303533 0 ;
	setAttr ".tk[79]" -type "float3" 0 0.0054266294 0 ;
	setAttr ".tk[80]" -type "float3" 0 0.0054266294 0 ;
	setAttr ".tk[81]" -type "float3" 0 0.0054266294 0 ;
	setAttr ".tk[82]" -type "float3" 0 0.011428799 0 ;
	setAttr ".tk[83]" -type "float3" 0 0.011428799 0 ;
	setAttr ".tk[84]" -type "float3" 0 0.011428799 0 ;
	setAttr ".tk[85]" -type "float3" 0 0.011428799 0 ;
	setAttr ".tk[86]" -type "float3" 0 0.011428799 0 ;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "F2500ACD-2549-9C17-50AB-A5920A848785";
	setAttr ".dc" -type "componentList" 1 "e[87]";
createNode polyTweak -n "polyTweak15";
	rename -uid "BDB1BDD7-AC45-FB94-E839-EE829E12FDF3";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[53]" -type "float3" -0.019634377 0 0 ;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "BC99EFFD-914A-0B78-F15F-19BF576AD451";
	setAttr ".dc" -type "componentList" 1 "vtx[21]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "73CE1517-2745-6B21-6A72-478C01782C37";
	setAttr ".dc" -type "componentList" 1 "vtx[53]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "CA1216D0-8941-C2B4-2A2B-65B26098AD4B";
	setAttr ".dc" -type "componentList" 1 "vtx[35]";
createNode polyTweak -n "polyTweak16";
	rename -uid "278E87D4-D644-6A81-DB27-C69EE74A5C59";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[49]" -type "float3" 0 0 -0.068595156 ;
	setAttr ".tk[50]" -type "float3" -0.04846596 -5.5511151e-17 -0.083358347 ;
	setAttr ".tk[51]" -type "float3" -0.056564204 0 0 ;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "B55C8579-A24B-1FC2-4609-19BB6EBDC63E";
	setAttr ".dc" -type "componentList" 1 "e[79]";
createNode polySplit -n "polySplit22";
	rename -uid "45FF4917-F147-0034-4291-1294BC70F47C";
	setAttr -s 2 ".e[0:1]"  0 0.73380798;
	setAttr -s 2 ".d[0:1]"  -2147483569 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "0139BE2E-0540-9687-99D7-04B5223ADA4A";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.9733109 0.15330607 -9.9607964 ;
	setAttr ".rs" 1856432857;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.449447779206638 0.15320258127970465 -11.912782433807386 ;
	setAttr ".cbx" -type "double3" 6.4971743955859811 0.15340954822463448 -8.0088101279670916 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "C9100E82-E64B-BA30-05CC-91B31105F632";
	setAttr ".ics" -type "componentList" 1 "f[32]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.2964449 0.15330626 -9.9687195 ;
	setAttr ".rs" 1886344638;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.4494483932020108 0.15320297326255528 -11.928629654383444 ;
	setAttr ".cbx" -type "double3" 9.1434410354396061 0.15340954822463448 -8.0088101279670916 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak17";
	rename -uid "DF68F15E-4941-95D6-6B45-E2945C416289";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[85]" -type "float3" 0 0.097039737 0 ;
	setAttr ".tk[86]" -type "float3" 0 0.097039737 0 ;
	setAttr ".tk[87]" -type "float3" 0 0.097039737 0 ;
createNode polyTweak -n "polyTweak18";
	rename -uid "67D406C1-164C-2DA4-AA84-FFB9AF75EDCB";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[88]" -type "float3" 0 0.073495261 0 ;
	setAttr ".tk[89]" -type "float3" 0 0.073495261 0 ;
	setAttr ".tk[90]" -type "float3" 0 0.073495261 0 ;
	setAttr ".tk[91]" -type "float3" 0 0.073495261 0 ;
createNode deleteComponent -n "deleteComponent12";
	rename -uid "53009EC8-AF49-F3E7-75D2-E5B89B3F6E16";
	setAttr ".dc" -type "componentList" 1 "e[78]";
createNode polySplit -n "polySplit23";
	rename -uid "F87AC915-DB4A-D54E-9A34-A2A83B6AA0D3";
	setAttr -s 2 ".e[0:1]"  0 0.52592301;
	setAttr -s 2 ".d[0:1]"  -2147483571 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "A064BA94-B340-165F-F40F-9DB4003800E5";
	setAttr ".ics" -type "componentList" 1 "f[21]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.2965169 0.15330626 -9.9687195 ;
	setAttr ".rs" 1908406660;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.4494483932020108 0.15320297326255528 -11.928629654383444 ;
	setAttr ".cbx" -type "double3" 9.1435853243522516 0.15340954822463448 -8.0088101279670916 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "DBAB89AC-E04A-712B-B10F-3F80469B6A98";
	setAttr ".ics" -type "componentList" 1 "f[68]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.2965817 0.15335663 -9.2074728 ;
	setAttr ".rs" 1393734668;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.4494483932020108 0.1533037128550685 -10.406136027826935 ;
	setAttr ".cbx" -type "double3" 9.143715491371319 0.15340954822463448 -8.0088101279670916 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak19";
	rename -uid "B2E7C6EC-9E4A-C52A-7E97-F2886CBE0950";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[92]" -type "float3" 0 0.052143067 0 ;
	setAttr ".tk[93]" -type "float3" 0 0.052143067 0 ;
	setAttr ".tk[94]" -type "float3" 0 0.052143067 0 ;
	setAttr ".tk[95]" -type "float3" 0 0.052143067 0 ;
	setAttr ".tk[96]" -type "float3" 0 0.052143067 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "854EA16D-A64E-C8C9-66EE-E0A7CACBCB71";
	setAttr ".ics" -type "componentList" 1 "f[60]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.2966323 0.15342836 -8.5284119 ;
	setAttr ".rs" 1339428118;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.4494483932020108 0.1533942608934753 -9.0480157165605171 ;
	setAttr ".cbx" -type "double3" 9.143816186612483 0.15346246590941792 -8.008808899976346 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak20";
	rename -uid "2D8B369C-5241-1A49-9C12-7081C00B5793";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[97]" -type "float3" 0 0.029369302 0 ;
	setAttr ".tk[98]" -type "float3" 0 0.029369302 0 ;
	setAttr ".tk[99]" -type "float3" 0 0.029369302 0 ;
createNode polyTweak -n "polyTweak21";
	rename -uid "45E49CEA-2A46-28C5-0E88-D0B2E065DCFA";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[29]" -type "float3" 0 -0.0069935755 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.0069935755 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.0069935755 0 ;
	setAttr ".tk[32]" -type "float3" 0 -0.0069935755 0 ;
	setAttr ".tk[100]" -type "float3" 0 0.014076355 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.014076355 0 ;
	setAttr ".tk[102]" -type "float3" 0 0.014076355 0 ;
	setAttr ".tk[103]" -type "float3" 0 0.014076355 0 ;
createNode polySplit -n "polySplit24";
	rename -uid "36DA0450-154D-F830-2838-13AB407A12B8";
	setAttr -s 2 ".e[0:1]"  0.34617701 0.32034901;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "762ACB84-1B4C-48ED-B98F-3CBB019D7C6C";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0001458239 9.0429554 -11.912577 ;
	setAttr ".rs" 878441514;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.1431493876374503 7.0415197565398078 -11.912620339028924 ;
	setAttr ".cbx" -type "double3" 9.1434410354396061 11.044391197763595 -11.912533151685965 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak22";
	rename -uid "76E36911-6743-5FCF-5BA8-7586FE385275";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[104]" -type "float3" 0 -0.01768394 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.039070684 0 ;
createNode polyTweak -n "polyTweak23";
	rename -uid "A8D87D44-1443-C192-AFD8-77A74F316FCE";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[104]" -type "float3" 0 0.14876574 -7.4505806e-09 ;
	setAttr ".tk[105]" -type "float3" 0 0.14876576 0 ;
	setAttr ".tk[106]" -type "float3" 0.44379818 0 0.25461757 ;
	setAttr ".tk[107]" -type "float3" 0.00041788816 -0.054687884 0.31855547 ;
	setAttr ".tk[108]" -type "float3" 0.00041788816 -0.054687884 0.31855547 ;
	setAttr ".tk[109]" -type "float3" -0.44379818 0 0.25461757 ;
	setAttr ".tk[110]" -type "float3" 0.23567645 0 0.25461757 ;
createNode deleteComponent -n "deleteComponent13";
	rename -uid "62D92F77-7E4F-6059-D701-3B8B914F6258";
	setAttr ".dc" -type "componentList" 1 "vtx[104]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "BA2CFA09-3B48-5829-B8B1-88AE6D5A86A6";
	setAttr ".dc" -type "componentList" 1 "vtx[27]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "90AC5945-1648-41AD-7CAF-D08C4DDDB60E";
	setAttr ".dc" -type "componentList" 1 "e[193]";
createNode polySplit -n "polySplit25";
	rename -uid "805654EF-8540-B460-D67C-F9BFF0B07F64";
	setAttr -s 2 ".e[0:1]"  0.189595 0.79090202;
	setAttr -s 2 ".d[0:1]"  -2147483577 -2147483573;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak24";
	rename -uid "85938C6D-534A-70B6-F78B-B4AEC7CBA778";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[111]" -type "float3" -2.3283064e-10 0 -0.001847807 ;
	setAttr ".tk[112]" -type "float3" 2.3283064e-10 0 0.001847807 ;
createNode polySplit -n "polySplit26";
	rename -uid "A603E1C6-454C-1321-0457-74A67A4933DF";
	setAttr -s 2 ".e[0:1]"  0.059678301 0.0692591;
	setAttr -s 2 ".d[0:1]"  -2147483451 -2147483572;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "D59E1DF3-A54B-FE7F-159A-50B2B9FB934D";
	setAttr -s 2 ".e[0:1]"  0.94324398 0.93581402;
	setAttr -s 2 ".d[0:1]"  -2147483450 -2147483449;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "0B0F3096-2946-21F9-26FB-92959701F4EC";
	setAttr ".ics" -type "componentList" 2 "f[20]" "f[88]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.039852597 1.6908565 -8.3979321 ;
	setAttr ".rs" 1793066649;
	setAttr ".lt" -type "double3" 7.8831831737029901e-16 2.5794524936145757e-16 1.1308853802926855 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.3697431978567787 1.6907741265461427 -8.787053561159583 ;
	setAttr ".cbx" -type "double3" 5.4494483932020108 1.6909387593432461 -8.0088101279670916 ;
createNode polyTweak -n "polyTweak25";
	rename -uid "E502AD75-C742-A5E1-FE2A-EEA37C0E8E14";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[113:116]" -type "float3"  -0.007472137 0 0 -0.0024408526
		 0 0 0.0071700877 0 0 0.0038240619 0 0;
createNode polyCube -n "polyCube2";
	rename -uid "E17636C1-2E41-5DA1-C240-AFAC5C0A097F";
	setAttr ".cuv" 1;
createNode polyTweak -n "polyTweak26";
	rename -uid "AF184294-5746-BD6A-2804-CD9462B76970";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 -0.016970605 0 0 -0.016970605
		 0 0 -0.016970605 0 0 -0.016970605 0;
createNode polySplit -n "polySplit28";
	rename -uid "7C895E6A-9F43-3BB2-88A6-E992FC4F7A4E";
	setAttr -s 2 ".e[0:1]"  0.33356601 0.66647398;
	setAttr -s 2 ".d[0:1]"  -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit29";
	rename -uid "8A4F23FC-3545-4E75-EABA-1DB3CC760AA3";
	setAttr -s 2 ".e[0:1]"  0.087631203 0.90697402;
	setAttr -s 2 ".d[0:1]"  -2147483636 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "93A1455A-3642-7BAF-5EB7-BD95015849FC";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.46795880379264065 0 0 0 0 11.144276686953436 0 0 0 0 0.60732345279237532 0
		 8.8968680760935186 5.6238363019761719 9.3086673258922339 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.6628885 6.8832741 9.3086672 ;
	setAttr ".rs" 639371729;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.6628886741971982 6.3965596680683197 9.0050055994960463 ;
	setAttr ".cbx" -type "double3" 8.6628886741971982 7.3699883617781738 9.6123290522884215 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak27";
	rename -uid "89C45EF5-1148-8944-AE38-46870E98A314";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0.0015618084 0 0 0.0015224637
		 0 0 -0.028376706 0 0 -0.024878167 0;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "2493C05D-9949-6811-D406-9E99C6690A7E";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.46795880379264065 0 0 0 0 11.144276686953436 0 0 0 0 0.60732345279237532 0
		 8.8968680760935186 5.6238363019761719 9.3086673258922339 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.6628885 6.8832741 9.3086672 ;
	setAttr ".rs" 1832668746;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.6628886741971982 6.4412818378592842 9.0329077474141783 ;
	setAttr ".cbx" -type "double3" 8.6628886741971982 7.3252658598618829 9.5844258364909773 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak28";
	rename -uid "775BD5CF-B040-DD0B-5884-B9A826A5F9C4";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0.0040130066 0.045942824 ;
	setAttr ".tk[13]" -type "float3" 0 0.0040130066 -0.045942649 ;
	setAttr ".tk[14]" -type "float3" 0 -0.0040130029 -0.045942649 ;
	setAttr ".tk[15]" -type "float3" 0 -0.0040130029 0.045942824 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "83352552-394E-987B-BA06-9CBCEDA84015";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.46795880379264065 0 0 0 0 11.144276686953436 0 0 0 0 0.60732345279237532 0
		 8.8968680760935186 5.6238363019761719 9.3086673258922339 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.2590904 7.1305881 9.3086662 ;
	setAttr ".rs" 1378699821;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.0366398314463154 6.8865107007779836 9.0329068605313623 ;
	setAttr ".cbx" -type "double3" 6.481540671376008 7.3746656827527133 9.5844254744979906 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak29";
	rename -uid "5BBBDD7B-8044-907D-9C2E-D59EDAF3B588";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[16]" -type "float3" -5.6121368 0.039951354 0 ;
	setAttr ".tk[17]" -type "float3" -5.6121368 0.039951354 0 ;
	setAttr ".tk[18]" -type "float3" -4.6614103 0.0044327592 0 ;
	setAttr ".tk[19]" -type "float3" -4.6614103 0.0044327592 0 ;
createNode polyTweak -n "polyTweak30";
	rename -uid "CC36F867-5743-DCA1-590C-2B842D5F149B";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[106]" -type "float3" 0.00019980189 -0.0053377026 -0.044453438 ;
	setAttr ".tk[107]" -type "float3" 0.21103974 -0.0053377026 -0.10838658 ;
	setAttr ".tk[108]" -type "float3" -0.21103972 -0.0053377026 -0.10838694 ;
	setAttr ".tk[109]" -type "float3" 0.00019763358 -0.0053377026 -0.044453438 ;
	setAttr ".tk[110]" -type "float3" 0.00019929168 -0.0053377026 -0.044453438 ;
	setAttr ".tk[117]" -type "float3" -0.0137345 -1.2654135e-06 -0.013367412 ;
	setAttr ".tk[118]" -type "float3" -0.0137345 8.4543245e-07 0.013367412 ;
	setAttr ".tk[119]" -type "float3" 0.013734498 1.2654135e-06 0.013367412 ;
	setAttr ".tk[120]" -type "float3" 0.013734498 -6.9455848e-07 -0.013367412 ;
	setAttr ".tk[121]" -type "float3" -0.012187116 1.9438247e-07 0.013079815 ;
	setAttr ".tk[122]" -type "float3" -0.012187127 -5.2608237e-07 -0.013079815 ;
	setAttr ".tk[123]" -type "float3" 0.012187127 5.2608243e-07 0.013079815 ;
	setAttr ".tk[124]" -type "float3" 0.012187107 -4.9199883e-08 -0.013079815 ;
createNode polySplit -n "polySplit30";
	rename -uid "31DB66A0-7D48-FE1D-6741-58879B792C81";
	setAttr -s 2 ".e[0:1]"  0.70713103 0.29337299;
	setAttr -s 2 ".d[0:1]"  -2147483450 -2147483575;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit31";
	rename -uid "82555F2F-C747-93EF-C9C3-769942884234";
	setAttr -s 2 ".e[0:1]"  0.520495 0.465386;
	setAttr -s 2 ".d[0:1]"  -2147483450 -2147483427;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "7A4EF891-C14E-32F3-F992-04A182AF6232";
	setAttr ".ics" -type "componentList" 1 "f[97]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.096601583 1.6907914 -10.349918 ;
	setAttr ".rs" 512768242;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7739609575100124 1.6907317923983163 -11.912782433807386 ;
	setAttr ".cbx" -type "double3" 1.5807577964803443 1.690850955184791 -8.787053561159583 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak31";
	rename -uid "BC05F0D0-614A-3798-3195-63B12726059D";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[125]" -type "float3" 0.0072128307 0 0 ;
	setAttr ".tk[126]" -type "float3" 0.020469859 0 0 ;
	setAttr ".tk[127]" -type "float3" 0.01707677 0 0 ;
	setAttr ".tk[128]" -type "float3" 0.010605913 0 0 ;
createNode polyTweak -n "polyTweak32";
	rename -uid "1D35C5E9-3A47-FD2D-633F-12AD3E0D7302";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[129]" -type "float3" 0 0.03046979 0 ;
	setAttr ".tk[130]" -type "float3" 0 0.03046979 0 ;
	setAttr ".tk[131]" -type "float3" 0 0.03046979 0 ;
	setAttr ".tk[132]" -type "float3" 0 0.03046979 0 ;
createNode polySplit -n "polySplit32";
	rename -uid "EB611A98-EE41-A5C0-9E9A-F09B6C65D4D9";
	setAttr -s 2 ".e[0:1]"  0.785142 0.76330698;
	setAttr -s 2 ".d[0:1]"  -2147483420 -2147483416;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak33";
	rename -uid "A5AA08B8-CB4C-0AC5-FA7A-F5850B46290F";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[133:134]" -type "float3"  -0.00049031433 -2.4229667e-09
		 0.0016171499 0.00049031433 2.4229667e-09 -0.0016171499;
createNode polySplit -n "polySplit33";
	rename -uid "F3DB92F1-524A-E796-5883-24A5AE0E9ADF";
	setAttr -s 2 ".e[0:1]"  0.83000302 0.21311501;
	setAttr -s 2 ".d[0:1]"  -2147483412 -2147483418;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit34";
	rename -uid "EC200CF4-E645-1F69-33DF-E889364906A5";
	setAttr -s 2 ".e[0:1]"  0.21636 0.78543001;
	setAttr -s 2 ".d[0:1]"  -2147483412 -2147483410;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "2D347BAF-0545-891C-FB6E-5E8F4A85D048";
	setAttr ".ics" -type "componentList" 1 "f[97]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.096601427 2.0915077 -11.559522 ;
	setAttr ".rs" 1943377214;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7840619488893958 2.0914934905583458 -11.912782433807386 ;
	setAttr ".cbx" -type "double3" 1.5908590948574139 2.0915217133235631 -11.206261642116294 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak34";
	rename -uid "8F6760E5-6143-AA9A-2055-389EA809A314";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[135]" -type "float3" -0.00059985631 0 0 ;
	setAttr ".tk[136]" -type "float3" 0.0067447103 0 0 ;
	setAttr ".tk[137]" -type "float3" -0.0029426417 0 0 ;
	setAttr ".tk[138]" -type "float3" -0.0015393058 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "F5A60972-4D47-0BC6-84E2-A3BDA8F5DD20";
	setAttr ".ics" -type "componentList" 1 "f[103]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.2978159 2.0915663 -9.9967957 ;
	setAttr ".rs" 391430260;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.004772804827335 2.0915201453921624 -11.206536712043381 ;
	setAttr ".cbx" -type "double3" 1.5908590948574139 2.0916126533448205 -8.7870541751549549 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak35";
	rename -uid "64D194A3-6142-6C02-A79D-63A2025B0063";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[139]" -type "float3" 0 0.23137514 0 ;
	setAttr ".tk[140]" -type "float3" 0 0.23137514 0 ;
	setAttr ".tk[141]" -type "float3" 0 0.23137514 0 ;
	setAttr ".tk[142]" -type "float3" 0 0.23137514 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.23137514 0 ;
	setAttr ".tk[144]" -type "float3" 0 0.23137514 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	rename -uid "5FEB9E7B-B24F-D8A3-147F-A48467CDE8FB";
	setAttr ".ics" -type "componentList" 1 "f[103]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.2978159 2.4977922 -9.9967957 ;
	setAttr ".rs" 504195752;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.004772804827335 2.4977460844846195 -11.206536712043381 ;
	setAttr ".cbx" -type "double3" 1.5908590948574139 2.4978385924372777 -8.7870541751549549 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak36";
	rename -uid "B21E64BB-4240-2598-A4E4-4581A5C5BCF3";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[145]" -type "float3" 0 0.030885231 0 ;
	setAttr ".tk[146]" -type "float3" 0 0.030885231 0 ;
	setAttr ".tk[147]" -type "float3" 0 0.030885231 0 ;
	setAttr ".tk[148]" -type "float3" 0 0.030885231 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	rename -uid "18B1B0F4-934C-30F3-4CD1-FEA285B30783";
	setAttr ".ics" -type "componentList" 1 "f[105]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5113413 2.0915463 -9.9974661 ;
	setAttr ".rs" 1005352100;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7840619488893958 2.0915115217694566 -11.207877677937921 ;
	setAttr ".cbx" -type "double3" -1.2386206175607362 2.0915812947168009 -8.7870541751549549 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak37";
	rename -uid "5F67B714-294F-4ED4-4CEA-56B058AAB61D";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[149]" -type "float3" 0 0.027999315 0 ;
	setAttr ".tk[150]" -type "float3" 0 0.027999315 0 ;
	setAttr ".tk[151]" -type "float3" 0 0.027999315 0 ;
	setAttr ".tk[152]" -type "float3" 0 0.027999315 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	rename -uid "359653BF-D949-B97B-8D87-AABC48747A35";
	setAttr ".ics" -type "componentList" 1 "f[105]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5113413 2.5015323 -9.9974661 ;
	setAttr ".rs" 1099083513;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7840619488893958 2.5014973603614727 -11.207877677937921 ;
	setAttr ".cbx" -type "double3" -1.2386206175607362 2.501567133308817 -8.7870541751549549 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak38";
	rename -uid "6BF8F84F-3742-2ECA-9978-B187E9FD918F";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[153]" -type "float3" 0 0.031171095 0 ;
	setAttr ".tk[154]" -type "float3" 0 0.031171095 0 ;
	setAttr ".tk[155]" -type "float3" 0 0.031171095 0 ;
	setAttr ".tk[156]" -type "float3" 0 0.031171095 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	rename -uid "1F93ECC5-C544-6287-577A-E4B94AAD8C87";
	setAttr ".ics" -type "componentList" 1 "f[104]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.11724035 2.0915589 -9.9973211 ;
	setAttr ".rs" 1355431238;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2392550282798453 2.0915130897008574 -11.207587872121884 ;
	setAttr ".cbx" -type "double3" 1.0047743398157674 2.0916048136878151 -8.7870547891503286 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak39";
	rename -uid "9EED7213-3346-1D2B-5A8B-0EBA167F1EC5";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[136]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[138]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[139]" -type "float3" 0.023957159 0 0 ;
	setAttr ".tk[140]" -type "float3" 0.02381376 0 0.020416543 ;
	setAttr ".tk[143]" -type "float3" -0.023957159 0 0 ;
	setAttr ".tk[144]" -type "float3" -0.023813765 0 0.020416543 ;
	setAttr ".tk[146]" -type "float3" -0.0028193828 0 0 ;
	setAttr ".tk[148]" -type "float3" -0.0028193828 0 0 ;
	setAttr ".tk[150]" -type "float3" -0.0062838509 0 0 ;
	setAttr ".tk[151]" -type "float3" 0 0 -0.025488451 ;
	setAttr ".tk[152]" -type "float3" -0.0062838509 0 -0.025488481 ;
	setAttr ".tk[155]" -type "float3" 0.0027919449 0 0 ;
	setAttr ".tk[156]" -type "float3" 0.0027919449 0 0 ;
	setAttr ".tk[157]" -type "float3" 0 0.022945289 0 ;
	setAttr ".tk[158]" -type "float3" 0 0.022945289 -0.025488451 ;
	setAttr ".tk[159]" -type "float3" 0.0057060015 0.022945289 0 ;
	setAttr ".tk[160]" -type "float3" 0.0057060015 0.022945289 -0.025488481 ;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	rename -uid "E3829145-F94F-EE2F-5F0B-398314DB9895";
	setAttr ".ics" -type "componentList" 1 "f[104]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.11724035 2.0915589 -9.9973221 ;
	setAttr ".rs" 763106319;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2332230609864796 2.091513481683708 -11.201081977150016 ;
	setAttr ".cbx" -type "double3" 0.99874237252240161 2.0916044217049654 -8.7935612981175701 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak40";
	rename -uid "A4A0A129-DC44-D88A-5FA4-258E52F5F468";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[161]" -type "float3" -0.00029278288 1.5861616e-08 0.00031553739 ;
	setAttr ".tk[162]" -type "float3" -0.00029278247 -1.8745546e-08 -0.00031581166 ;
	setAttr ".tk[163]" -type "float3" 0.00029261733 1.8745546e-08 0.00031581166 ;
	setAttr ".tk[164]" -type "float3" 0.00029278288 -9.1324459e-09 -0.00031581166 ;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	rename -uid "9B16B1F4-FA49-3853-BAED-7CB6C8D40C86";
	setAttr ".ics" -type "componentList" 1 "f[108]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.11692314 3.6131277 -11.207063 ;
	setAttr ".rs" 1302916092;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2386206175607362 2.0915130897008574 -11.207587872121884 ;
	setAttr ".cbx" -type "double3" 1.0047743398157674 5.1347421125152621 -11.206536712043381 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak41";
	rename -uid "6A77ED93-F548-CA8F-E4C1-5D9D75779F14";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[165]" -type "float3" -0.0043917424 2.3420868e-07 0.0047330586 ;
	setAttr ".tk[166]" -type "float3" -0.0043917359 -2.8268619e-07 -0.0047371765 ;
	setAttr ".tk[167]" -type "float3" 0.0043892595 2.7800581e-07 0.004737176 ;
	setAttr ".tk[168]" -type "float3" 0.0043917424 -1.3774749e-07 -0.0047371765 ;
createNode polyTweak -n "polyTweak42";
	rename -uid "C12C877D-8D41-6C57-5403-79BC0D8CA1AB";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[165]" -type "float3" 0 0.0084530246 0 ;
	setAttr ".tk[166]" -type "float3" 0 0.0084530246 0 ;
	setAttr ".tk[167]" -type "float3" 0 0.0084530246 0 ;
	setAttr ".tk[168]" -type "float3" 0 0.0084530246 0 ;
	setAttr ".tk[169]" -type "float3" 0.0027116677 0.0057618693 0.0015572812 ;
	setAttr ".tk[170]" -type "float3" -0.0027116677 0.0057618422 0.0015547401 ;
	setAttr ".tk[171]" -type "float3" -0.0027116677 -0.0057618693 0.0015547401 ;
	setAttr ".tk[172]" -type "float3" 0.0027116677 -0.0057618422 0.0015572812 ;
createNode polySplit -n "polySplit35";
	rename -uid "111FFC6F-8140-24D1-60EB-B0923B5AAB51";
	setAttr -s 4 ".v[0:3]" -type "float3"  -0.44370601 -0.31975299 0.336523 
		-0.44370401 -0.17578299 0.33904201 -0.44371501 -0.18686 0.226689 -0.44375399 -0.315283 
		0.230553;
	setAttr -s 6 ".e[0:5]"  0 4 4 4 4 0.84073901;
	setAttr -s 6 ".d[0:5]"  -2147483611 0 1 2 3 -2147483614;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit36";
	rename -uid "9E867F9A-E141-02ED-503F-5A83BF2343BD";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483336 -2147483333;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent16";
	rename -uid "BFA28C0F-F140-FDC2-BF99-45941BF5A3E0";
	setAttr ".dc" -type "componentList" 1 "e[316]";
createNode polyExtrudeFace -n "polyExtrudeFace30";
	rename -uid "5A884999-4D48-70A7-8AEA-9BB4FF0EAB42";
	setAttr ".ics" -type "componentList" 1 "f[140]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.1418228 3.839581 5.2785854 ;
	setAttr ".rs" 1878722926;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.1427521326311467 2.2233071315419428 3.2494246874817061 ;
	setAttr ".cbx" -type "double3" -9.1408935686372015 5.455855051410996 7.3077459131554825 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak43";
	rename -uid "2F74385B-C549-8C24-1C4C-098EBB72C58E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[174:177]" -type "float3"  1.8497492e-05 -0.0084474711
		 0.01818287 2.0106472e-05 0.09335205 0.015663916 1.1260023e-05 0.10442878 -0.068967283
		 -2.0106472e-05 -0.012917446 -0.072831236;
createNode polyTweak -n "polyTweak44";
	rename -uid "8358122E-E74E-A8B6-48DA-C1B266A1E7C2";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[178]" -type "float3" -0.0036442687 0.0087759914 -0.0070339516 ;
	setAttr ".tk[179]" -type "float3" -0.0036380847 0.0087759914 0.007033952 ;
	setAttr ".tk[180]" -type "float3" -0.0036431092 -0.0087759728 0.0070339553 ;
	setAttr ".tk[181]" -type "float3" -0.0036445286 -0.0087759923 -0.0070339558 ;
createNode polySplit -n "polySplit37";
	rename -uid "623F0927-B943-5BCB-5904-F08E1278465E";
	setAttr -s 4 ".v[0:3]" -type "float3"  -0.443762 -0.317184 -0.027009999 
		-0.443728 -0.085303001 -0.023095001 -0.443753 -0.085804 -0.205612 -0.44376299 -0.313656 
		-0.213808;
	setAttr -s 6 ".e[0:5]"  0.56017703 4 4 4 4 0.23450799;
	setAttr -s 6 ".d[0:5]"  -2147483614 0 1 2 3 -2147483614;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit38";
	rename -uid "8EB95A01-0843-9B1D-1C7E-649975702C2E";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483322 -2147483319;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent17";
	rename -uid "604E8DB9-3A48-9390-971A-4185CC1F4563";
	setAttr ".dc" -type "componentList" 1 "e[326]";
createNode polyExtrudeFace -n "polyExtrudeFace31";
	rename -uid "2F21560B-E343-32CF-52AD-2896A8A892FD";
	setAttr ".ics" -type "componentList" 1 "f[145]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.1421576 3.8311393 -2.7962608 ;
	setAttr ".rs" 471322963;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.1425353922644916 2.2352645683886943 -4.7636984509827327 ;
	setAttr ".cbx" -type "double3" -9.1417801779557539 5.4270139332470269 -0.82882314402606494 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak45";
	rename -uid "38D549CD-BA4B-D1D4-83AC-049ED04C4BBE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[184:187]" -type "float3"  -1.0557972e-06 -0.010107338
		 -0.013219749 1.0729161e-06 0.00067927851 -0.017134707 -2.6582592e-07 -0.0020966548
		 -0.025609966 -6.0806155e-07 -0.01363527 -0.017414058;
createNode polyTweak -n "polyTweak46";
	rename -uid "91B5AE90-3843-9785-0C53-F59BCF547950";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[188]" -type "float3" -0.0017155969 0.0058842357 -0.0046312059 ;
	setAttr ".tk[189]" -type "float3" -0.0017155708 0.0058842357 0.0046312083 ;
	setAttr ".tk[190]" -type "float3" -0.0017160695 -0.0057253172 0.0046312036 ;
	setAttr ".tk[191]" -type "float3" -0.0017173496 -0.0058842367 -0.0046312078 ;
createNode polySplit -n "polySplit39";
	rename -uid "291670F9-054F-0B4B-CF2A-BFBF6654C1C9";
	setAttr -s 4 ".v[0:3]" -type "float3"  0.44387901 -0.231553 0.159391 
		0.44387901 -0.023246 0.158494 0.44389501 -0.025978001 0.32486999 0.443896 -0.23126 
		0.329043;
	setAttr -s 6 ".e[0:5]"  0.57185602 3 3 3 3 0.748721;
	setAttr -s 6 ".d[0:5]"  -2147483597 0 1 2 3 -2147483597;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit40";
	rename -uid "BA800185-F94C-605D-5A9E-54A1A6CF19D5";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483305 -2147483308;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent18";
	rename -uid "FDC11EFC-0542-5CD0-C467-08AC173DC463";
	setAttr ".dc" -type "componentList" 1 "e[344]";
createNode polyTweak -n "polyTweak47";
	rename -uid "9FFCB2DA-0342-7C12-B86F-5CBA4B0A3A5E";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[194:197]" -type "float3"  -5.8433386e-07 -0.10052177
		 0.010059424 -5.8433386e-07 -0.087808825 0.01095643 5.1633884e-07 -0.085076854 0.024152104
		 5.8433386e-07 -0.10081477 0.01997916;
createNode polySplit -n "polySplit41";
	rename -uid "27C3D562-D241-B711-D76E-ACADCDF36C47";
	setAttr -s 4 ".v[0:3]" -type "float3"  0.44384199 -0.30304599 -0.216204 
		0.44384199 -0.110867 -0.214779 0.443858 -0.11336 -0.04848 0.443858 -0.29956901 -0.049247999;
	setAttr -s 6 ".e[0:5]"  0.31618401 3 3 3 3 0.61529201;
	setAttr -s 6 ".d[0:5]"  -2147483597 0 1 2 3 -2147483597;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit42";
	rename -uid "8526F80A-084A-A111-50FF-2CBB8CCEBC7A";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483299 -2147483302;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent19";
	rename -uid "9F5192FE-AB41-120D-0DD9-3FB3CF68F88E";
	setAttr ".dc" -type "componentList" 1 "e[350]";
createNode polyExtrudeFace -n "polyExtrudeFace32";
	rename -uid "1A33135A-E04E-5E44-EE58-FEB2C60125EA";
	setAttr ".ics" -type "componentList" 1 "f[151]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.1443157 3.6833298 -2.3606966 ;
	setAttr ".rs" 353263619;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 9.1441231842989623 2.19305036731431 -4.3649689347904328 ;
	setAttr ".cbx" -type "double3" 9.144508159397807 5.1736093680228219 -0.35642427562768991 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak48";
	rename -uid "8550985F-D349-09C4-F3F2-02A171BCF1D4";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[200]" -type "float3" -1.3428403e-06 -0.027454892 0.0043356097 ;
	setAttr ".tk[201]" -type "float3" -1.3428403e-06 0.0069770105 0.002910618 ;
	setAttr ".tk[202]" -type "float3" 1.3428403e-06 0.0094699776 0.031179754 ;
	setAttr ".tk[203]" -type "float3" 1.3428403e-06 -0.030931823 0.031947743 ;
createNode polyExtrudeFace -n "polyExtrudeFace33";
	rename -uid "7EB24F81-3A41-0107-2089-CAB5488D4A0D";
	setAttr ".ics" -type "componentList" 1 "f[150]";
	setAttr ".ix" -type "matrix" 20.602265990250135 0 0 0 0 13.152761893742952 0 0 0 0 20.602265990250135 0
		 0 6.5400496285031711 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.1450891 3.6258607 5.3408551 ;
	setAttr ".rs" 1862869564;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 9.1449011164365004 2.1723493610099727 3.4910628735072042 ;
	setAttr ".cbx" -type "double3" 9.1452762676093791 5.0793717910380742 7.190647171606332 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak49";
	rename -uid "AF122730-6246-8FBB-F60F-29BADCCE4ED3";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[204]" -type "float3" 0.0029096655 0.0051825149 -0.0044497089 ;
	setAttr ".tk[205]" -type "float3" 0.0029105204 0.0051825163 0.0044497084 ;
	setAttr ".tk[206]" -type "float3" 0.0029096655 -0.005182514 -0.0044497093 ;
	setAttr ".tk[207]" -type "float3" 0.0029105204 -0.0051825154 0.0044497084 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "A1EE8FB2-6F43-5083-4BF2-86AE93F92AFA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "383B770E-624C-F843-776A-C3B4F0E1C6DB";
createNode file -n "file1";
	rename -uid "48620B0A-6842-0F02-C9F0-4C98B0F96CE1";
	setAttr ".ftn" -type "string" "/Users/laurencarr/Desktop/Maya Projects/Final_Castle//images/whitestone.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "F50BD26A-BB44-EFC2-0D0E-689678A61B52";
	setAttr ".re" -type "float2" 1 3 ;
createNode lambert -n "redwood";
	rename -uid "9A8BD9D9-2943-A131-F579-62A1F7ACF2C0";
createNode shadingEngine -n "lambert2SG";
	rename -uid "6CA52B37-8C49-F930-D8F4-FE8C06E3F3D5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "DCFA9F2F-6844-B56D-492D-28857393F147";
createNode file -n "file2";
	rename -uid "FC0C07B5-684C-F7E3-98E6-1A94B70DDB64";
	setAttr ".ftn" -type "string" "/Users/laurencarr/Desktop/Maya Projects/Final_Castle//images/redwood.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "C913214C-374C-34A1-F629-95B578412709";
	setAttr ".re" -type "float2" 3 3 ;
createNode lambert -n "door";
	rename -uid "B1E74FB6-8441-8F28-0387-6FABA49FB7AF";
createNode shadingEngine -n "lambert3SG";
	rename -uid "750809EB-C14F-D3DF-181A-8BB7DF106A0D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "899B7D80-AC4C-F7C9-5B44-5EB2C095B848";
createNode file -n "file3";
	rename -uid "57C62687-DA4F-AE83-D5F9-008F4A66E95C";
	setAttr ".ftn" -type "string" "/Users/laurencarr/Desktop/Maya Projects/Final_Castle//images/door.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode groupId -n "groupId2";
	rename -uid "5A2BBA6E-D64E-D87D-2029-37919B0E3819";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "C94D51F5-1B47-058C-C8B8-BE904FE364F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0]" "f[3:4]" "f[81]";
createNode groupId -n "groupId4";
	rename -uid "70E9CE07-6F49-EE6A-68CB-80803ABF4427";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "AD3FAD4A-E047-1F1E-AD71-E495D72F6262";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 24 "f[19]" "f[21]" "f[25:26]" "f[29]" "f[31:34]" "f[36]" "f[60]" "f[68]" "f[82]" "f[84]" "f[86:87]" "f[97:98]" "f[106]" "f[110]" "f[113]" "f[115]" "f[117]" "f[119:120]" "f[122]" "f[124]" "f[126]" "f[141:144]" "f[146:149]" "f[152:159]";
	setAttr ".irc" -type "componentList" 24 "f[14]" "f[20]" "f[27]" "f[30]" "f[41:43]" "f[46]" "f[51]" "f[54]" "f[59]" "f[62]" "f[64]" "f[69]" "f[74]" "f[80]" "f[89:92]" "f[99:101]" "f[103]" "f[105]" "f[107]" "f[109]" "f[114]" "f[118]" "f[123]" "f[127]";
createNode groupId -n "groupId5";
	rename -uid "B6F9372C-574D-5CEE-EE13-7389A0802C98";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "87643FD8-1447-8081-C3CB-528398B5E146";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[5]";
	setAttr ".irc" -type "componentList" 1 "f[151]";
createNode groupId -n "groupId3";
	rename -uid "731AFBE5-944C-4B53-9C0E-E78F506B6F98";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "757DA436-A148-7845-1874-0688F1718063";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 21 "f[9]" "f[22:24]" "f[28]" "f[35]" "f[37:40]" "f[44:45]" "f[47:50]" "f[52:53]" "f[55:58]" "f[61]" "f[63]" "f[65:67]" "f[70:73]" "f[75:79]" "f[85]" "f[112]" "f[121]" "f[125]" "f[128:131]" "f[133]" "f[136]";
	setAttr ".irc" -type "componentList" 22 "f[0:8]" "f[10:21]" "f[25:27]" "f[29:34]" "f[36]" "f[41:43]" "f[46]" "f[51]" "f[54]" "f[59:60]" "f[62]" "f[64]" "f[68:69]" "f[74]" "f[80:84]" "f[86:111]" "f[113:120]" "f[122:124]" "f[126:127]" "f[132]" "f[134:135]" "f[137:159]";
createNode groupId -n "groupId1";
	rename -uid "19BDE2BE-B141-191F-2238-D88A701583FD";
	setAttr ".ihi" 0;
createNode lambert -n "blackstone";
	rename -uid "8B273771-5143-962A-9870-FA86B2A697FC";
	setAttr ".tcf" 0.20800000429153442;
createNode place2dTexture -n "place2dTexture3";
	rename -uid "DAE30C11-8041-8C75-363A-BB92A4359D9C";
	setAttr ".re" -type "float2" 3 1.8 ;
createNode blinn -n "goldwood";
	rename -uid "2D481267-224F-CB3A-CACE-23ADA69CA922";
createNode shadingEngine -n "blinn2SG";
	rename -uid "4A4F89E4-DC46-5DCA-57CD-F0BBB52A71C9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "FADE33E7-1440-9663-A1CA-E0BEF12B8B1F";
createNode file -n "file4";
	rename -uid "3D8BA62E-844F-F3C9-F741-FB9E9EC9A72C";
	setAttr ".ftn" -type "string" "/Users/laurencarr/Desktop/Maya Projects/Final_Castle//images/goldwood.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "FC444BBF-0A4E-3DB7-D488-26BBE1287A6F";
createNode groupId -n "groupId6";
	rename -uid "ED2218A3-DA47-7D9A-145F-F99DDBE0C2A0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "7D687544-E84D-8491-0E28-41AD0754362E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[14:18]";
createNode lambert -n "darkwood";
	rename -uid "B16A1F49-0E4D-EAAC-A58C-3EBC08C297D7";
createNode shadingEngine -n "lambert4SG";
	rename -uid "08D89327-F24F-07E3-FEC1-D0AFDBC03B0F";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "D922735F-CB4B-03EC-6725-118DEA359EBA";
createNode file -n "file5";
	rename -uid "8AE940E9-554F-DE12-BA1B-E8BA6A952D4D";
	setAttr ".ftn" -type "string" "/Users/laurencarr/Desktop/Maya Projects/Final_Castle//images/brownwood.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "146D5204-0747-7D5C-BBE4-ACA4921C9E73";
createNode groupId -n "groupId7";
	rename -uid "36600DBA-2144-CB34-040F-32AF35AE526D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "5D92534C-2045-8FA2-3C95-DCA58C096A7A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[1]" "f[83]";
	setAttr ".irc" -type "componentList" 3 "f[2]" "f[82]" "f[84]";
createNode lambert -n "velvet";
	rename -uid "0DA42C2F-A945-FAFD-B58E-FBB2ECA693BA";
createNode shadingEngine -n "lambert5SG";
	rename -uid "98039440-B341-93C4-2321-DA8EF9D4F4A6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "615CAF2D-2F43-47C6-CD62-1DA5C82E28F2";
createNode file -n "file6";
	rename -uid "323B3C26-E544-2749-EA0A-DFBAA2CED75B";
	setAttr ".ftn" -type "string" "/Users/laurencarr/Desktop/Maya Projects/Final_Castle//images/velvet.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "98DA1110-D744-80C8-35AE-008C5941A9BE";
createNode groupId -n "groupId8";
	rename -uid "02EEFBAB-BC4D-12AC-2763-D4AF7370C608";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "DD56B087-944B-8BB6-B478-C48E5EAE63F2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[104]" "f[108]" "f[132]" "f[134:135]" "f[137:139]";
createNode lambert -n "whitestone";
	rename -uid "ECB6E443-1043-1207-A04A-07AEE96FADCC";
createNode shadingEngine -n "lambert6SG";
	rename -uid "CBFD1420-054B-D489-8F8E-69BCA343FBA2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "BBC852E9-D047-EF74-CD03-BE94BDA3ED7B";
createNode file -n "file7";
	rename -uid "B5D2F3FA-5242-8779-6335-23844AE35EBB";
	setAttr ".ftn" -type "string" "/Users/laurencarr/Desktop/Maya Projects/Final_Castle//images/whitetile.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "A1F66461-F347-1B17-F76D-BBBD2F408285";
createNode groupId -n "groupId9";
	rename -uid "4D243C10-3044-D133-9DC1-A3988D1B0F7F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "38D0C906-664D-E829-B66F-32A8A0532873";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[6:8]" "f[10:13]" "f[20]" "f[88:96]" "f[99:102]";
	setAttr ".irc" -type "componentList" 1 "f[111]";
createNode blinn -n "glass";
	rename -uid "AAF4D1D4-EC47-0E1D-E138-0EB792E7478D";
	setAttr ".c" -type "float3" 0.027972028 0.027972028 0.027972028 ;
createNode shadingEngine -n "blinn3SG";
	rename -uid "ECF9D449-F548-C902-7960-40B458482AD4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "24CF1E81-6647-EF94-5DD6-48BF478A2168";
createNode groupId -n "groupId10";
	rename -uid "E55D028C-784E-97DE-6BCE-CDA414D40F55";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "C6DB00CA-7046-0911-DF90-F48213D6BE14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[140]" "f[145]" "f[150:151]";
createNode blinn -n "gold";
	rename -uid "92E15C91-C643-5E48-F5E7-8D9D421A7879";
createNode shadingEngine -n "blinn4SG";
	rename -uid "6BE34E66-8948-E004-73EA-F5A3946DB204";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "C0D290C5-D049-0BDA-EDD6-80ABBAA4D1AE";
createNode file -n "file8";
	rename -uid "FB88096B-B04E-FE9C-CDEE-FBB44BC8C670";
	setAttr ".ftn" -type "string" "/Users/laurencarr/Desktop/Maya Projects/Final_Castle//images/golddetails.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "FFABAC6B-674C-090A-2315-539E9CDE4F26";
	setAttr ".re" -type "float2" 20 20 ;
createNode groupId -n "groupId11";
	rename -uid "30C6C381-344A-F7B3-A07D-C6BE32F3AC92";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "FAA727E6-5649-7DA9-EFA1-99B83CB53AD7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 23 "f[2]" "f[27]" "f[30]" "f[41:43]" "f[46]" "f[51]" "f[54]" "f[59]" "f[62]" "f[64]" "f[69]" "f[74]" "f[80]" "f[103]" "f[105]" "f[107]" "f[109]" "f[111]" "f[114]" "f[116]" "f[118]" "f[123]" "f[127]";
	setAttr ".irc" -type "componentList" 2 "f[82]" "f[84]";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "30D8E588-594C-58E2-3EBA-7B8E1309AAF6";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1762.235229040916 -383.77701394499366 ;
	setAttr ".tgi[0].vh" -type "double2" -1294.1130771495348 448.18265204018377 ;
	setAttr -s 34 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -1362.857177734375;
	setAttr ".tgi[0].ni[0].y" 1025.7142333984375;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -1738.5714111328125;
	setAttr ".tgi[0].ni[1].y" 528.5714111328125;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -748.5714111328125;
	setAttr ".tgi[0].ni[2].y" 1004.2857055664062;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -610;
	setAttr ".tgi[0].ni[3].y" 694.28570556640625;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -519.18402099609375;
	setAttr ".tgi[0].ni[4].y" 253.48764038085938;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -1440.612548828125;
	setAttr ".tgi[0].ni[5].y" 253.48764038085938;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -782.8939208984375;
	setAttr ".tgi[0].ni[6].y" 200.45973205566406;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 399.01437377929688;
	setAttr ".tgi[0].ni[7].y" 55.215492248535156;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -817.14288330078125;
	setAttr ".tgi[0].ni[8].y" 528.5714111328125;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" -748.5714111328125;
	setAttr ".tgi[0].ni[9].y" -692.85711669921875;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" -1362.857177734375;
	setAttr ".tgi[0].ni[10].y" -671.4285888671875;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" -1670;
	setAttr ".tgi[0].ni[11].y" -692.85711669921875;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" -1670;
	setAttr ".tgi[0].ni[12].y" 117.14286041259766;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" -1055.7142333984375;
	setAttr ".tgi[0].ni[13].y" 1025.7142333984375;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" -1650;
	setAttr ".tgi[0].ni[14].y" -310;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" -1342.857177734375;
	setAttr ".tgi[0].ni[15].y" -310;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" -302.85714721679688;
	setAttr ".tgi[0].ni[16].y" 674.28570556640625;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" -759.0191650390625;
	setAttr ".tgi[0].ni[17].y" -314.88449096679688;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" -917.14288330078125;
	setAttr ".tgi[0].ni[18].y" 694.28570556640625;
	setAttr ".tgi[0].ni[18].nvs" 1923;
	setAttr ".tgi[0].ni[19].x" 91.871505737304688;
	setAttr ".tgi[0].ni[19].y" 76.644065856933594;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" -748.5714111328125;
	setAttr ".tgi[0].ni[20].y" 117.14286041259766;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[0].ni[21].x" -1055.7142333984375;
	setAttr ".tgi[0].ni[21].y" 138.57142639160156;
	setAttr ".tgi[0].ni[21].nvs" 1923;
	setAttr ".tgi[0].ni[22].x" -1670;
	setAttr ".tgi[0].ni[22].y" 1004.2857055664062;
	setAttr ".tgi[0].ni[22].nvs" 1923;
	setAttr ".tgi[0].ni[23].x" -1047.5478515625;
	setAttr ".tgi[0].ni[23].y" -82.495880126953125;
	setAttr ".tgi[0].ni[23].nvs" 1923;
	setAttr ".tgi[0].ni[24].x" -1055.7142333984375;
	setAttr ".tgi[0].ni[24].y" -671.4285888671875;
	setAttr ".tgi[0].ni[24].nvs" 1923;
	setAttr ".tgi[0].ni[25].x" -1133.4697265625;
	setAttr ".tgi[0].ni[25].y" 274.91622924804688;
	setAttr ".tgi[0].ni[25].nvs" 1923;
	setAttr ".tgi[0].ni[26].x" -1362.857177734375;
	setAttr ".tgi[0].ni[26].y" 138.57142639160156;
	setAttr ".tgi[0].ni[26].nvs" 1923;
	setAttr ".tgi[0].ni[27].x" -1391.9189453125;
	setAttr ".tgi[0].ni[27].y" -138.33824157714844;
	setAttr ".tgi[0].ni[27].nvs" 1923;
	setAttr ".tgi[0].ni[28].x" -1664.1510009765625;
	setAttr ".tgi[0].ni[28].y" -190.79034423828125;
	setAttr ".tgi[0].ni[28].nvs" 1923;
	setAttr ".tgi[0].ni[29].x" -1224.2857666015625;
	setAttr ".tgi[0].ni[29].y" 674.28570556640625;
	setAttr ".tgi[0].ni[29].nvs" 1923;
	setAttr ".tgi[0].ni[30].x" -215.27134704589844;
	setAttr ".tgi[0].ni[30].y" 76.644065856933594;
	setAttr ".tgi[0].ni[30].nvs" 1923;
	setAttr ".tgi[0].ni[31].x" -522.4141845703125;
	setAttr ".tgi[0].ni[31].y" 55.215492248535156;
	setAttr ".tgi[0].ni[31].nvs" 1923;
	setAttr ".tgi[0].ni[32].x" -1124.2857666015625;
	setAttr ".tgi[0].ni[32].y" 550;
	setAttr ".tgi[0].ni[32].nvs" 1923;
	setAttr ".tgi[0].ni[33].x" -1431.4285888671875;
	setAttr ".tgi[0].ni[33].y" 550;
	setAttr ".tgi[0].ni[33].nvs" 1923;
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
	setAttr -s 11 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 8 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId3.id" "pCubeShape1.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "groupId4.id" "pCubeShape1.iog.og[2].gid";
connectAttr "lambert2SG.mwc" "pCubeShape1.iog.og[2].gco";
connectAttr "groupId5.id" "pCubeShape1.iog.og[3].gid";
connectAttr "blinn1SG.mwc" "pCubeShape1.iog.og[3].gco";
connectAttr "groupId6.id" "pCubeShape1.iog.og[4].gid";
connectAttr "blinn2SG.mwc" "pCubeShape1.iog.og[4].gco";
connectAttr "groupId7.id" "pCubeShape1.iog.og[5].gid";
connectAttr "lambert4SG.mwc" "pCubeShape1.iog.og[5].gco";
connectAttr "groupId8.id" "pCubeShape1.iog.og[6].gid";
connectAttr "lambert5SG.mwc" "pCubeShape1.iog.og[6].gco";
connectAttr "groupId9.id" "pCubeShape1.iog.og[7].gid";
connectAttr "lambert6SG.mwc" "pCubeShape1.iog.og[7].gco";
connectAttr "groupId10.id" "pCubeShape1.iog.og[8].gid";
connectAttr "blinn3SG.mwc" "pCubeShape1.iog.og[8].gco";
connectAttr "groupId11.id" "pCubeShape1.iog.og[9].gid";
connectAttr "blinn4SG.mwc" "pCubeShape1.iog.og[9].gco";
connectAttr "groupParts10.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace20.out" "|pCube2|pCubeShape2.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCube1.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polySplit1.ip";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "deleteComponent4.ig";
connectAttr "polyTweak4.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "deleteComponent4.og" "polyTweak4.ip";
connectAttr "polyExtrudeFace3.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyBridgeEdge1.ip";
connectAttr "pCubeShape1.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polySplit8.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polySplit8.out" "polyTweak7.ip";
connectAttr "polyExtrudeFace4.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polySplit11.out" "polyTweak8.ip";
connectAttr "polyExtrudeFace5.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak10.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak13.ip";
connectAttr "polyExtrudeFace10.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyTweak15.ip";
connectAttr "polyTweak15.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "polyTweak16.ip";
connectAttr "polyTweak16.out" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "polySplit22.ip";
connectAttr "polySplit22.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyTweak17.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak17.ip";
connectAttr "polyExtrudeFace12.out" "polyTweak18.ip";
connectAttr "polyTweak18.out" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "polySplit23.ip";
connectAttr "polySplit23.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyTweak19.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak20.ip";
connectAttr "polyExtrudeFace15.out" "polyTweak21.ip";
connectAttr "polyTweak21.out" "polySplit24.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polySplit24.out" "polyTweak22.ip";
connectAttr "polyExtrudeFace16.out" "polyTweak23.ip";
connectAttr "polyTweak23.out" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "polySplit25.ip";
connectAttr "polySplit25.out" "polyTweak24.ip";
connectAttr "polyTweak24.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polySplit27.out" "polyTweak25.ip";
connectAttr "polyCube2.out" "polyTweak26.ip";
connectAttr "polyTweak26.out" "polySplit28.ip";
connectAttr "polySplit28.out" "polySplit29.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace18.ip";
connectAttr "|pCube2|pCubeShape2.wm" "polyExtrudeFace18.mp";
connectAttr "polySplit29.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace19.ip";
connectAttr "|pCube2|pCubeShape2.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyExtrudeFace20.ip";
connectAttr "|pCube2|pCubeShape2.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak29.ip";
connectAttr "polyExtrudeFace17.out" "polyTweak30.ip";
connectAttr "polyTweak30.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polyTweak31.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace21.mp";
connectAttr "polySplit31.out" "polyTweak31.ip";
connectAttr "polyExtrudeFace21.out" "polyTweak32.ip";
connectAttr "polyTweak32.out" "polySplit32.ip";
connectAttr "polySplit32.out" "polyTweak33.ip";
connectAttr "polyTweak33.out" "polySplit33.ip";
connectAttr "polySplit33.out" "polySplit34.ip";
connectAttr "polyTweak34.out" "polyExtrudeFace22.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace22.mp";
connectAttr "polySplit34.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polyExtrudeFace23.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polyExtrudeFace24.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyExtrudeFace25.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyExtrudeFace26.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace26.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polyExtrudeFace27.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace27.mp";
connectAttr "polyExtrudeFace26.out" "polyTweak39.ip";
connectAttr "polyTweak40.out" "polyExtrudeFace28.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace28.mp";
connectAttr "polyExtrudeFace27.out" "polyTweak40.ip";
connectAttr "polyTweak41.out" "polyExtrudeFace29.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace29.mp";
connectAttr "polyExtrudeFace28.out" "polyTweak41.ip";
connectAttr "polyExtrudeFace29.out" "polyTweak42.ip";
connectAttr "polyTweak42.out" "polySplit35.ip";
connectAttr "polySplit35.out" "polySplit36.ip";
connectAttr "polySplit36.out" "deleteComponent16.ig";
connectAttr "polyTweak43.out" "polyExtrudeFace30.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace30.mp";
connectAttr "deleteComponent16.og" "polyTweak43.ip";
connectAttr "polyExtrudeFace30.out" "polyTweak44.ip";
connectAttr "polyTweak44.out" "polySplit37.ip";
connectAttr "polySplit37.out" "polySplit38.ip";
connectAttr "polySplit38.out" "deleteComponent17.ig";
connectAttr "polyTweak45.out" "polyExtrudeFace31.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace31.mp";
connectAttr "deleteComponent17.og" "polyTweak45.ip";
connectAttr "polyExtrudeFace31.out" "polyTweak46.ip";
connectAttr "polyTweak46.out" "polySplit39.ip";
connectAttr "polySplit39.out" "polySplit40.ip";
connectAttr "polySplit40.out" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "polyTweak47.ip";
connectAttr "polyTweak47.out" "polySplit41.ip";
connectAttr "polySplit41.out" "polySplit42.ip";
connectAttr "polySplit42.out" "deleteComponent19.ig";
connectAttr "polyTweak48.out" "polyExtrudeFace32.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace32.mp";
connectAttr "deleteComponent19.og" "polyTweak48.ip";
connectAttr "polyTweak49.out" "polyExtrudeFace33.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace33.mp";
connectAttr "polyExtrudeFace32.out" "polyTweak49.ip";
connectAttr "blackstone.oc" "blinn1SG.ss";
connectAttr "pCubeShape1.iog.og[3]" "blinn1SG.dsm" -na;
connectAttr "groupId5.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blackstone.msg" "materialInfo1.m";
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
connectAttr "file2.oc" "redwood.c";
connectAttr "redwood.oc" "lambert2SG.ss";
connectAttr "pCubeShape1.iog.og[2]" "lambert2SG.dsm" -na;
connectAttr "groupId4.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "redwood.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
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
connectAttr "file3.oc" "door.c";
connectAttr "door.oc" "lambert3SG.ss";
connectAttr "pCubeShape1.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "groupId3.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo3.sg";
connectAttr "door.msg" "materialInfo3.m";
connectAttr "file3.msg" "materialInfo3.t" -na;
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
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyExtrudeFace33.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "file1.oc" "blackstone.c";
connectAttr "file4.oc" "goldwood.c";
connectAttr "goldwood.oc" "blinn2SG.ss";
connectAttr "pCubeShape1.iog.og[4]" "blinn2SG.dsm" -na;
connectAttr "groupId6.msg" "blinn2SG.gn" -na;
connectAttr "blinn2SG.msg" "materialInfo4.sg";
connectAttr "goldwood.msg" "materialInfo4.m";
connectAttr "file4.msg" "materialInfo4.t" -na;
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
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId6.id" "groupParts5.gi";
connectAttr "file5.oc" "darkwood.c";
connectAttr "darkwood.oc" "lambert4SG.ss";
connectAttr "pCubeShape4.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape3.iog" "lambert4SG.dsm" -na;
connectAttr "|pCube2|pCubeShape2.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape6.iog" "lambert4SG.dsm" -na;
connectAttr "|pCube5|pCubeShape2.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape7.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape1.iog.og[5]" "lambert4SG.dsm" -na;
connectAttr "groupId7.msg" "lambert4SG.gn" -na;
connectAttr "lambert4SG.msg" "materialInfo5.sg";
connectAttr "darkwood.msg" "materialInfo5.m";
connectAttr "file5.msg" "materialInfo5.t" -na;
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
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId7.id" "groupParts6.gi";
connectAttr "file6.oc" "velvet.c";
connectAttr "velvet.oc" "lambert5SG.ss";
connectAttr "pCubeShape1.iog.og[6]" "lambert5SG.dsm" -na;
connectAttr "groupId8.msg" "lambert5SG.gn" -na;
connectAttr "lambert5SG.msg" "materialInfo6.sg";
connectAttr "velvet.msg" "materialInfo6.m";
connectAttr "file6.msg" "materialInfo6.t" -na;
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
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupId8.id" "groupParts7.gi";
connectAttr "file7.oc" "whitestone.c";
connectAttr "whitestone.oc" "lambert6SG.ss";
connectAttr "pCubeShape1.iog.og[7]" "lambert6SG.dsm" -na;
connectAttr "groupId9.msg" "lambert6SG.gn" -na;
connectAttr "lambert6SG.msg" "materialInfo7.sg";
connectAttr "whitestone.msg" "materialInfo7.m";
connectAttr "file7.msg" "materialInfo7.t" -na;
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
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId9.id" "groupParts8.gi";
connectAttr "glass.oc" "blinn3SG.ss";
connectAttr "groupId10.msg" "blinn3SG.gn" -na;
connectAttr "pCubeShape1.iog.og[8]" "blinn3SG.dsm" -na;
connectAttr "blinn3SG.msg" "materialInfo8.sg";
connectAttr "glass.msg" "materialInfo8.m";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupId10.id" "groupParts9.gi";
connectAttr "file8.oc" "gold.c";
connectAttr "gold.oc" "blinn4SG.ss";
connectAttr "pCubeShape1.iog.og[9]" "blinn4SG.dsm" -na;
connectAttr "groupId11.msg" "blinn4SG.gn" -na;
connectAttr "blinn4SG.msg" "materialInfo9.sg";
connectAttr "gold.msg" "materialInfo9.m";
connectAttr "file8.msg" "materialInfo9.t" -na;
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
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupId11.id" "groupParts10.gi";
connectAttr "file6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "lambert5SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "blackstone.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "redwood.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "lambert6SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "lambert4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "file5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "place2dTexture5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "place2dTexture8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "velvet.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "glass.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "blinn3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "blinn2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "door.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "blinn4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "gold.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "place2dTexture6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "goldwood.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "darkwood.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "file8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "file4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "place2dTexture4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "file3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "place2dTexture3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "whitestone.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "file7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "blackstone.msg" ":defaultShaderList1.s" -na;
connectAttr "redwood.msg" ":defaultShaderList1.s" -na;
connectAttr "door.msg" ":defaultShaderList1.s" -na;
connectAttr "goldwood.msg" ":defaultShaderList1.s" -na;
connectAttr "darkwood.msg" ":defaultShaderList1.s" -na;
connectAttr "velvet.msg" ":defaultShaderList1.s" -na;
connectAttr "whitestone.msg" ":defaultShaderList1.s" -na;
connectAttr "glass.msg" ":defaultShaderList1.s" -na;
connectAttr "gold.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
// End of castle_interior.ma
