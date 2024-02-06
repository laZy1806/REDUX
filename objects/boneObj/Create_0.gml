/// @description setting damage and other variables
// You can write your code in this editor
scrCurveList(5)

angledistance = abs(DesAngle - anglestart);
disX = DesX - startx
disY = DesY - starty
movementCurve = function() { return 0 }
angleCurve = function() { return 0 }
heightCurve = function() { return 0 }
Height = 0
isActive = true
alarm[0] = 5
if (ROTATIONAL) sprite_index = boneMiddle
else sprite_index = boneBottom

changeHeight = function(_newheight = Height, _per = perHeight, _heightCurve = heightMethod) {
	///@func changeHeight(newheight, 1/perchanger, curveType)
	Height = startheight + heightdiff
	startheight = endheight
	endheight = _newheight
	perHeight = _per
	heightMethod = _heightCurve
	evaluate[2] = 0
}
changeAngle = function(_newAngle = anglestart, _per = perAngle, _angleCurve = angleMethod) {
	///@func changeAngle(newAngle, 1/per, curveType)
	anglestart = currentangle
	DesAngle = _newAngle
	perAngle = _per
	angleMethod = _angleCurve
	evaluate[1] = 0
}
changeDestination = function(_x = DesX, _y = DesY, _per = perMovement, _movementCurve = movementMethod, _startx = originX, _starty = originY) {
	///@func changeDestination(x, y, 1/per, curveType, [_startx], [_starty])
	startx = _startx
	starty = _starty
	DesX = _x
	DesY = _y
	disX = _x - startx
	disY = _y - starty
	perMovement = _per
	movementMethod = _movementCurve
	evaluate[0] = 0
}		
changeColor = function(_col = c_white){
	///@func changeColor(_col)
	image_blend = _col
}
methodController = function() {
	movementCurve = animcurve_get_channel(bonecurve, movementMethod)
	heightCurve = animcurve_get_channel(bonecurve, heightMethod)
	angleCurve = animcurve_get_channel(bonecurve, angleMethod)
}	
drawEvent = function(){
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1)
}	
stepFunction = function() {
	return 0	
}