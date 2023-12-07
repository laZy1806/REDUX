/// @description Insert description here
// You can write your code in this editor
if global.battleSong = 0 {
	global.battleSong = audio_play_sound(battlesong, 1, false, 0)	
	if room = corridor audio_sound_gain(global.battleSong, 2, 7000)
	if room = battle audio_sound_gain(global.battleSong, 2, 3500)
}
debugAudioSkip = false
global.audioPosition = audio_sound_get_track_position(global.battleSong)