/// @description Insert description here
// You can write your code in this editor
global.AttackCycle = 0
global.AttackNumber = 0

findBone = function(boneNumber) {
	///@func findBone(boneNumber)
	return ds_list_find_value(global.boneList, boneNumber)	
}
// ATTACKS WILL BE BASED ON BOX SIZINGS
//A NEW SIZE WILL BE BASED ON NEW BOX SIZE OR SEQUENCE OF ATTACKS
//audio_play_sound(kazyFightSong, 1, false, , 16)
AttackArray = array_create(0)
for(var i = 0; i < array_length(global.ENEMYARRAY[0].AttackArray); i++) {
	array_push(AttackArray, global.ENEMYARRAY[0].AttackArray[i])
}
ATTACKALARM = time_source_create(time_source_game, 0.01, time_source_units_seconds, function() {
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
		else if (array_length(TIMING) - 1 = global.AttackCycle) and (global.AttackNumber + 1 != array_length(AttackArray)){		
			global.AttackNumber++;	
			global.AttackCycle = 0
			time_source_reconfigure(ATTACKALARM, TIMING[global.AttackCycle], time_source_units_seconds, function(){
				AttackArray[global.AttackNumber].CYCLECREATION()	
			})
			AttackArray[global.AttackNumber].CYCLECREATION()
		}
	}
}
	
bonePressed = -1	
gasterPressed = -1	
	