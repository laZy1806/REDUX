/// @description Insert description here
// You can write your code in this editor
if AttackArray[global.AttackNumber] != noone AttackArray[global.AttackNumber].CYCLEDRAW()

//debug placing
if keyboard_check_pressed(vk_space) {
	debugPressed = true
	sp = gasterSP
}
if keyboard_check_pressed(vk_control) {
	debugPressed = true
	sp = bone
}
if keyboard_check_pressed(ord("K")) changeDestination(ranx, rany, 1/120, "ease")
if keyboard_check_pressed(ord("L")) changeSize(vwidth, vheight, 1/80, "ease")
if keyboard_check_pressed(ord("J")) changeAngle(ang, 1/80, "ease")
