/// @description debug buttons
// You can write your code in this editor

if keyboard_check(ord("Y"))
//room_restart();
if keyboard_check(vk_shift) {
	//room_goto(menu)
}

//Intro fade // allows background to be turned off at transition sequence
global.beginFade = lerp(global.beginFade, 1, 0.01)
audio_sound_gain(birdNoise, birdLevel, birdAudioTime)




show_debug_message(birdLevel)