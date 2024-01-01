// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouseDebug(){
	show_debug_message("x: " + string(mouse_x))
	show_debug_message("y: " + string(mouse_y - (global.windOffset/2)))
}