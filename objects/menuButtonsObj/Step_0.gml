/// @description Insert description here
// You can write your code in this editor
if global.menuState != -1 {
	global.menuState = clamp(global.menuState, 0, 1)	// might not be necessary.
	
	switch global.menuState {
		case 0:
			buttonHover = clamp(buttonHover, 0, 1)
		break;
		case 1:
			buttonHover = clamp(buttonHover, 1, 5)
		break;
	}
	if keyboard_check_pressed(ord("W")) {
		buttonHover--
	}
	if keyboard_check_pressed(ord("S")) {
		buttonHover++
	}
	for(var i = 0; i < array_length(allButtons); i++) {
		for(var j = 0; j < array_length(allButtons[i]); j++) {
			allButtons[i][j].STEP(global.menuState)
			allButtons[i][j].checkPressed()
			if (i = global.menuState) allButtons[i][j].onMe = (i = buttonHover) ? true : false 
			//checks only the current button states
		}
	}
	show_debug_message(controlsButtons[2].y)
}