/// @description Insert description here
// You can write your code in this editor
if (is_method(stepFunc)) stepFunc();
//if variable_instance_exists(id, "roomTo") 
if place_meeting(x, y, playerObj) {
	global.PlayerID.roomX = roomX;
	global.PlayerID.roomY = roomY;
	room_goto(roomTo)
	instance_destroy(id);
}