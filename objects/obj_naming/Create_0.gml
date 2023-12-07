/// @description Insert description here
// You can write your code in this editor
letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
letter_num[0] = 0;
percent = 0;
scalingnum_x = 0;
scalingnum_y = 0;
scalingnum = 0;
scale[0] = 0;

lock_text = true;
count = 0; 

x_pos = 0;
y_pos = 0;
siner = 0;
current_letter = 0
letter_rotation = 0
ds_letter = ds_list_create()
diff_of_loc_x[0] = 0;
diff_of_loc_y[0] = 0;
diff_of_loc_y[0] = 0;

change_left = false
change_right = false

move_value = 0;
moving_curve = animcurve_channel_evaluate(animcurve_get_channel(text_curve, "scale"), move_value);

input_name = "";

alpha = 0;
alpha_main = 0;

name_selected = false;
name_full = false;
text_scaler = 1;
name_finished = false;
for (var i = 0; i < 26; i++) {
	letter_list[i] = scribble(string_char_at(letters, i + 1))
	letter_list[i].starting_format("titleText")
	letter_list[i].blend(16777215, alpha_main, 0)
}
if count < 26 {
	for (var j = 0; j < 26; j++) {
		x_multiplier = animcurve_channel_evaluate(animcurve_get_channel(text_curve, "x_pos"), scalingnum_x);
		y_multiplier = animcurve_channel_evaluate(animcurve_get_channel(text_curve, "y_pos"), scalingnum_y);
		scale_multiplier = animcurve_channel_evaluate(animcurve_get_channel(text_curve, "scale"), scalingnum);
		if 14 > j {
			x_pos[j] = 320 + (160 * x_multiplier)
			y_pos[j] = 300 - (100 * y_multiplier)
			scale[j] = 1.3 - (1 * scale_multiplier)
			x_pos_tracker[j] = x_pos[j]
			y_pos_tracker[j] = y_pos[j] 
			scale_tracker[j] = scale[j]
			
		}
		else {	
			x_pos[j] = 320 - (160 * x_multiplier)
			y_pos[j] = 200 + (101 * y_multiplier)
			scale[j] = 0.3 + (1 * scale_multiplier)
			x_pos_tracker[j] = x_pos[j]
			y_pos_tracker[j] = y_pos[j]  
			scale_tracker[j] = scale[j]
				
		}
		if scalingnum_x != 1 {
			scalingnum += 1/13
			scalingnum_x += 1/13
			scalingnum_y += 1/13
		}
		else {
			scalingnum -= 13/13
			scalingnum_x -= 12/13
			scalingnum_y -= 12/13

		}	
		count++;	
		
	}
}		
topText = scribble("Type your Name")
topText.starting_format("titleText")
topText.align(fa_center, fa_top)
topText.draw(320, 39)
topText.transform(1, 1, 0)
topText.blend(make_colour_hsv(0, 0, 255), alpha, 0)
instance_create_depth(0, 0, 0, saveObj)

titlePartSys = new advanced_part_system()
titlePart = new advanced_part_type()
// emitter is spread far to reduce pixel density
titlePartEmit = new advanced_part_emitter(titlePartSys, 0, 640, 0, 100, aps_shape.rectangle, aps_distr.linear)
with titlePart {
	part_life(450, 800)
	part_size(4/256, 4/256, 0, 0)
	part_image(starTitleSp, 0, c_purple, false, false, true)
	part_speed(0.1, 0.1, 0, 0)
	part_direction(180, 360, 0, 0)
	part_orientation(0, 360, 1, 0, 0)
	part_alpha3(0, 0.7, 0)
	//part_death(5, self)
	// compensates for large area by deleting particles that cant be seen.
	part_step_function(
		function(){
			var color = global.nameFunctions.returnNameFunction("nameSelect")
			if obj_naming.name_selected
				with obj_naming.titlePart part_image(starTitleSp, 0, color[1], false, false, true)
			else 
				with obj_naming.titlePart part_image(starTitleSp, 0, c_purple, false, false, true)
		}
	)
}
partFunc = function() {
	advanced_part_emitter_burst(titlePartSys, titlePartEmit, titlePart, 1)
}
partAlarm = new Alarm(25, partFunc, true)


/*
var ps = part_system_create();
part_system_draw_order( ps, true);

var ptype1 = part_type_create();
part_type_shape( ptype1, pt_shape_star );
part_type_size( ptype1, 0.05, 0.05, 0, 0 );
part_type_scale( ptype1, 1, 1);
part_type_speed( ptype1, 0.05, 0.05, 0, 0.02);
part_type_direction( ptype1, 0, 360, 0, 0);
part_type_gravity( ptype1, 0, 0);
part_type_orientation( ptype1, 0, 360, 0.2, 0, false);
part_type_colour3( ptype1, $FFFFFF, $FFFFFF, $FFFFFF );
part_type_alpha3( ptype1, 1, 1, 1);
part_type_blend( ptype1, false);
part_type_life( ptype1, 500, 500);

var pemit1 = part_emitter_create( ps );
part_emitter_region( ps, pemit1, -333.22223, 335.22223, -248.81776, 86.817795, ps_shape_rectangle, ps_distr_gaussian );
part_emitter_stream(ps, pemit1, ptype1, 1);

var ptype2 = part_type_create();
part_type_shape( ptype2, pt_shape_disk );
part_type_size( ptype2, 1, 1, 0, 0 );
part_type_scale( ptype2, 5, 5);
part_type_speed( ptype2, 0.02, 0.05, 0.01, 0);
part_type_direction( ptype2, 240, 220, 0, 0);
part_type_gravity( ptype2, 0, 279);
part_type_orientation( ptype2, 0, 0, 0, 0, false);
part_type_colour3( ptype2, $FFFFFF, $FFFFFF, $000000 );
part_type_alpha3( ptype2, 1, 0, 0);
part_type_blend( ptype2, false);
part_type_life( ptype2, 10, 500);

var pemit2 = part_emitter_create( ps );
part_emitter_region( ps, pemit2, -295, 305, 7.5, 14.5, ps_shape_rectangle, ps_distr_linear );
part_emitter_stream(ps, pemit2, ptype2, 1);

part_system_position(ps, room_width/2, room_height/2);


*/
letterInputFunc = function(){
///@func letterInputFunc()	
	switch (current_letter) 
	{
		case 26: //a
			input_name += "a"
		break;
		case 25:	//b
			input_name += "b"
		break;
		case 24:	//c
			input_name += "c"
		break;
		case 23:	//d
			input_name += "d"
		break;
		case 22:	//e
			input_name += "e"
		break;
		case 21:	//f
			input_name += "f"
		break;
		case 20:	//g
			input_name += "g"
		break;
		case 19:	//h
			input_name += "h"
		break;
		case 18:	//i
			input_name += "i"
		break;
		case 17:	//j
			input_name += "j"
		break;
		case 16:	//k
			input_name += "k"
		break;
		case 15:	//l
			input_name += "l"
		break;
		case 14:	//m
			input_name += "m"
		break;
		case 13:	//n
			input_name += "n"
		break;
		case 12:	//o
			input_name += "o"
		break;
		case 11:	//p
			input_name += "p"	
		break;
		case 10:	//q
			input_name += "q"
		break;
		case 9:		//r
			input_name += "r"
		break;
		case 8:		//s
			input_name += "s"
		break;
		case 7:		//t
			input_name += "t"
		break;
		case 6:		//u
			input_name += "u"
		break;
		case 5:		//v
			input_name += "v";
		break;
		case 4:		
			input_name += "w";
		break;
		case 3:		//x
			input_name += "x";			
		break;
		case 2:		//y
			input_name += "y";
		break;
		case 1:		//z
			input_name += "z";
		break;
		case 0: //a
			input_name += "a";	
		break;
	}		
	
}
letterReset = function() {
///@func letterReset()	
	if current_letter = -1 {
		current_letter = 25;	
	}	
	if current_letter = 26 {
		current_letter = 0;	
	}
}
audio_play_sound(titleSong, 100, true)
audio_sound_gain(titleSong, 0, 0)
audio_sound_gain(titleSong, 1, 10000)