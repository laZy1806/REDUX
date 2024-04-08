/// @description Insert description here
// You can write your code in this editor
/// STATE MACHINE FOR CAMERA
var CAM = instance_find(oWorldCam, 0);

_lay = layer_get_id("Stationary")
var doorOne = layer_sprite_get_id(_lay, "doorOneSP");
var PLAYER = instance_find(playerObj, 0);

//show_debug_message(string(nextRoomObj.bbox_left) + " " + string(nextRoomObj.bbox_right) + " " + string(nextRoomObj.bbox_top) + " " + string(nextRoomObj.bbox_bottom))

with PLAYER {
	var currentRoomCol = instance_place(x, y, roomCollisionObj)
	if (currentRoomCol != noone) {
		room_goto(currentRoomCol.roomTo)
	}
}

if (!instance_exists(menuStateObj)) {
	if (!isCutscene && !isNearDoor) {
		with CAM {
			xShift = lerp(xShift, 0, 0.02)
			yShift = lerp(yShift, 0, 0.02)	//Will always return the camera to neutral from whatever position it was in.
			//spd = 0.03;
			//CAM.setZoom("slowerEase", 1, 1);	
			supposedHeight = lerp(supposedHeight, 480, 0.03)
			supposedWidth = lerp(supposedWidth, 640, 0.03)
		}
		if (checkNearDoor() != noone) isNearDoor = true;
	}
	else if (isNearDoor) {
		if (checkNearDoor() == noone) isNearDoor = false;
		var _playerDist = (checkNearDoor() != noone) ? point_distance(checkNearDoor().x, checkNearDoor().y, checkNearDoor().x, PLAYER.bbox_bottom) : 1;  
		var _scale = (checkNearDoor() != noone) ? checkNearDoor().image_yscale: 1;
		var MULTIPLIER = min(1, abs(_playerDist/_scale));
		
		with CAM {
			supposedHeight = lerp(supposedHeight, 480 * MULTIPLIER, 0.03 + 0.2 * (1 - MULTIPLIER))
			supposedWidth = lerp(supposedWidth, 640 * MULTIPLIER, 0.03 + 0.2 * (1 - MULTIPLIER))
		}
		
	}
	else if (isCutscene) {
		
		
	}
}