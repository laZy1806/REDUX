/// @description checks for keyboard press on target
// You can write your code in this editor
if keyboard_check_pressed(ord("Z")) {
	global.PriorityBar += 1;
}
if (global.PriorityBar >= global.BarCount && !attacked) {
	alarm[0] = 1;
	attacked = true;
}



