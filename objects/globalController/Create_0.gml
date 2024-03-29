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

delta_init()


game_frame_button_set_click(gameframe_button_array[2], forcePause)
//window_set_size(640, 480 + 35)
//gameframe_border_width = 0