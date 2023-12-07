/// @description Insert description here
// You can write your code in this editor
if show {
	// main black rectangle, widest one
	draw_set_color(c_black)
	//draw_rectangle(55 + 2, 18 + 2, 605 - 2, 168 - 2, false);
	draw_rectangle(relXCalc(55 + 2), relYCalc(18 + 2), relXCalc(605 - 2), relYCalc(168 - 2), false);

	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false, false, false, true)
	draw_set_alpha(0)
	draw_rectangle(0, 0, room_width, room_height, false);
	// fills the alpha channel with nothing; helps protect the actual image without influencing the blend modes onto them

	draw_set_alpha(1)
	//draw_rectangle(67, 30, 593, 156, false);
	draw_rectangle(relXCalc(67), relYCalc(30), relXCalc(593), relYCalc(156), false);
	gpu_set_blendenable(true)
	gpu_set_colorwriteenable(true, true, true, true)
	// this is the drawing of the mask, what we are allowing to be seen, being stored directly into the alpha channel
	
	gpu_set_blendmode_ext(bm_inv_dest_alpha, bm_dest_alpha)
	gpu_set_alphatestenable(true)
		
	draw_set_color(c_white);
	//draw_rectangle(63, 25 + 1, 598, 161 - 1, false)
	draw_rectangle(relXCalc(63), relYCalc(26), relXCalc(598), relYCalc(160), false);
		
	gpu_set_alphatestenable(false)
	gpu_set_blendmode(bm_normal)
}






