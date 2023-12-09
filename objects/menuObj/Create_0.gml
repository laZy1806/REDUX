/// @description Insert description here
// You can write your code in this editor
curveFuncs = curveList(10)
menuOneButtons = array_create(3, 0)

startLocs = 
[
	[100, 100],
	[200, 200],
	[300, 300]
]
Start = new Button(startLocs, function(){
		show_debug_message("dog")
	},
	battlepixel
)
Start.isActive = true