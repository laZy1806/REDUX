/// @description Insert description here
// You can write your code in this editor
isCutscene = false;
isNearDoor = false;

checkNearDoor = function() {
	var PLAYER = instance_find(playerObj, 0);
	with PLAYER {
		return instance_place(x, PLAYER.bbox_bottom, collisionStaticObj);
	}
}