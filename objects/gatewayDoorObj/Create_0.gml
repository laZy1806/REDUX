/// @description MUST BE CREATED BEFORE roomCollDoorObj to avoid variable errors
// You can write your code in this editor
drawEvent = function() {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1)
	//show_debug_message("frog")
	//draw_set_color(c_blue)
	//draw_rectangle(x + 60, y + 20, x - 60, y - 20, false)
}
doorTo = scrFindDoor(nextDoorID, roomTo);
tempsurf = noone;