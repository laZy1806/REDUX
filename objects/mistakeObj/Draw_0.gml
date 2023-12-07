/// @description Insert description here
// You can write your code in this editor
#region built in dialogue box
// main black rectangle, widest one
/*
if boxAlpha < 1  and text{
	var _x = obj_cam.x
	var _y = obj_cam.y

	draw_set_color(c_black)
	draw_rectangle(55 + 2 + _x, 18 + 2 + _y, 605 - 2 + _x, 167 - 2 + _y, false);

	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false, false, false, true)
	draw_set_alpha(0)
	draw_rectangle(0, 0, room_width, room_height, false);
	// fills the alpha channel with nothing; helps protect the actual image without influencing the blend modes onto them

	draw_set_alpha(1)
	draw_rectangle(67 + _x, 30 + _y, 593 + _x, 155 + _y, false);
	gpu_set_blendenable(true)
	gpu_set_colorwriteenable(true, true, true, true)
	// this is the drawing of the mask, what we are allowing to be seen, being stored directly into the alpha channel
	
	gpu_set_blendmode_ext(bm_inv_dest_alpha, bm_dest_alpha)
	gpu_set_alphatestenable(true)
		
	draw_set_color(c_white);
	draw_rectangle(62 + _x, 25 + 1 + _y, 598 + _x, 160 - 1 + _y, false)
		
	gpu_set_alphatestenable(false)
	gpu_set_blendmode(bm_normal)

	scribbleObject.starting_format("deathFont")
	scribbleObject.line_spacing("120%")
	scribbleObject.align(fa_center, fa_middle)
	scribbleObject.wrap(450, 350, false)
	scribbleObject.draw(320 + _x, 110 + _y, typist)
}
*/
#endregion
if room = mistake and lightSwitch {
	draw_sprite_ext(battlepixel, 0, obj_cam.x + 320, obj_cam.y + 240, 320, 240, 0, c_black, 1)

	//draw_sprite_ext(soul, 0, soulX, soulY, 1, 1, 0, c_white, 1)
}
else {
	with instance_find(frisk, 0) draw_sprite(sprite_index, image_index, x, y)	
}
if room = mistakeBattle {
	if textCycle != 50 draw_sprite_ext(punisherKazy, 0, 320, 280, 2, 2, 0, c_white, kazyAlpha[0])
	else {
		if instance_exists(persistentSoul) {
			instance_destroy(persistentSoul)
			TIME = current_time
		}
		draw_sprite_ext(battlepixel, 0, 320, 240, 1000, 1000, 0, c_black, kazyAlpha[0])
		if current_time > TIME + 3000 {
			ScribbleObj.starting_format("deathFont")
			ScribbleObj.align(fa_center, fa_middle)
			ScribbleObj.wrap(350, 350, false)
			ScribbleObj.draw(320, 240, scribTypist)
		}
		if scribTypist.get_state() = 1 {
			run_alarm(stopwatchAlarmEnd)	
		}
	}
}











