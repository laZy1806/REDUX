scrCurveList(10)

x = 320
y = 320
ANG = 0 //a replacement for image angle 
TEST = 0
#region box vars
	RELATIVEX = 320
	RELATIVEY = 320

	WIDTHSTATIC = 570
	HEIGHTSTATIC = 120
	
	WIDTH = 570
	HEIGHT = 120

	WIDTHTO = 570
	HEIGHTTO = 120

	xTo = 0
	yTo = 0

	ANGLE = 0
	ANGLETO = 0
#endregion
#region curve data 
	movementCurve = function() { return 0 }
	angleCurve = function() { return 0 }
	heightCurve = function() { return 0 }
	perMovement = 0
	perAngle = 0
	perSize = 0
	movementMethod = "static"
	angleMethod = "static"
	heightMethod = "static"
#endregion
#region methods to call outside
	changeSize = function(width = WIDTHSTATIC, height = HEIGHTSTATIC, _spd = perSize, heightCurve = heightMethod) {
		///@func changeSize(width, height, 1/perchanger, curveType)
		WIDTH = WIDTHSTATIC
		HEIGHT = HEIGHTSTATIC
		WIDTHTO = abs(WIDTHSTATIC - width) * (sign(WIDTHSTATIC - width) * -1) //INVERSES SIGN
		HEIGHTTO = abs(HEIGHTSTATIC - height) * (sign(HEIGHTSTATIC - height) * -1) //INVERSES SIGN	
		perSize = _spd
		heightMethod = heightCurve
		resetCalcNumber(2)
	}
	changeAngle = function(newAngle = ANGLE, _spd = perAngle, angleCurve = angleMethod) {
		///@func changeAngle(newAngle, 1/per, curveType)
		ANG = ANGLE
		ANGLETO = abs(ANG - newAngle) * sign(ANG - newAngle) * -1 //INVERSES SIGN
		perAngle = _spd
		angleMethod = angleCurve
		resetCalcNumber(1)
	}
	changeDestination = function(_x = RELATIVEX, _y = RELATIVEY, _spd = perMovement, movementCurve = movementMethod) {
		///@func changeDestination(x, y, 1/per, curveType)
		RELATIVEX = x
		RELATIVEY = y
		xTo = abs(RELATIVEX - _x) * sign(RELATIVEX - _x) * -1
		yTo = abs(RELATIVEY - _y) * sign(RELATIVEY - _y) * -1
		perMovement = _spd
		movementMethod = movementCurve
		resetCalcNumber(0)
	}		
	methodController = function() {
		movementCurve = animcurve_get_channel(boxcurve, movementMethod)
		heightCurve = animcurve_get_channel(boxcurve, heightMethod)
		angleCurve = animcurve_get_channel(boxcurve, angleMethod)
	}	
	innerBoxDraw = function(){
		//draw_sprite_ext(battlepixel, 0, x, y, (5 + WIDTHSTATIC)/2, (5 + HEIGHTSTATIC)/2, -ANG, c_black, 1.0)	
	}
#endregion
left = instance_create_depth(0, 0, 0, fightWall, {
	sprite_index : leftWall,	
	image_blend : c_red,
	step_function : function() {
		SETWIDTH = (-fightBoxObj.WIDTHSTATIC/2) 
		image_yscale = abs(fightBoxObj.HEIGHTSTATIC + 12)/10
	}
})
top = instance_create_depth(0, 0, 0, fightWall, {
	sprite_index : topWall,	
	image_blend : c_yellow,
	step_function : function() {
		SETHEIGHT = -fightBoxObj.HEIGHTSTATIC/2
		image_xscale = abs(fightBoxObj.WIDTHSTATIC)/10
	}
})
bottom = instance_create_depth(0, 0, 0, fightWall, {
	sprite_index : bottomWall,	
	image_blend : c_blue,
	step_function : function() {
		SETHEIGHT = fightBoxObj.HEIGHTSTATIC/2	
		image_xscale = abs(fightBoxObj.WIDTHSTATIC)/10
	}
})
right = instance_create_depth(0, 0, 0, fightWall, {
	sprite_index : rightWall,	
	image_blend : c_purple,
	step_function : function() {
		SETWIDTH = (fightBoxObj.WIDTHSTATIC/2)
		image_yscale = abs(fightBoxObj.HEIGHTSTATIC + 12)/10
	}
})	
changeSize(190, 110, 1, "static")
//changeAngle(45, 1, "static")