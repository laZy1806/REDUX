/// @description Insert description here
// You can write your code in this editor
depth = 1
scrOutlineShaderinit()
menuSurf = -1;
#region Menu One Data
	menuOneButtons = array_create(3, 0)
	startLocs = 
	[
		[100, 100],
		[200, 200],
		[300, 300]
	]
	OptionsLocs = 
	[
		[90, 140],
		[190, 240],
		[290, 340]
	]
	startTxt = scribble("[menuFont][scale, 1]Start");
	Start = new scrButton(startLocs, function() {
			
		}, startTxt
	)
	optionsTxt = scribble("[menuFont][scale, 1]Options");
	Options = new scrButton(OptionsLocs, function() {
			
		}, optionsTxt
	)
	Start.isActive = true
	Options.isActive = true
#endregion









