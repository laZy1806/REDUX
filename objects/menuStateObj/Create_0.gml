/// @description Insert description here
// You can write your code in this editor
depth = 1
scrOutlineShaderinit()
menuSurf = -1;
buttonHover = 0;
alarm[0] = 1	//to set camera and not get an instance creation error
allButtons = array_create(0)
Timer = 60

//for debugging purposes
menuOneButtons = array_create(0)
controlsButtons = array_create(0)
#region start menu one buttons
	startLocs = 
	[
		[320, 180],
		[320, 180],
	]
	startTxt = scribble("[fa_middle][fa_center][menuFont][scale, 1]Start");
	Start = new scrButton(startLocs, function() {
		global.menuState = -1;
	},  startTxt)
	optionsLocs = 
	[
		[320, 220],
		[-320, 220],
	]
	optionsTxt = scribble("[fa_middle][fa_center][menuFont][scale, 1]Options");
	Options = new scrButton(optionsLocs, function() {
		
		}, optionsTxt
	)
	
	array_push(menuOneButtons, Start, Options)
#endregion
#region controls buttons/menu state 2 buttons
	controlsLocs = 
	[ [700, 140], [280, 90], ]
	controlsTxt = scribble("[fa_middle][fa_center][menuFont][scale, 1]Controls");
	Controls = new scrButton(controlsLocs, function() { }, controlsTxt) 
	
	upLocs = [ [700, 140], [320, 140],]
	Up = new scrButton(upLocs, function() { }, scribble("[fa_middle][fa_center][menuFont][scale, 1]Up")) 
	
	downLocs = [ [700, 140], [320, 190], ]
	Down = new scrButton(downLocs, function() { }, scribble("[fa_middle][fa_center][menuFont][scale, 1]Down")) 
	
	leftLocs = [ [700, 140], [320, 240], ]
	Left = new scrButton(leftLocs, function() { }, scribble("[fa_middle][fa_center][menuFont][scale, 1]Left")) 
	
	rightLocs = [ [700, 140], [320, 290], ]
	Right = new scrButton(rightLocs, function() { }, scribble("[fa_middle][fa_center][menuFont][scale, 1]Right")) 
	
	array_push(controlsButtons, Controls, Up, Down, Left, Right);
#endregion

array_push(allButtons, menuOneButtons, controlsButtons)

//Where all the menu changing functions are, and will be incorporated into the button pressedFuncs