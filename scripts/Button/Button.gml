// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//locations should be a two dimensional array
//pressedFunc should be a function
//typeOf should be either a string, or a sprite.
function Button(locations, pressedFunc, typeOf, stepFunc = 0, displayFunc = 0, SPEED = 1/60, curveTypeOf = "mediumEase") constructor
{
	curveList(1)
	locs = argument[0];
	pressedCode = argument[1];
	toDisplay = argument[2];
	stepFunction = argument[3];//own peprsonal addition to be ran every frame besides location calc
	drawFunction = argument[4];//own peprsonal addition to be ran every frame besides display
	spd = argument[5];
	curveType = argument[6]
	
	x = locs[global.menuState][0]
	y = locs[global.menuState][1]
	
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
		changeButtonType = function(input) {	
			if typeof(input) = "string" 
			{
				toDisplay = input
				scrib = scribble(toDisplay)
			}
			else if asset_get_type(input) = asset_sprite{
				toDisplay = input
			}
		}
			
	changeButtonType(argument[2])
	
	
		STEP = function() {
			STATE = global.menuState;
			CURVE = animcurve_get_channel(buttonCurve, curveType)
			if isActive { //isActive dictates whether the button should be taking in input or noT
				x = currentX + difCalculation(locs[STATE][0], currentX, CURVE, spd, 0)
				y = currentY + difCalculation(locs[STATE][1], currentY, CURVE, spd, 0)
					if isPressed { //RUNS code that you want when the button is pressed
						if (typeof(pressedCode) = "method") pressedCode()
						isPressed = false // a one frame run change
					}	
					if (typeof(stepFunction) = "method") stepFunction()
			}
			
		}
		DISPLAY = function() {
			if isActive {
				if typeof(toDisplay) = "string" 
				{
					show_debug_message("dog")
				}
				else 
				{
					show_debug_message("asdfasdfasdfasdfasdf")
					
				}
				if (typeof(drawFunction) = "method") drawFunction()
			}
		}
		CoordReset = function() {
			currentX = x
			currentY = y
		}
}


//make function that'll accept an array as index
//that group turn off buttons, utilize their curveCalc number equalling 1 as condition.






