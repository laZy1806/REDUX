/// @description Insert description here
// You can write your code in this editor
menuOneButtons = array_create(3, 0)
startLocs = 
[
	[100, 100],
	[200, 200],
	[300, 300]
]

startTxt = new scribbleCreator("i love turtles", "menuFont", 1, c_white)
TEST = 0

Start = new Button(startLocs, function() {
		show_debug_message("dog")
	}, startTxt.Draw
)
Start.isActive = true
