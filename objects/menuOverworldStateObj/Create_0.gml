/// @description Insert description here
// You can write your code in this editor
isCutscene = false;
isNearDoor = false;

checkNearDoor = function() {
	var PLAYER = instance_find(playerObj, 0);
	with PLAYER {
		if (instance_place(x, y, collisionStaticObj)) 
		return true;
	}
	return false;
}