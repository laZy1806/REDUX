move = use_tdmc()
isRed = true
jumpKey = "W"
isJumped = false
isSlam = false
isGrav = true
grav = 0
Color = "Blue"
verticalColChecker = function(){
	if move.againstWall.vert != 0 {	
		isJumped = false;
		BLUE_Gravity = 0;
	}
	else isJumped = true;
	
}
horizontalColChecker = function(){
	if move.againstWall.hori != 0 {	
		isJumped = false;
		BLUE_Gravity = 0;
	}
	else isJumped = true;
	
}


changeColor = function(_col){
	Color = _col
	return _col
}
image_speed = 0
image_angle = 90