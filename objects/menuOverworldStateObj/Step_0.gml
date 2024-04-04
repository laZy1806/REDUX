/// @description Insert description here
// You can write your code in this editor
/// STATE MACHINE FOR CAMERA
var CAM = instance_find(oWorldCam, 0);

_lay = layer_get_id("Stationary")
var doorOne = layer_sprite_get_id(_lay, "doorOneSP");
var PLAYER = instance_find(playerObj, 0);

if (!instance_exists(menuStateObj)) {
	
	if (!isCutscene && !isNearDoor) {
		//Will always return the camera to neutral from whatever position it was in.
		with CAM {
			xShift = lerp(xShift, 0, 0.02)
			yShift = lerp(yShift, 0, 0.02)	
			instance_find(oWorldCam,0).setZoom("ease", 1/120, 1);
		}
		if checkNearDoor() isNearDoor = true;
	}
	else if (isNearDoor){
		instance_find(oWorldCam,0).setZoom("ease", 1/120, 0.4);
		if !checkNearDoor() isNearDoor = false;
	}
	else if (isCutscene){
		
		
		
		
		
		
	}
}