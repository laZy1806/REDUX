/// @description Insert description here
// You can write your code in this editor
/// STATE MACHINE FOR CAMERA
var CAM = instance_find(oWorldCam, 0);

_lay = layer_get_id("Stationary")
doorOne = layer_sprite_get_id(_lay, "doorOneSP");

show_debug_message(layer_sprite_get_x(doorOne))

if (!instance_exists(menuStateObj)) {
	
	if (!isCutscene && !isNearDoor) {
		//Will always return the camera to neutral from whatever position it was in.
		with CAM {
			xShift = lerp(xShift, 0, 0.02)
			yShift = lerp(yShift, 0, 0.02)	
		}
	}
	else if (isNearDoor){
		//this is where it would zoom into the door frame.
		
		
		
		
		
	}
	else if (isCutscene){
		
		
		
		
		
		
	}
}