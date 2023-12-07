// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controlMenu() constructor{
// declare in an init obj and room	
allowInput = false
	captureInput = function() {
	///@func captureInput()
		
		if string_length(keyboard_string) >= 1 {
			return string_char_at(keyboard_string, 0);	
		}	
		return "";
	}
	
	setLeft = function(key) {
	///@func setLeft(key)	
		if (!allowInput) enterCheck()
		
		if allowInput {
			var input = captureInput();
			if input != "" {
				global.left = string_upper(input)
				keyboard_string = "";
				allowInput = false;
			}
			else {
				global.left = ""
			}
		}
	}
	setRight = function(key) {
		///@func setRight(key)	
		if (!allowInput) enterCheck()
		if allowInput {
			var input = captureInput();
			if input != "" {
				global.right = string_upper(input)
				keyboard_string = "";
				allowInput = false;
			}
			else {
				global.right = ""
			}
		}
		
	}
	setUp = function(key) {
		///@func setUp(key)	
		if (!allowInput) enterCheck()
		if allowInput {
			var input = captureInput();
			if input != "" {
				global.up = string_upper(input)
				keyboard_string = "";
				allowInput = false;
			}
			else {
				global.up = ""
			}
		}
		
	}
	setDown = function(key) {
		///@func setDown(key)	
		if (!allowInput) enterCheck()
		if allowInput {
			var input = captureInput();
			if input != "" {
				global.down = string_upper(input)
				keyboard_string = "";
				allowInput = false;
			}
			else {
				global.down = ""
			}
		}

	}
	enterCheck = function(){
	///@func enterCheck()
		if keyboard_check_pressed(vk_enter){
			allowInput = true;
			keyboard_string = ""
		}
	}	
}