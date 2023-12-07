/// @description fighting box code
// You can write your code in this editor

// math for the calculations in animating fighting box

//division value controls how fast the box comes into place
//if beginningbox = false {
	
	if (current_width < global.borderwidth){
		current_width += ((global.borderwidth - current_width) / box_speed)
	}
	if (current_width > global.borderwidth){
		current_width -= ((current_width - global.borderwidth) / box_speed)
	}
	if (current_height < global.borderheight){
		current_height += ((global.borderheight - current_height) / box_speed)
	}
	if (current_height > global.borderheight){
		current_height -= ((current_height - global.borderheight) / box_speed)
	}
	global.borderangle = anglestart + (angledistance * ease_in_out_Box(percent_angle, 0))

	_pointdist = function(_x, _y) {
		
		return point_distance(middlex, middley, middlex + _x, middley + _y)
		
	}
	_pointdirect = function(_x, _y) {
		return point_direction(middlex, middley, middlex + _x, middley + _y)
	}
	
	// minus 3 is used to compensate for side walls extending past in scale, 
			
	
	if (grad_state) {
		advanced_part_emitter_burst(fightParticlesSystem, fightParticlesEmitter, fightParticles, 1)
	}
	fightParticlesSystem.step()
	if (rain) {
		advanced_part_emitter_burst(rainParticlesSystem, rainParticlesEmitter, rainParticles, 1)
	}
	rainParticlesSystem.step()
	#region wall visuals
	if instance_exists(obj_battlewall) {
		
			leftwall.x = middlex + lengthdir_x(_pointdist(-current_width/2 - 3, 0), 
						_pointdirect(-current_width/2 - 3, 0) - global.borderangle)
	
			leftwall.y = middley + lengthdir_y(_pointdist(-current_width/2 - 3, 0), 
						_pointdirect(-current_width/2 - 3, 0) - global.borderangle)
	
			rightwall.x = middlex + lengthdir_x(_pointdist(current_width/2 + 3, 0), 
						_pointdirect(current_width/2 + 3, 0) - global.borderangle)
	
			rightwall.y = middley + lengthdir_y(_pointdist(current_width/2 + 3, 0), 
						_pointdirect(current_width/2 + 3, 0) - global.borderangle)
	
			topwall.x = middlex + lengthdir_x(_pointdist(0, -current_height/2 - 3), 
						_pointdirect(0, -current_height/2 - 3) - global.borderangle)
									  
			topwall.y = middley + lengthdir_y(_pointdist(0, -current_height/2 - 3), 
						_pointdirect(0, -current_height/2 - 3) - global.borderangle)
	
			bottomwall.x = middlex + lengthdir_x(_pointdist(0, current_height/2 + 3), 
						_pointdirect(0, current_height/2 + 3) - global.borderangle)
										
			bottomwall.y = middley + lengthdir_y(_pointdist(0, current_height/2 + 3), 
						_pointdirect(0, current_height/2 + 3) - global.borderangle)
		
		topwall.image_xscale = ceil(current_width/2) + 4 //+ current_width * 0.018
		topwall.image_yscale = 2	
		topwall.image_angle = -global.borderangle 	
		topwall.image_alpha = image_alpha
	
		bottomwall.image_xscale = ceil(current_width/2) + 4//+ current_width *0.018
		bottomwall.image_yscale = 2
		bottomwall.image_angle = -global.borderangle 	 	
		bottomwall.image_alpha = image_alpha


		leftwall.image_xscale = 2	
		leftwall.image_yscale = ceil(current_height/2) + 4 //+ current_height *0.02	
		leftwall.image_angle = -global.borderangle 	 	
		leftwall.image_alpha = image_alpha
	

		rightwall.image_xscale = 2 	
		rightwall.image_yscale = ceil(current_height/2) + 4 //+ current_height *0.02	
		rightwall.image_angle = -global.borderangle 	
		rightwall.image_alpha = image_alpha
		
	}
	#endregion
	
	var tx,ty
	tx = -(current_width/2)
	ty = -(current_height/2)
	
	rot_x = tx * cos(degtorad(global.borderangle)) - ty * sin(degtorad(global.borderangle))
	rot_y = tx * sin(degtorad(global.borderangle)) + ty * cos(degtorad(global.borderangle))
	
	box_x = middlex + rot_x //* 1.02
	box_y = middley + rot_y 
// for gradient movement calculations	
	
	if grad_state {
		percent += 1/360
		if percent > 1 percent -= 1
	}
	else {
		if percent >= 0 and percent <= 1 {
			if percent >= 0.5 percent += 1/240
			if percent <= 0.5 percent -= 1/240
		}
	}
	gradient_curve = animcurve_channel_evaluate(animcurve_get_channel(bonecurve,"reverse_2"), percent)
	//show_debug_message(gradient_curve)
//}
//testing random sizes
//show_debug_message(beginningbox)
dynamicColor = merge_color(dynamicColor, newColor, lerp(0, colorMix, colorSpeed))


