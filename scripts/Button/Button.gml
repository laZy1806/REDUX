// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//locations should be a two dimensional array
//pressedFunc should be a function
//typeOf should be either a sprite, or an instance of scribbleCreator.
function Button(locations, pressedFunc, typeOf, displayFunc = 0, stepFunc = 0,  SPEED = 1/60, curveTypeOf = "mediumEase") constructor
{
	curveList(1)
	locs = argument[0];
	pressedCode = argument[1];
	toDisplay = argument[2]; // utilizes a method to display anything (anything that can be run in draw event)
	drawFunction = argument[3];//own peprsonal addition to be ran every frame besides display
	stepFunction = argument[4];//own peprsonal addition to be ran every frame besides location calc
	spd = argument[5];
	curveType = argument[6]
	
	x = locs[0][0]
	y = locs[0][1]
	image_index = 0
	isActive = false
	isPressed = false;
	currentX = x;
	currentY = y;
	//Mutators
		changeCurveType = function(input) {
			if typeof(input) = "string" curveType = input
		}
		changeSpeed = function(input) {
			if typeof(input) = "number" spd = input
		}
		changeDisplayType = function(input){
			if (instanceof(input) != "scribbleCreator") or (asset_get_type(input) != asset_sprite) show_debug_message("Bad Input for Display Type") 
			else toDisplay = input	
		}		
		STEP = function(_location) {			
			if (typeof(stepFunction) = "method") stepFunction()
			STATE = _location;
			CURVE = animcurve_get_channel(buttonCurve, curveType)
			if isActive { //isActive dictates whether the button should be taking in input or not
				x = currentX + difCalculation(locs[STATE][0], currentX, CURVE, spd, 0)
				y = currentY + difCalculation(locs[STATE][1], currentY, CURVE, spd, 0)
				
				if isPressed { //RUNS code that you want when the button is pressed
					if (typeof(pressedCode) = "method") pressedCode()
					isPressed = false // a one frame run change
				}	
			}	
		}
		DISPLAY = function() {
			if isActive {
				if typeof(toDisplay) = "method" toDisplay(x, y) // x and y argument works in tandem with scribbleCreator
				if (typeof(drawFunction) = "method") drawFunction() // a second draw func thats optional
			}
		}
		CoordReset = function() {
			currentX = x
			currentY = y
			resetCalcNumber(0)
		}
}