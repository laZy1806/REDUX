// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function particleScript(){

	#region Particle Types

	var p_battle = part_type_create();
	part_system_depth(p_battle, 3)

	part_type_shape(p_battle,	pt_shape_disk)	
	part_type_life(p_battle, 40, 80)

	part_type_alpha2(p_battle, 1, 0)

	part_type_size(p_battle, 0.1, 0.25, -0.005, 0.01);

	part_type_speed(p_battle, 1, 2.5, 0.05, 0)
	part_type_direction(p_battle, 90, 90, 0.05, 0)
	
	
	part_type_color1(p_battle, make_colour_hsv(21, 245, 150))
	
	global.ptDisk = p_battle

	#endregion

}