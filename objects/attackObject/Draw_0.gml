/// @description Insert description here
// You can write your code in this editor
if AttackArray[global.AttackNumber] != noone AttackArray[global.AttackNumber].CYCLEDRAW()

//debug placing
if keyboard_check_pressed(vk_space) {
	//debugPressed = true
	sp = gasterSP
}
if keyboard_check_pressed(vk_control) {
	//debugPressed = true
	sp = bone
}
if keyboard_check_pressed(vk_escape) {
	//debugPressed = false
	sp = empty
}
if debugPressed {
	if keyboard_check(ord("J")) image_angle += 5
	if keyboard_check(ord("L")) image_xscale += 0.05
	if keyboard_check(ord("O")) image_xscale -= 0.05
	if keyboard_check(ord("K")) image_yscale += 0.05
	if keyboard_check(ord("I")) image_yscale -= 0.05
}
if debugPressed {
	if !mouseClick {
		//_x = mouseDebug()[0]
		//_y = mouseDebug()[1]
	}
	
	if mouse_check_button_pressed(mb_left) mouseClick *= -1
	
	draw_sprite_ext(sp, 0, _x, _y, image_xscale, image_yscale, image_angle, c_white, 1)
	show_debug_message("X " + string(_x) + " Y " + string(_y))
	show_debug_message("Angle " + string(image_angle))
	show_debug_message("XScale " + string(image_xscale))
	show_debug_message("YScale " + string(image_yscale))
	if image_angle > 360 image_angle -= 360
}