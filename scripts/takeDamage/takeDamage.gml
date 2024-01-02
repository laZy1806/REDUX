// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function takeDamage(_dmg, _isBlueOrange = false, _invFrames = 0, _isKarma = false){
	
	if (global.InvFrames <= 0){
		if (image_blend == c_aqua && !keyboard_check(ord(global.left)) && !keyboard_check(ord(global.right)) && !keyboard_check(ord(global.up)) && !keyboard_check(ord(global.down))) {
			exit;
		}
		if (image_blend == c_orange && (keyboard_check(ord(global.left)) || keyboard_check(ord(global.right)) || keyboard_check(ord(global.up)) || keyboard_check(ord(global.down)))) {
			exit;
		} 
		global.InvFrames = _invFrames
		global.playerHP -= dmg
		if (global.playerHP < 1 && global.Karma > 1) {
			global.playerHP = 1;
			global.Karma -= 1
		}
	if(global.playerHP <= 0) {
		//Death Code
			}
		
	}
}