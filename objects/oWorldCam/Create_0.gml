/// @description setup camera
// You can write your code in this editor
scrCurveList(1);
cam = view_camera[0];
isActive = true;
spd = 0.03

var instID = instance_find(playerObj, 0);
_x = instID.x //- camera_get_view_width(cam) * 0.5
_y = instID.y //- camera_get_view_height(cam) * 0.5

//The first value will be the calculated Width, and the second one will be the additive width/height.
Width = array_create(2, 640);
Height = array_create(2, 480);

xShift = 0;
yShift = 0;

zoomMethod = "static";
zoomPercent = 1/60;
zoomMultiplier = 1;
evaluate[0] = 1

setZoom = function(_zoomMultiplier, _zoomMethod) {
	resetCalcNumber(0);
	Width[1] = 640 / _zoomMultiplier
	Height[1] = 480 / _zoomMultiplier
}