/// @description damage and karma for gaster blaster
// You can write your code in this editor
if !Hide {
	if (image_alpha > 0.6) {
		if (global.InvFrames <= 0) {
			if (image_blend == c_aqua && !keyboard_check(vk_left) && !keyboard_check(vk_up) && !keyboard_check(vk_down) && !keyboard_check(vk_right)) {
				exit;
			}
			if (image_blend == c_orange && (keyboard_check(vk_left) || keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_right))) {
				exit;
			}
			
			global.InvFrames = 1;
			global.playerHP -= dmg;
			ceil(global.playerHP);
			ceil(global.Karma)
			if (global.playerHP < 1 && global.Karma > 1) {
				global.playerHP = 1
				global.Karma -= 1
			}
		}
	}
}

