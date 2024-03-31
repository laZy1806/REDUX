/// @description Insert description here
// You can write your code in this editor
if (global.menuState != -1) {
	global.menuState = clamp(global.menuState, 0, 1); // might not be necessary.
	if (keyboard_check_pressed(ord("W")) && buttonHover > 0) {
		buttonHover--
		colorTimer = 0;
	}
	if (keyboard_check_pressed(ord("S")) && buttonHover < array_length(allButtons[global.menuState]) - 1) {
		buttonHover++
		colorTimer = 0;
	}
	for(var i = 0; i < array_length(allButtons); i++) {
		for(var j = 0; j < array_length(allButtons[i]); j++) {
			allButtons[i][j].STEP(global.menuState)
			allButtons[i][j].checkPressed()
			
			if (i = global.menuState) allButtons[i][j].onMe = (j = buttonHover) ? true : false 
			if (allButtons[i][j].onMe) allButtons[i][j].toDisplay.gradient(c_purple, min(0.8, colorTimer));
			else allButtons[i][j].toDisplay.gradient(c_white, colorTimer);
		}
	}
	colorTimer += 1/25
}
else {
	var _lay = layer_get_id("Stationary")
	var ARR = layer_get_all_elements(_lay)
	var cam = instance_find(oWorldCam, 0);
	cam.yShift = (lerp(cam.yShift, 0, d(0.04)))
	cam.setZoom("ease", 1/80, 1)
	image_alpha = abs(cam.yShift/80);
		
	for(var i = 0; i < array_length(ARR); i++) {
		if i != 1 layer_sprite_alpha(ARR[i], 1 - image_alpha);
	}
	for(var i = 0; i < array_length(allButtons); i++) {
		for(var j = 0; j < array_length(allButtons[i]); j++) {
			allButtons[i][j].toDisplay.blend(c_white, image_alpha);
		}
	}
	if (abs(cam.yShift) < 0.2) 
	instance_destroy(id);
}
//mouseDebug();