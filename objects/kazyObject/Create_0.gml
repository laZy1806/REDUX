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
	CYCLETIMINGS : [4, 4, 4, 3, 1], //IN SECOND
	CYCLECREATION : function() {
		if (global.AttackCycle = 4) {
			Gaster(460, 640, 190, -50, 30, 55, 225, 225, 1.5, 1.6, 20)
			show_debug_message(audio_sound_get_track_position(attackObject.MAINFIGHT))
		}
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
	CYCLETIMINGS : [0.75, 0.75, 0.75, 0.75, 0.75], //IN SECOND
	boneCycle : function() {
		Bone(global.Left, global.Right, global.Top, global.Top, 45, 45, false, 180, 180)
		Bone(global.Right, global.Left, global.Floor,  global.Floor, 55, 55, false)
	},
	CYCLECREATION : function() {
		if (global.AttackCycle < 4) boneCycle()
		if (global.AttackCycle = 1) {
			Gaster(139, -50, 320, 320, 40, 55, 0, 0, 1.4, 1.3, 10)
		}
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
	CYCLETIMINGS : [0.25, 0.7, 0.7, 0.7, 0.7], //IN SECOND
	reverseBoneCycle : function(_desLeft, _desRight) {
		///@func reverseBoneCycle(_desLeft, _desRight)
		Bone(_desRight, global.Right, global.Floor,  global.Floor, 110, 110, false, , , "reverse", , , , 90)
		Bone(_desLeft, global.Left, global.Floor,  global.Floor, 110, 110, false, , , "reverse", , , , 90)
	},
	CYCLECREATION : function() {
		var r = global.Right, l = global.Left
		switch global.AttackCycle {
			case 0:
				fightBoxObj.changeSize(190, , 1/20, "ease")
			break;
			case 1:
				reverseBoneCycle(l + 75, r - 75)
			break;
			case 2:
				reverseBoneCycle(l + 50, r - 100)
			break;
			case 3:
				reverseBoneCycle(l + 100, r - 50)
			break;
		}
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		return noone;
	},
	CYCLEDRAW : function() { //THINGS DRAWN SPECIFICALLY FOR ATK
		switch global.AttackCycle {
			case 0:
				
			break;
		}
	},
}
AttackArray = [
	introData,
	atk1Data,
	atk2Data
]
