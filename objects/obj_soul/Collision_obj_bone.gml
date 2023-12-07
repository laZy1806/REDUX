/// @description Insert description here
// You can write your code in this editor
if (global.InvFrames <= 0){
	if (obj_bone.image_blend == c_aqua && !keyboard_check(vk_left) && !keyboard_check(vk_up) && !keyboard_check(vk_down) && !keyboard_check(vk_right)) {
		exit;
	}
	if (obj_bone.image_blend == c_orange && (keyboard_check(vk_left) || keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_right))) {
		exit;
	} 
	if (obj_bone.image_blend == c_white) {
	audio_play_sound(hurt,1,false);
	global.InvFrames = 20
	global.playerHP -= dmg
	if (global.playerHP < 1 && global.Karma > 1) {
		global.playerHP = 1;
		global.Karma -= 1
	}
	
	
	
	if(global.playerHP <= 0)
	game_end();
	}
}







