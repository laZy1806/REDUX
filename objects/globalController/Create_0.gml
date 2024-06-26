/// @description Insert description here
// You can write your code in this editor
gameframe_init()
depth = -999
instance_create_depth(0,0, 0, applicationShaderObject)
isPaused = false
forcePause = function(){
	if !isPaused {
		instance_deactivate_all(true)
		audio_pause_all()
		isPaused = true
	}
	else if isPaused {
		instance_activate_all()
		audio_resume_all()
		isPaused = false
	}
		return;
}
fullscreenFunction = function() {
	if (global.isFullscreen) {
		gameframe_set_fullscreen(0)
		window_set_size(640, 520)
		//actually viewable part of the game is 480, but the entire window itself is 520 for gameframe
	}
	else {
		gameframe_set_fullscreen(1)
	}
}
game_frame_button_set_click(gameframe_button_array[2], forcePause)
game_frame_button_set_click(gameframe_button_array[1], fullscreenFunction)

delta_init()
window_set_size(640, 520)	

//actually viewable part of the game is 480, but the entire window itself is 520 for gameframe

game_frame_button_set_click(gameframe_button_array[2], forcePause)
//window_set_size(640, 480 + 35)
//gameframe_border_width = 0
//gameframe_debug = true