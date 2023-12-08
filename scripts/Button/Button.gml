// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Button(locations, pressedFunc, stepFunc = 0) constructor
{
	
	x = 0;
	y = 0;
	currentX = 0;
	currentY = 0;
	stepFunction = stepFunc;//own pprsonal addition to be ran every frame besides location calc
	isPressed = false;
	locs = locations;
	pressedCode = pressedFunc;
	STEP = function() {
		if (typeof(stepFunction) = "method") stepFunction()
		
		//location calculation code goes here
		
		if isPressed {
			if (typeof(pressedCode) = "method") pressedCode()
			isPressed = false // a one frame run change
		}
	}
}