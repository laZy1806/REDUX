/// @description setup camera
// You can write your code in this editor
curveList(5)
view_enabled = true;
view_visible[0] = true;

TEST = 1

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
	
	DesWidth = 0
	DesHeight = 0
	
	Width = 640
	Height = 480
	
	supposedWidth = 640
	supposedHeight = 480
	
	movementMethod = "static"
	zoomMethod = "static"
	movePercent = 1/60
	zoomPercent = 1/60
	
	RESET = false
	camera_set_view_pos(battlecam, camX, camY);
	camera_set_view_size(battlecam, Width, Height);
}
RESETFUNC()
moveCamera = function(_x = supposedX, _y = supposedY, meth = movementMethod) {
///@func moveCamera(_x, _y, method)
	supposedX = camX
	supposedY = camY
	camDesX = _x - camX	
	camDesY = _y - camY	
	movementMethod = meth
	resetCalcNumber(0)
}
zoomCamera = function(_zoom = 0, _width = supposedWidth, _height = supposedHeight, meth = zoomMethod) {
///@func zoomCamera(zoom, _width, _height, method)
resetCalcNumber(1)
	if _zoom != 0 {
		supposedWidth = Width
		supposedHeight = Height
		DesWidth = (640 * _zoom) - Width
		DesHeight = (480 * _zoom) - Height
		zoomMethod = meth
		return 0
	}
	supposedWidth = Width
	supposedHeight = Height
	DesWidth = _width - Width
	DesHeight = _height - Height
	zoomMethod = meth
}
shakeCamera = function(_spd, _amount){
///@func shakeCamera(_spd, _amount)
resetCalcNumber(1)
	shake = _amount
	shake = _amount
}