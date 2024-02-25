/// @description Insert description here
// You can write your code in this editor
switch gameframe_get_fullscreen() {
	case 0:
		global.windOffset = (gameframe_caption_get_height() + 2)
		global.isFullscreen = false
		global.windWidth = 640 
		global.windHeight = 480 + global.windOffset
	break;
	case 2:
		global.windOffset = 0
		global.isFullscreen = true
		global.windWidth = 1920
		global.windHeight = 1080
	break;
}
if (global.isFullscreen and keyboard_check_pressed(ord("F"))) {
	gameframe_set_fullscreen(0)
}
else if (keyboard_check_pressed(ord("F"))) {
	gameframe_set_fullscreen(2)
}
window_set_size(global.windWidth, global.windHeight)

game_frame_button_set_click(gameframe_button_array[2], forcePause)


gameframe_update();

if keyboard_check_pressed(ord("Y")) {
	room_restart();
}
	
	