/// @description Insert description here
// You can write your code in this editor
if fullscreenDelay = 0 {
	if(window_frame_get_fullscreen()){
		window_frame_set_fullscreen(false)
		surface_resize(application_surface, 640, 480)
		window_frame_set_rect(640, 320, 640, 480)
	} 
	else {
		window_frame_set_fullscreen(true)
		surface_resize(application_surface, 1440, 1080)
	}
	event_perform(ev_alarm, 1)
}
/*
if fullscreenDelay = 0 {
	if(window_frame_get_height() = 1080) {
		window_frame_set_rect(640, 320, 640, 480)
		window_frame_set_region(0, 0, 640, 480)
		
	} 
	else {
		window_frame_set_rect(0, 0, 1920, 1080)
		window_frame_set_region(240, 0, 1440, 1080)
	}
	event_perform(ev_alarm, 1)
}