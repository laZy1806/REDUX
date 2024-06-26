/// @description setup camera
// You can write your code in this editor
scrCurveList(2);
cam = view_camera[0];
isActive = true;
spd = 0.1

var instID = instance_find(playerObj, 0);
_x = instID.x //- camera_get_view_width(cam) * 0.5
_y = instID.y //- camera_get_view_height(cam) * 0.5

xShift = 0;
yShift = 0;

zoomMethod = "ease";
zoomPercent = 0;
zoomMulti = 1;

evaluate[0] = 1
evaluate[1] = 1

DesWidth = 0
DesHeight = 0
	
Width = 640
Height = 480
	
supposedWidth = 640
supposedHeight = 480

setZoom = function(meth = zoomMethod, _spd = zoomPercent, _zoom = zoomMulti) {
///@func setZoom(method, spd, zoomMulti)
resetCalcNumber(0)
resetCalcNumber(1)

	supposedWidth = Width
	supposedHeight = Height
	zoomMulti = _zoom
	
	DesWidth = (640 * zoomMulti) - Width
	DesHeight = (480 * zoomMulti) - Height
	
	zoomMethod = meth
	zoomPercent = _spd
	
}