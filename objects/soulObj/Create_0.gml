move = use_tdmc(, 0, 0)
isRed = true
jumpKey = "W"
isJumped = false
isSlam = false
xSlam = 0
ySlam = 0
slamSpd = 0.02
slamIncr = slamSpd
isGrav = true
grav = 0
Color = "Red"
swapCooldown = 10
isFailsafe = true

verticalColChecker = function(){
	if move.againstWall.vert != 0 isJumped = false
}
horizontalColChecker = function(){
	if move.againstWall.hori != 0 isJumped = false
}
Slam = function(_xdir = 0, _ydir = 0, _spd = slamSpd){
	///@func (_xdir, _ydir, _spd)	
	xSlam = _xdir
	ySlam = _ydir
	slamSpd = _spd
	slamIncr = 0
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