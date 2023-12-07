/// @description Insert description here
// You can write your code in this editor
//draw_self();
draw_set_halign(fa_center)
draw_set_color(c_white);
draw_set_font(titleText);
/*
for (var i = 0; i < 26; i++) {
	letter_list[i] = string_char_at(letters, i + 1)	
}
*/
if count = 26 {
	for (var i = 0; i < 26; i++) {
	// normal counting forward, ie: pos of 2 - pos of 1
		if i < array_length(letter_list) - 1{		
			diff_of_loc_x_right[i] = x_pos[i + 1] - x_pos[i];		
			diff_of_loc_y_right[i] = y_pos[i + 1] - y_pos[i];
			diff_of_loc_scale_right[i] = scale[i + 1] - scale[i];
		}
		else if i = array_length(letter_list) - 1{	
			diff_of_loc_x_right[i] = x_pos[0] - x_pos[25];		
			diff_of_loc_y_right[i] = y_pos[0] - y_pos[25];
			diff_of_loc_scale_right[i] = scale[0] - scale[25];
		}		
	// sets starting from 25 counting down to 0 instead of 0 - 25, and calculates pos of 1 - pos of 2 since we wanna get neg values without having to subtract in step event, causing false coordinates	
		if i = 0 {		
			diff_of_loc_x_left[i] = x_pos[25] - x_pos[0];			
			diff_of_loc_y_left[i] = y_pos[25] - y_pos[0];
			diff_of_loc_scale_left[i] = scale[25] - scale[0];
			//diff_of_loc_x_left[i] = x_pos[(25 - i) - 1] - x_pos[25 - i];		
			//diff_of_loc_y_left[i] = y_pos[(25 - i) - 1] - y_pos[25 - i];	
		}
		else if i < array_length(letter_list) {	
			diff_of_loc_x_left[i] = x_pos[i - 1] - x_pos[i];		
			diff_of_loc_y_left[i] = y_pos[i - 1] - y_pos[i];	
			diff_of_loc_scale_left[i] = scale[i - 1] - scale[i];
		}
	}
	count++;
}
siner += 0.01
var sinerGradient = abs(sin(siner/1) * 50) // 0 means black
sinerGradient = clamp(sinerGradient, 0, 200)
titlePartSys.draw()
if !name_selected {	
	for (var a = 0; a < 26; a++) {	
		letter_list[a].starting_format("titleText")
		letter_list[a].align(fa_center, fa_top)
		letter_list[a].draw(x_pos[a], y_pos[a])
		letter_list[a].transform(scale[a], scale[a], 0)
		letter_list[a].blend(make_colour_hsv(0, 0, 255), alpha_main, 0)
		letter_list[a].gradient(make_colour_hsv(201, 255, 10 + sinerGradient), alpha_main, 0)
		//draw_text_transformed_color(x_pos[a], y_pos[a], ds_list_find_value(ds_letter, a), scale[a], scale[a], 0, c_white, c_white, c_black, c_black, alpha_main);
	}
	topText.draw(320, 39)
	topText.blend(make_colour_hsv(0, 0, 255), alpha, 0)
	topText.gradient(make_colour_hsv(201, 255, 10 + sinerGradient), 1, 0)
	//draw_text_ext_color(320, 39, "Type your Name", 4, 1000, c_white, c_white, c_black, c_black, 1)
	draw_sprite_ext(sp_letterselect, 0, 319, 318, 1, 1, 0, c_white, alpha_main)
	var gray = make_colour_hsv(0, 0, 157);
	draw_text_transformed_color(320, 240, input_name, text_scaler, text_scaler, 0, gray, gray, gray, gray, 1)
	if variable_instance_exists(id, "selectionText") selectionText = noone
}
else {
	if !variable_instance_exists(id, "selectionText") or selectionText = noone
	selectionText = global.nameFunctions.returnNameFunction("nameSelect")
	selectionText[0].starting_format("titleText")
	selectionText[0].align(fa_center, fa_top)
	selectionText[0].draw(320, 39)
	selectionText[0].transform(1, 1, 0)
	selectionText[0].blend(make_colour_hsv(0, 0, 255), 1, 0)
	selectionText[0].gradient(make_colour_hsv(201, 255, 10 + sinerGradient), 1, 0)
	draw_text_ext_transformed_color(320, 240, input_name, 4, 1000, text_scaler, text_scaler, 0, selectionText[1], selectionText[1], selectionText[1], selectionText[1], 1)	
}