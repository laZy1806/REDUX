/// @description slice animation
// You can write your code in this editor

// only functions if we hit attack
if (global.Damage > 0) {
	if (global.playerWeapon == "Stick" || global.playerWeapon == "Real Knife") {
		slice = instance_create_depth(global.monster[global.MRN].x, 140, -10, obj_slash);
		slice.alarm[0] = 45;
		global.monster[global.MRN].alarm[1] = 60;
		audio_play_sound(Slash, 0, false);
	}
	global.monster[global.MRN].alarm[1] = 60;
}
else {
	// moves on in battle
	global.monster[global.MRN].alarm[1] = 1;
	for (var i = 0; i < array_length(global.monster); i++) {
		with (global.monster[i]) {
			ReadyForBattle = true;
		}
	}
} 




