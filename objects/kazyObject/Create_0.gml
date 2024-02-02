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
//alarm[0] = 1
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
	//draw_sprite_ext(legs, 1, x - 1, y + 73 * image_yscale, image_xscale, image_yscale, image_angle, c_white, 1)
	//draw_sprite_ext(legs, 0, x - 1, y + 73 * image_yscale, image_xscale, legSCALE, legROT, c_white, 1)
	//draw_sprite_ext(body, 0, bodyX, bodyY, image_xscale, image_yscale, image_angle, c_white, 1)
	//draw_sprite_ext(head, 0, headX, headY, image_xscale, image_yscale, image_angle, c_white, 1)	
	draw_sprite_ext(human, 0, x, y, 0.5, 0.5, 0, c_white, 1)
	
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
		Bone(global.Left, global.Right, global.Top, global.Top, 50, 50, false, 180, 180, , , , ,60)
		Bone(global.Right, global.Left, global.Floor, global.Floor, 50, 50, false , , , , , ,  ,60)
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

	},
}
atk2Data = {
	CYCLEENDINGS : [0.05, 0.7, 0.7, 0.8, 0.8, 1], //IN SECOND
	reverseBoneCycle : function(_desLeft, _desRight, _startLeft = global.Left, _startRight = global.Right) {
		///@func reverseBoneCycle(_desLeft, _desRight, _startLeft, _startRight)
		Bone(_desRight, _startRight, global.Floor,  global.Floor, 110, 110, false, , , "reverse", , , , 100)
		Bone(_desLeft, _startLeft, global.Floor,  global.Floor, 110, 110, false, , , "reverse", , , , 100)
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
				Bone(fightBoxObj.x, fightBoxObj.x, global.Floor - 50, global.Top - 5, 178, 178, true, 90, 90, "reverse", , , , 100)
			break;
			case 5:
				Bone(fightBoxObj.x, fightBoxObj.x, global.Top + 50, global.Floor + 5, 178, 178, true , 90, 90, "reverse", , , , 100)
			break;
		}
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		return noone;
	},
	CYCLEDRAW : function() { //THINGS DRAWN SPECIFICALLY FOR ATK

	},
}
atk3Data = {
	CYCLEENDINGS : [0.20, 0.55, 0.35, 0.75], //IN SECOND
	boneCycle : function(_heighttop, _heightbottom, _spd) {
		Bone(global.Left, global.Right, global.Floor, global.Floor, _heightbottom, _heightbottom, false, , , , , , ,_spd)
		Bone(global.Right, global.Left, global.Floor,  global.Floor, _heightbottom, _heightbottom, false , , , , , ,  ,_spd)
		Bone(global.Left, global.Right, global.Top, global.Top, _heighttop, _heighttop, false, 180, 180, , , , ,_spd)
		Bone(global.Right, global.Left, global.Top,  global.Top, _heighttop, _heighttop, false, 180, 180, , , , ,_spd)
	},
	CYCLECREATION : function() {
		switch global.AttackCycle {
			case 0:
				fightBoxObj.changeSize(190, , 1, "ease")
				soulObj.changeColor("Blue")
			break;
			case 1:
				boneCycle(60, 20, 70)
			break;
			case 2:
				boneCycle(35, 40, 65)
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

	},
}
atk4Data = {
//	CYCLEENDINGS : [1.5, 2, 2, 2], //IN SECOND
	CYCLEENDINGS : [1.5, 1, 1, 1, 1, 1, 1], //IN SECOND
	siner : 0,
	boneArray : array_create(0, 0),
	boneWave : function() {
		for (var i = 0; i < 16; i++) {
			array_push(boneArray, Bone((global.Left + 9) + (12 * i), (global.Left + 9) + (12 * i), global.Top - 20, global.Top - 20, 10, 30, , 180, 180, , "slowerEase", , 30, , , false))
			array_push(boneArray, Bone((global.Left + 9) + (12 * i), (global.Left + 9) + (12 * i), global.Floor + 20, global.Floor + 20, 10, 30, , , , , "slowerEase", , 30, , , false))
		}
	},
	CYCLECREATION : function() {
		switch global.AttackCycle {
			case 0:
				fightBoxObj.changeSize(190, , 1, "ease")
				boneWave()
			break;
			case 1:
				//Bone(global.Left, global.Right, global.Top, global.Top, 50, 50, false, 180, 180, , , , ,60)
				//Bone(global.Right, global.Left, global.Floor, global.Floor, 50, 50, false , , , , , ,  ,60)
				Gaster(147, -100, 228, 0, 40, 50, 335, 290, 1.2, 1.2)
			break;
			case 2:
				for(var i = 0; i < array_length(boneArray); i++) {
					boneArray[i].changeHeight(40)
				}
				//Bone(global.Right, global.Left, global.Top + 20, global.Top + 20, 30, 30, , 180, 180)
				var b1 = Bone(global.Right, global.Left, global.Floor,  global.Floor, 110, 110, false, , , "static", , , , 80)
				b1.changeColor(c_darkorange)
				
				ds_list_insert(global.boneList, 0, b1)	//this makes it to where the orange bone is drawn behind
				ds_list_delete(global.boneList, ds_list_size(global.boneList) - 1)
				Bone(global.Left, global.Right, global.Floor,  global.Floor, 60, 60, false, , , "static", , , , 80)
				
				camObj.zoomCamera(, , "ease", 1/30, 0.8)
				camObj.moveCamera(, 20, "ease", 1/30)
			break;
			case 3:
				//Bone(global.Left, global.Right, global.Top, global.Top, 50, 50, false, 180, 180, , , , ,60)
				//Bone(global.Right, global.Left, global.Floor, global.Floor, 50, 50, false , , , , , ,  ,60)
			
			break;
			case 4:
				for(var i = 0; i < array_length(boneArray); i++) {
					boneArray[i].changeHeight(50)
				}
				var b1 = Bone(global.Left, global.Right, global.Floor,  global.Floor, 110, 110, false, , , "static", , , , 80)
				b1.changeColor(c_aqua)
				
				ds_list_insert(global.boneList, 0, b1)
				ds_list_delete(global.boneList, ds_list_size(global.boneList) - 1)
				Bone(global.Right, global.Left, global.Top, global.Top, 40, 40, false, 180, 180, "static", , , , 80)		
				camObj.zoomCamera(, , "ease", 1/40, 0.7)
				camObj.moveCamera(, 20, "ease", 1/40)
			break;
			case 5:
				//Bone(global.Left, global.Right, global.Top, global.Top, 50, 50, false, 180, 180, , , , ,60)
				//Bone(global.Right, global.Left, global.Floor, global.Floor, 50, 50, false , , , , , ,  ,60)
			break;
			case 6:
				for(var i = 0; i < array_length(boneArray); i++) {
					boneArray[i].changeHeight(10, 1/45)
					boneArray[i].onTimer = true
					array_delete(boneArray, i, 1)
					i--
				}
				camObj.zoomCamera(, , "ease", 1/30, 0.4)
				camObj.moveCamera(, -75, "ease", 1/30)
			break;
		}
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		siner += 0.07
		for(var i = 0; i < array_length(boneArray); i++) {
			boneArray[i].disY = 5 * sin((i/2) + siner)
		}
		if global.AttackCycle >= 1 {
			
			
		}
	},
	CYCLEDRAW : function() { //THINGS DRAWN SPECIFICALLY FOR ATK

	},
}
atk5Data = {
	CYCLEENDINGS : [0.5, 2, 2, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5], //IN SECONDS
	cooldown : 5,
	boneCount: 0,
	topHEIGHT : 35,
	oddBoneArray: array_create(0, 0),
	CYCLECREATION : function() {
		switch global.AttackCycle {
			case 0:
				camObj.zoomCamera(, , "ease", 1/50, 1)
				camObj.moveCamera(, 0, "ease", 1/50)
				fightBoxObj.changeSize(230, , 1, "ease")
				soulObj.changeColor("Blue")
			break;
			case 1:
				for (var i = 0; i < 72; i++) {
					var STARTSPD = 85
					var DIST = 15
					var MOVEFACTOR = abs(global.Right - (global.Left - 15))/STARTSPD //is 255/85 = 3
					var SPDFACTOR = STARTSPD + ((DIST * i)/MOVEFACTOR)
					// its important that SPDFACTOR are just normal INT multiples, and not decimals, as it can causes weird shifting
					if (i % 7 != 0) {
						Bone(global.Left - 15, global.Right + (DIST * i), global.Top, global.Top, 35, 35, false, 180, 180, , , , , SPDFACTOR)
					}
					else {
						array_push(oddBoneArray, 
						Bone(global.Left - 15, global.Right + (DIST * i), global.Top, global.Top, 45, 45, false, 180, 180, , , , , SPDFACTOR), 
						Bone(global.Left - 15, global.Right + (DIST * i), global.Floor, global.Floor, 25, 25, false, 0, 0, , , , , SPDFACTOR))
					}
				}			
			break;
			case 2:
				Gaster(245, 245, 186, -50, 40, 50, 270, 270, 1.2, 1.2)
			break;
			case 3:
				Gaster(315, 315, 186, -50, 40, 50, 270, 270, 1.2, 1.2)
			break;
			case 5:
				soulObj.changeColor("Red")
				for(var i = 0; i < ds_list_size(global.boneList); i++) {
					var BONE = ds_list_find_value(global.boneList, i)
					if (BONE.endheight = 35) BONE.changeHeight(25, 1/25, "ease")
				}
			break;
		}
		if (global.AttackCycle >= 5 && global.AttackCycle <= 8) {
			for(var i = 0; i < array_length(oddBoneArray); i++) {
				if instance_exists(oddBoneArray[i]) {	//failsafe just incase cycle changes right as bone is deleted
					if (oddBoneArray[i].Height = 45) oddBoneArray[i].changeHeight(25, 1/15, "ease")
					else if (oddBoneArray[i].Height = 25) oddBoneArray[i].changeHeight(45, 1/15, "ease")	
				}
			}
			
		}
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		for (var i = 0; i < array_length(oddBoneArray); i++) if !instance_exists(oddBoneArray[i]) array_delete(oddBoneArray, i, 1)
	}, 
	CYCLEDRAW : function() { //THINGS DRAWN SPECIFICALLY FOR ATK

	},
}	
atk6Data = { // for 40 - 49 ish section
	CYCLEENDINGS : [0.5, 2, 1], //IN SECONDS
	countdown : 20,
	ARRAY : array_create(0),
	CYCLECREATION : function() {
		switch global.AttackCycle {
			case 0:
				soulObj.changeColor("Blue")
				fightBoxObj.changeSize(300, , 30, "ease")
			break;
			case 1:
				Bone(global.Left + 200, global.Right, global.Floor, global.Floor, 110, 110, , , , "staticToReverse", , , , 300)
			break;
			case 2:
				var HEIGHT = 160
				BoneRow(global.Left - 50, global.Left - 200, global.Top + 5, global.Top + 5, HEIGHT, HEIGHT, 8, 270, , "ease", , 180, , false)
				BoneRow(global.Right + 50, global.Right + 200, global.Floor, global.Floor, HEIGHT, HEIGHT, 8, 90, , "ease", , 180, , false)
			break;
		}
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		if global.AttackCycle = 2 {
			if (countdown != 0) countdown--
			else {
				if (array_length(ARRAY) % 2 = 0) array_push(ARRAY, Bone(global.Right, global.Left, global.Floor, global.Floor, 20, 20, , , , "static", , , , 80))	
				else {
					var B = Bone(global.Right, global.Left, global.Top, global.Top, 100, 100, , 180, 180, "static", , , , 80)
					B.changeColor(c_aqua)
					array_push(ARRAY, B)
				}
				countdown = 20
			}
		}
	}, 
	CYCLEDRAW : function() { //THINGS DRAWN SPECIFICALLY FOR ATK

	},
}		
atk7Data = { 
	CYCLEENDINGS : [4, 1], //IN SECONDS
	countdown : 25,
	isTop : -1,
	amount : 0,
	CYCLECREATION : function() {
		switch global.AttackCycle {
			case 0:
				fightBoxObj.changeSize(150, , 240, "static")
			break;
			case 1:
				
				fightBoxObj.changeDestination(200, , 1/30, "ease")
				fightBoxObj.changeSize(150, , 1, "ease")	// just incase box isnt scaled perfectly
				countdown = 60;
				amount = 0;
			break;
		}
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		var X = instance_find(fightBoxObj, 0).x
		var LEFT = X - 150
		var RIGHT = X + 150
		if ((global.AttackCycle = 1) && countdown = 0 && amount < 7) {
			if (isTop) {
				Bone(LEFT, RIGHT, global.Top, global.Top, 30, 60, , 180, 180, , , , 40, 70)
				Bone(RIGHT, LEFT, global.Top, global.Top, 30, 60, , 180, 180, , , , 40, 70)
			}
			else {
				Bone(LEFT, RIGHT, global.Floor, global.Floor, 30, 60, , , , , , , 40, 70)
				Bone(RIGHT, LEFT, global.Floor, global.Floor, 30, 60, , , , , , , 40, 70)
			}
			isTop *= -1
			countdown = 25
			amount++
		}
		if ((global.AttackCycle = 2) && countdown = 0) {
			Bone(global.Right, global.Left, global.Top, global.Top, 50, 50, , 180, 180, , , , 40, 70)
			Bone(global.Left, global.Right, global.Floor, global.Floor, 50, 50, , , , , , , 40, 70)
			countdown = 40
		}
		countdown--;
	}, 
	CYCLEDRAW : function() { //THINGS DRAWN SPECIFICALLY FOR ATK
		
	},
}		
AttackArray = [
	introData,
	atk1Data,
	atk2Data,
	atk3Data,
	atk4Data,
	atk5Data,
	atk6Data,
	atk7Data
]
