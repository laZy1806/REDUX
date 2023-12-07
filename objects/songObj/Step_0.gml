/// @description Insert description here
// You can write your code in this editor
if debugAudioSkip {
	audio_sound_set_track_position(global.battleSong, 16.20)
	debugAudioSkip = false
}
global.audioPosition = audio_sound_get_track_position(global.battleSong)
/*
if global.audio_tracker != global.audio_tracker * delta
	audio_sound_set_track_position(global.ba_song, global.audio_tracker * delta)
//if room = battle
//show_debug_message(global.audio_tracker)






