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
	
//put this function into some kind of global object.	
diffCalculator = function(_distTO, _spd, _distNormal = (global.Right - global.Left)){
	///@func diffCalculator(_distTO, _spd, _distNormal)
	var DIST = _distNormal
	var perFrame = (DIST)/_spd //of original distance
	return _distTO/perFrame					//(DIST + (abs(DIST - _distTO)))/perFrame
}

TEST = {
	CYCLEENDINGS : [0.7, 0.7, 0.7, 0.7, 0.7, 0.5, 0.5, 0.5, 0.5, 0.5], //IN SECOND
	CYCLECREATION : function() {
		//Bone(320, 320, global.Floor, global.Floor, 40, 40, , , , , , , , , , false)
		if (global.AttackCycle = 0) {
			//soulObj.changeColor("Blue")
		}
		if (global.AttackCycle = 1) {
			soulObj.changeColor("Blue")
			//soulObj.Slam(0, -5, 0.03)
		}
		if (global.AttackCycle = 3) {
			//soulObj.Slam(0, 5, 0.03)
		}
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
			var one = Bone((global.Left + 9) + (12 * i), (global.Left + 9) + (12 * i), global.Top - 20, global.Top - 20, 10, 30, , 180, 180, , "slowerEase", , 30, , , false)
			var two = Bone((global.Left + 9) + (12 * i), (global.Left + 9) + (12 * i), global.Floor + 20, global.Floor + 20, 10, 30, , , , , "slowerEase", , 30, , , false)
			array_push(boneArray, one)
			array_push(boneArray, two)
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
				camObj.zoomCamera(, , "ease", 1/90, 1)
				camObj.moveCamera(, 0, "ease", 1/90)
				fightBoxObj.changeSize(230, , 1, "ease")
				soulObj.changeColor("Blue")
				shakeBloom(2, 30, 1, 0.03)
			break;
			case 1:
				for (var i = 0; i < 72; i++) {
					var STARTSPD = 87
					var DIST = 15
					var MOVEFACTOR = abs(global.Right - (global.Left - 30))/STARTSPD //is 255/87 = 3 ish
					var SPDFACTOR = STARTSPD + ((DIST * i)/MOVEFACTOR)
					// its important that SPDFACTOR are just normal INT multiples, and not decimals, as it can causes weird shifting
					if (i % 7 != 0) {
						Bone(global.Left - 30, global.Right + (DIST * i), global.Top, global.Top, 35, 35, false, 180, 180, , , , , SPDFACTOR)
					}
					else {
						array_push(oddBoneArray, 
						Bone(global.Left - 30, global.Right + (DIST * i), global.Top, global.Top, 45, 45, false, 180, 180, , , , , SPDFACTOR), 
						Bone(global.Left - 30, global.Right + (DIST * i), global.Floor, global.Floor, 25, 25, false, 0, 0, , , , , SPDFACTOR))
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
	CYCLEENDINGS : [0.5, 0.4, 0.6, 0.6, 0.6, 0.85, 0.4, 0.6, 0.25, 0.25, 0.25, 4], //IN SECONDS
	countdown : 20,
	calc : diffCalculator, 
	CYCLECREATION : function() {
		switch global.AttackCycle {
			case 0:
				soulObj.changeColor("Blue")
				fightBoxObj.changeSize(300, , 30, "ease")
			break;
			case 1:
				Bone(global.Left + 200, global.Right, global.Floor, global.Floor, 110, 110, , , , "staticToReverse", , , , 180)
			break;
			case 2:
				Bone(global.Right, global.Left, global.Floor, global.Floor, 30, 30, , , , , , , , calc(300, 100))
				Bone(global.Right, global.Left - 40, global.Top, global.Top, 70, 70, , 180, 180, , , , , calc(340, 100))
			break;
			case 3:
				var offset = 1 * 15	//by the amount of bones - 1 and spacing //if it was at another angle, would need lengthdir
				BoneRow(global.Right, global.Left - 30, global.Floor, global.Floor, [30, 30], [30, 30], 2, , , , , 100)
				BoneRow(global.Right + offset, (global.Left + offset) - 30, global.Top, global.Top, [30, 30], [30, 30], 2, 180, , , , 100)
			break;
			case 4:
				var offset = 1 * 15	
				B1 = BoneRow(global.Right, global.Left - 30, global.Floor, global.Floor, [30, 30], [30, 30], 2, , , , , 100)
				B2 = BoneRow(global.Right + offset, (global.Left + offset) - 30, global.Top, global.Top, [30, 30], [30, 30], 2, 180, , , , 100)	
				fourAlarm = new Alarm(1, function() { 
					for(var i = 0; i < array_length(B1.boneArray); i++) {
						B1.boneArray[i].changeHeight(25, 1/30, "ease")
						B2.boneArray[i].changeHeight(60, 1/30, "ease")
					}
				})
				countdown = 20
			break;
			case 5:
				var offset = 1 * 15	// A CASE WHERE YOU NEED TO OFFSET THE ROW IN ORDER TO LINE UP WITH ANOTHER ONE AT THE TOP
				B1 = BoneRow(global.Right, global.Left - 30, global.Floor, global.Floor, [50, 35], [50, 35], 2, , , , array_create(2, "ease"), 120, array_create(2, 100))
				B2 = BoneRow(global.Right + offset, (global.Left + offset) - 30, global.Top, global.Top, [35, 50], [35, 50], 2, 180, , , array_create(2, "ease"), 120, array_create(2, 100))
				fiveAlarm = new Alarm(1, function(){
					B1.boneArray[0].changeHeight(40, 30)
					B2.boneArray[1].changeHeight(40, 30)
				})
				countdown = 20
			break;
			case 6:
				var AMOUNT = 15
				var HEIGHT2 = [30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15]
				var HEIGHT = array_reverse(HEIGHT2)
				BoneRow(global.Left - 500, global.Right, global.Floor, global.Floor, HEIGHT2, HEIGHT2, AMOUNT, 0, 25, array_create(AMOUNT, "static"), , 170, , false)
				BoneRow(global.Right - (AMOUNT * 25) + 500, global.Left - (AMOUNT * 25), global.Floor, global.Floor, HEIGHT, HEIGHT, AMOUNT, 0, 25, array_create(AMOUNT, "static"), , 170, , false)
			break;
			case 7: 
				show_debug_message(attackObject.songPosition())
				soulObj.changeColor("Red")
				fightBoxObj.changeSize(200, , 30, "ease")
			break;
			case 8:
				Gaster(220, 220, 190, -50, 40, 55, 270, 270, 1, 1)
			break;
			case 9:
				Gaster(220 + 60, 220 + 60, 190, -50, 40, 55, 270, 270, 1.2, 1)
			break;
			case 10:
				Gaster(220 + 120, 220 + 120, 190, -50, 40, 55, 270, 270, 1.2, 1)
			break;
			case 11:
				Gaster(220 + 180, 220 + 180, 190, -50, 40, 55, 270, 270, 1.2, 1)
			break;
		}
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		if (global.AttackCycle = 5 && countdown = 0) run_alarm(fourAlarm)
		if (global.AttackCycle = 6 && countdown = 0) run_alarm(fiveAlarm)
		countdown--;
	}, 
	CYCLEDRAW : function() { //THINGS DRAWN SPECIFICALLY FOR ATK

	},
}		
atk7Data = { 
	CYCLEENDINGS : [0.2, 0.8, 0.6, 2.5,//0 - 2
	4, 0.35, 4.5, 1, 1], //IN SECONDS
	countdown : 20,
	isTop : -1,
	calc : diffCalculator,
	OFFSET : 3,
	amount : 0,
	CYCLECREATION : function() {
		var LEFT = 80, RIGHT = 540;
		switch global.AttackCycle {
			case 0:
				fightBoxObj.changeSize(400, 130, 1, "ease")
			break;
			case 1:
				var HEIGHTS = array_create(4, 60)
				B1 = BoneRow(RIGHT + 40, LEFT, global.Top, global.Top, HEIGHTS, HEIGHTS, 4, 180, 16, , , 90)
				HEIGHTS = array_create(4, 70)
				
				BoneRow(LEFT, RIGHT + 40, global.Floor, global.Floor, HEIGHTS, HEIGHTS, 4, 0, 16, , , 90)
				firstAlarm = new Alarm(25, function() {
					for(var i = 0; i < array_length(B1.boneArray); i++) {
						B1.boneArray[i].changeHeight(30, 1/(25 + i * 15), "ease")
					}
				})
			break;
			case 2:
				var HEIGHTS = array_create(3, 45)
				BoneRow(RIGHT, LEFT, global.Floor, global.Floor, HEIGHTS, HEIGHTS, 3, , 15, , , 100)
				BoneRow(RIGHT, LEFT + 15 * 2, global.Top, global.Top, HEIGHTS, HEIGHTS, 3, 180, 15, , , calc(RIGHT - (LEFT + 15 * 2), 100, RIGHT - LEFT))
				
				HEIGHTS = array_create(2, 130)
				BoneRow(LEFT + 150, LEFT - 100, global.Floor, global.Floor, HEIGHTS, HEIGHTS, 2, , , array_create(2, "reverse"), , 200)
			break;
			case 3:
				secondAlarm = new Alarm(20, function(){
					Bone(global.Left, global.Right, global.Top, global.Top, 40, 40, , 180, 180, , , , , 80)
						Bone(global.Left, global.Right + 75, global.Floor - 40, global.Floor - 40, 40, 40, , 0, 0, , , , , calc((global.Right + 75) - global.Left, 80))
					Bone(global.Left, global.Right, global.Floor, global.Floor, 40, 40, , , , , , , , 80)
				}, true, 40)
			break;
			case 4: //old stuff starts here
				fightBoxObj.changeSize(150, , 280, "static")
				countdown = 27
			break;
			case 5:
				soulObj.isFailsafe = true
				with fightBoxObj {
					changeDestination(200, , 1/15, "straighterEase")
					changeSize(150, 110, 1/20, "ease")	// just incase box isnt scaled perfectly
				}
				camObj.stepFunction = function() {
					if fightBoxObj.x = 200 {
						camObj.shakeCamera(20, 15)
						camObj.stepFunction = noone;
					}
					amount = 0;
				}
				clearAllBone()
			break;
			case 6:
				countdown = 1;
				fightBoxObj.changeDestination(420, , 1/300, "static")
			break;
			case 7:
				Gaster(391, 391, 200, -50, 40, 50, 270, 270, 1.2, 1.2)
				Gaster(280, -50, 332, 332, 40, 50, 0, 0, 1.2, 1.2)
				soulObj.isFailsafe = false
			break;
			case 8:
				with fightBoxObj {
					changeDestination(320, , 1/130, "slowerEase")
					changeAngle(360, 1/130, "slowerEase")
					changeSize(200, , 1/130,  "slowerEase")
				}
				show_debug_message(attackObject.songPosition())
			break;
			
		}
	},
	CYCLESTEP : function() { //THINGS CALCULATED EVERY STEP SPECIFICALLY FOR ATK
		countdown = clamp(countdown, -1, 100)
		if (global.AttackCycle = 2) run_alarm(firstAlarm)
		if (global.AttackCycle = 4) run_alarm(secondAlarm)
		if ((global.AttackCycle = 5) && countdown = 0 && amount < 7) {
			var LEFT = global.Left
			var RIGHT = global.Right
			if (isTop) {
				Bone(LEFT, RIGHT, global.Top, global.Top, 30, 75, , 180, 180, , , , 40, 55)
				Bone(RIGHT, LEFT, global.Top, global.Top, 30, 75, , 180, 180, , , , 40, 55)
			}
			else {
				Bone(LEFT, RIGHT, global.Floor, global.Floor, 30, 75, , , , , , , 40, 55)
				Bone(RIGHT, LEFT, global.Floor, global.Floor, 30, 75, , , , , , , 40, 55)
			}
			isTop *= -1
			countdown = 27
			amount++
		}
		if ((global.AttackCycle = 7) && countdown = 0) {
			Bone(global.Right + 75, global.Left - 75, global.Top, global.Top, 50, 50, , 180, 180, , , , 40, 90)
			Bone(global.Left - 75, global.Right + 75, global.Floor, global.Floor, 50, 50, , , , , , , 40, 90)
			countdown = 35
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

