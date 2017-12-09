//Maya ASCII 2018 scene
//Name: House1.0002.ma
//Last modified: Fri, Dec 08, 2017 02:03:25 PM
//Codeset: UTF-8
requires maya "2018";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "exportedFrom" "/Users/laurencarr/Desktop/Maya Projects/Houses/scenes/House1.ma";
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Mac OS X 10.12.4";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "2981CB06-C44C-82AF-4786-06B869A46438";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.760821777687639 7.8990595891317463 5.5645219178377268 ;
	setAttr ".r" -type "double3" -11.738352729577228 -438.59999999997098 -8.0456275374213835e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D5FA46EB-F44F-A78D-3402-A8B19F7A861B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 19.44574836142737;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "B60BCBBA-6841-5BA8-860A-8A8E0592AB6F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D89E1CB5-E440-6D7D-3D4C-58809AB426E2";
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
	rename -uid "E0C333D9-DE42-1249-AC8E-C292ABD011F7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.59341290720124518 4.832224082338346 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C159F303-6540-856A-D9EE-9DB6025BF885";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 34.088593977734206;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "33369A85-6048-D640-2DA0-668ECA6C775D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 5.3104275073972032 -0.20202020202020426 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5C8B92A2-6B4E-AEA7-1992-1F90FDA3D639";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 31.464646464646435;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "40D4AAB4-324F-93CA-CC56-A9BE50EFD4AA";
	setAttr ".t" -type "double3" 0 4.4808047058124005 0 ;
	setAttr ".s" -type "double3" 16.713137395041837 14.826339798846583 15.764992551749076 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "B037D56E-1C4C-1CD3-DEEE-99B38896313D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[500]" -type "float3" 0 -0.036493536 0.030701939 ;
	setAttr ".pt[501]" -type "float3" 0 -0.036493536 0.030701939 ;
	setAttr ".pt[502]" -type "float3" 0 -0.036493536 0.030701939 ;
	setAttr ".pt[503]" -type "float3" 0 -0.036493536 0.030701939 ;
	setAttr ".pt[504]" -type "float3" 0 -0.036493536 0.030701939 ;
	setAttr ".pt[505]" -type "float3" 0 -0.036493536 0.030701939 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2C2C5F37-5749-3EF7-ED78-359228BEB200";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "983534CC-6B4B-9981-BA12-369D266CC932";
createNode displayLayer -n "defaultLayer";
	rename -uid "C96A3B14-0D4D-8DE1-A8E9-A0BBF95AF6B2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "68F0A5FC-114F-0B7E-D007-10BBCE5918E1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "534B4709-884C-EF46-AB6E-1484A0846E80";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "33115DFF-2E42-6A1E-8F12-D7B0452F95D0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "10EB4E51-F54F-CB07-F78B-87AD6F009B98";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C1EA83F4-5647-C991-A4A2-C9A3DB55034A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 341\n            -height 205\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 341\n            -height 205\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 341\n            -height 205\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 689\n            -height 435\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 689\\n    -height 435\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 689\\n    -height 435\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0B1A457C-194E-A86A-3AE1-E5A5C7BB7A2F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "D95F9688-0D42-271D-F8FF-5886FC700440";
	setAttr ".cuv" 1;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "32DD1E44-EE47-14CB-680C-248A4B358D16";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".dv" 3;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "9C0F96B0-C14C-0CE5-67B3-48BFF10A24C5";
	setAttr ".ics" -type "componentList" 6 "f[138:139]" "f[158:159]" "f[161:162]" "f[173]" "f[180]" "f[183:184]";
	setAttr ".ix" -type "matrix" 16.713137395041837 0 0 0 0 14.826339798846583 0 0 0 0 15.764992551749076 0
		 0 4.4808047058124005 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.065708943 2.8813753 -4.5196633 ;
	setAttr ".rs" 2118634327;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.3677798441838491 0.0045891254397742998 -4.5196703612755877 ;
	setAttr ".cbx" -type "double3" 3.4991977345623457 5.7581613439838417 -4.5196562662738735 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "051A154F-F34B-B753-10FA-0AA4B8E5B873";
	setAttr ".uopa" yes;
	setAttr -s 386 ".tk";
	setAttr ".tk[0:165]" -type "float3"  -0.0099770259 -0.051138405 0.035916924
		 0.012371508 -0.051138405 0.035916924 -0.0099770259 0 0.035916924 0.012371508 0 0.035916924
		 -0.0099770259 0 -0.035916917 0.012371508 0 -0.035916917 -0.0099770259 -0.051138405
		 -0.035916917 0.012371508 -0.051138405 -0.035916917 0.006182638 0 0 -0.0076664742
		 0 0.022257313 0 0.0070361206 0.022257276 0.0061826333 0 0.022257313 -0.0076664728
		 0.0070360899 0 0.006182638 0.0070360899 0 0 0.0070360899 -0.022257306 -0.0076664742
		 0 -0.022257302 0 0 -0.02225728 0.0061826333 0 -0.022257302 -0.0076664728 0 5.5511151e-17
		 0 0 0.022257343 -1.7462298e-10 0 -0.13789742 0 0 0 2.910383e-11 0 0.13789742 0 0.12267679
		 0 -0.047498476 0 8.8817842e-16 0.038305219 0 -8.8817842e-16 -0.035336986 0 -0.082021371
		 0.043817878 0 -0.082021371 0.043817855 0 -0.0820214 -0.035336982 0 -0.082021371 -0.035336979
		 0 0.12721185 0.043817863 0 0.12721184 0.043817848 0 -0.12721181 -0.035336982 0 -0.12721184
		 -0.035336979 0 0.082021393 0.043817848 0 0.082021393 0.043817863 0 0.082021423 -0.035336986
		 0 0.082021393 -0.035336979 0.06680046 -0.12721185 0.043817848 0.06680046 -0.12721184
		 0.043817848 0.06680049 0.12721181 -0.035336982 0.06680046 0.12721184 -0.028252086
		 0 0.12721182 -0.028252086 0 -0.12721184 -0.028252089 0 -0.12721181 -0.028252089 0
		 0.12721181 0.022783935 0 -0.12721181 0.022783946 0 0.12721184 0.022783939 0 0.12721181
		 0.022783939 0 -0.12721182 8.7311491e-11 0 -0.10888558 0.040626213 0 -0.10888558 0
		 0 -0.10888558 -0.032763071 0 -0.10888558 0 0 0.11794584 0.040626198 0 0 0 0 -0.11794584
		 -0.032763075 0 0 0 0 0.10888563 0.040626213 0 0.1088856 -8.7311491e-11 0 0.10888563
		 -0.032763071 0 0.1088856 0 0.093664818 -0.11794584 0.040626198 0.093664788 0 0 0.093664818
		 0.11794584 -0.032763075 0.093664788 0 -0.037505414 0 1.110223e-16 -0.037505399 0
		 -0.11794584 -0.037505433 0 1.110223e-16 -0.037505399 0 0.11794584 0.030246295 0 -1.110223e-16
		 0.03024628 0 0.11794584 0.03024631 0 -1.110223e-16 0.03024628 0 -0.11794584 -0.038305216
		 -0.012142451 -0.0030788453 0.047498468 -0.012142451 -0.0030788761 -0.0010604989 0
		 -0.0030788782 -0.0010604995 0 -0.003078935 0.047498468 0 -0.0030788772 -0.038305219
		 0 -0.0030788772 0.00085524138 0 -0.0030788768 0.00085523725 0 -0.0030788782 -0.0010604995
		 0 0.1378974 -0.0010604995 0 -0.13789739 0.047498468 0 0.0030788186 -0.038305219 0
		 0.0030788737 0.00085524138 0 -0.13789739 0.00085524807 0 0.13789739 -0.0010604995
		 0 0.0030788744 -0.0010604989 0 0.0030789059 0.047498468 -0.012142478 0.0030789066
		 -0.038305219 -0.012142451 0.0030789066 0.00085523725 0 0.0030788744 0.00085524138
		 0 0.0030788744 -0.0010604995 -0.012142451 -0.1378974 -0.0010604995 -0.01214239 0.13789739
		 0.00085524138 -0.012142451 0.13789739 0.00085524138 -0.012142451 -0.1378974 -0.01933407
		 -0.084823318 -0.022194004 -4.6566129e-10 -0.062000833 -0.066500545 0 0 -0.12346615
		 -0.012994446 0 -0.066500545 -1.8626451e-09 -0.062000833 -0.066500545 0.02397426 -0.084823318
		 -0.022194004 0.016113136 0 -0.066500545 0 0 -0.12346612 0 0 -0.12346615 0.016113134
		 0 -0.066500545 0.023974258 0 -0.022194004 0 0 -0.066500545 -0.012994453 0 -0.066500582
		 0 0 -0.12346615 0 0 -0.066500545 -0.019334078 0 -0.022194004 -0.019334076 0 0.069601946
		 0 0 0.046779569 0 0 0 -0.012994453 0 0 0 0 0.046779528 0.023974258 0 0.06960196 0.016113134
		 0 0 0 0 0 0 0 0 0.016113134 0 0 0.023974258 0 -0.069601968 0 0 -0.046779595 -0.012994457
		 0 0 0 0 0 0 0 -0.046779595 -0.019334078 0 -0.069601968 -0.019334076 0 0.022193998
		 0 0 0.066500552 0 0 0.12346615 -0.012994453 0 0.066500552 0 0 0.066500552 0.023974258
		 0 0.022193998 0.016113134 0 0.066500552 0 0 0.12346612 -1.8626451e-09 0 0.12346615
		 0.016113142 0 0.066500552 0.02397426 -0.084823333 0.022193998 -1.8626451e-09 -0.062000833
		 0.066500552 -0.012994448 0 0.066500552 0 0 0.12346615 0 -0.062000833 0.066500552
		 -0.01933407 -0.084823333 0.022193998 -0.019334076 0.006972794 -0.069601953 0 0.051279537
		 -0.046779595 0 0.10824542 0 -0.012994453 0.051279537 0 0 0.051279537 -0.046779525
		 0.023974258 0.006972794 -0.069601953 0.016113134 0.051279537 0 0 0.10824539 0 0 0.10824542
		 0 0.016113134 0.051279537 0 0.023974258 0.006972794 0.069601968 0 0.051279537 0.046779569
		 -0.012994457 0.051279537 0 0 0.10824542 0 0 0.051279537 0.046779569 -0.019334078
		 0.006972794 0.069601968 -0.0076446738 -0.084823333 0.069601975 -0.022905974 -0.062000833
		 0 -0.042527638 0 -7.4505806e-09 -0.02290597 0 0.046779569;
	setAttr ".tk[166:331]" -0.022905974 -0.062000833 0 -0.0076446738 -0.084823318
		 -0.069601975 -0.02290597 0 -0.046779569 -0.042527623 0 7.4505806e-09 -0.042527638
		 0 0 -0.02290597 0 -0.046779569 -0.0076446729 0 -0.069601975 -0.02290597 0 -7.4505806e-09
		 -0.022905985 0 0.046779547 -0.042527638 0 -7.4505806e-09 -0.02290597 0 7.4505806e-09
		 -0.0076446729 0 0.069601938 0.0061650537 -0.084823333 -0.06960196 0.018472552 -0.062000833
		 0 0.03429649 0 7.4505806e-09 0.018472552 0 -0.046779569 0.018472552 -0.062000819
		 0 0.0061650537 -0.084823318 0.069601975 0.018472552 0 0.046779569 0.034296483 0 7.4505806e-09
		 0.03429649 0 0 0.018472552 0 0.046779569 0.0061650551 0 0.069601975 0.018472552 0
		 7.4505806e-09 0.018472562 0 -0.046779569 0.03429649 0 7.4505806e-09 0.018472552 0
		 -7.4505806e-09 0.0061650551 0 -0.069601946 -0.037282921 -0.071992479 -0.049184795
		 -1.3969839e-09 0 -0.10206331 -0.033588178 0 -0.10206331 -0.015769936 0 -0.049184833
		 0.046230823 -0.071992435 -0.049184833 0.019554703 0 -0.049184795 0.041649386 0 -0.10206331
		 -1.8626451e-09 0 -0.10206331 0.041649353 0 -0.10206334 0.019554701 0 -0.049184833
		 0.046230864 0 -0.049184795 0 0 -0.10206334 -0.033588182 0 -0.10206331 0 0 -0.10206331
		 -0.037282929 0 -0.049184833 -0.015769942 0 -0.049184766 -0.037282944 0 0.056771196
		 0 0 0.12091622 -0.033588182 0 0 -0.015769927 0 0.1342172 0.046230849 0 0.056771167
		 0.019554708 0 0.13421722 0.041649368 0 0 0 0 0.12091625 0.041649353 0 0 0.019554701
		 0 -0.1342172 0.046230864 0 -0.056771163 0 0 -0.12091623 -0.033588182 0 0 0 0 -0.12091622
		 -0.037282929 0 -0.056771148 -0.015769942 0 -0.13421722 -0.037282944 0 0.049184825
		 0 0 0.10206331 -0.033588182 0 0.10206334 -0.015769927 0 0.049184825 0.046230849 0
		 0.049184825 0.019554708 0 0.049184825 0.041649368 0 0.10206331 0 0 0.10206328 0.041649371
		 0 0.10206334 0.019554701 0 0.049184825 0.046230838 -0.071992464 0.049184795 -1.8626451e-09
		 0 0.10206334 -0.03358819 0 0.10206331 0 0 0.10206331 -0.037282906 -0.071992449 0.049184825
		 -0.015769951 0 0.049184795 -0.037282944 0.033963751 -0.056771178 0 0.08684247 -0.12091622
		 -0.033588182 0.0868425 0 -0.015769927 0.033963751 -0.1342172 0.046230849 0.033963751
		 -0.056771148 0.019554708 0.033963751 -0.13421722 0.041649368 0.08684247 0 0 0.08684244
		 -0.12091625 0.041649353 0.0868425 0 0.019554701 0.033963751 0.1342172 0.046230864
		 0.033963721 0.056771185 0 0.0868425 0.12091623 -0.033588182 0.08684247 0 0 0.08684247
		 0.12091622 -0.037282929 0.033963751 0.056771167 -0.015769942 0.033963721 0.13421722
		 -0.016941598 -0.071992449 0.13421723 -0.035155475 0 7.4505806e-09 -0.035155475 0
		 0.12091623 -0.016941605 0 0.056771144 -0.016941605 -0.071992449 -0.1342172 -0.016941605
		 0 -0.056771163 -0.035155475 0 -0.12091623 -0.035155475 0 -1.4901161e-08 -0.035155497
		 0 -0.12091622 -0.016941601 0 -0.056771148 -0.016941592 0 -0.13421722 -0.035155497
		 0 -1.4901161e-08 -0.035155475 0 0.12091625 -0.035155475 0 7.4505806e-09 -0.016941601
		 0 0.1342172 -0.016941579 0 0.056771174 0.013662573 -0.071992449 -0.13421723 0.028351188
		 0 -7.4505806e-09 0.028351188 0 -0.12091623 0.013662584 0 -0.056771148 0.013662584
		 -0.071992449 0.1342172 0.013662584 0 0.056771159 0.028351188 0 0.12091623 0.028351184
		 0 1.4901161e-08 0.028351203 0 0.12091622 0.01366258 0 0.056771144 0.013662574 0 0.13421722
		 0.028351203 0 1.4901161e-08 0.028351188 0 -0.12091625 0.028351188 0 -7.4505806e-09
		 0.01366258 0 -0.1342172 0.01366258 0 -0.056771148 -2.910383e-11 0 -0.13062754 8.7311491e-11
		 -0.057714827 -0.072739631 -1.3038516e-08 0 -0.13062754 0.014636822 0 -0.072739631
		 0 0 -0.13062754 0 0 -0.072739601 3.7252903e-09 0 -0.13062754 -0.011803905 0 -0.072739661
		 0 0 0 0 0 0.042493604 -1.4901161e-08 0 -1.110223e-16 0.01463683 0 5.5511151e-17 0
		 0 0 0 0 -0.042493597 0 0 0 -0.0118039 0 0 0 0 0.13062754 0 0 0.072739623 -1.3038516e-08
		 0 0.13062754 0.014636822 0 0.072739623 2.910383e-11 0 0.13062754 0 -0.057714827 0.072739594
		 3.7252903e-09 0 0.13062754 -0.011803905 0 0.072739653 0 0.11540683 0 0 0.057518672
		 -0.042493597 -1.4901161e-08 0.11540683 1.110223e-16 0.01463683 0.057518672 -5.5511151e-17
		 0 0.11540683 0 0 0.057518642 0.042493604 0 0.11540683 0 -0.0118039 0.057518702 0
		 -0.044994362 0 -2.220446e-15 -0.02505501 -0.057714827 -2.220446e-16 -0.044994362
		 0 2.2351742e-08 -0.02505501 0 -0.042493597 -0.044994362 0 -4.4408921e-15 -0.025054999
		 0 8.8817842e-16 -0.044994362 0 -2.2351742e-08 -0.025055021 0 0.042493578 0.036285792
		 0 2.220446e-15 0.020205647 -0.057714827 2.220446e-16;
	setAttr ".tk[332:385]" 0.036285792 0 -2.2351742e-08 0.020205647 0 0.042493578
		 0.036285792 0 4.4408921e-15 0.020205641 0 -8.8817842e-16 0.036285792 0 2.2351742e-08
		 0.020205654 0 -0.042493597 0 0.0016378722 -0.016859114 -0.021313325 -0.031890582
		 0.016669206 0 0.0016378722 -0.016859114 0.026428523 -0.031890582 0.016669178 -0.0058070756
		 0 -0.016859105 0.0057416745 -0.091948591 0.016669149 -0.0058070789 0 -0.016859105
		 0.005741667 0 0.01666918 0 0 -0.016859114 0.026428523 0 0.016669206 0 0 -0.016859114
		 -0.021313325 0 0.016669178 0.0046831272 0 -0.016859105 -0.0046303808 0 0.01666918
		 0.0046831314 0 -0.016859105 -0.004630398 -0.091948591 0.016669149 -0.0058070789 0
		 4.6566129e-10 0.0057416796 0 0.076727197 -0.0058070789 0 -4.6566129e-10 0.005741667
		 0 -0.076727197 0 0 0.01685911 0.026428523 0 -0.016669177 0 0 0.01685911 -0.021313325
		 0 -0.016669177 0.0046831272 0 -4.6566129e-10 -0.0046303808 0 -0.076727197 0.0046831272
		 0 4.6566129e-10 -0.0046303808 0 0.076727197 -0.0058070789 0 0.016859107 0.005741667
		 0 -0.016669195 -0.0058070756 0 0.016859107 0.0057416614 -0.091948591 -0.016669225
		 0 0.0016378722 0.01685911 0.026428523 -0.031890582 -0.016669225 0 0.0016378722 0.01685911
		 -0.021313325 -0.031890582 -0.016669177 0.0046831314 0 0.016859107 -0.0046303887 -0.091948591
		 -0.016669225 0.0046831272 0 0.016859107 -0.0046303808 0 -0.016669195 -0.0058070789
		 0.0016378722 -4.6566129e-10 0.0057416796 -0.031890552 -0.076727197 -0.0058070789
		 0.0016378722 4.6566129e-10 0.005741667 -0.031890582 0.076727197 0.0046831272 0.0016378722
		 4.6566129e-10 -0.0046303808 -0.031890608 0.076727197 0.0046831272 0.0016378722 -4.6566129e-10
		 -0.0046303808 -0.031890582 -0.076727197;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "5FEACDAE-A647-DD9B-1EFD-03AFB608190A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[771]" "e[801]" "e[806]" "e[811]";
	setAttr ".ix" -type "matrix" 16.713137395041837 0 0 0 0 14.826339798846583 0 0 0 0 15.764992551749076 0
		 0 4.4808047058124005 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak2";
	rename -uid "AF48D8B0-A149-EE01-4B71-D09D5042FB3C";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[386]" -type "float3" 0 -0.054842357 -0.03717766 ;
	setAttr ".tk[387]" -type "float3" 0 -0.054842357 -0.03717766 ;
	setAttr ".tk[388]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[389]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[390]" -type "float3" 0 -0.054842357 -0.03717766 ;
	setAttr ".tk[391]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[392]" -type "float3" 0 -0.054842357 -0.03717766 ;
	setAttr ".tk[393]" -type "float3" 0 -0.054842357 -0.03717766 ;
	setAttr ".tk[394]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[395]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[396]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[397]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[398]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[399]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[400]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[401]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[402]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[403]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[404]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[405]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[406]" -type "float3" 0 0 -0.03717766 ;
	setAttr ".tk[407]" -type "float3" 0 0 -0.03717766 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "DE5CD14E-D942-AE79-9A72-8692F19C7C7A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[783]" "e[788]" "e[793]" "e[795]" "e[797]" "e[799]";
	setAttr ".ix" -type "matrix" 16.713137395041837 0 0 0 0 14.826339798846583 0 0 0 0 15.764992551749076 0
		 0 4.4808047058124005 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "4B2B61D8-B445-A264-F530-FCA568D34443";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[772]" "e[777]" "e[779]" "e[781]";
	setAttr ".ix" -type "matrix" 16.713137395041837 0 0 0 0 14.826339798846583 0 0 0 0 15.764992551749076 0
		 0 4.4808047058124005 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "68F173C7-4D4E-50E6-B60B-26B09B470274";
	setAttr ".ics" -type "componentList" 3 "f[133:134]" "f[143]" "f[146]";
	setAttr ".ix" -type "matrix" 16.713137395041837 0 0 0 0 14.826339798846583 0 0 0 0 15.764992551749076 0
		 0 4.4808047058124005 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 7.9480371 -4.5196571 ;
	setAttr ".rs" 1263040273;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3637451156351361 6.8347247175841446 -4.5196656629416827 ;
	setAttr ".cbx" -type "double3" 1.3637451156351361 9.0613494667613779 -4.519648748939626 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak3";
	rename -uid "CF05D0A6-E64B-58B0-F04A-8A9C78511E44";
	setAttr ".uopa" yes;
	setAttr -s 248 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 -7.450506e-09 ;
	setAttr ".tk[12]" -type "float3" 0 0 -7.450506e-09 ;
	setAttr ".tk[13]" -type "float3" 0 0 7.450506e-09 ;
	setAttr ".tk[18]" -type "float3" 0 0 7.217678e-09 ;
	setAttr ".tk[21]" -type "float3" 0 0 1.2107066e-08 ;
	setAttr ".tk[23]" -type "float3" 0 0 -1.2107066e-08 ;
	setAttr ".tk[24]" -type "float3" 0 0 6.5191919e-09 ;
	setAttr ".tk[25]" -type "float3" 0 0 -6.5191919e-09 ;
	setAttr ".tk[26]" -type "float3" 0 0.00070976594 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.00070976594 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.00070981437 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.00070977339 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.00070977339 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.00070977339 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.00070976594 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.00070976594 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.00070976594 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.00070976594 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.00070981437 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.00070977339 0 ;
	setAttr ".tk[46]" -type "float3" 0 0.00070976594 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.00070976594 0 ;
	setAttr ".tk[48]" -type "float3" 0 -0.00070981437 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.00070977339 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.0099757593 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.0099757714 0 ;
	setAttr ".tk[57]" -type "float3" 0 0 -1.8626265e-09 ;
	setAttr ".tk[58]" -type "float3" 0 -0.0099757714 0 ;
	setAttr ".tk[60]" -type "float3" 0 0.0099757593 0 ;
	setAttr ".tk[65]" -type "float3" 0 0 1.8626265e-09 ;
	setAttr ".tk[66]" -type "float3" 0 0.0099757593 1.8626264e-09 ;
	setAttr ".tk[68]" -type "float3" 0 -0.0099757714 1.8626264e-09 ;
	setAttr ".tk[70]" -type "float3" 0 0.0099757593 -1.8626264e-09 ;
	setAttr ".tk[72]" -type "float3" 0 -0.0099757714 -1.8626264e-09 ;
	setAttr ".tk[76]" -type "float3" 0 -0.0099757593 0 ;
	setAttr ".tk[77]" -type "float3" 0 0.0099757714 0 ;
	setAttr ".tk[80]" -type "float3" 0 0.0099757714 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.0099757593 0 ;
	setAttr ".tk[88]" -type "float3" 0 0.0099757714 0 ;
	setAttr ".tk[89]" -type "float3" 0 -0.0099757593 0 ;
	setAttr ".tk[92]" -type "float3" 0 -0.0099757593 0 ;
	setAttr ".tk[93]" -type "float3" 0 0.0099757714 0 ;
	setAttr ".tk[100]" -type "float3" 0 0.0030381661 0 ;
	setAttr ".tk[101]" -type "float3" 0 -0.0030381344 0 ;
	setAttr ".tk[104]" -type "float3" 0 -0.0030381344 0 ;
	setAttr ".tk[105]" -type "float3" 0 0.0030381661 0 ;
	setAttr ".tk[106]" -type "float3" 0 -0.0030381661 0 ;
	setAttr ".tk[107]" -type "float3" 0 0.0030381377 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.0099917371 0 ;
	setAttr ".tk[109]" -type "float3" 0 -0.012830935 0 ;
	setAttr ".tk[110]" -type "float3" 0 0.0030381661 0 ;
	setAttr ".tk[111]" -type "float3" 0 -0.0030381987 0 ;
	setAttr ".tk[112]" -type "float3" 0 -0.012830935 0 ;
	setAttr ".tk[113]" -type "float3" 0 0.0099917371 0 ;
	setAttr ".tk[116]" -type "float3" 0 0 -0.0030381801 ;
	setAttr ".tk[117]" -type "float3" 0 0 0.0030381526 ;
	setAttr ".tk[120]" -type "float3" 0 0 0.0030381526 ;
	setAttr ".tk[121]" -type "float3" 0 0 -0.0030381801 ;
	setAttr ".tk[122]" -type "float3" 0 0 0.0030381768 ;
	setAttr ".tk[123]" -type "float3" 0 0 -0.0030381652 ;
	setAttr ".tk[126]" -type "float3" 0 0 -0.0030381689 ;
	setAttr ".tk[127]" -type "float3" 0 0 0.0030381912 ;
	setAttr ".tk[130]" -type "float3" 0 0.0099916784 0 ;
	setAttr ".tk[131]" -type "float3" 0 -0.012830935 0 ;
	setAttr ".tk[132]" -type "float3" 0 -0.0007595527 0 ;
	setAttr ".tk[133]" -type "float3" 0 0.0030381377 0 ;
	setAttr ".tk[134]" -type "float3" 0 -0.012830994 0 ;
	setAttr ".tk[135]" -type "float3" 0 0.0099916784 0 ;
	setAttr ".tk[136]" -type "float3" 0 0.0030381377 0 ;
	setAttr ".tk[137]" -type "float3" 0 -0.0007595527 0 ;
	setAttr ".tk[138]" -type "float3" 0 0.0030381661 0 ;
	setAttr ".tk[139]" -type "float3" 0 -0.0030381661 0 ;
	setAttr ".tk[142]" -type "float3" 0 -0.0030381661 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.0030381661 0 ;
	setAttr ".tk[148]" -type "float3" 0 0 0.0030381768 ;
	setAttr ".tk[149]" -type "float3" 0 0 -0.0030381577 ;
	setAttr ".tk[152]" -type "float3" 0 0 -0.0030381577 ;
	setAttr ".tk[153]" -type "float3" 0 0 0.0030381768 ;
	setAttr ".tk[154]" -type "float3" 0 0 -0.0030381801 ;
	setAttr ".tk[155]" -type "float3" 0 0 0.00303816 ;
	setAttr ".tk[158]" -type "float3" 0 0 0.0030381731 ;
	setAttr ".tk[159]" -type "float3" 0 0 -0.0030381903 ;
	setAttr ".tk[163]" -type "float3" 0 0 0.0030381465 ;
	setAttr ".tk[164]" -type "float3" 0 0.0030381661 -0.0030381731 ;
	setAttr ".tk[165]" -type "float3" 0 -0.0030381344 0 ;
	setAttr ".tk[166]" -type "float3" 0 0 -0.0030381433 ;
	setAttr ".tk[168]" -type "float3" 0 -0.0030381344 0 ;
	setAttr ".tk[169]" -type "float3" 0 0.0030381661 0.0030381689 ;
	setAttr ".tk[170]" -type "float3" 0 -0.0030381987 0.0030381912 ;
	setAttr ".tk[171]" -type "float3" 0 0.0030381377 0 ;
	setAttr ".tk[172]" -type "float3" 0 0.0099917371 0 ;
	setAttr ".tk[173]" -type "float3" 0 -0.012830935 -0.0030381484 ;
	setAttr ".tk[174]" -type "float3" 0 0.0030381377 0 ;
	setAttr ".tk[175]" -type "float3" 0 -0.0030381987 -0.0030381731 ;
	setAttr ".tk[176]" -type "float3" 0 -0.012830935 0.0030381465 ;
	setAttr ".tk[177]" -type "float3" 0 0.0099917371 0 ;
	setAttr ".tk[179]" -type "float3" 0 0 -0.0030381484 ;
	setAttr ".tk[180]" -type "float3" 0 0.0030381661 0.0030381689 ;
	setAttr ".tk[181]" -type "float3" 0 -0.0030381344 0 ;
	setAttr ".tk[182]" -type "float3" 0 0 0.0030381447 ;
	setAttr ".tk[184]" -type "float3" 0 -0.0030381344 0 ;
	setAttr ".tk[185]" -type "float3" 0 0.0030381661 -0.0030381903 ;
	setAttr ".tk[186]" -type "float3" 0 -0.0030381987 -0.0030381903 ;
	setAttr ".tk[187]" -type "float3" 0 0.0030381377 0 ;
	setAttr ".tk[188]" -type "float3" 0 0.0099917371 0 ;
	setAttr ".tk[189]" -type "float3" 0 -0.012830935 0.0030381465 ;
	setAttr ".tk[190]" -type "float3" 0 0.0030381661 0 ;
	setAttr ".tk[191]" -type "float3" 0 -0.0030381987 0.0030381689 ;
	setAttr ".tk[192]" -type "float3" 0 -0.012830935 -0.0030381484 ;
	setAttr ".tk[193]" -type "float3" 0 0.0099917371 0 ;
	setAttr ".tk[195]" -type "float3" 0 0.0070054084 0 ;
	setAttr ".tk[196]" -type "float3" 0 -2.7755576e-17 0 ;
	setAttr ".tk[197]" -type "float3" 0 -0.0062956763 0 ;
	setAttr ".tk[199]" -type "float3" 0 -0.0062956763 0 ;
	setAttr ".tk[200]" -type "float3" 0 -2.7755576e-17 0 ;
	setAttr ".tk[201]" -type "float3" 0 0.0070054084 0 ;
	setAttr ".tk[202]" -type "float3" 0 -2.7941047e-08 0 ;
	setAttr ".tk[203]" -type "float3" 0 0.0062955716 0 ;
	setAttr ".tk[204]" -type "float3" 0 -0.0028392407 0 ;
	setAttr ".tk[205]" -type "float3" 0 -0.0070053968 0 ;
	setAttr ".tk[206]" -type "float3" 0 -2.7941047e-08 0 ;
	setAttr ".tk[207]" -type "float3" 0 -0.0070053968 0 ;
	setAttr ".tk[208]" -type "float3" 0 -0.0028392407 0 ;
	setAttr ".tk[209]" -type "float3" 0 0.0062955986 0 ;
	setAttr ".tk[212]" -type "float3" 0 0 -1.8679847e-09 ;
	setAttr ".tk[216]" -type "float3" 0 0 -1.8679847e-09 ;
	setAttr ".tk[218]" -type "float3" 0 0 2.0530262e-08 ;
	setAttr ".tk[222]" -type "float3" 0 0 2.6124296e-08 ;
	setAttr ".tk[226]" -type "float3" 0 -0.0028392407 0 ;
	setAttr ".tk[227]" -type "float3" 0 -0.0070053968 0 ;
	setAttr ".tk[228]" -type "float3" 0 2.0954758e-08 0 ;
	setAttr ".tk[229]" -type "float3" 0 0.0062955716 0 ;
	setAttr ".tk[230]" -type "float3" 0 -0.0028392407 0 ;
	setAttr ".tk[231]" -type "float3" 0 0.0062955986 0 ;
	setAttr ".tk[232]" -type "float3" 0 2.0954758e-08 0 ;
	setAttr ".tk[233]" -type "float3" 0 -0.0070053968 0 ;
	setAttr ".tk[234]" -type "float3" 0 3.1370938e-08 0 ;
	setAttr ".tk[235]" -type "float3" 0 -0.0062956763 0 ;
	setAttr ".tk[237]" -type "float3" 0 0.0070054205 0 ;
	setAttr ".tk[238]" -type "float3" 0 3.1370938e-08 0 ;
	setAttr ".tk[239]" -type "float3" 0 0.0070054205 0 ;
	setAttr ".tk[241]" -type "float3" 0 -0.0062956782 0 ;
	setAttr ".tk[244]" -type "float3" 0 0 4.3922528e-09 ;
	setAttr ".tk[248]" -type "float3" 0 0 4.3922528e-09 ;
	setAttr ".tk[250]" -type "float3" 0 0 -2.1180405e-08 ;
	setAttr ".tk[254]" -type "float3" 0 0 -2.7371662e-08 ;
	setAttr ".tk[259]" -type "float3" 0 0.0070054084 -2.7371662e-08 ;
	setAttr ".tk[260]" -type "float3" 0 3.1370938e-08 0 ;
	setAttr ".tk[261]" -type "float3" 0 -0.0062956763 0 ;
	setAttr ".tk[263]" -type "float3" 0 -0.0062956782 0 ;
	setAttr ".tk[264]" -type "float3" 0 -2.7755576e-17 0 ;
	setAttr ".tk[265]" -type "float3" 0 0.007005393 2.6124296e-08 ;
	setAttr ".tk[266]" -type "float3" 0 -2.7941047e-08 0 ;
	setAttr ".tk[267]" -type "float3" 0 0.0062955716 0 ;
	setAttr ".tk[268]" -type "float3" 0 -0.0028392407 0 ;
	setAttr ".tk[269]" -type "float3" 0 -0.0070053968 2.6124296e-08 ;
	setAttr ".tk[270]" -type "float3" 0 -2.7941047e-08 0 ;
	setAttr ".tk[271]" -type "float3" 0 -0.0070053968 -8.7590362e-09 ;
	setAttr ".tk[272]" -type "float3" 0 -0.0028392407 0 ;
	setAttr ".tk[273]" -type "float3" 0 0.0062955986 0 ;
	setAttr ".tk[275]" -type "float3" 0 0.0070054084 1.4089724e-08 ;
	setAttr ".tk[276]" -type "float3" 0 3.1370938e-08 0 ;
	setAttr ".tk[277]" -type "float3" 0 -0.0062956763 0 ;
	setAttr ".tk[279]" -type "float3" 0 -0.0062956782 0 ;
	setAttr ".tk[280]" -type "float3" 0 -2.7755576e-17 0 ;
	setAttr ".tk[281]" -type "float3" 0 0.007005393 -2.7371662e-08 ;
	setAttr ".tk[282]" -type "float3" 0 -2.7941047e-08 0 ;
	setAttr ".tk[283]" -type "float3" 0 0.0062955716 0 ;
	setAttr ".tk[284]" -type "float3" 0 -0.0028392407 0 ;
	setAttr ".tk[285]" -type "float3" 0 -0.0070053968 -2.7371662e-08 ;
	setAttr ".tk[286]" -type "float3" 0 -2.7941047e-08 0 ;
	setAttr ".tk[287]" -type "float3" 0 -0.0070053968 1.4089724e-08 ;
	setAttr ".tk[288]" -type "float3" 0 -0.0028392407 0 ;
	setAttr ".tk[289]" -type "float3" 0 0.0062955986 0 ;
	setAttr ".tk[290]" -type "float3" 0 0.0045572347 0 ;
	setAttr ".tk[294]" -type "float3" 0 -0.0045572347 0 ;
	setAttr ".tk[295]" -type "float3" 0 -0.017116932 0 ;
	setAttr ".tk[298]" -type "float3" 0 0 -0.0045572412 ;
	setAttr ".tk[300]" -type "float3" 0 0 -2.2817163e-08 ;
	setAttr ".tk[301]" -type "float3" 0 0 -1.1175759e-08 ;
	setAttr ".tk[302]" -type "float3" 0 0 0.0045571961 ;
	setAttr ".tk[304]" -type "float3" 0 0 -9.3131325e-10 ;
	setAttr ".tk[306]" -type "float3" 0 -0.0022786462 0 ;
	setAttr ".tk[307]" -type "float3" 0 -0.017116932 0 ;
	setAttr ".tk[310]" -type "float3" 0 0.0045572347 0 ;
	setAttr ".tk[314]" -type "float3" 0 0 0.0045572398 ;
	setAttr ".tk[316]" -type "float3" 0 0 2.2817163e-08 ;
	setAttr ".tk[317]" -type "float3" 0 0 1.1175759e-08 ;
	setAttr ".tk[318]" -type "float3" 0 0 -0.0045571984 ;
	setAttr ".tk[320]" -type "float3" 0 0 9.3131325e-10 ;
	setAttr ".tk[322]" -type "float3" 0 0.0045572347 7.9161646e-09 ;
	setAttr ".tk[323]" -type "float3" 0 0 -3.7252528e-09 ;
	setAttr ".tk[324]" -type "float3" 0 0 0.0045571961 ;
	setAttr ".tk[326]" -type "float3" 0 -0.0045572347 1.5832329e-08 ;
	setAttr ".tk[327]" -type "float3" 0 -0.017116932 1.4901011e-08 ;
	setAttr ".tk[328]" -type "float3" 0 0 -0.0045571844 ;
	setAttr ".tk[330]" -type "float3" 0 0.0045572347 -7.9161646e-09 ;
	setAttr ".tk[331]" -type "float3" 0 0 3.7252528e-09 ;
	setAttr ".tk[332]" -type "float3" 0 0 -0.0045571984 ;
	setAttr ".tk[334]" -type "float3" 0 -0.0045572347 -1.5832329e-08 ;
	setAttr ".tk[335]" -type "float3" 0 -0.017116932 -1.4901011e-08 ;
	setAttr ".tk[336]" -type "float3" 0 0 0.0045571844 ;
	setAttr ".tk[342]" -type "float3" 0 -0.0045572347 0 ;
	setAttr ".tk[344]" -type "float3" 0 0.0045572347 0 ;
	setAttr ".tk[345]" -type "float3" 0 0.017116932 0 ;
	setAttr ".tk[350]" -type "float3" 0 0.0045572347 0 ;
	setAttr ".tk[351]" -type "float3" 0 0.017116932 0 ;
	setAttr ".tk[352]" -type "float3" 0 -0.0045572347 0 ;
	setAttr ".tk[354]" -type "float3" 0 0 0.0045572412 ;
	setAttr ".tk[356]" -type "float3" 0 0 -0.0045572398 ;
	setAttr ".tk[362]" -type "float3" 0 0 -0.0045572398 ;
	setAttr ".tk[364]" -type "float3" 0 0 0.0045572352 ;
	setAttr ".tk[366]" -type "float3" 0 0.0045572347 0 ;
	setAttr ".tk[367]" -type "float3" 0 0.017116932 0 ;
	setAttr ".tk[368]" -type "float3" 0 -0.0045572347 0 ;
	setAttr ".tk[374]" -type "float3" 0 -0.0045572347 0 ;
	setAttr ".tk[376]" -type "float3" 0 0.0045572347 0 ;
	setAttr ".tk[377]" -type "float3" 0 0.017116932 0 ;
	setAttr ".tk[378]" -type "float3" 0 0 -0.0045572398 ;
	setAttr ".tk[380]" -type "float3" 0 0 0.0045572412 ;
	setAttr ".tk[382]" -type "float3" 0 0 0.0045572412 ;
	setAttr ".tk[384]" -type "float3" 0 0 -0.0045572398 ;
	setAttr ".tk[386]" -type "float3" 0 -0.0021546423 0 ;
	setAttr ".tk[387]" -type "float3" 0 -0.00063554256 0 ;
	setAttr ".tk[389]" -type "float3" 0 -0.00063554256 0 ;
	setAttr ".tk[391]" -type "float3" 0 0.0021382498 0 ;
	setAttr ".tk[394]" -type "float3" 0 -2.7755576e-17 0 ;
	setAttr ".tk[395]" -type "float3" 0 -0.0005651383 0 ;
	setAttr ".tk[396]" -type "float3" 0 0.00070973794 0 ;
	setAttr ".tk[397]" -type "float3" 0 8.3083476e-05 0 ;
	setAttr ".tk[404]" -type "float3" 0 0.0030381344 0 ;
	setAttr ".tk[405]" -type "float3" 0 0.0032875491 0 ;
	setAttr ".tk[406]" -type "float3" 0 0.0070054205 0 ;
	setAttr ".tk[407]" -type "float3" 0 0.0066385749 0 ;
	setAttr ".tk[414]" -type "float3" 0 0.0030381344 0 ;
	setAttr ".tk[415]" -type "float3" 0 0.0032875491 0 ;
	setAttr ".tk[416]" -type "float3" 0 0.0070054205 0 ;
	setAttr ".tk[417]" -type "float3" 0 0.0065272129 0 ;
	setAttr ".tk[420]" -type "float3" 0 0.0021546423 0 ;
	setAttr ".tk[424]" -type "float3" 0 -2.7755576e-17 0 ;
	setAttr ".tk[425]" -type "float3" 0 -0.00051313231 0 ;
	setAttr ".tk[426]" -type "float3" 0 0.00070972549 0 ;
	setAttr ".tk[427]" -type "float3" 0 0.00014077713 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "09CAD7AF-DD40-C318-786E-578883394213";
	setAttr ".ics" -type "componentList" 3 "f[133:134]" "f[143]" "f[146]";
	setAttr ".ix" -type "matrix" 16.713137395041837 0 0 0 0 14.826339798846583 0 0 0 0 15.764992551749076 0
		 0 4.4808047058124005 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 7.9480371 -4.5196571 ;
	setAttr ".rs" 165988065;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0567521347359188 7.0853427062104428 -4.519663783608121 ;
	setAttr ".cbx" -type "double3" 1.0567521347359188 8.8107316990647568 -4.5196506282731876 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak4";
	rename -uid "56AEA983-B447-D5B5-E9E2-9AAA0A63228E";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[429]" -type "float3" 0.017342459 -0.015688373 -1.2089123e-07 ;
	setAttr ".tk[430]" -type "float3" 1.0482503e-09 -0.016903559 -1.2089123e-07 ;
	setAttr ".tk[431]" -type "float3" 8.3860024e-10 0.0015258779 4.0739764e-08 ;
	setAttr ".tk[432]" -type "float3" 0.017684439 0.0015258779 2.64784e-08 ;
	setAttr ".tk[433]" -type "float3" -1.0482503e-10 0.016903555 1.2089123e-07 ;
	setAttr ".tk[434]" -type "float3" 0.018368362 0.016903561 1.0740552e-07 ;
	setAttr ".tk[435]" -type "float3" -0.017342459 -0.015688373 -1.2089123e-07 ;
	setAttr ".tk[436]" -type "float3" -0.017684439 0.0015258645 2.64784e-08 ;
	setAttr ".tk[437]" -type "float3" -0.018368362 0.016903561 1.0740552e-07 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "9AAE3901-0D40-0155-7375-E9B6B9302BB6";
	setAttr ".ics" -type "componentList" 6 "f[321:322]" "f[340]" "f[343]" "f[356]" "f[359]" "f[369:370]";
	setAttr ".ix" -type "matrix" 16.713137395041837 0 0 0 0 14.826339798846583 0 0 0 0 15.764992551749076 0
		 0 4.4808047058124005 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.7254782 5.5941172 -5.8729174e-08 ;
	setAttr ".rs" 1467546176;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.4559880732364734 2.1268851359000149 -1.2863799790536454 ;
	setAttr ".cbx" -type "double3" -4.994968161707507 9.0613494667613779 1.2863798615952977 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak5";
	rename -uid "FA17BCBD-244C-3875-8DEA-A4827336D35F";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[437]" -type "float3" 0 0 0.015390035 ;
	setAttr ".tk[438]" -type "float3" 0 0 0.015390035 ;
	setAttr ".tk[439]" -type "float3" 0 0 0.015390035 ;
	setAttr ".tk[440]" -type "float3" 0 0 0.015390035 ;
	setAttr ".tk[441]" -type "float3" 0 0 0.015390035 ;
	setAttr ".tk[442]" -type "float3" 0 0 0.015390035 ;
	setAttr ".tk[443]" -type "float3" 0 0 0.015390035 ;
	setAttr ".tk[444]" -type "float3" 0 0 0.015390035 ;
	setAttr ".tk[445]" -type "float3" 0 0 0.015390035 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "6FA57856-494A-B907-E8E1-75B8A7619AE1";
	setAttr ".ics" -type "componentList" 7 "f[9:10]" "f[28]" "f[31]" "f[35]" "f[44]" "f[54]" "f[57]";
	setAttr ".ix" -type "matrix" 16.713137395041837 0 0 0 0 14.826339798846583 0 0 0 0 15.764992551749076 0
		 0 4.4808047058124005 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.2261286e-08 4.9872122 4.5196648 ;
	setAttr ".rs" 912310363;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4399120894696211 2.1268853568296939 4.5196590852742169 ;
	setAttr ".cbx" -type "double3" 1.4399122139921983 7.8475388322347328 4.5196703612755877 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak6";
	rename -uid "13DBB448-FB4D-1545-5A05-298335D4FE8C";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[444]" -type "float3" 0.0084014982 0.0070510255 -1.2146391e-09 ;
	setAttr ".tk[445]" -type "float3" 0.0081409561 0.0070510237 0.0043146503 ;
	setAttr ".tk[446]" -type "float3" 0.0092318263 0.0029705279 -1.2146422e-09 ;
	setAttr ".tk[447]" -type "float3" 0.008958322 0.0029705279 0.0043146522 ;
	setAttr ".tk[448]" -type "float3" 0.009509448 -0.0013441166 -1.2146415e-09 ;
	setAttr ".tk[449]" -type "float3" 0.0092318263 -0.0013441166 0.0043146522 ;
	setAttr ".tk[450]" -type "float3" 0.0081409542 0.0070510237 -0.0043146503 ;
	setAttr ".tk[451]" -type "float3" 0.0089583201 0.0029705279 -0.0043146526 ;
	setAttr ".tk[452]" -type "float3" 0.0092318263 -0.0013441152 -0.0043146526 ;
	setAttr ".tk[453]" -type "float3" 0.0082766758 -0.0024808215 -0.0043146503 ;
	setAttr ".tk[454]" -type "float3" 0.008537218 -0.0024808228 1.7855632e-10 ;
	setAttr ".tk[455]" -type "float3" 0.0069185561 -0.0060929731 -0.0043146494 ;
	setAttr ".tk[456]" -type "float3" 0.0071568214 -0.0060929731 1.785494e-10 ;
	setAttr ".tk[457]" -type "float3" 0.0050227572 -0.010136545 -0.0043146494 ;
	setAttr ".tk[458]" -type "float3" 0.0052289125 -0.010421989 1.7855338e-10 ;
	setAttr ".tk[459]" -type "float3" 0.0082766758 -0.0024808215 0.0043146503 ;
	setAttr ".tk[460]" -type "float3" 0.0069185561 -0.0060929731 0.0043146494 ;
	setAttr ".tk[461]" -type "float3" 0.0050227572 -0.010136545 0.004314648 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "010A1CAA-8547-8AC6-D054-A194037A2FDD";
	setAttr ".ics" -type "componentList" 6 "f[257:258]" "f[276]" "f[279]" "f[292]" "f[295]" "f[305:306]";
	setAttr ".ix" -type "matrix" 16.713137395041837 0 0 0 0 14.826339798846583 0 0 0 0 15.764992551749076 0
		 0 4.4808047058124005 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.6392636 5.5941176 0 ;
	setAttr ".rs" 1014576161;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.9761881647061381 2.1268855777593734 -1.2863798615952977 ;
	setAttr ".cbx" -type "double3" 6.3023391671523852 9.0613494667613779 1.2863798615952977 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak7";
	rename -uid "2828AFF5-F644-75BD-DF72-159C64BD8158";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[460]" -type "float3" -4.743988e-10 0.005594667 -0.010611987 ;
	setAttr ".tk[461]" -type "float3" 0.0076075918 0.0055946652 -0.010611981 ;
	setAttr ".tk[462]" -type "float3" -1.201602e-09 -0.001600055 -0.010612006 ;
	setAttr ".tk[463]" -type "float3" 0.0078908503 -0.001600055 -0.010611998 ;
	setAttr ".tk[464]" -type "float3" -6.2363847e-10 -0.0092076287 -0.010612015 ;
	setAttr ".tk[465]" -type "float3" 0.0080324858 -0.0092076287 -0.010612006 ;
	setAttr ".tk[466]" -type "float3" -0.0076075913 0.0055946652 -0.010611981 ;
	setAttr ".tk[467]" -type "float3" -0.0078908494 -0.001600055 -0.010611998 ;
	setAttr ".tk[468]" -type "float3" -0.0080324858 -0.0092076259 -0.010612006 ;
	setAttr ".tk[469]" -type "float3" -0.0078908494 0.005035222 -0.0098655988 ;
	setAttr ".tk[470]" -type "float3" -1.128809e-09 0.0050352197 -0.0098656071 ;
	setAttr ".tk[471]" -type "float3" -0.0076075913 -0.0021594167 -0.009865582 ;
	setAttr ".tk[472]" -type "float3" 5.2096816e-10 -0.0021594185 -0.0098655876 ;
	setAttr ".tk[473]" -type "float3" -0.007324331 -0.0085283648 -0.0098655485 ;
	setAttr ".tk[474]" -type "float3" -1.0419783e-09 -0.0085283648 -0.009865554 ;
	setAttr ".tk[475]" -type "float3" 0.0078908503 0.0050352216 -0.0098655988 ;
	setAttr ".tk[476]" -type "float3" 0.0076075918 -0.0021594167 -0.009865582 ;
	setAttr ".tk[477]" -type "float3" 0.0073243314 -0.0085283648 -0.0098655485 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "07F4E9A4-8A44-1691-5631-6EBF2AA8C07E";
	setAttr ".ics" -type "componentList" 2 "f[47]" "f[58]";
	setAttr ".ix" -type "matrix" 16.713137395041837 0 0 0 0 14.826339798846583 0 0 0 0 15.764992551749076 0
		 0 4.4808047058124005 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 8.4544439 4.5196543 ;
	setAttr ".rs" 504988300;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3129677971992244 7.8475388322347328 4.519648748939626 ;
	setAttr ".cbx" -type "double3" 1.3129677971992244 9.0613494667613779 4.5196600249409977 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "BB287F42-CD45-1AD2-9678-A9BEA159A5BF";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[476]" -type "float3" -0.010683909 0.007234456 -2.2211537e-10 ;
	setAttr ".tk[477]" -type "float3" -0.010387443 0.0072344542 -0.0054087634 ;
	setAttr ".tk[478]" -type "float3" -0.011628693 0.0021192189 -2.2211136e-10 ;
	setAttr ".tk[479]" -type "float3" -0.011317495 0.0021192189 -0.0054087662 ;
	setAttr ".tk[480]" -type "float3" -0.011944604 -0.0032895457 -2.2211227e-10 ;
	setAttr ".tk[481]" -type "float3" -0.011628693 -0.0032895457 -0.0054087662 ;
	setAttr ".tk[482]" -type "float3" -0.010387443 0.0072344542 0.0054087634 ;
	setAttr ".tk[483]" -type "float3" -0.011317495 0.0021192189 0.0054087662 ;
	setAttr ".tk[484]" -type "float3" -0.011628693 -0.0032895429 0.0054087662 ;
	setAttr ".tk[485]" -type "float3" -0.0097694322 -0.001066518 0.0054087634 ;
	setAttr ".tk[486]" -type "float3" -0.010065898 -0.0010665194 4.8173338e-10 ;
	setAttr ".tk[487]" -type "float3" -0.0082240626 -0.0055946447 0.005408762 ;
	setAttr ".tk[488]" -type "float3" -0.0084951799 -0.0055946447 4.8174204e-10 ;
	setAttr ".tk[489]" -type "float3" -0.0060669342 -0.010663537 0.0054087616 ;
	setAttr ".tk[490]" -type "float3" -0.006301499 -0.011021363 4.8173687e-10 ;
	setAttr ".tk[491]" -type "float3" -0.0097694322 -0.001066518 -0.0054087648 ;
	setAttr ".tk[492]" -type "float3" -0.0082240626 -0.0055946447 -0.005408762 ;
	setAttr ".tk[493]" -type "float3" -0.0060669342 -0.010663537 -0.005408762 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "419201B4-434B-462B-EF59-F9AD46DC7F9A";
	setAttr ".ics" -type "componentList" 2 "f[32]" "f[53]";
	setAttr ".ix" -type "matrix" 16.713137395041837 0 0 0 0 14.826339798846583 0 0 0 0 15.764992551749076 0
		 0 4.4808047058124005 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.2261286e-08 5.0856991 4.5196691 ;
	setAttr ".rs" 2087990696;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4399120894696211 4.4808042639530417 4.5196675422752453 ;
	setAttr ".cbx" -type "double3" 1.4399122139921983 5.6905935364578424 4.5196703612755877 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak9";
	rename -uid "4FD993CD-654D-E817-F473-629192E5891E";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[494]" -type "float3" 0 -0.029635742 0.02854076 ;
	setAttr ".tk[495]" -type "float3" -5.7731597e-14 -0.029635742 0.02854076 ;
	setAttr ".tk[496]" -type "float3" 0 -0.082027487 0.02854076 ;
	setAttr ".tk[497]" -type "float3" -4.6629367e-14 -0.082027487 0.02854076 ;
	setAttr ".tk[498]" -type "float3" 0 -0.029635742 0.02854076 ;
	setAttr ".tk[499]" -type "float3" 0 -0.082027487 0.02854076 ;
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
connectAttr "polyExtrudeFace8.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySmoothFace1.ip";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySmoothFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyBevel1.ip";
connectAttr "pCubeShape1.wm" "polyBevel1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "pCubeShape1.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polyBevel3.ip";
connectAttr "pCubeShape1.wm" "polyBevel3.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyBevel3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak9.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of House1.0002.ma
