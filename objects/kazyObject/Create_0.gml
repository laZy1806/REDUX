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
TEST = {
	CYCLEENDINGS : [0.7, 0.7, 0.7, 0.7, 0.7, 0.5, 0.5, 0.5, 0.5, 0.5], //IN SECOND
	CYCLECREATION : function() {
		show_debug_message(audio_sound_get_track_position(attackObject.MAINFIGHT))
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		//show_debug_message(audio_sound_get_track_position(attackObject.MAINFIGHT))
	},
	CYCLEDRAW : function() {	//THINGS DRAWN SPECIFICALLY FOR ATK
		switch global.AttackCycle {
			case 0:
				
			break;
		}
	},
}
introData = {
	CYCLEENDINGS : [4, 4, 4, 3, 1], //IN SECOND
	CYCLECREATION : function() {
		if (global.AttackCycle = 4) {
			Gaster(460, 640, 190, -50, 50, 55, 225, 225, 1.5, 1.6, 20)
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
	CYCLEENDINGS : [0.65, 0.65, 1], //IN SECOND
	boneCycle : function() {
		Bone(global.Left, global.Right, global.Top, global.Top, 45, 45, false, 180, 180, , , , ,60)
		Bone(global.Right, global.Left, global.Floor,  global.Floor, 50, 50, false , , , , , ,  ,60)
	},
	CYCLECREATION : function() {
		if (global.AttackCycle < 3) boneCycle()
		if (global.AttackCycle = 1) {
			Gaster(139, -50, 350, 350, 55, 60, 0, 0, 1.4, 1.3, 10) //TOO DIFFICULT
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
	CYCLEENDINGS : [0.05, 0.7, 0.7, 0.8, 0.8, 1], //IN SECOND
	reverseBoneCycle : function(_desLeft, _desRight, _startLeft = global.Left, _startRight = global.Right) {
		///@func reverseBoneCycle(_desLeft, _desRight, _startLeft, _startRight)
		Bone(_desRight, _startRight, global.Floor,  global.Floor, 110, 110, false, , , "reverse", , , , 110)
		Bone(_desLeft, _startLeft, global.Floor,  global.Floor, 110, 110, false, , , "reverse", , , , 110)
	},
	CYCLECREATION : function() {
		switch global.AttackCycle {
			case 0:
				fightBoxObj.changeSize(190, , 1/30, "ease")
			break;
			case 1:
				reverseBoneCycle(fightBoxObj.x - 30, fightBoxObj.x + 30, fightBoxObj.x - 100, fightBoxObj.x + 100)
			break;
			case 2:
				reverseBoneCycle(global.Left + 45, global.Right - 95)
			break;
			case 3:
				reverseBoneCycle(global.Left + 95, global.Right - 45)
			break;
			case 4:
				Bone(global.Right, global.Right, global.Floor - 50, global.Top - 5, 190, 190, , 90, 90, "reverse", , , , 100)
			break;
			case 5:
				Bone(global.Right, global.Right, global.Top + 50, global.Floor + 5, 190, 190, , 90, 90, "reverse", , , , 100)
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
atk3Data = {
	CYCLEENDINGS : [0.15, 0.6, 0.4, 0.8], //IN SECOND
	boneCycle : function(_heighttop, _heightbottom, _spd) {
		Bone(global.Left, global.Right, global.Floor, global.Floor, _heightbottom, _heightbottom, false, , , , , , ,_spd)
		Bone(global.Right, global.Left, global.Floor,  global.Floor, _heightbottom, _heightbottom, false , , , , , ,  ,_spd)
		Bone(global.Left, global.Right, global.Top, global.Top, _heighttop, _heighttop, false, 180, 180, , , , ,_spd)
		Bone(global.Right, global.Left, global.Top,  global.Top, _heighttop, _heighttop, false, 180, 180, , , , ,_spd)
	},
	CYCLECREATION : function() {
		switch global.AttackCycle {
			case 0:
				soulObj.changeColor("Blue")
			break;
			case 1:
				boneCycle(60, 20, 70)
			break;
			case 2:
				boneCycle(35, 40, 60)
				Gaster(150, -50, 355, 355, 40, 45, 0, 0, 1.85, 1.35)
			break;
			case 3:
				soulObj.changeColor("Red")
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
atk4Data = {
	CYCLEENDINGS : [10, 0.4], //IN SECOND
	siner : 0,
	boneArray : array_create(0, 0),
	boneWave : function() {
		for (var i = 0; i < 20; i++) {
			var b1 = Bone(global.Left + (12 * i), global.Left + (12 * i), global.Top - 20, global.Top - 20, 20, 40, , 180, 180, , "ease", , 60)
			var b2 = Bone(global.Left + (12 * i), global.Left + (12 * i), global.Floor + 20, global.Floor + 20, 20, 40, , , , , "ease", , 60)
			b1.onTimer = false
			b2.onTimer = false
			array_push(boneArray, b1, b2)
		}
	},
	CYCLECREATION : function() {
		switch global.AttackCycle {
			case 0:
				boneWave()
			break;
		}
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		siner += 0.07
		for(var i = 0; i < array_length(boneArray); i++) {
			boneArray[i].disY = 5 * sin((i/2) + siner)
		}
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
	atk2Data,
	atk3Data,
	atk4Data
]
