/// @description Insert description here
// You can write your code in this editor
if (is_method(stepFunc)) stepFunc();

var PLAYER = instance_find(playerObj, 0);
doorDiffX = PLAYER.x - doorX;
doorDiffY = PLAYER.y - doorY;

show_debug_message(doorDiffX)
show_debug_message(doorDiffY)

if place_meeting(x, y, global.PlayerID) {
	show_debug_message()
	global.PlayerID.roomX = toX + doorDiffX	//next door coordinates + the relative distance between the last door and player
	global.PlayerID.roomY = toY + doorDiffY
	show_debug_message(global.PlayerID.roomX)
	show_debug_message(global.PlayerID.roomY)
	room_goto(roomTo)
	instance_destroy(id);
}
