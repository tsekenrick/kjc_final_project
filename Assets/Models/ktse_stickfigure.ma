//Maya ASCII 2017 scene
//Name: ktse_stickfigure.ma
//Last modified: Thu, Nov 17, 2016 02:34:45 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "58C67B63-4967-E978-EFEF-5AAE05CF6116";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2469976287029687 5.0292067821288073 19.197653372171352 ;
	setAttr ".r" -type "double3" -18.338352729853593 365.00000000003587 -9.9771996363894236e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9F009B34-4DFE-C4DD-FA50-C085E12D68FB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 20.155442536337727;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "A45791EA-4864-F909-9505-F98C64AF2890";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B4B8E910-44B6-EF8B-F2E2-CD9861453629";
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
	rename -uid "9AF1F836-44DA-A50E-0EF1-BB9836D41F52";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "31E2C312-4899-D628-479D-68BEA75F9195";
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
	rename -uid "96A88765-48D1-0278-81BC-789105463D19";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "130DC1FC-4BCD-85A7-2C29-0FB4FE77513B";
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
createNode transform -n "pCube1";
	rename -uid "D1BE3064-4184-0292-788E-119E8ED1916F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "FB13D67E-4C58-2044-9819-36AD296AB958";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape1Orig" -p "pCube1";
	rename -uid "462FD099-4618-475C-9026-C1A64DCCFF1D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.625 0.75 0.625
		 1 0.625 1 0.625 0.75 0.375 1 0.375 0.75 0.375 0.75 0.375 1 0.625 1 0.625 0.75 0.625
		 0.75 0.625 1 0.375 0.75 0.375 1 0.375 1 0.375 0.75 0.625 1 0.625 0.75 0.625 0.75
		 0.625 1 0.375 0.75 0.375 1 0.375 1 0.375 0.75 0.625 0.25 0.625 0.5 0.625 0.5 0.625
		 0.25 0.375 0.5 0.375 0.25 0.375 0.25 0.375 0.5 0.625 0.25 0.625 0.5 0.625 0.5 0.625
		 0.25 0.375 0.5 0.375 0.25 0.375 0.25 0.375 0.5 0.375 0.25 0.625 0.25 0.625 0.5 0.375
		 0.5 0.375 0.25 0.625 0.25 0.625 0.25 0.375 0.25 0.625 1 0.625 1 0.625 0.75 0.625
		 0.75 0.375 0.75 0.375 0.75 0.375 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[64:67]" -type "float3"  0.072218172 0.067805938 0 
		-0.072218172 0.067805938 0 -0.072218172 -0.067805938 0 0.072218172 -0.067805938 0;
	setAttr -s 76 ".vt[0:75]"  -0.42554998 -0.5 0.49999994 0.42554998 -0.5 0.49999994
		 -0.42554998 0.5 0.49999994 0.42554998 0.5 0.49999994 -0.42554998 0.5 -0.5 0.42554998 0.5 -0.5
		 -0.42554998 -0.5 -0.5 0.42554998 -0.5 -0.5 -0.42554998 1.31865048 0.49999994 0.42554998 1.31865048 0.49999994
		 0.42554998 1.31865048 -0.5 -0.42554998 1.31865048 -0.5 -0.42554998 2.281883 0.49999994
		 0.42554998 2.281883 0.49999994 0.42554998 2.20962167 -0.5 -0.42554998 2.20962167 -0.5
		 -0.42554998 -1.84378386 -0.5 0.42554998 -1.84378386 -0.5 0.42554998 -1.84378386 0.49999994
		 -0.42554998 -1.84378386 0.49999994 1.19147444 -0.9159531 -0.5 1.19147444 -0.9159531 0.49999994
		 1.19147444 -1.84378386 0.49999994 1.19147444 -1.84378386 -0.5 -1.19147444 -0.9159531 -0.5
		 -1.19147444 -0.9159531 0.49999994 -1.19147444 -1.84378386 -0.5 -1.19147444 -1.84378386 0.49999994
		 0.42554998 -2.59831834 -0.5 0.42554998 -2.59831834 0.49999994 1.19147444 -2.59831834 -0.5
		 1.19147444 -2.59831834 0.49999994 -0.42554998 -2.59831834 -0.5 -0.42554998 -2.59831834 0.49999994
		 -1.19147444 -2.59831834 0.49999994 -1.19147444 -2.59831834 -0.5 0.42554998 -3.64468956 -0.5
		 0.42554998 -3.64468956 0.49999994 1.19147444 -3.64468956 -0.5 1.19147444 -3.64468956 0.49999994
		 -0.42554998 -3.6446898 -0.5 -0.42554998 -3.6446898 0.49999994 -1.19147444 -3.6446898 0.49999994
		 -1.19147444 -3.6446898 -0.5 1.18102884 1.31865048 0.49999994 1.18102884 1.31865048 -0.5
		 1.18102884 2.20962167 -0.5 1.18102884 2.20962167 0.49999994 -1.18102884 1.31865048 0.49999994
		 -1.18102884 1.31865048 -0.5 -1.18102884 2.20962167 0.49999994 -1.18102884 2.20962167 -0.5
		 2.20833063 1.31865048 0.49999994 2.20833063 1.31865048 -0.5 2.20833063 2.20962167 -0.5
		 2.20833063 2.20962167 0.49999994 -2.20833039 1.31865048 0.49999994 -2.20833039 1.31865048 -0.5
		 -2.20833039 2.20962167 0.49999994 -2.20833039 2.20962167 -0.5 -0.42554998 3.080984354 0.49999994
		 0.42554998 3.080984354 0.49999994 0.42554998 3.15324569 -0.5 -0.42554998 3.15324569 -0.5
		 -0.42554998 2.281883 0.90756506 0.42554998 2.281883 0.90756506 0.42554998 3.080984354 0.90756506
		 -0.42554998 3.080984354 0.90756506 0.42554998 -2.16922426 0.49999994 1.19147444 -2.16922426 0.49999994
		 1.19147444 -2.16922426 -0.5 0.42554998 -2.16922426 -0.5 -0.42554998 -2.17301583 -0.5
		 -1.19147444 -2.17301583 -0.5 -1.19147444 -2.17301583 0.49999994 -0.42554998 -2.17301583 0.49999994;
	setAttr -s 148 ".ed[0:147]"  0 1 1 2 3 1 4 5 1 6 7 1 0 2 0 1 3 0 2 4 1
		 3 5 1 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 1 5 10 0 9 10 0 4 11 0 11 10 1 8 11 0
		 8 12 1 9 13 1 12 13 0 10 14 1 13 14 0 11 15 1 15 14 1 12 15 0 6 16 1 7 17 1 16 17 0
		 1 18 1 17 18 0 0 19 1 19 18 0 16 19 0 7 20 0 1 21 0 20 21 0 18 22 1 21 22 0 17 23 1
		 23 22 1 20 23 0 6 24 0 0 25 0 24 25 0 16 26 1 24 26 0 19 27 1 26 27 1 25 27 0 17 71 0
		 18 68 0 28 29 1 23 70 0 28 30 1 22 69 0 30 31 1 29 31 1 16 72 0 19 75 0 32 33 1 27 74 0
		 33 34 1 26 73 0 35 34 1 32 35 1 28 36 0 29 37 0 36 37 0 30 38 0 36 38 0 31 39 0 38 39 0
		 37 39 0 32 40 0 33 41 0 40 41 0 34 42 0 41 42 0 35 43 0 43 42 0 40 43 0 9 44 0 10 45 0
		 44 45 1 14 46 0 45 46 1 13 47 0 47 46 1 44 47 1 8 48 0 11 49 0 48 49 1 12 50 0 48 50 1
		 15 51 0 50 51 1 49 51 1 44 52 0 45 53 0 52 53 0 46 54 0 53 54 0 47 55 0 55 54 0 52 55 0
		 48 56 0 49 57 0 56 57 0 50 58 0 56 58 0 51 59 0 58 59 0 57 59 0 12 60 1 13 61 1 60 61 1
		 14 62 0 61 62 0 15 63 0 63 62 0 60 63 0 12 64 0 13 65 0 64 65 0 61 66 0 65 66 0 60 67 0
		 67 66 0 64 67 0 68 29 0 69 31 0 68 69 1 70 30 0 69 70 1 71 28 0 70 71 1 71 68 1 72 32 0
		 73 35 0 72 73 1 74 34 0 73 74 1 75 33 0 74 75 1 75 72 1;
	setAttr -s 74 -ch 296 ".fc[0:73]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 118 120 -123 -124
		mu 0 4 66 67 68 69
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 102 104 -107 -108
		mu 0 4 58 59 60 61
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -111 112 114 -116
		mu 0 4 62 63 64 65
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 38 40 -43 -44
		mu 0 4 26 27 28 29
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -47 48 50 -52
		mu 0 4 30 31 32 33
		f 4 11 37 -39 -37
		mu 0 4 7 9 27 26
		f 4 31 39 -41 -38
		mu 0 4 9 24 28 27
		f 4 -71 72 74 -76
		mu 0 4 42 43 44 45
		f 4 -30 36 43 -42
		mu 0 4 23 7 26 29
		f 4 -11 44 46 -46
		mu 0 4 8 6 31 30
		f 4 28 47 -49 -45
		mu 0 4 6 22 32 31
		f 4 78 80 -83 -84
		mu 0 4 46 47 48 49
		f 4 -34 45 51 -50
		mu 0 4 25 8 30 33
		f 4 -33 52 139 -54
		mu 0 4 24 23 77 74
		f 4 41 55 138 -53
		mu 0 4 23 29 76 77
		f 4 42 57 136 -56
		mu 0 4 29 28 75 76
		f 4 -40 53 134 -58
		mu 0 4 28 24 74 75
		f 4 35 61 147 -61
		mu 0 4 22 25 81 78
		f 4 49 63 146 -62
		mu 0 4 25 33 80 81
		f 4 -51 65 144 -64
		mu 0 4 33 32 79 80
		f 4 -48 60 142 -66
		mu 0 4 32 22 78 79
		f 4 -55 68 70 -70
		mu 0 4 34 35 43 42
		f 4 56 71 -73 -69
		mu 0 4 35 36 44 43
		f 4 58 73 -75 -72
		mu 0 4 36 37 45 44
		f 4 -60 69 75 -74
		mu 0 4 37 34 42 45
		f 4 62 77 -79 -77
		mu 0 4 38 39 47 46
		f 4 64 79 -81 -78
		mu 0 4 39 40 48 47
		f 4 -67 81 82 -80
		mu 0 4 40 41 49 48
		f 4 -68 76 83 -82
		mu 0 4 41 38 46 49
		f 4 16 85 -87 -85
		mu 0 4 15 16 51 50
		f 4 23 87 -89 -86
		mu 0 4 16 20 52 51
		f 4 -25 89 90 -88
		mu 0 4 20 19 53 52
		f 4 -22 84 91 -90
		mu 0 4 19 15 50 53
		f 4 -20 92 94 -94
		mu 0 4 17 14 55 54
		f 4 20 95 -97 -93
		mu 0 4 14 18 56 55
		f 4 27 97 -99 -96
		mu 0 4 18 21 57 56
		f 4 -26 93 99 -98
		mu 0 4 21 17 54 57
		f 4 86 101 -103 -101
		mu 0 4 50 51 59 58
		f 4 88 103 -105 -102
		mu 0 4 51 52 60 59
		f 4 -91 105 106 -104
		mu 0 4 52 53 61 60
		f 4 -92 100 107 -106
		mu 0 4 53 50 58 61
		f 4 -95 108 110 -110
		mu 0 4 54 55 63 62
		f 4 96 111 -113 -109
		mu 0 4 55 56 64 63
		f 4 98 113 -115 -112
		mu 0 4 56 57 65 64
		f 4 -100 109 115 -114
		mu 0 4 57 54 62 65
		f 4 126 128 -131 -132
		mu 0 4 70 71 72 73
		f 4 24 119 -121 -118
		mu 0 4 19 20 68 67
		f 4 -27 121 122 -120
		mu 0 4 20 21 69 68
		f 4 -28 116 123 -122
		mu 0 4 21 18 66 69
		f 4 22 125 -127 -125
		mu 0 4 18 19 71 70
		f 4 117 127 -129 -126
		mu 0 4 19 67 72 71
		f 4 -119 129 130 -128
		mu 0 4 67 66 73 72
		f 4 -117 124 131 -130
		mu 0 4 66 18 70 73
		f 4 -135 132 59 -134
		mu 0 4 75 74 34 37
		f 4 -137 133 -59 -136
		mu 0 4 76 75 37 36
		f 4 -139 135 -57 -138
		mu 0 4 77 76 36 35
		f 4 -140 137 54 -133
		mu 0 4 74 77 35 34
		f 4 -143 140 67 -142
		mu 0 4 79 78 38 41
		f 4 -145 141 66 -144
		mu 0 4 80 79 41 40
		f 4 -147 143 -65 -146
		mu 0 4 81 80 40 39
		f 4 -148 145 -63 -141
		mu 0 4 78 81 39 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "joint1";
	rename -uid "2780855B-4EBE-BC77-B96C-6CA604C2FB04";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.02161383285302465 -0.90778097982708872 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 0.02161383285302465 -0.90778097982708872 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint1";
	rename -uid "C7D4110A-44D4-C876-A258-C0958152F7FB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.5720461095100862 5.711089622351307e-016 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -1.7765972849651896e-030 1.2730300200566356 ;
	setAttr ".bps" -type "matrix" -0.022216737285145352 0.99975317783161022 -1.9259299443872363e-034 0
		 0.99975317783161044 0.022216737285145352 1.2246467991473535e-016 0 1.2243445291688761e-016 2.7207656203750917e-018 -1 0
		 0.02161383285302465 1.664265129682998 0 1;
	setAttr ".radi" 0.50204249821509472;
createNode joint -n "joint3" -p "joint2";
	rename -uid "B3DC350F-4EEE-BD71-BFFC-00B9F83F50CC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 91.273030020056623 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -4.5102810375396984e-017 1.2243445291688761e-016 0
		 -1.7347234759768068e-016 1.0000000000000002 -1.1974391429436028e-016 0 -1.2243445291688761e-016 1.1974391429436028e-016 1 0
		 -1.7347234759768071e-017 2.6368876080691646 8.3219922990527779e-034 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint10" -p "joint2";
	rename -uid "0181CE8C-4917-D7D6-D80C-D7A00CE6D114";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90.059189833813065 ;
	setAttr ".bps" -type "matrix" -0.99972969319684613 -0.023249527748764643 -1.2246461456711248e-016 0
		 -0.023249527748764643 0.9997296931968459 -1.265130315778805e-019 0 1.2243445291688761e-016 2.7207656203750917e-018 -1 0
		 -1.0374639769452458 1.7291066282420751 7.3955709864469857e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint11" -p "joint10";
	rename -uid "3AC0773D-48DB-B8EC-F7F4-AA8ABCA609D4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.92964610234610467 5.4318528841523772e-017 -1.138487516076341e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 90.059189833813065 ;
	setAttr ".bps" -type "matrix" -0.022216737285145349 0.99975317783161 -2.1666711874356403e-034 0
		 0.99975317783161022 0.022216737285145349 1.2246467991473532e-016 0 1.2243445291688761e-016 2.7207656203750917e-018 -1 0
		 -1.9668587896253609 1.7074927953890484 7.3955709864469857e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint12" -p "joint2";
	rename -uid "29342FFF-4FA9-2367-A4FA-EF8C232279DA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -6.9955296997424767e-015 94.452860139920915 ;
	setAttr ".bps" -type "matrix" 0.99846035320541293 -0.055470019622523827 1.2209502618155656e-016 0
		 0.055470019622523729 0.99846035320541271 -1.1295666180665376e-016 0 -1.1564133471895114e-016 1.1955536194247932e-016 1 0
		 1.0590778097982709 1.7291066282420751 -2.4651903288156619e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint13" -p "joint12";
	rename -uid "05A95380-4DD1-BE3E-6CA7-97AA7FE7D60A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.77929782610892839 6.9388939039072407e-018 -9.5148388481999678e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 94.452860139920915 ;
	setAttr ".bps" -type "matrix" -0.02221673728514547 0.99975317783161055 -1.2209502618155656e-016 0
		 0.99975317783161066 0.022216737285145248 2.3542134172138915e-016 0 2.3807578763583878e-016 -1.1683459632210423e-016 -1 0
		 1.8371757925072021 1.6858789625360227 2.4651903288156619e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "joint1";
	rename -uid "20233263-4188-1AE1-897F-4BB29F66DAE6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -178.72696997994339 ;
	setAttr ".bps" -type "matrix" 0.022216737285145689 -0.99975317783161044 0 0 0.99975317783161044 0.022216737285145689 0 0
		 0 0 1 0 0.82132564841498334 -1.361671469740634 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "joint4";
	rename -uid "C9D07D91-4C43-079A-AA43-ED98F1404519";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.97286260244324763 3.0045410603918299e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.028922652512021089 ;
	setAttr ".bps" -type "matrix" 0.022721405353115971 -0.99974183554494722 0 0 0.99974183554494722 0.022721405353115971 0 0
		 0 0 1 0 0.8429394812680111 -2.3342939481268012 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "joint5";
	rename -uid "C988596E-49A9-A218-16E6-43A35479D297";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.95125422556190387 1.6851450790333899e-013 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 178.69804732743134 ;
	setAttr ".bps" -type "matrix" 2.7061686225238191e-016 1.0000000000000007 0 0 -1.0000000000000007 2.7061686225238191e-016 0 0
		 0 0 1 0 0.86455331412103598 -3.2853025936599423 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint7" -p "joint1";
	rename -uid "CDFEE289-4E84-2080-2EDC-6884EC803F3F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -1.9641883026323204e-030 176.82016988013575 ;
	setAttr ".bps" -type "matrix" -0.055470019622524194 -0.99846035320541282 3.8518598887744726e-034 0
		 -0.9984603532054126 0.055470019622524194 1.2246467991473535e-016 0 -1.2227612756285443e-016 6.7931181979365126e-018 -1 0
		 -0.79971181556196036 -1.3832853025936596 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint8" -p "joint7";
	rename -uid "0D8364AF-4F45-6B03-2C81-F8A2CD5D26F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.7792978261089305 -2.3592239273284576e-016 -2.6963019221421302e-032 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 5.2922928809122714e-016 -4.3255929580395032 ;
	setAttr ".bps" -type "matrix" 0.019996001199601751 -0.99980005998000732 -9.2367935751776948e-018 0
		 0.99980005998000732 0.019996001199601751 -2.4458052438656522e-016 0 2.4471632188703923e-016 -4.3443143114526193e-018 1 0
		 -0.84293948126801299 -2.1613832853025929 -1.6289664855453229e-033 1;
	setAttr ".radi" 0.50418488410536111;
createNode joint -n "joint9" -p "joint8";
	rename -uid "131B16A3-4831-F562-34DB-DDB9F5D059B1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.0809077593703156 -1.2732870313669764e-015 9.9841218471111368e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 178.85423716182478 ;
	setAttr ".bps" -type "matrix" 2.7061686225238191e-016 1.0000000000000004 4.3443143114525538e-018 0
		 -1.0000000000000004 2.7061686225238191e-016 2.4471632188703923e-016 0 2.4471632188703923e-016 -4.3443143114526193e-018 1 0
		 -0.82132564841498656 -3.2420749279538899 -1.6289664855453229e-033 1;
	setAttr ".radi" 0.50418488410536111;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9226349F-412A-6EBE-BEAC-FD9BB81280BC";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "08C5368F-4375-2595-BFCC-DFB3604D18DF";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "23C35714-4FF3-1C61-8FAA-7A93CC711452";
createNode displayLayerManager -n "layerManager";
	rename -uid "24BEEA2D-47FE-FB8B-939E-CBB15E2980FE";
createNode displayLayer -n "defaultLayer";
	rename -uid "C5B2A9AA-41A8-074C-CC9E-B5B1FA98F218";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3E155B4B-439C-E4AB-7713-4D89C935AF39";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E82FC4FC-419A-DB5E-5FBE-CEBF1C86C76C";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "45136788-4A05-322B-F78A-5CA3F69EB7C8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1388\n                -height 716\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1388\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1388\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1388\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F17115B9-413D-BB0E-DFDE-B0AD70DB58B2";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 50 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	rename -uid "CFBFC463-4A6E-2963-AE18-839448945238";
	setAttr ".skm" 1;
	setAttr -s 76 ".wl";
	setAttr -s 4 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.94781607639099652;
	setAttr ".wl[0].w[1]" 0.0015602345728762616;
	setAttr ".wl[0].w[7]" 0.0027308228215334623;
	setAttr ".wl[0].w[10]" 0.047892866214593759;
	setAttr -s 4 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.94989906591285633;
	setAttr ".wl[1].w[1]" 0.0013982884762594168;
	setAttr ".wl[1].w[7]" 0.045974143391791913;
	setAttr ".wl[1].w[10]" 0.0027285022190924706;
	setAttr -s 4 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.9457213435711922;
	setAttr ".wl[2].w[1]" 0.050000562050856096;
	setAttr ".wl[2].w[3]" 0.0021552715578846849;
	setAttr ".wl[2].w[10]" 0.0021228228200670398;
	setAttr -s 4 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.95030446542196179;
	setAttr ".wl[3].w[1]" 0.04596575029855951;
	setAttr ".wl[3].w[5]" 0.0018929966028841036;
	setAttr ".wl[3].w[7]" 0.0018367876765946539;
	setAttr -s 4 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.94586578084463013;
	setAttr ".wl[4].w[1]" 0.049817170513312144;
	setAttr ".wl[4].w[3]" 0.0020989576477404024;
	setAttr ".wl[4].w[10]" 0.0022180909943173358;
	setAttr -s 4 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.95077672892240628;
	setAttr ".wl[5].w[1]" 0.045717444761322411;
	setAttr ".wl[5].w[5]" 0.0021409539382271688;
	setAttr ".wl[5].w[7]" 0.0013648723780441772;
	setAttr -s 4 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.94568215430628488;
	setAttr ".wl[6].w[1]" 0.0016312191623537402;
	setAttr ".wl[6].w[7]" 0.002270329262782575;
	setAttr ".wl[6].w[10]" 0.050416297268578755;
	setAttr -s 4 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.9617536278856158;
	setAttr ".wl[7].w[1]" 0.001370292725191838;
	setAttr ".wl[7].w[7]" 0.03394766199739286;
	setAttr ".wl[7].w[10]" 0.0029284173917993534;
	setAttr -s 4 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.036522561217582919;
	setAttr ".wl[8].w[1]" 0.92011604488442567;
	setAttr ".wl[8].w[3]" 0.041419750585846654;
	setAttr ".wl[8].w[4]" 0.0019416433121447372;
	setAttr -s 4 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.03571050187741158;
	setAttr ".wl[9].w[1]" 0.92211803517096158;
	setAttr ".wl[9].w[5]" 0.039558366529532894;
	setAttr ".wl[9].w[6]" 0.0026130964220940742;
	setAttr -s 4 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.041029923262037214;
	setAttr ".wl[10].w[1]" 0.91204128238266546;
	setAttr ".wl[10].w[5]" 0.044955765593365143;
	setAttr ".wl[10].w[6]" 0.0019730287619320885;
	setAttr -s 4 ".wl[11].w";
	setAttr ".wl[11].w[0]" 0.036593461130503845;
	setAttr ".wl[11].w[1]" 0.9212515916935069;
	setAttr ".wl[11].w[3]" 0.040438652856122963;
	setAttr ".wl[11].w[4]" 0.001716294319866318;
	setAttr -s 4 ".wl[12].w[1:4]"  0.91477767264596543 0.040373269276914141 
		0.042972296874585321 0.0018767612025353227;
	setAttr -s 4 ".wl[13].w";
	setAttr ".wl[13].w[1]" 0.89869278126759145;
	setAttr ".wl[13].w[2]" 0.049885017997459584;
	setAttr ".wl[13].w[5]" 0.038041799720387563;
	setAttr ".wl[13].w[6]" 0.01338040101456152;
	setAttr -s 4 ".wl[14].w";
	setAttr ".wl[14].w[1]" 0.93152366238523976;
	setAttr ".wl[14].w[2]" 0.029252028972138956;
	setAttr ".wl[14].w[5]" 0.036496891697355371;
	setAttr ".wl[14].w[6]" 0.002727416945265803;
	setAttr -s 4 ".wl[15].w[1:4]"  0.91498531486026025 0.036140084014521068 
		0.04663095404502806 0.0022436470801905704;
	setAttr -s 4 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.02564200485437209;
	setAttr ".wl[16].w[7]" 0.043476768451034278;
	setAttr ".wl[16].w[10]" 0.85399572924183031;
	setAttr ".wl[16].w[11]" 0.076885497452763185;
	setAttr -s 4 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.023563269396856407;
	setAttr ".wl[17].w[7]" 0.91698079778508756;
	setAttr ".wl[17].w[8]" 0.015673373508275454;
	setAttr ".wl[17].w[10]" 0.043782559309780554;
	setAttr -s 4 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.032119671670415191;
	setAttr ".wl[18].w[7]" 0.90292544694656174;
	setAttr ".wl[18].w[8]" 0.023015878612113103;
	setAttr ".wl[18].w[10]" 0.041939002770910054;
	setAttr -s 4 ".wl[19].w";
	setAttr ".wl[19].w[0]" 0.026724320924532963;
	setAttr ".wl[19].w[7]" 0.044927987041575163;
	setAttr ".wl[19].w[10]" 0.85423025449532008;
	setAttr ".wl[19].w[11]" 0.074117437538571793;
	setAttr -s 4 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.49408892432956336;
	setAttr ".wl[20].w[7]" 0.49111869483806586;
	setAttr ".wl[20].w[8]" 0.010274418090561436;
	setAttr ".wl[20].w[10]" 0.0045179627418094129;
	setAttr -s 4 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.50133893975106669;
	setAttr ".wl[21].w[7]" 0.49268906756749875;
	setAttr ".wl[21].w[8]" 0.0053978011510357774;
	setAttr ".wl[21].w[10]" 0.0005741915303987792;
	setAttr -s 4 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.20694949755069836;
	setAttr ".wl[22].w[7]" 0.55929687330035505;
	setAttr ".wl[22].w[8]" 0.22416095641537909;
	setAttr ".wl[22].w[9]" 0.0095926727335676337;
	setAttr -s 4 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.038262810136601919;
	setAttr ".wl[23].w[7]" 0.93017942159728906;
	setAttr ".wl[23].w[8]" 0.029143177838872963;
	setAttr ".wl[23].w[10]" 0.0024145904272360194;
	setAttr -s 4 ".wl[24].w";
	setAttr ".wl[24].w[0]" 0.49809012681643572;
	setAttr ".wl[24].w[7]" 0.0003576575363147238;
	setAttr ".wl[24].w[10]" 0.49816154730776446;
	setAttr ".wl[24].w[11]" 0.0033906683394851708;
	setAttr -s 4 ".wl[25].w";
	setAttr ".wl[25].w[0]" 0.49917850595728941;
	setAttr ".wl[25].w[7]" 0.00037353917801263143;
	setAttr ".wl[25].w[10]" 0.49925938900409067;
	setAttr ".wl[25].w[11]" 0.0011885658606073653;
	setAttr -s 4 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.050063719350914984;
	setAttr ".wl[26].w[7]" 0.0020220569393587123;
	setAttr ".wl[26].w[10]" 0.82123479068231653;
	setAttr ".wl[26].w[11]" 0.1266794330274098;
	setAttr -s 4 ".wl[27].w";
	setAttr ".wl[27].w[0]" 0.046409737297487798;
	setAttr ".wl[27].w[7]" 0.0019380690329395957;
	setAttr ".wl[27].w[10]" 0.92123409710988935;
	setAttr ".wl[27].w[11]" 0.030418096559683284;
	setAttr -s 4 ".wl[28].w[7:10]"  0.088745346538142172 0.86751348135337925 
		0.042809196743128948 0.00093197536534964857;
	setAttr -s 4 ".wl[29].w";
	setAttr ".wl[29].w[0]" 0.0017285022492301014;
	setAttr ".wl[29].w[7]" 0.088117400904876894;
	setAttr ".wl[29].w[8]" 0.86629312531338598;
	setAttr ".wl[29].w[9]" 0.04386097153250712;
	setAttr -s 4 ".wl[30].w";
	setAttr ".wl[30].w[0]" 0.0013372597928839791;
	setAttr ".wl[30].w[7]" 0.07917007219482626;
	setAttr ".wl[30].w[8]" 0.88112624601548051;
	setAttr ".wl[30].w[9]" 0.038366421996809161;
	setAttr -s 4 ".wl[31].w";
	setAttr ".wl[31].w[0]" 0.010963128553804579;
	setAttr ".wl[31].w[7]" 0.046387028994852253;
	setAttr ".wl[31].w[8]" 0.90432606776695934;
	setAttr ".wl[31].w[9]" 0.038323774684383964;
	setAttr -s 4 ".wl[32].w";
	setAttr ".wl[32].w[7]" 0.00094188791227437592;
	setAttr ".wl[32].w[10]" 0.025968591367802052;
	setAttr ".wl[32].w[11]" 0.93064711689913482;
	setAttr ".wl[32].w[12]" 0.042442403820788843;
	setAttr -s 4 ".wl[33].w";
	setAttr ".wl[33].w[7]" 0.00094001946611247593;
	setAttr ".wl[33].w[10]" 0.024848070636731608;
	setAttr ".wl[33].w[11]" 0.93247143606554261;
	setAttr ".wl[33].w[12]" 0.041740473831613417;
	setAttr -s 4 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.00089176210907759986;
	setAttr ".wl[34].w[10]" 0.079432339185985468;
	setAttr ".wl[34].w[11]" 0.88072557391512274;
	setAttr ".wl[34].w[12]" 0.038950324789814333;
	setAttr -s 4 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.00061817559919123287;
	setAttr ".wl[35].w[10]" 0.077603478957240082;
	setAttr ".wl[35].w[11]" 0.88624312390859572;
	setAttr ".wl[35].w[12]" 0.035535221534972912;
	setAttr -s 4 ".wl[36].w[7:10]"  0.0016344756772224513 0.50682500308504275 
		0.49152388184764367 1.6639390091177281e-005;
	setAttr -s 4 ".wl[37].w";
	setAttr ".wl[37].w[0]" 4.2676297604900856e-005;
	setAttr ".wl[37].w[7]" 0.0017917305275334833;
	setAttr ".wl[37].w[8]" 0.5076238210032652;
	setAttr ".wl[37].w[9]" 0.4905417721715965;
	setAttr -s 4 ".wl[38].w";
	setAttr ".wl[38].w[0]" 2.7270666811565038e-005;
	setAttr ".wl[38].w[7]" 0.0013708031444855564;
	setAttr ".wl[38].w[8]" 0.50663218211833771;
	setAttr ".wl[38].w[9]" 0.49196974407036509;
	setAttr -s 4 ".wl[39].w";
	setAttr ".wl[39].w[0]" 0.00015946901304240928;
	setAttr ".wl[39].w[7]" 0.00077912723631748957;
	setAttr ".wl[39].w[8]" 0.50629954434327507;
	setAttr ".wl[39].w[9]" 0.492761859407365;
	setAttr -s 4 ".wl[40].w";
	setAttr ".wl[40].w[7]" 1.8752969627903698e-005;
	setAttr ".wl[40].w[10]" 0.00059594215075733925;
	setAttr ".wl[40].w[11]" 0.50894385067677228;
	setAttr ".wl[40].w[12]" 0.49044145420284257;
	setAttr -s 4 ".wl[41].w";
	setAttr ".wl[41].w[7]" 1.6619264680911274e-005;
	setAttr ".wl[41].w[10]" 0.00051580627043014339;
	setAttr ".wl[41].w[11]" 0.50797386431020108;
	setAttr ".wl[41].w[12]" 0.49149371015468801;
	setAttr -s 4 ".wl[42].w";
	setAttr ".wl[42].w[0]" 1.7419831359272152e-005;
	setAttr ".wl[42].w[10]" 0.0015351184008896564;
	setAttr ".wl[42].w[11]" 0.50767830610646281;
	setAttr ".wl[42].w[12]" 0.49076915566128831;
	setAttr -s 4 ".wl[43].w";
	setAttr ".wl[43].w[0]" 1.1868232953153965e-005;
	setAttr ".wl[43].w[10]" 0.001419594040825257;
	setAttr ".wl[43].w[11]" 0.50735528593255208;
	setAttr ".wl[43].w[12]" 0.49121325179366954;
	setAttr -s 4 ".wl[44].w";
	setAttr ".wl[44].w[0]" 0.0018557051294550925;
	setAttr ".wl[44].w[1]" 0.059452239202443927;
	setAttr ".wl[44].w[5]" 0.89343830447721928;
	setAttr ".wl[44].w[6]" 0.045253751190881812;
	setAttr -s 4 ".wl[45].w";
	setAttr ".wl[45].w[0]" 0.0020643349123783037;
	setAttr ".wl[45].w[1]" 0.049569657093655975;
	setAttr ".wl[45].w[5]" 0.90977499626803016;
	setAttr ".wl[45].w[6]" 0.038591011725935674;
	setAttr -s 4 ".wl[46].w";
	setAttr ".wl[46].w[1]" 0.078887020685924417;
	setAttr ".wl[46].w[2]" 0.0026990311820216054;
	setAttr ".wl[46].w[5]" 0.86052239403582642;
	setAttr ".wl[46].w[6]" 0.057891554096227621;
	setAttr -s 4 ".wl[47].w";
	setAttr ".wl[47].w[1]" 0.26787195067349917;
	setAttr ".wl[47].w[2]" 0.013556518561573125;
	setAttr ".wl[47].w[5]" 0.52340173568727999;
	setAttr ".wl[47].w[6]" 0.1951697950776477;
	setAttr -s 4 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.0020824420136818129;
	setAttr ".wl[48].w[1]" 0.054780101351635739;
	setAttr ".wl[48].w[3]" 0.9006055987000422;
	setAttr ".wl[48].w[4]" 0.04253185793464026;
	setAttr -s 4 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.0018775521835248112;
	setAttr ".wl[49].w[1]" 0.049550130691220259;
	setAttr ".wl[49].w[3]" 0.91024178706608816;
	setAttr ".wl[49].w[4]" 0.038330530059166812;
	setAttr -s 4 ".wl[50].w[1:4]"  0.054409582488223897 0.0022162706550635462 
		0.90410366008653353 0.03927048677017924;
	setAttr -s 4 ".wl[51].w[1:4]"  0.057806062697289669 0.0022018080737272318 
		0.89656116421227738 0.043430965016705618;
	setAttr -s 4 ".wl[52].w";
	setAttr ".wl[52].w[0]" 3.6061768155336573e-005;
	setAttr ".wl[52].w[1]" 0.0013858394972742891;
	setAttr ".wl[52].w[5]" 0.50744331074061155;
	setAttr ".wl[52].w[6]" 0.49113478799395882;
	setAttr -s 4 ".wl[53].w";
	setAttr ".wl[53].w[0]" 3.2893088450499846e-005;
	setAttr ".wl[53].w[1]" 0.00087636700221867866;
	setAttr ".wl[53].w[5]" 0.50679382459305466;
	setAttr ".wl[53].w[6]" 0.49229691531627617;
	setAttr -s 4 ".wl[54].w";
	setAttr ".wl[54].w[1]" 0.0022162955364608519;
	setAttr ".wl[54].w[2]" 7.9299435280353375e-005;
	setAttr ".wl[54].w[5]" 0.50897411157085082;
	setAttr ".wl[54].w[6]" 0.48873029345740804;
	setAttr -s 4 ".wl[55].w";
	setAttr ".wl[55].w[1]" 0.0065243058917571102;
	setAttr ".wl[55].w[2]" 0.00032696056525613281;
	setAttr ".wl[55].w[5]" 0.50124363035378461;
	setAttr ".wl[55].w[6]" 0.49190510318920211;
	setAttr -s 4 ".wl[56].w";
	setAttr ".wl[56].w[0]" 2.8686665898706689e-005;
	setAttr ".wl[56].w[1]" 0.00078609421208222178;
	setAttr ".wl[56].w[3]" 0.50577191827354817;
	setAttr ".wl[56].w[4]" 0.4934133008484709;
	setAttr -s 4 ".wl[57].w";
	setAttr ".wl[57].w[0]" 3.0520329404703126e-005;
	setAttr ".wl[57].w[1]" 0.0008400226116787935;
	setAttr ".wl[57].w[3]" 0.50688138095236912;
	setAttr ".wl[57].w[4]" 0.49224807610654736;
	setAttr -s 4 ".wl[58].w[1:4]"  0.001135161204670099 4.4806803452164511e-005 
		0.50840859640041736 0.49041143559146044;
	setAttr -s 4 ".wl[59].w[1:4]"  0.0010269855883693348 3.8086946607790804e-005 
		0.50710901862564128 0.49182590883938154;
	setAttr -s 4 ".wl[60].w";
	setAttr ".wl[60].w[1]" 0.51498926641218201;
	setAttr ".wl[60].w[2]" 0.48359614210040791;
	setAttr ".wl[60].w[3]" 0.0013157305922364484;
	setAttr ".wl[60].w[5]" 9.88608951736726e-005;
	setAttr -s 4 ".wl[61].w";
	setAttr ".wl[61].w[1]" 0.51017198830258237;
	setAttr ".wl[61].w[2]" 0.48878563378344086;
	setAttr ".wl[61].w[5]" 0.00077819537905834404;
	setAttr ".wl[61].w[6]" 0.0002641825349185725;
	setAttr -s 4 ".wl[62].w";
	setAttr ".wl[62].w[1]" 0.51329870723196713;
	setAttr ".wl[62].w[2]" 0.4855111845071356;
	setAttr ".wl[62].w[3]" 0.00012395912932471834;
	setAttr ".wl[62].w[5]" 0.0010661491315725098;
	setAttr -s 4 ".wl[63].w";
	setAttr ".wl[63].w[1]" 0.5109347677593592;
	setAttr ".wl[63].w[2]" 0.48782664051463503;
	setAttr ".wl[63].w[3]" 0.0011413678454432216;
	setAttr ".wl[63].w[5]" 9.7223880562537424e-005;
	setAttr -s 4 ".wl[64].w";
	setAttr ".wl[64].w[1]" 0.83082584804326276;
	setAttr ".wl[64].w[2]" 0.15443464129815535;
	setAttr ".wl[64].w[3]" 0.012778530564323732;
	setAttr ".wl[64].w[5]" 0.0019609800942580881;
	setAttr -s 4 ".wl[65].w";
	setAttr ".wl[65].w[1]" 0.84391659381661421;
	setAttr ".wl[65].w[2]" 0.14202657776643271;
	setAttr ".wl[65].w[5]" 0.010400368335286849;
	setAttr ".wl[65].w[6]" 0.0036564600816662053;
	setAttr -s 4 ".wl[66].w";
	setAttr ".wl[66].w[1]" 0.53459533143791771;
	setAttr ".wl[66].w[2]" 0.46393139652910592;
	setAttr ".wl[66].w[5]" 0.0010920270579835608;
	setAttr ".wl[66].w[6]" 0.00038124497499281547;
	setAttr -s 4 ".wl[67].w";
	setAttr ".wl[67].w[1]" 0.53040867635855016;
	setAttr ".wl[67].w[2]" 0.4680762637772794;
	setAttr ".wl[67].w[3]" 0.0012414539398022202;
	setAttr ".wl[67].w[5]" 0.0002736059243682098;
	setAttr -s 4 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.011503379296188861;
	setAttr ".wl[68].w[7]" 0.81645938470112667;
	setAttr ".wl[68].w[8]" 0.16299629344249789;
	setAttr ".wl[68].w[10]" 0.0090409425601866173;
	setAttr -s 4 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.11379208261204014;
	setAttr ".wl[69].w[7]" 0.42226434091916965;
	setAttr ".wl[69].w[8]" 0.4449361096340817;
	setAttr ".wl[69].w[9]" 0.01900746683470864;
	setAttr -s 4 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.010697037792900869;
	setAttr ".wl[70].w[7]" 0.8336918385912091;
	setAttr ".wl[70].w[8]" 0.14910196671517162;
	setAttr ".wl[70].w[9]" 0.0065091569007184359;
	setAttr -s 4 ".wl[71].w[7:10]"  0.83484258625016095 0.14876329563488094 
		0.007309523581993202 0.0090845945329649791;
	setAttr -s 4 ".wl[72].w";
	setAttr ".wl[72].w[7]" 0.0088804047858043397;
	setAttr ".wl[72].w[10]" 0.20764643903320684;
	setAttr ".wl[72].w[11]" 0.77640331306909971;
	setAttr ".wl[72].w[12]" 0.0070698431118890745;
	setAttr -s 4 ".wl[73].w";
	setAttr ".wl[73].w[0]" 0.0038231442759627111;
	setAttr ".wl[73].w[10]" 0.50045395531304737;
	setAttr ".wl[73].w[11]" 0.49366459556910097;
	setAttr ".wl[73].w[12]" 0.0020583048418889821;
	setAttr -s 4 ".wl[74].w";
	setAttr ".wl[74].w[0]" 0.0090061475666270499;
	setAttr ".wl[74].w[10]" 0.80831281027166524;
	setAttr ".wl[74].w[11]" 0.17670654386811457;
	setAttr ".wl[74].w[12]" 0.0059744982935930942;
	setAttr -s 4 ".wl[75].w";
	setAttr ".wl[75].w[7]" 0.0093218688189663588;
	setAttr ".wl[75].w[10]" 0.20908922955853823;
	setAttr ".wl[75].w[11]" 0.77442075931729326;
	setAttr ".wl[75].w[12]" 0.0071681423052023189;
	setAttr -s 13 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 0
		 0.99999999999999978 2.2204460492503121e-016 0 0 0 0 1 0 0.9077809798270885 0.021613832853024845 0 1;
	setAttr ".pm[1]" -type "matrix" -0.022216737285145338 0.99975317783160955 1.2243445291688756e-016 0
		 0.99975317783160977 0.022216737285145338 2.7207656203750898e-018 0 7.7037197775489383e-034 1.224646799147353e-016 -1 0
		 -1.6633741633086927 -0.058583039238928131 -7.1743531488277163e-018 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999956 4.5102810375396966e-017 -1.2243445291688756e-016 0
		 1.7347234759768059e-016 0.99999999999999978 1.1974391429436023e-016 0 1.2243445291688753e-016 -1.1974391429436026e-016 1 0
		 -4.4007984896322262e-016 -2.6368876080691641 -3.1575124374449461e-016 1;
	setAttr ".pm[3]" -type "matrix" -0.99972969319684546 -0.023249527748764633 1.2243445291688756e-016 0
		 -0.023249527748764633 0.99972969319684568 2.7207656203750902e-018 0 -1.2246461456711246e-016 -1.2651303157787961e-019 -1 0
		 -0.99698263084036276 -1.752759786477414 1.2231684057018596e-016 1;
	setAttr ".pm[4]" -type "matrix" -0.022216737285145345 0.99975317783160977 1.2243445291688756e-016 0
		 0.99975317783161 0.022216737285145345 2.7207656203750898e-018 0 3.8518598887744709e-034 1.2246467991473532e-016 -1 0
		 -1.7507685333208658 1.9284384064225513 2.3616559217781999e-016 1;
	setAttr ".pm[5]" -type "matrix" 0.99846035320541182 0.055470019622523778 -1.1564133471895109e-016 0
		 -0.055470019622523681 0.99846035320541204 1.1955536194247927e-016 0 1.2209502618155647e-016 -1.1295666180665371e-016 1 0
		 -0.96153362544517196 -1.7851914816556911 -8.4250797280325699e-017 1;
	setAttr ".pm[6]" -type "matrix" -0.022216737285145224 0.99975317783160944 2.3807578763583868e-016 0
		 0.99975317783160955 0.022216737285145446 -1.1683459632210421e-016 0 -1.2209502618155647e-016 2.3542134172138905e-016 -1 0
		 -1.6446467983060848 -1.8741770667995972 -2.404180857908242e-016 1;
	setAttr ".pm[7]" -type "matrix" 0.022216737285145668 0.99975317783160955 0 0 -0.99975317783160955 0.022216737285145668 0 0
		 0 0 1 0 -1.3795825551922247 -0.79087102972558099 0 1;
	setAttr ".pm[8]" -type "matrix" 0.02272140535311595 0.99974183554494633 0 0 -0.99974183554494633 0.02272140535311595 0 0
		 0 0 1 0 -2.3528440860437838 -0.78968342524747193 0 1;
	setAttr ".pm[9]" -type "matrix" 2.7061686225238156e-016 -0.99999999999999933 0 0
		 0.99999999999999933 2.7061686225238156e-016 0 0 0 0 1 0 3.2853025936599396 0.86455331412103631 0 1;
	setAttr ".pm[10]" -type "matrix" -0.05547001962252416 -0.99846035320541215 -1.2227612756285441e-016 0
		 -0.99846035320541193 0.05547001962252416 6.7931181979365096e-018 0 7.7037197775489383e-034 1.2246467991473535e-016 -1 0
		 -1.4255155619131068 -0.72174967895011688 -8.838884341118904e-017 1;
	setAttr ".pm[11]" -type "matrix" 0.019996001199601737 0.99980005998000665 2.4471632188703908e-016 0
		 -0.99980005998000665 0.019996001199601737 -4.3443143114526185e-018 0 -9.2367935751776917e-018 -2.4458052438656522e-016 1 0
		 -2.1440957194066894 0.88598996669698493 1.9689132109040231e-016 1;
	setAttr ".pm[12]" -type "matrix" 2.7061686225238166e-016 -0.99999999999999956 2.4471632188703913e-016 0
		 0.99999999999999956 2.7061686225238166e-016 -4.3443143114526185e-018 0 4.3443143114525515e-018 2.4471632188703913e-016 1 0
		 3.242074927953889 -0.82132564841498523 1.8690719924329117e-016 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 13 ".ma";
	setAttr -s 13 ".dpf[0:12]"  4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 13 ".lw";
	setAttr -s 13 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".bm" 2;
	setAttr ".ucm" yes;
	setAttr ".hmf" 0.68;
	setAttr -s 13 ".ifcl";
	setAttr -s 13 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "F54A15DD-4F3C-EEC4-19B6-8096DD8FD260";
createNode objectSet -n "skinCluster1Set";
	rename -uid "E79E1EA4-44B9-12D5-7BB0-4A8BAEDBACE8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "F4260007-492A-1D3A-9BC4-669A392FF4A5";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "F471BB58-4071-4DFD-84C5-BAA23A028195";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "4D003B45-42E5-4B2B-4D64-E68472E7884A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "E4A28D9D-4BD6-FB50-3290-938FD710E46A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "BBE3ACA3-463A-8E93-AAB8-9695F0624FFE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "9430F7F7-4F39-F933-7700-8E88D157CD95";
	setAttr -s 13 ".wm";
	setAttr -s 13 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.02161383285302465 -0.90778097982708872
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5720461095100862 5.711089622351307e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99993829255399802 0.011109054153932121 6.8023338055837897e-019 6.1228561466056169e-017 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.97286260244324685 -2.4661318887241819e-016
		 -3.1220970989700141e-032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.69920785990821599 0.7149184349578438 4.3776128651127934e-017 4.2814133378763384e-017 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.088354747704616252 -1.0573758393780999
		 -1.2949119371901368e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70747192781763379 0.7067414458980037 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.92964610234610467 5.4318528841523772e-017
		 -1.138487516076341e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70747192781763379 0.7067414458980037 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.04177642962120643 1.038648474375492
		 1.2719775295832285e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.67910276845673434 0.73404320708960924 4.4947183199907382e-017 4.1583051584132293e-017 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.77929782610892839 6.9388939039072407e-018
		 -9.5148388481999678e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.67910276845673434 0.73404320708960924 4.4947183199907382e-017 4.1583051584132293e-017 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.45389048991354508 -0.79971181556195858
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.99993829255399802 0.011109054153932289 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.97286260244324763 3.0045410603918299e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.00025239775469267089 0.99999996814768621 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.95125422556190387 1.6851450790333899e-013
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.99993545680332452 0.011361435979955087 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.47550432276657084
		 0.82132564841498468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.027745691508661647 0.99961501419431775 6.1208766375635369e-017 1.6989336148106192e-018 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.7792978261089305 -2.3592239273284576e-016
		 -2.6963019221421302e-032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99928763187670755 -0.037738955712126689 -2.3108445658009834e-018 6.1188719990267427e-017 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0809077593703156 -1.2732870313669764e-015
		 9.9841218471111368e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.99995001374568893 0.0099985003873841009 1
		 1 1 yes;
	setAttr -s 13 ".m";
	setAttr -s 13 ".p";
	setAttr ".bp" yes;
createNode animCurveTA -n "joint4_rotateX";
	rename -uid "71306096-453A-368F-B447-87B555964E72";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint4_rotateY";
	rename -uid "26C68221-454F-74A9-3E75-3FA8E6C45DE2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -47.674407783822147 25 66.49035329849977
		 50 -47.674407783822147;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint4_rotateZ";
	rename -uid "68607AD2-49F7-A850-48F6-DBA5C6344495";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint4_visibility";
	rename -uid "98D71127-432E-519D-10EB-B99C18C4C4A9";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "joint4_translateX";
	rename -uid "CA2F605B-4CBC-D4A4-5F74-BCBF403041C6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -0.45389048991354508 25 -0.45389048991354508
		 50 -0.45389048991354508;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint4_translateY";
	rename -uid "E3C1841E-4E1E-2379-8BCB-12B281E88BD8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -0.79971181556195858 25 -0.79971181556195858
		 50 -0.79971181556195858;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint4_translateZ";
	rename -uid "AB49A39E-4ED9-EC95-833A-6FB0B4DC5EDB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint4_scaleX";
	rename -uid "261CA6CF-4A3A-79C5-63E7-FBB5B36314A3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint4_scaleY";
	rename -uid "20E789CC-4608-5778-179F-1E8FF4FCAE44";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint4_scaleZ";
	rename -uid "E750AFC9-4405-0E9A-31AE-A0A427EDF95B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint7_rotateX";
	rename -uid "E41CC59A-4E6E-17E9-26B8-66A84FC5A524";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint7_rotateY";
	rename -uid "9551FFF9-4D36-9A05-CFE6-43ABD89E03D0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -60.815492551088241 25 60.662423468405549
		 50 -60.815492551088241;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint7_rotateZ";
	rename -uid "8DB51FCE-4C1A-2E10-FDB5-28A70C56E4BA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint7_visibility";
	rename -uid "081BF7F1-4265-865A-0956-B8AF02D01037";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "joint7_translateX";
	rename -uid "1E9D7F6F-4A08-8F5D-CA4E-139C56E960CD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -0.47550432276657084 25 -0.47550432276657084
		 50 -0.47550432276657084;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint7_translateY";
	rename -uid "F0D5C1B3-4CCC-5041-2B25-ACA2220925E9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0.82132564841498468 25 0.82132564841498468
		 50 0.82132564841498468;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint7_translateZ";
	rename -uid "3E6E0B6C-4D51-02A1-5E8B-6FA5076D23D9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint7_scaleX";
	rename -uid "E45C2CAA-4C8B-95C1-72DD-8B860A8D5A6B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint7_scaleY";
	rename -uid "D3AA9113-4075-8781-F406-979A7F1DD2BA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint7_scaleZ";
	rename -uid "A029D425-4050-C677-0E46-A5BA3A6D4C8E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint10_rotateX";
	rename -uid "9A573B0C-4786-D478-E7CB-54AFCD03CD47";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint10_rotateY";
	rename -uid "4C39E733-4DBF-7A5B-8B79-8683D4503C27";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 45.620332144943696 25 -53.499664190955691
		 50 45.620332144943696;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint10_rotateZ";
	rename -uid "73ADA5AC-495F-5F73-C59A-DD975DC510DF";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint10_visibility";
	rename -uid "8BC42F14-4402-5C0A-248C-12B98553E737";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "joint10_translateX";
	rename -uid "DB193793-4E7D-4EA5-6CC8-97B771FAAF08";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0.088354747704616252 25 0.088354747704616252
		 50 0.088354747704616252;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint10_translateY";
	rename -uid "657E68F9-49ED-D16C-D7DE-36B57152EB86";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -1.0573758393780999 25 -1.0573758393780999
		 50 -1.0573758393780999;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint10_translateZ";
	rename -uid "D100F9FF-4BC9-7A7A-177D-00BEDD4C0EED";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2949119371901368e-016 25 -1.2949119371901368e-016
		 50 -1.2949119371901368e-016;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint10_scaleX";
	rename -uid "7007EBD1-4631-77AE-2079-958D310BE518";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint10_scaleY";
	rename -uid "07C697F0-4390-6B68-354D-1088338EFE67";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint10_scaleZ";
	rename -uid "90C44B91-45AF-9C17-C2BF-E19316DE38D2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint12_rotateX";
	rename -uid "FE351F10-4F38-2F19-97FC-B78C4D894170";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
createNode animCurveTA -n "joint12_rotateY";
	rename -uid "04AE495E-4785-AF4B-50D2-62BCBB1C5AE2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 54.165447057252301 25 -56.80062980787595
		 50 41.312448186951023;
createNode animCurveTA -n "joint12_rotateZ";
	rename -uid "8FAE6EE6-466D-D435-88E8-B29E2C9C4107";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
createNode animCurveTU -n "joint12_visibility";
	rename -uid "70C4D782-42B8-65F5-E938-2B8EB9672305";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint12_translateX";
	rename -uid "B017282B-404B-6956-056D-108635248104";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0.04177642962120643 25 0.04177642962120643
		 50 0.04177642962120643;
createNode animCurveTL -n "joint12_translateY";
	rename -uid "585BCA72-4EA7-97BF-87F0-34807135077A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1.038648474375492 25 1.038648474375492
		 50 1.038648474375492;
createNode animCurveTL -n "joint12_translateZ";
	rename -uid "3E96B992-452F-8C06-B172-20A199695E39";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1.2719775295832285e-016 25 1.2719775295832285e-016
		 50 1.2719775295832285e-016;
createNode animCurveTU -n "joint12_scaleX";
	rename -uid "A71FC3C4-4270-01E4-A41C-D1B7FB0E15DC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
createNode animCurveTU -n "joint12_scaleY";
	rename -uid "739AFC32-4796-90B5-7810-D8A16340BFB8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
createNode animCurveTU -n "joint12_scaleZ";
	rename -uid "A0C8AD5F-4418-ABE7-6346-DBBE5742B443";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
createNode animCurveTA -n "joint3_rotateX";
	rename -uid "49C50E30-4C41-39A8-2B42-6BBE1ECC2513";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -36.378476850811332 25 13.499567510983617
		 50 -36.378476850811332;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint3_rotateY";
	rename -uid "DD22B00E-48CA-696E-7313-2C87D6ED8B90";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint3_rotateZ";
	rename -uid "FBB17328-403D-8C66-D7EF-E7BE3BEE3669";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 25 0 50 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint3_visibility";
	rename -uid "CC647A97-4EA0-5EDE-8EA2-F9B29D372C43";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "joint3_translateX";
	rename -uid "D636C5B5-4901-6CBB-1402-2FB5901727FD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0.97286260244324685 25 0.97286260244324685
		 50 0.97286260244324685;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint3_translateY";
	rename -uid "A143598C-4FDC-CA3D-C6AE-D4936A9F29E3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -2.4661318887241819e-016 25 -2.4661318887241819e-016
		 50 -2.4661318887241819e-016;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint3_translateZ";
	rename -uid "67EBF124-4B66-7F12-81B8-0791DE295D00";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -3.1220970989700141e-032 25 -3.1220970989700141e-032
		 50 -3.1220970989700141e-032;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint3_scaleX";
	rename -uid "748FDEF5-478C-62CC-7A19-79951DE2A0C7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint3_scaleY";
	rename -uid "84DD20C3-4AC3-9462-819F-C2AE546D03A1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint3_scaleZ";
	rename -uid "596A1519-42CF-3815-5C0C-51914E6BE900";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 25 1 50 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  0.99999994039535522;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  0.99999994039535522;
	setAttr -s 3 ".koy[2]"  0;
select -ne :time1;
	setAttr ".o" 10;
	setAttr ".unw" 10;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "skinCluster1GroupId.id" "pCubeShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCubeShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "pCubeShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pCubeShape1.twl";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3_rotateX.o" "joint3.rx";
connectAttr "joint3_rotateY.o" "joint3.ry";
connectAttr "joint3_rotateZ.o" "joint3.rz";
connectAttr "joint3_visibility.o" "joint3.v";
connectAttr "joint3_translateX.o" "joint3.tx";
connectAttr "joint3_translateY.o" "joint3.ty";
connectAttr "joint3_translateZ.o" "joint3.tz";
connectAttr "joint3_scaleX.o" "joint3.sx";
connectAttr "joint3_scaleY.o" "joint3.sy";
connectAttr "joint3_scaleZ.o" "joint3.sz";
connectAttr "joint2.s" "joint10.is";
connectAttr "joint10_scaleX.o" "joint10.sx";
connectAttr "joint10_scaleY.o" "joint10.sy";
connectAttr "joint10_scaleZ.o" "joint10.sz";
connectAttr "joint10_rotateX.o" "joint10.rx";
connectAttr "joint10_rotateY.o" "joint10.ry";
connectAttr "joint10_rotateZ.o" "joint10.rz";
connectAttr "joint10_visibility.o" "joint10.v";
connectAttr "joint10_translateX.o" "joint10.tx";
connectAttr "joint10_translateY.o" "joint10.ty";
connectAttr "joint10_translateZ.o" "joint10.tz";
connectAttr "joint10.s" "joint11.is";
connectAttr "joint2.s" "joint12.is";
connectAttr "joint12_scaleX.o" "joint12.sx";
connectAttr "joint12_scaleY.o" "joint12.sy";
connectAttr "joint12_scaleZ.o" "joint12.sz";
connectAttr "joint12_rotateX.o" "joint12.rx";
connectAttr "joint12_rotateY.o" "joint12.ry";
connectAttr "joint12_rotateZ.o" "joint12.rz";
connectAttr "joint12_visibility.o" "joint12.v";
connectAttr "joint12_translateX.o" "joint12.tx";
connectAttr "joint12_translateY.o" "joint12.ty";
connectAttr "joint12_translateZ.o" "joint12.tz";
connectAttr "joint12.s" "joint13.is";
connectAttr "joint1.s" "joint4.is";
connectAttr "joint4_scaleX.o" "joint4.sx";
connectAttr "joint4_scaleY.o" "joint4.sy";
connectAttr "joint4_scaleZ.o" "joint4.sz";
connectAttr "joint4_rotateX.o" "joint4.rx";
connectAttr "joint4_rotateY.o" "joint4.ry";
connectAttr "joint4_rotateZ.o" "joint4.rz";
connectAttr "joint4_visibility.o" "joint4.v";
connectAttr "joint4_translateX.o" "joint4.tx";
connectAttr "joint4_translateY.o" "joint4.ty";
connectAttr "joint4_translateZ.o" "joint4.tz";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint5.s" "joint6.is";
connectAttr "joint1.s" "joint7.is";
connectAttr "joint7_scaleX.o" "joint7.sx";
connectAttr "joint7_scaleY.o" "joint7.sy";
connectAttr "joint7_scaleZ.o" "joint7.sz";
connectAttr "joint7_rotateX.o" "joint7.rx";
connectAttr "joint7_rotateY.o" "joint7.ry";
connectAttr "joint7_rotateZ.o" "joint7.rz";
connectAttr "joint7_visibility.o" "joint7.v";
connectAttr "joint7_translateX.o" "joint7.tx";
connectAttr "joint7_translateY.o" "joint7.ty";
connectAttr "joint7_translateZ.o" "joint7.tz";
connectAttr "joint7.s" "joint8.is";
connectAttr "joint8.s" "joint9.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint10.wm" "skinCluster1.ma[3]";
connectAttr "joint11.wm" "skinCluster1.ma[4]";
connectAttr "joint12.wm" "skinCluster1.ma[5]";
connectAttr "joint13.wm" "skinCluster1.ma[6]";
connectAttr "joint4.wm" "skinCluster1.ma[7]";
connectAttr "joint5.wm" "skinCluster1.ma[8]";
connectAttr "joint6.wm" "skinCluster1.ma[9]";
connectAttr "joint7.wm" "skinCluster1.ma[10]";
connectAttr "joint8.wm" "skinCluster1.ma[11]";
connectAttr "joint9.wm" "skinCluster1.ma[12]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint10.liw" "skinCluster1.lw[3]";
connectAttr "joint11.liw" "skinCluster1.lw[4]";
connectAttr "joint12.liw" "skinCluster1.lw[5]";
connectAttr "joint13.liw" "skinCluster1.lw[6]";
connectAttr "joint4.liw" "skinCluster1.lw[7]";
connectAttr "joint5.liw" "skinCluster1.lw[8]";
connectAttr "joint6.liw" "skinCluster1.lw[9]";
connectAttr "joint7.liw" "skinCluster1.lw[10]";
connectAttr "joint8.liw" "skinCluster1.lw[11]";
connectAttr "joint9.liw" "skinCluster1.lw[12]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint10.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint11.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint12.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint13.obcc" "skinCluster1.ifcl[6]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[7]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[8]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[9]";
connectAttr "joint7.obcc" "skinCluster1.ifcl[10]";
connectAttr "joint8.obcc" "skinCluster1.ifcl[11]";
connectAttr "joint9.obcc" "skinCluster1.ifcl[12]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCubeShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCubeShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCubeShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "joint10.msg" "bindPose1.m[3]";
connectAttr "joint11.msg" "bindPose1.m[4]";
connectAttr "joint12.msg" "bindPose1.m[5]";
connectAttr "joint13.msg" "bindPose1.m[6]";
connectAttr "joint4.msg" "bindPose1.m[7]";
connectAttr "joint5.msg" "bindPose1.m[8]";
connectAttr "joint6.msg" "bindPose1.m[9]";
connectAttr "joint7.msg" "bindPose1.m[10]";
connectAttr "joint8.msg" "bindPose1.m[11]";
connectAttr "joint9.msg" "bindPose1.m[12]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[1]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[1]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[0]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[0]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "joint10.bps" "bindPose1.wm[3]";
connectAttr "joint11.bps" "bindPose1.wm[4]";
connectAttr "joint12.bps" "bindPose1.wm[5]";
connectAttr "joint13.bps" "bindPose1.wm[6]";
connectAttr "joint4.bps" "bindPose1.wm[7]";
connectAttr "joint5.bps" "bindPose1.wm[8]";
connectAttr "joint6.bps" "bindPose1.wm[9]";
connectAttr "joint7.bps" "bindPose1.wm[10]";
connectAttr "joint8.bps" "bindPose1.wm[11]";
connectAttr "joint9.bps" "bindPose1.wm[12]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of ktse_stickfigure.ma
