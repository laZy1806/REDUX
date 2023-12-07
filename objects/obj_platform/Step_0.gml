  /// @description Insert description here
// You can write your code in this editor
image_index = !carry
x += spd;
if bounce {
	if (x > global.Right - (sprite_width / 2)) {
		x = global.Right - (sprite_width / 2);
		spd = -spd
	}
	if (x < global.Left + (sprite_width / 2)) {
		x = global.Left + (sprite_width / 2);
		spd = -spd
	}
}

if obj_soul.BLUE_Gravity >= 0 && obj_soul.Mode = SoulModes.Blue {
	if collision_line(obj_soul.xprevious, obj_soul.yprevious, obj_soul.x, obj_soul.y, self, false, false) {
		if carry
			obj_soul.x += spd;
		obj_soul.y = y - 5;
		obj_soul.BLUE_Gravity = 0;
		obj_soul.BLUE_Jumped = 0;
	}
}




