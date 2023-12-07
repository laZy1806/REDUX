/// @description Insert description here
// You can write your code in this editor

// current_letter is backwards from normal counting, so instead of b being 1, now z is 1.
// change function is calculated based on previous current num, and then is incrimented for next run, 
// its okay for current num to be -1 or 26, because it will reset before it hits change function
moving_curve = animcurve_channel_evaluate(animcurve_get_channel(text_curve, "scale"), move_value);

current_letter = clamp(current_letter, -1, 26)
move_value = clamp(move_value, 0, 1)
alpha = clamp(alpha, 0, 1)
alpha_main = clamp(alpha_main, 0, 1)

if alpha != 1 {
	alpha += 0.008
}
else {
	alpha_main += 0.008
}
	titlePartSys.step()
if array_length(titlePartSys.particle_array) < 50 {	
	run_alarm(partAlarm)
	
}
if alpha_main > 0.85 {
	global.name = input_name	
	if move_value = 0 {		
		if !name_finished {			
			if !name_selected {		
				if (keyboard_check(vk_right)) and !(keyboard_check(vk_left)) {	
					/* this prevents it from moving to b and skipping to c, need to make to where this happens only on the run back
					b is qualified as 0, when it should be 25, need to fix
					c takes 25, when it should be 24
					*/
					letterReset()
					letter_rotation = current_letter
					change_left = true
				}
				if (keyboard_check(vk_left)) and !(keyboard_check(vk_right)) {		
					letterReset()
					letter_rotation = current_letter
					change_right = true
				}
				if (keyboard_check_pressed(ord("Z"))) and string_length(input_name) < 6 {		
					letterInputFunc()
				}			
				if (keyboard_check_pressed(ord("X"))) and string_length(input_name) > 0 {
					input_name = string_delete(input_name, string_length(input_name), 1)	
				}				
			}
			if string_length(input_name) > 0 {
				if name_selected = false {
					if (keyboard_check_pressed(vk_enter)) {		
						name_selected = true
					}
					text_scaler = lerp(text_scaler, 1, 0.1)
				}
				if name_selected = true {
					if (keyboard_check_pressed(vk_escape)) {		
						name_selected = false	
					}			
					text_scaler = lerp(text_scaler, 2, 0.1)	
				}
			}	
			//advanced_part_emitter_burst(titlePartSys, titlePartEmit, titlePart, 1)
		}
	}	
	if name_selected = false {
	//by clicking left
		if change_right {
			for (var i = 0; i < 26; i++) {
				x_pos[i] =	x_pos_tracker[letter_rotation] + (diff_of_loc_x_right[letter_rotation] * moving_curve)		
				y_pos[i] =	y_pos_tracker[letter_rotation] + (diff_of_loc_y_right[letter_rotation] * moving_curve)
				scale[i] =	scale_tracker[letter_rotation] + (diff_of_loc_scale_right[letter_rotation] * moving_curve)
				if letter_rotation < 25 {
					letter_rotation++;	
				}
				else if letter_rotation = 25 {
					letter_rotation = 0;
				}
			}
			if move_value != 1 {	
				move_value += 1/18
			}
			else {
				current_letter++
				move_value = 0;
				change_right = false;	
			}			
		}
		// 0 still needs to happen, so i dont increment it in button hit, but here instead		
		// ends up adding to 26, and resets at that value, 
		//so 26 is passed to the left click button but resets before getting passed back through here		
		//by clicking right	
		if change_left {
			for (var i = 0; i < 26; i++) {	
				x_pos[i] = x_pos_tracker[letter_rotation] + ((diff_of_loc_x_left[letter_rotation] * moving_curve) * 1)		
				y_pos[i] = y_pos_tracker[letter_rotation] + ((diff_of_loc_y_left[letter_rotation] * moving_curve) * 1)
				scale[i] =	scale_tracker[letter_rotation] + (diff_of_loc_scale_left[letter_rotation] * moving_curve)
				if letter_rotation < 25 {
					letter_rotation++;	
				
				}
				else if letter_rotation = 25 {
					letter_rotation = 0;
				
				}
			}
			if move_value != 1 {	
				move_value += 1/18
			}
			else {
				current_letter--;
				move_value = 0;
				change_left = false;
				if current_letter = -1
				current_letter = 25;
			}
		}
	}		
}		
if name_selected and text_scaler >= 2 and (keyboard_check_pressed(vk_enter)){
	name_finished = true;
}
if name_finished {
	with instance_find(saveObj, 0) save()
	event_perform(ev_alarm, 0)
	audio_sound_gain(titleSong, 0, 1000)
}
if string_length(input_name) > 6 {
	name_full = true;
}
else {
	name_full = false;	
}
	