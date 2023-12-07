/// @description Insert description here
// You can write your code in this editor
show = true;
depth = -200
relativeX = 273
relativeY = 73
_x = 0
_y = 0
relXCalc = function(num) {
	var DIF = relativeX - num
	return relativeX - DIF + _x
}
relYCalc = function(num) {
	var DIF = relativeY - num
	return relativeY - DIF + _y
}


