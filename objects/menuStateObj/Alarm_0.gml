/// @description Insert description here
// You can write your code in this editor
instance_find(playerObj, 0).Frozen  = true;
var cam = instance_find(oWorldCam, 0) 
var _lay = layer_get_id("Stationary")
var ARR = layer_get_all_elements(_lay)
for(var i = 0; i < array_length(ARR); i++) {
	if i != 1 layer_sprite_alpha(ARR[i], 0);
}
with cam {
	xShift = -150;
	yShift = -10;
	spd = 0.1;
	setZoom("ease", 1, 1);
}
