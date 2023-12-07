/// @description Insert description here
// You can write your code in this editor

window_command_set_active(window_command_maximize, 0)
window_command_set_active(window_command_resize, 0)
window_command_set_active(window_command_move, 1)

window_frame_update()

if !global.minimized window_command_hook(window_command_minimize)
else window_command_hook(window_command_restore)

if window_command_check(window_command_minimize) and !global.minimized{
	window_command_run(window_command_minimize)
	global.minimized = true	
}
if window_command_check(window_command_restore) and global.minimized{
	window_command_run(window_command_restore)
	global.minimized = false
}
//show_debug_message()
if global.minimized {
	audio_pause_all()	
	instance_deactivate_all(true)
	global.pause = true
}
else {
	global.pause = false
	audio_resume_all()	
	instance_activate_all()
}

if room = mistake or room = mistakeBattle{
	fullscreenDelay = 9000
	window_command_hook(window_command_close)
	if window_command_check(window_command_close) {
		show_message("you cannot leave")
	}
}







