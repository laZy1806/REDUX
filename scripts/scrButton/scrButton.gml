// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//locations should be a two dimensional array with x being [.][0] and y being [.][1]
//pressedFunc should be a function
//typeOf should be either a sprite, or an instance of scribbleCreator.
function scrButton(locations, pressedFunc, typeOf, displayFunc = 0, stepFunc = 0,  SPEED = 1/60, curveTypeOf = "mediumEase") constructor
{
	scrCurveList(1)
	locs = argument[0];
	pressedCode = argument[1];
	toDisplay = argument[2]; // utilizes a method to display anything (anything that can be run in draw event)
	drawFunction = argument[3];//own peprsonal addition to be ran every frame besides display
	stepFunction = argument[4];//own peprsonal addition to be ran every frame besides location calc
	spd = argument[5];
	curveType = argument[6]
	isActive = false
	buttonToCheck = noone
	x = locs[0][0]
	y = locs[0][1]
	image_index = 0
	isPressed = false;
	currentX = x;
	currentY = y;
	//Mutators
		changeCurveData = function(_curve = noone, _spd = noone, _display = noone) {
			if typeof(_curve) = "string" curveType = _curve
			if typeof(_spd) = "number" spd = _spd
			if (is_instanceof(_display, __scribble_class_element) = false) or (asset_get_type(_display) != asset_sprite) show_error("Please use either a sprite or an instance of scribble", true) 
			else toDisplay = _display	
		}		
		addLocation = function(_x, _y) {
			array_push(locs, [_x, _y])
		}
		shiftButton = function() {
			currentX = x
			currentY = y
			resetCalcNumber(0)
		}
		STEP = function(_location = 0, _buttonToCheck) {
			CURVE = animcurve_get_channel(buttonCurve, curveType)
			buttonToCheck = _buttonToCheck
			location = _location;
			location = clamp(location, 0, array_length(locs) - 1)
			x = currentX + difCalculation(locs[location][0], currentX, CURVE, spd, 0)
			y = currentY + difCalculation(locs[location][1], currentY, CURVE, spd, 0)
			
			if (typeof(stepFunction) = "method") stepFunction()
			if (keyboard_check_pressed(buttonToCheck)) shiftButton();	//need to add cooldown here, causes bug
			
		}
		checkPressed = function(){
		 if (keyboard_check_pressed(buttonToCheck)) {
			if (typeof(pressedCode) = "method") pressedCode()
				shiftButton();
			}
		}
		DISPLAY = function(_scale = 1, _rot = 0, _alp = 1) {
			if is_instanceof(toDisplay, __scribble_class_element) toDisplay.draw(x, y)
			else if (asset_get_type(toDisplay) = asset_sprite) draw_sprite_ext(toDisplay, image_index, x, y, _scale, _scale, _rot, c_white, _alp)
			if (typeof(drawFunction) = "method") drawFunction() // a second draw func thats optional
		}
}