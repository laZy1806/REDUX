curveList(10)
dog = 1
x = 320
y = 240
RELATIVEX = 320
RELATIVEY = 240

WIDTHSTATIC = 40
HEIGHTSTATIC = 40

WIDTH = 100
HEIGHT = 100

WIDTHTO = 0
HEIGHTTO = 0

xTo = 0
yTo = 0

ANGLE = 0
ANGLETO = 0

movementCurve = function() { return 0 }
angleCurve = function() { return 0 }
heightCurve = function() { return 0 }
perMovement = 0
perAngle = 0
perSize = 0
movementMethod = "static"
angleMethod = "static"
heightMethod = "static"

left = instance_create_depth(0, 0, 0, fightWall, {
	sprite_index : leftWall,	
	step_function : function() {
		SETWIDTH = (-fightBoxObj.WIDTHSTATIC/2) 
		image_yscale = abs(fightBoxObj.HEIGHTSTATIC)/40
	}
})
top = instance_create_depth(0, 0, 0, fightWall, {
	sprite_index : topWall,	
	step_function : function() {
		SETHEIGHT = -fightBoxObj.HEIGHTSTATIC/2
		image_xscale = abs(fightBoxObj.WIDTHSTATIC + abs(SETWIDTH*2))/40
	}
})
bottom = instance_create_depth(0, 0, 0, fightWall, {
	sprite_index : bottomWall,	
	step_function : function() {
		SETHEIGHT = fightBoxObj.HEIGHTSTATIC/2	
		image_xscale = abs(fightBoxObj.WIDTHSTATIC + abs(SETWIDTH*2))/40 
	}
})
right = instance_create_depth(0, 0, 0, fightWall, {
	sprite_index : rightWall,	
	step_function : function() {
		SETWIDTH = (fightBoxObj.WIDTHSTATIC/2)
		image_yscale = abs(fightBoxObj.HEIGHTSTATIC)/40
	}
})	
changeSize = function(width = WIDTHTO, height = HEIGHTTO, per = perSize, heightCurve = heightMethod) {
	///@func changeSize(width, height, 1/perchanger, curveType)

	WIDTH = WIDTHSTATIC
	HEIGHT = HEIGHTSTATIC
	WIDTHTO = abs(WIDTHSTATIC - width) * sign(WIDTHSTATIC - width) * -1 //INVERSES SIGN
	HEIGHTTO = abs(HEIGHTSTATIC - height) * sign(HEIGHTSTATIC - height) * -1 //INVERSES SIGN	
	perSize = per
	heightMethod = heightCurve
	resetCalcNumber(2)
}
changeAngle = function(newAngle = ANGLE, per = perAngle, angleCurve = angleMethod) {
	///@func changeAngle(newAngle, 1/per, curveType)
	image_angle = ANGLE
	ANGLETO = abs(image_angle - newAngle) * sign(image_angle - newAngle) * -1 //INVERSES SIGN
	perAngle = per
	angleMethod = angleCurve
	resetCalcNumber(1)
}
changeDestination = function(_x = RELATIVEX, _y = RELATIVEY, 
per = perMovement, movementCurve = movementMethod) {
	///@func changeDestination(x, y, 1/per, curveType)
	RELATIVEX = x
	RELATIVEY = y
	xTo = abs(RELATIVEX - _x) * sign(RELATIVEX - _x) * -1
	yTo = abs(RELATIVEY - _y) * sign(RELATIVEY - _y) * -1
	perMovement = per
	movementMethod = movementCurve
	resetCalcNumber(0)
}		
methodController = function() {
	movementCurve = animcurve_get_channel(boxcurve, movementMethod)
	heightCurve = animcurve_get_channel(boxcurve, heightMethod)
	angleCurve = animcurve_get_channel(boxcurve, angleMethod)
}	
innerBoxDraw = function(){
	
	draw_sprite_ext(battlepixel, 0, x, y, WIDTHSTATIC/2, HEIGHTSTATIC/2, -image_angle, c_black, 1)	

}