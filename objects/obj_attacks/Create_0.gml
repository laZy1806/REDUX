/// @description Insert description here
// You can write your code in this editor
//alarm[1] = 300 //5 seconds of attack time
countdown = false
alarm[2] = 2 // delayed in order for object to be created first

attack = 0;
cycle = 0;

gravshift = animcurve_get_channel(soulcurve,"slam");
lightswitch = layer_create(-10)
layer_sprite_create(lightswitch, 320, 240, blackscreen)

layer_set_visible(lightswitch, false)
sound = true
scrCurveList()

alp = 1
alp_end = 1
alpLerp = 0.04

depth = 2	// one number below kazy depth
gasteranglefunc = function(angle) {
	return angle + 180;
}	

boxchange = false;
if global.battleSong = 0 {
	instance_create_depth(x, y, 0, songObj)
	songObj.debugAudioSkip = true
}
event_inherited()

//-1 on mute
tempAudio = -1
if songObj.debugAudioSkip = true audio_sound_gain(global.battleSong, 1, 1)

debugScript()