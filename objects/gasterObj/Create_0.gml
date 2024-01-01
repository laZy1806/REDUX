/// @description vars 
// You can write your code in this editor
curveList(4)
Beam = instance_create_depth(x, y, depth, blasterObj, { toFollow : id, Hide : true });
drawEvent = function(){
	with id draw_self()
	with Beam draw_self()
}
animCounter = 10
animDivider = floor(Timer / 3)
_x = 0
_y = 0
BeamAlp = 1