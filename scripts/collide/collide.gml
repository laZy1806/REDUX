// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collide(argument0){
	
	wall_instance = argument0
	
		if (place_meeting(x + lengthdir_x(hsp, wall_instance.image_angle), y, wall_instance)) {
		
			x += lengthdir_x(hsp, wall_instance.image_angle)
		
	
		
		}	
		if (place_meeting(x, y + lengthdir_y(vsp, wall_instance.image_angle), wall_instance)) {
		
			y += lengthdir_y(vsp, wall_instance.image_angle)
				
		
		}	
	
}