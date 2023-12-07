  /// @description Insert description here
// You can write your code in this editor	
// sets up blaster at starter point
if destroy = false {
	percent += 1/per_speed

	position = animcurve_channel_evaluate(animcurve_get_channel(gastercurve,"curve1"), percent)
	angleturn = animcurve_channel_evaluate(animcurve_get_channel(gastercurve,"curve2"), percent)
	position_reverse = animcurve_channel_evaluate(animcurve_get_channel(gastercurve,"curve3"), percent)
	//speedkeyframe = animcurve_channel_evaluate(speedcurve, percent)
	if !Spawned {
		xTo = DesX - startx;
		yTo = DesY - starty;
		//image_angle = DesAngle + 45
		Spawned = true;
	 }
 
	//anglestart = image_angle

	var _distancex = xTo
	var _distancey = yTo
	angledistance = abs(anglestart - DesAngle)
	// uses math to move it to specific place 
	 if (Timer > 0) { 
		 x = startx + (_distancex * position)
		 y = starty + (_distancey * position)
		 image_angle =	anglestart + (angledistance * angleturn)				//point_direction(startx, starty, DesX, DesY)
		 direction = image_angle - 180
		 image_speed = 0
		 Timer--;
		 
	 }
	 else {
		if (Interval < 0) {
			if percent < 1 {
				x =	x + lengthdir_x(25 * position_reverse, direction)			//DesX - (_distancex * position_reverse)
				y =	y + lengthdir_y(25 * position_reverse, direction)			//DesY - (_distancey * position_reverse)
			}
		}	 
	 	if (Interval == 0) {
			percent = 0;	
			Beam = instance_create_depth(x, y, depth, obj_blaster);
			speed = 0;
			//friction = -0.4;
			image_speed = 3;
			if shake {
				camControls("null", "null", "null", 1.5)
			}
		}		
		if (Interval < -end_time) {
			image_xscale *= 0.85;
			Beam.image_alpha *= 0.93;
			if (image_xscale < 0.1) {
				instance_destroy();
				instance_destroy(Beam);
			}
		}
		Interval -= 1;
	}

	//oob check 
	if (x < -100 || x > 740 || y < -100 || y > 580) {
		speed = 0;
		friction = 0;
	}
	if instance_exists(Beam) {
		sprite_index = sp_gasterblasterfiring
		Beam.x = x;
		Beam.y = y;
		Beam.image_angle = image_angle + 90;
		//show_debug_message(Beam.image_angle)
		Beam.image_xscale = image_xscale * (abs(sin(Interval / 6) / 3) + 1);
		Beam.image_yscale = image_yscale;
		Beam.image_alpha = (image_xscale * 1);
	}		
	if (global.playerHP < 1 && global.Karma > 1) {
			global.playerHP = 1;
			global.Karma -= 1
		}
		if(global.playerHP <= 0) {
			instance_create_depth(x, y, 0, gameOverObj)
			audio_sound_set_track_position(global.battleSong, 16)
		}
}
else if destroy {
	instance_destroy(id)	
	instance_destroy(Beam)	
}