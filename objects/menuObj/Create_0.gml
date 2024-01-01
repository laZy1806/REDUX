/// @description Insert description here
// You can write your code in this editor
menuOneButtons = array_create(3, 0)
startLocs = 
[
	[100, 100],
	[200, 200],
	[300, 300]
]
startTxt = scribble("[outlinemenuFont][scale, 1]Start");
//startTxt = sp_ACT
Start = new Button(startLocs, function() {
		show_debug_message("dog")
	}, startTxt
)
Start.isActive = true
application_surface_draw_enable(true)


