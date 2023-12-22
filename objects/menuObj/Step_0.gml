/// @description Insert description here
// You can write your code in this editor
Start.STEP(global.menuState)
if keyboard_check_pressed(vk_enter) {
	Start.isPressed = true
	global.menuState ++
	Start.CoordReset()
}