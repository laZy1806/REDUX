/// @description Insert description here
// You can write your code in this editor

if (global.InvFrames <= 0){
	if (image_blend == c_aqua && !keyboard_check(vk_left) && !keyboard_check(vk_up) && !keyboard_check(vk_down) && !keyboard_check(vk_right)) {
		exit;
	}
	if (image_blend == c_orange && (keyboard_check(vk_left) || keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_right))) {
		exit;
	} 
	if (image_blend == c_white) {
	
	global.InvFrames = 20
	global.playerHP -= dmg
	if (global.playerHP < 1 && global.Karma > 1) {
		global.playerHP = 1;
		global.Karma -= 1
	}
	
	
	
	if(global.playerHP <= 0) {
		instance_create_depth(x, y, 0, gameOverObj)
		//audio_sound_set_track_position(global.ba_song, 16)
		}
	}
}









