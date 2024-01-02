 /// @description Insert description here
// You can write your code in this editor

if (global.InvFrames <= 0){
	if (image_blend = c_aqua) {
		if !keyboard_check(ord("W")) && !keyboard_check(ord("A")) && !keyboard_check(ord("S")) && !keyboard_check(ord("D")) {
			exit;
			}
		else {
			
			global.InvFrames = 20
			global.playerHP -= dmg
		}
	}
	
	if (image_blend = c_orange) {
		if keyboard_check(ord("A")) || keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(ord("D")) {

			exit;
			}
		else {
			
			global.InvFrames = 20
			global.playerHP -= dmg
		}
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









