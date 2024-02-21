/// @description Insert description here
// You can write your code in this editor
depth = 1
scrOutlineShaderinit()
menuSurf = -1;
buttonHover = 0;
allButtons = array_create(0)
Timer = 60
menuOneButtons = array_create(0)
startLocs = 
[
	[100, 100],
	[200, 200],
	[200, 400]
]
OptionsLocs = 
[
	[90, 140],
	[190, 240],
	[290, 340]
]
startTxt = scribble("[menuFont][scale, 1]Start");
Start = new scrButton(startLocs, function() {
			
	},  startTxt)
optionsTxt = scribble("[menuFont][scale, 1]Options");
Options = new scrButton(OptionsLocs, function() {
			
	}, optionsTxt
)

array_push(menuOneButtons, Start)
array_push(allButtons, menuOneButtons, menuOneButtons, menuOneButtons)


show_debug_message(array_length(allButtons))
//not sure why this doesnt work, functions correctly returns 0 and 1, but doesnt evaluate in step
isMoving = function() {
	for(var i = 0; i < array_length(allButtons); i++) {
		for(var j = 0; j < array_length(allButtons[i]); j++) {
			if (allButtons[i][j].isCurveFinished(0) = false) return true
		}
	}
	return false;
}
