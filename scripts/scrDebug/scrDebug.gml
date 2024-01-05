// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouseDebug(){
	show_debug_message("x: " + string(mouse_x) + "y: " + string(mouse_y - (RELY)))
	return [mouse_x, mouse_y - (RELY)]
}
function keyboardDebug(_keyOne, _keyTwo) {
	if !variable_instance_exists(id, "_TEST") _TEST= 0
	else _TEST += ((keyboard_check_pressed(_keyOne) - keyboard_check_pressed(_keyTwo))* 0.05)
	show_debug_message("Value: " + string(_TEST))
	return _TEST
}