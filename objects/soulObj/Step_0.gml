/// @description Insert description here
// You can write your code in this editor
//x+= 5
vsp = (keyboard_check(ord(global.downKey)) - keyboard_check(ord(global.upKey))) * 2
hsp = (keyboard_check(ord(global.rightKey)) - keyboard_check(ord(global.leftKey))) * 2

move.xSpdYSpd(hsp, vsp)


if mouse_check_button(mb_left) {
	x = mouse_x	
	y = mouse_y	
}
