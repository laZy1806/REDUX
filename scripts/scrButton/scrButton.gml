// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//locations should be a two dimensional array with x being [.][0] and y being [.][1]
//pressedFunc should be a function
//typeOf should be either a sprite, or an instance of scribbleCreator.
global.menuState = 0;
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
	x = locs[0][0]
	y = locs[0][1]
	
	onMe = false
	CURVE = animcurve_get_channel(buttonCurve, curveType)
	image_index = 0
	currentX = x;
	currentY = y;
	evaluate[0] = 1
	//Mutators
		changeCurveData = function(_curve = noone, _spd = noone) {
			if typeof(_curve) = "string" curveType = _curve
			if typeof(_spd) = "number" spd = _spd
		}		
		addLocation = function(_x, _y) {
			array_push(locs, [_x, _y])
		}
		shiftButton = function() {
			currentX = x
			currentY = y
			resetCalcNumber(0)
		}
		STEP = function(_location = 0) {
			if (_location >= 0) {
				location = _location
			}
				var _x = difCalculation(locs[location][0], currentX, CURVE, spd, 0)
				var _y = difCalculation(locs[location][1], currentY, CURVE, spd, 0)
			
				if !isCurveFinished(0) {
					x = currentX + _x
					y = currentY + _y
				}
				if (typeof(stepFunction) = "method") stepFunction()
		}
		checkPressed = function(){
			if (keyboard_check_pressed(global.enterKey) && isCurveFinished(0)) {
				if ((typeof(pressedCode) = "method") && onMe) pressedCode()
				shiftButton()
				onMe = false; //to prevent it from staying past menus?
			}
		}
		DISPLAY = function(_x = x, _y = y, _scale = 1, _rot = 0, _alp = 1) {
			if is_instanceof(toDisplay, __scribble_class_element) {
				toDisplay.draw(_x, _y)
			}
			else if (asset_get_type(toDisplay) = asset_sprite) draw_sprite_ext(toDisplay, image_index, _x, _y, _scale, _scale, _rot, c_white, _alp)
			if (typeof(drawFunction) = "method") drawFunction() // a second draw func thats optional
		}
}
