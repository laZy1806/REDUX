// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouseDebug(_xOffset = 0, _yOffset = 0){
	show_debug_message("X: " + string(mouse_x + _xOffset) + " Y: " + string((mouse_y - (RELY)) + _yOffset))
	return [mouse_x + _xOffset, (mouse_y - (RELY)) + _yOffset]
}
function keyboardDebug(_keyOne, _keyTwo) {
	if !variable_instance_exists(id, "_TEST") _TEST = 0
	else _TEST += ((keyboard_check(_keyOne) - keyboard_check(_keyTwo))* 0.05)
	show_debug_message("Value: " + string(_TEST))
	return _TEST
}