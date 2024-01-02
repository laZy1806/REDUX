/// @description Insert description here
// You can write your code in this editor
global.AttackCycle = 0
global.AttackNumber = 0
AttackArray = array_create(20, noone)
TEST = 0
findBone = function(boneNumber) {
	///@func findBone(boneNumber)
	return ds_list_find_value(global.boneList, boneNumber)	
}
// ATTACKS WILL BE BASED ON BOX SIZINGS
//A NEW SIZE WILL BE BASED ON NEW BOX SIZE OR SEQUENCE OF ATTACKS
atk1Data = {
	CYCLETIMINGS : [1, 1, 1, 1, 1], //IN SECONDS
	CYCLECREATION : function() {
		var BoneMiddleJump = function() {
			Bone(global.Left, global.Right, global.Top, global.Top, 20, 20, false, 180, 180)
			Bone(global.Left, global.Right, global.Floor,  global.Floor, 20, 20, false, 0, 0)
			
			Bone(global.Right, global.Left, global.Top,  global.Top, 20, 20, false)
			Bone(global.Right, global.Left, global.Floor,  global.Floor, 20, 20, false)
		}
		switch global.AttackCycle {
			case 0:	
				BoneMiddleJump()
			break;
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
//AttackArray[0] = atk1Data
//AttackArray[1] = atk2Data
ATTACKALARM = time_source_create(time_source_game, 1, time_source_units_seconds, function() {
	AttackArray[global.AttackNumber].CYCLECREATION()	
})
timeReconfig = function() {
	var TIMING = AttackArray[global.AttackNumber].CYCLETIMINGS
	if time_source_get_state(ATTACKALARM) = time_source_state_stopped {
		if array_length(TIMING) - 1 > global.AttackCycle {
			time_source_reconfigure(ATTACKALARM, TIMING[global.AttackCycle], time_source_units_seconds, function(){
				AttackArray[global.AttackNumber].CYCLECREATION()	
			})
			global.AttackCycle++
		}
		else if array_length(TIMING) - 1 = global.AttackCycle {		
			global.AttackNumber++;	
			global.AttackCycle = 0
			time_source_reconfigure(ATTACKALARM, TIMING[global.AttackCycle], time_source_units_seconds, function(){
				AttackArray[global.AttackNumber].CYCLECREATION()	
			})
			AttackArray[global.AttackNumber].CYCLECREATION()
		}
	}
}
//Gaster(100, 400, 400, 100, 60, 60, 0, 0, 1.5, 1.5, 20)	
Bone(200, 200, 100, 100, 20, 20, false, 180, 180)	