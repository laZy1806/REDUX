/// @description Insert description here
// You can write your code in this editor
instance_find(playerObj, 0).Frozen  = true;
var cam = instance_find(oWorldCam, 0) 
with cam {
	xShift = 0;
	yShift = -90;
	spd = 0.1;
}