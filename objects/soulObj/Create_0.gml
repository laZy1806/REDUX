move = use_tdmc(, 0)
isRed = true
jumpKey = "W"
isJumped = false
isSlam = false
isOnFloor = false
xSlam = 0
ySlam = 0
slamSpd = 0.02
slamIncr = slamSpd
isGrav = true
grav = 0
Color = "Red"
swapCooldown = 10
isFailsafe = false
Slam = function(_xSpd = 0, _ySpd = 0, _spd = slamSpd){
	///@func Slam(_xSpd, _ySpd, _spd)	
	xSlam = _xSpd
	ySlam = _ySpd
	slamSpd = _spd
	slamIncr = 0
	image_angle = point_direction(x, y, x + _xSpd, y + _ySpd) + 90
}
changeColor = function(_col){
	Color = _col
	swapCooldown = 10
	return _col
}
changeLoc = function(_x, _y){
	x = _x
	y = _y
}
image_speed = 0
image_angle = 0
sprite_index = soulSPRed