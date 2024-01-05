/// @description Insert description here
// You can write your code in this editor
scrCurveList()
camChangeNum = 0;
cutCam = camera_create_view(oWorldCam.x, oWorldCam.y, 640, 480)

view_set_camera(view_camera[0], cutCam)
zoom_multi = 1
camX = oWorldCam.x;
camY = oWorldCam.y;
cam_storedX = oWorldCam.x;
cam_storedY = oWorldCam.y;
camDesX = camX
camDesY = camY
newX = camX;
newY = camY;
lerpvalue = 0.075
modi = 0
Width = 640
Height = 480
changeNum = 0;
cordCalculations = function(zoom, _x, _y) {
///@func cordCalculations(zoom, x, y)	
	zoom_multi = zoom
	camDesX = cam_storedX + _x + ((Width - zoom * 640))/2			//+ 640 - (640 * zoom)
	camDesY = cam_storedY + _y + ((Height - zoom * 480))/2			//+ 480 - (480 * zoom)
}
CorridorChanges = function(cycle) {
///@func CorridorChanges(cycle)
	switch changeNum {
		case 0:
			cordCalculations(0.85, 0, 0)
			corridorShaders.cutsceneShaderTrigger = true
		break;	
		case 1:
			corridorDrawObj.fadeBoolean = true
			//vignette used to be here
		break;	
		case 2:
			//cordCalculations(0.7, 168, 0)
			cordCalculations(0.85, 40, 0)
			with corridorDrawObj event_perform(ev_alarm, 0)
		break;
		case 3:
			//cordCalculations(0.7, -168*2, 0)
			cordCalculations(0.85, -80, 0)
		break;
		case 4:
			cordCalculations(1, 40, 0)
		break;
	}
}