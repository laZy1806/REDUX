/// @description Insert description here
// You can write your code in this editor
event_perform(ev_create, 0) 
global.Timer = 0
audio_sound_set_track_position(global.battleSong, 16.20)
instance_destroy(songObj)
if variable_instance_exists(id, "lightswitch") layer_destroy(lightswitch)
if variable_instance_exists(id, "flash_layer_white") layer_destroy(flash_layer_white)
if variable_instance_exists(id, "numLayer") layer_destroy(numLayer)












