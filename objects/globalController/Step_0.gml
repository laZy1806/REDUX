/// @description Insert description here
// You can write your code in this editor
gameframe_update();

switch gameframe_get_fullscreen() {
	case 0:
		global.windOffset = (gameframe_caption_get_height() + 2)
		global.isFullscreen = false
		global.windWidth = 640 
		global.windHeight = 480 + global.windOffset
		//display_set_gui_maximise(1, 1, 0, 0);
		//display_set_gui_size(640, 480)
	break;
	case 1:
		global.windOffset = 0
		global.isFullscreen = true
		global.windWidth = 1920
		global.windHeight = 1080
		//display_set_gui_size(1440, 1080)
		//__display_set_gui_size_hook(1440,1080)
		//display_set_gui_maximise(3,3, 0, 0);
	break;
}
if (global.isFullscreen and keyboard_check_pressed(ord("F"))) {
	gameframe_set_fullscreen(0)
	window_set_size(640, 520)
	//actually viewable part of the game is 480, but the entire window itself is 520 for gameframe
}
else if (keyboard_check_pressed(ord("F"))) {
	gameframe_set_fullscreen(1)
}
game_frame_button_set_click(gameframe_button_array[2], forcePause)

if keyboard_check_pressed(ord("Y")) {
	room_goto(menuRoom)
	room_restart();
}
//show_debug_message(room)	
	