/// @description Insert description here
// You can write your code in this editor
//show_debug_message(time_source_get_time_remaining(ATTACKALARM))

if (AttackArray[global.AttackNumber] != noone) {
	AttackArray[global.AttackNumber].CYCLESTEP()
	timeReconfig()
	time_source_start(ATTACKALARM)
}
else time_source_stop(ATTACKALARM)

if keyboard_check_pressed(ord("T")){
	_audio *= -1
	audio_sound_gain(MAINFIGHT, _audio, 0)
}

//show_debug_message(time_source_get_time_remaining(ATTACKALARM))