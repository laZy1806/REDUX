/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("Y")) {
	ds_list_clear(global.boneList)
	array_delete(global.ENEMYARRAY, 0, array_length(global.ENEMYARRAY))
	room_restart();
}




















