/// @description Insert description here
// You can write your code in this editor
//draw_sprite(sprite_index, 0, global.move.drawX, global.move.drawY);

//draw_set_color(c_white);
//draw_set_font(font_battle_dialogue);

//radius = point_distance(startx, 240, startx - 100, 240 - 100)
//dir = point_direction(startx, 240, startx - 100, 240 - 100)


//draw_text(40, 80, mouse_x)
//draw_text(40, 120, mouse_y)


//draw_sprite_ext(battlepixel, 0, startx, starty, global.width/2, global.height/2, ad, c_white, 1)




gpu_set_blendmode_ext(bm_src_alpha, bm_inv_src_alpha)

draw_sprite_ext(battlepixel, 0, startx, starty, 40, 40, ad, c_white, 1)

gpu_set_blendmode_ext(bm_inv_src_alpha, bm_inv_src_alpha)

draw_sprite_ext(battlepixel, 0, mouse_x, mouse_y, global.width/2, global.height/2, ad, c_blue, 1)

gpu_set_blendmode_ext(bm_src_alpha, bm_inv_src_alpha)
//gpu_set_blendmode_ext(bm_src_alpha, bm_inv_src_alpha)

//draw_sprite_ext(sp_testmonster, 0, 100, 300, 2, 2, ad, c_white, 0)









//draw_sprite_ext(battlepixel, 0, startx, starty, global.width/2, global.height/2, ad, c_white, 1)
//draw_text(40, 80, mouse_x)
//draw_text(40, 120, mouse_y)

//draw_sprite(sp_testmonster, 0, mouse_x, mouse_y)
//top line
//draw_line_global.width(startx + lengthdir_x(-radius, dir + ad), 240 + lengthdir_y(radius, dir + ad), startx + lengthdir_x(radius, dir - ad),  240 + lengthdir_y(radius, dir - ad), 4) 

// right line
//draw_line_global.width(startx + lengthdir_x(-radius, (dir + ad)), 240 + lengthdir_y(radius, dir + ad), startx + lengthdir_x(-radius, dir - ad), 240 + lengthdir_y(-radius, dir - ad), 4) 

// bottom line
//draw_line_global.width(startx + lengthdir_x(-radius, (dir - ad)), 240 + lengthdir_y(-radius, dir - ad), startx + lengthdir_x(radius, dir + ad), 240 + lengthdir_y(-radius, dir + ad), 4) 

// left line
//draw_line_global.width(startx + lengthdir_x(radius, (dir - ad)), 240 + lengthdir_y(radius, dir - ad), startx + lengthdir_x(radius, dir + ad), 240 + lengthdir_y(-radius, dir + ad), 4) 

if topwall != 0 {
topwall.image_xscale = ceil(global.width/2) + 4 //+ global.width * 0.018
topwall.image_yscale = 2	
topwall.image_angle = -ad 	

bottomwall.image_xscale = ceil(global.width/2) + 4//+ global.width *0.018
bottomwall.image_yscale = 2
bottomwall.image_angle = -ad 	


leftwall.image_xscale = 2	
leftwall.image_yscale = ceil(global.height/2) + 4 //+ global.height *0.02	
leftwall.image_angle = -ad 	
	

rightwall.image_xscale = 2 	
rightwall.image_yscale = ceil(global.height/2) + 4 //+ global.height *0.02	
rightwall.image_angle = -ad 	

/*
leftwall.image_xscale = radius 	
leftwall.image_yscale = 5 	
leftwall.image_angle = 270 - ad 	
leftwall.visible = true		
*/

}
/*
if (!surface_exists(battlebox)) {
	battlebox = surface_create(global.width, global.height);
}

surface_set_target(battlebox);
draw_clear_alpha(c_white, 1);
surface_reset_target();

draw_surface_ext(battlebox, box_x, box_y, 1, 1, -ad, c_black, 1);
/*


//draw_line(320 + lengthdir_x(-radius, dir + ad), 240 + lengthdir_y(radius, dir + ad), 320 + lengthdir_x(radius, dir - ad),  240 + lengthdir_y(radius, dir - ad))


//draw_text(x, y, "testing for movement")
//draw_set_halign(fa_center)
//draw_sprite_ext(sp_pixel, 0, 320, 240, 50, 50, ad, c_white, 1)

//draw_primitive_begin(pr_linestrip)

/*
var tex = sprite_get_texture(sp_collisionchecker, image_index)

draw_primitive_begin_texture(pr_trianglestrip, tex);



draw_vertex(320 - 50, 240 - 50)
draw_vertex(320 + 50, 240 - 50)
draw_vertex(320 + 50, 240 + 50)
draw_vertex(320 - 50, 240 + 50)
draw_vertex(320 - 50, 240 - 51)

	var radius = point_distance(320, 240, 320 - 50, 240 - 50)
	var dir = point_direction(320, 240, 320 - 50, 240 - 50)

	draw_vertex_texture_color(320 + lengthdir_x(-radius, dir + ad), 240 + lengthdir_y(-radius, dir + ad), 1, 1, c_blue, 1) // bottom left
	
	draw_vertex_texture_color(320 + lengthdir_x(radius, dir - ad), 240 + lengthdir_y(-radius, dir - ad), 1, 1, c_blue, 1)  // bottom right
	
	draw_vertex_texture_color(320 + lengthdir_x(radius, dir + ad), 240 + lengthdir_y(radius, dir + ad), 1, 1, c_blue, 1)  //top left
	
	draw_vertex_texture_color(320 + lengthdir_x(-radius, dir - ad), 240 + lengthdir_y(radius, dir - ad), 1, 1, c_blue, 1)  // top right
	
	draw_vertex_texture_color(320 + lengthdir_x(-radius, dir + ad), 240 + lengthdir_y(-radius, dir + ad), 1, 1, c_blue, 1)  // bottom right again

	draw_primitive_end();

	show_debug_message(lengthdir_x(50, ad))
*/



