/// @description setup camera
// You can write your code in this editor
scrCurveList(5)
view_enabled = true;
view_visible[0] = true;

default_camWidth = 640
default_camHeight = 480
battlecam = camera_create_view(0, 0, default_camWidth, default_camHeight);
view_set_camera(0, battlecam)

RESETFUNC = function() {
	supposedX = 0
	supposedY = 0	
	
	camX = 0
	camY = 0
	ranX = 0
	ranY = 0
	
	shake = 0	
	
	camDesX = 0
	camDesY = 0
	zoom = 1
	
	xZoomOffset = 640
	yZoomOffset = 480
	
	DesWidth = 0
	DesHeight = 0
	
	Width = 640
	Height = 480
	
	supposedWidth = 640
	supposedHeight = 480
	
	movementMethod = "static"
	zoomMethod = "static"
	shakeMethod = "shakeStatic"
	
	movePercent = 1/60
	zoomPercent = 1/60
	shakePercent = 1/20
	
	evaluate[0] = 1
	evaluate[1] = 1
	evaluate[2] = 1
	
	stepFunction = noone
	RESET = false
	camera_set_view_pos(battlecam, camX, camY);
	camera_set_view_size(battlecam, Width, Height);
}
RESETFUNC()
moveCamera = function(_x = supposedX, _y = supposedY, _meth = movementMethod, _spd = movePercent) {
///@func moveCamera(_x, _y, method, spd)
resetCalcNumber(0)
	supposedX = camX
	supposedY = camY
	
	camDesX = _x - camX	
	camDesY = _y - camY	
	
	movementMethod = _meth
	movePercent = _spd
}
zoomCamera = function(_width = supposedWidth, _height = supposedHeight, meth = zoomMethod, _spd = zoomPercent, _zoom = noone) {
///@func zoomCamera(_width, _height, method, spd, [zoomMulti])
resetCalcNumber(1)
	supposedWidth = Width
	supposedHeight = Height
	
	supposedXOffset = xZoomOffset
	supposedYOffset = yZoomOffset
	
	DesWidth = zoom = noone ? _width - Width : (640 * _zoom) - Width
	DesHeight = zoom = noone ? _height - Height : (480 * _zoom) - Height
	
	zoomMethod = meth
	zoomPercent = _spd
}
shakeCamera = function(_spd = shakePercent, _amount = shake, _meth = shakeMethod){
///@func shakeCamera(_spd, _amount, _meth)
resetCalcNumber(2)
	shakePercent = _spd
	shake = _amount
	shakeMethod = _meth
}