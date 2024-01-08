/// @description Insert description here
// You can write your code in this editor
//ORIGIN IS CENTER OF BODY
#region anim vars
	image_xscale = 2
	image_yscale = 2
	headX = 0
	headY = 0

	bodyX = 0
	bodyY = 0

	legROT = 0
	legSCALE = 0

	SPEED = 1/100
	SPDCALC = 0
#endregion
alarm[0] = 1
idleState = function() {
	
	var headcurveX = animcurve_get_channel(headCurve, "X")
	var headcurveY = animcurve_get_channel(headCurve, "Y")
	
	var bodycurveX = animcurve_get_channel(bodyCurve, "X")
	var bodycurveY = animcurve_get_channel(bodyCurve, "Y")
	
	var legcurveScale = animcurve_get_channel(legCurve, "SCALE")
	var legcurveROT = animcurve_get_channel(legCurve, "ROT")
	
	var _x = x - 2.5 * image_xscale // x origin
	var _y = y - 34 * image_yscale// y origin
	
	headX = _x + ((1 * image_xscale) * animcurve_channel_evaluate(headcurveX, SPDCALC))
	headY = _y + ((1.5 * image_yscale) * animcurve_channel_evaluate(headcurveY, SPDCALC)) 
	
	bodyX = x + ((1 * image_xscale) * animcurve_channel_evaluate(bodycurveX, SPDCALC))
	bodyY = y + ((1.5 * image_yscale) * animcurve_channel_evaluate(bodycurveY, SPDCALC)) 
	
	legSCALE = image_yscale - ((0.03 * image_yscale) * animcurve_channel_evaluate(legcurveScale, SPDCALC))
	legROT = 0 - ((0.5 * image_xscale) * animcurve_channel_evaluate(legcurveROT, SPDCALC))
}
currentAnim = idleState
drawEvent = function() {

	draw_sprite_ext(legs, 1, x - 1, y + 73 * image_yscale, image_xscale, image_yscale, image_angle, c_white, 1)
	draw_sprite_ext(legs, 0, x - 1, y + 73 * image_yscale, image_xscale, legSCALE, legROT, c_white, 1)
	draw_sprite_ext(body, 0, bodyX, bodyY, image_xscale, image_yscale, image_angle, c_white, 1)
	draw_sprite_ext(head, 0, headX, headY, image_xscale, image_yscale, image_angle, c_white, 1)
		
}
introData = {
	CYCLETIMINGS : [4, 4, 4, 4], //IN SECOND
	CYCLECREATION : function() {
			
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		return noone;
	},
	CYCLEDRAW : function() {	//THINGS DRAWN SPECIFICALLY FOR ATK
		switch global.AttackCycle {
			case 0:
				
			break;
		}
	},
}
atk1Data = {
	CYCLETIMINGS : [0.7, 0.7, 0.7, 0.7, 0.7], //IN SECOND
	boneCycle : function() {
		Bone(global.Left, global.Right, global.Top, global.Top, 30, 30, false, 180, 180)
		Bone(global.Right, global.Left, global.Floor,  global.Floor, 30, 60, false)
	},
	CYCLECREATION : function() {
		boneCycle()
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		return noone;
	},
	CYCLEDRAW : function() {	//THINGS DRAWN SPECIFICALLY FOR ATK
		switch global.AttackCycle {
			case 0:
				
			break;
		}
	},
}
atk2Data = {
	CYCLETIMINGS : [1, 2, 3, 4, 5], //IN SECONDS
	CYCLECREATION : function() {
		show_debug_message(current_second)
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		return noone;
	},
	CYCLEDRAW : function() {	//THINGS DRAWN SPECIFICALLY FOR ATK
		if global.AttackCycle = 1 {
			draw_text(300, 300, "hello")	
		}
		return noone;
	},
}
AttackArray = [
	//introData,
	atk1Data,
	atk2Data
]
