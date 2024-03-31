/// @description Insert description here
// You can write your code in this editor
depth = 1
scrOutlineShaderinit()
menuSurf = -1;
buttonHover = 0;
alarm[0] = 1	//to set camera and not get an instance creation error
allButtons = array_create(0)
Timer = 60
colorTimer = 0;
//for debugging purposes
menuOneButtons = array_create(0)
controlsButtons = array_create(0)

var xOff = 0, yOff = -30

#region start menu one buttons
	startLocs = 
	[
		[320, 180 + yOff],
		[-320, 180 + yOff],
	]
	startTxt = scribble("[fa_middle][fa_center][menuFont][scale, 1]Start");
	Start = new scrButton(startLocs, function() {
		global.menuState = -1;
	},  startTxt)
	optionsLocs = 
	[
		[320, 220 + yOff],
		[-320, 220 + yOff],
	]
	optionsTxt = scribble("[fa_middle][fa_center][menuFont][scale, 1]Options");
	Options = new scrButton(optionsLocs, function() {
		global.menuState = 1;
		}, optionsTxt
	)
	
	array_push(menuOneButtons, Start, Options)
#endregion
#region controls buttons/menu state 2 buttons

	var _y = 160 + yOff;
	
	controlsLocs = 
	[ 
		[700, _y], 
		[320, _y],
	]
	upLocs = [ 
		[700, _y + 40], 
		[320, _y + 40],
	]
	downLocs = [ 
		[700, _y + 80], 
		[320, _y + 80], 
	]
	leftLocs = [ 
		[700, _y + 120], 
		[320, _y + 120], 
	]
	rightLocs = [ 
		[700, _y + 160], 
		[320, _y + 160], 
	]
	
	Controls = new scrButton(controlsLocs, function() { }, scribble("[fa_middle][fa_center][menuFont][scale, 1]Controls")) 
	
	Up = new scrButton(upLocs, function() { }, scribble("[fa_middle][fa_center][menuFont][scale, 1]Up " + string(global.upKey))) 
	
	Down = new scrButton(downLocs, function() { }, scribble("[fa_middle][fa_center][menuFont][scale, 1]Down " + string(global.downKey))) 
	
	Left = new scrButton(leftLocs, function() { }, scribble("[fa_middle][fa_center][menuFont][scale, 1]Left " + string(global.leftKey))) 
	
	Right = new scrButton(rightLocs, function() { }, scribble("[fa_middle][fa_center][menuFont][scale, 1]Right " + string(global.rightKey))) 
	
	array_push(controlsButtons, Controls, Up, Down, Left, Right);
#endregion

array_push(allButtons, menuOneButtons, controlsButtons) //runs based on global.menuState, 0 being menu 0 and so on.

for(var i = 0; i < array_length(allButtons); i++) {
	for(var j = 0; j < array_length(allButtons[i]); j++) {
		if (i == 0) allButtons[i][j].changeCurveData("mediumEase", 1/(100 + j * 20))
		if (i == 1) allButtons[i][j].changeCurveData("mediumEase", 1/(100 + j * 20))
	}
}

