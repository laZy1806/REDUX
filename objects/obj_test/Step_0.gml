/// @description Insert description here
// You can write your code in this editor
//x+= 5
vsp = (keyboard_check(ord(global.down)) - keyboard_check(ord(global.up))) * 2
hsp = (keyboard_check(ord(global.right)) - keyboard_check(ord(global.left))) * 2


move.xSpdYSpd(hsp, vsp)


if mouse_check_button(mb_left) {
	x = mouse_x	
	y = mouse_y	
}