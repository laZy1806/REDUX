/// @description intro text
// You can write your code in this editor
if _cycle = 0 {
	stopParticles = false	
	obj_menucontroller.MenuButton(70, "start", , true, 0.06)	
	alarm[3] = 50
}
if _cycle = 1 {
	obj_menucontroller.MenuButton(70, "options", , true, 0.06)
	alarm[3] = 50
}
if _cycle = 2 {
	obj_menucontroller.MenuButton(70, "gallery", , true, 0.07)
	alarm[3] = 100
}
if _cycle = 3 {
	if obj_menucontroller.menu_state = -1 obj_menucontroller.menu_state = 0
	_cycle = 0
}
_cycle++;
