/// @description Insert description here
// You can write your code in this editor
global.AttackCycle = 0
global.AttackNumber = 1
//audio_sound_set_track_position(MAINFIGHT, 18.33)
_audio = -1
_time = 0
OFF = false
sp = noone
TEST = 0
findBone = function(boneNumber) {
	///@func findBone(boneNumber)
	return ds_list_find_value(global.boneList, boneNumber)	
}
/* 
ATTACKS WILL BE BASED ON BOX SIZINGS
A NEW SIZE WILL BE BASED ON NEW BOX SIZE OR SEQUENCE OF ATTACKS
ATTACKS ARE EXECUTED IMMEDIATELY UPON LAST ATTACKS CYCLE BEING FINISHED
THEREFORE, THE LAST CYCLE IN AN ATTACK TIMES THE NEXT ATTACKS EXECUTION
BEST TO THINK OF CYCLES AS TIMESPANS
SO X ATK WILL LAST X SECONDS LONG CORRESPONDING TO ITS VALUE IN THE ARRAY
*/
AttackArray = array_create(0)
for(var i = 0; i < array_length(global.ENEMYARRAY[0].AttackArray); i++) {
	array_push(AttackArray, global.ENEMYARRAY[0].AttackArray[i])
}
global.AttackNumber = min(array_length(AttackArray), global.AttackNumber)

for(var i = 0; i < global.AttackNumber + 1; i++) {
	var lim = i != global.AttackNumber ? array_length(AttackArray[i].CYCLEENDINGS) : global.AttackCycle
	for(var j = 0; j < lim; j++) {
		_time += AttackArray[i].CYCLEENDINGS[j]
	}
}
MAINFIGHT = audio_play_sound(kazyFightSong, 1, false, _audio, _time)
// must start at 0.03 or first cycle call will bug out, anything less makes creation happen after alarm trigger
ATTACKALARM = time_source_create(time_source_game, 0.03, time_source_units_seconds, function() {
	AttackArray[global.AttackNumber].CYCLECREATION()	
})
timeReconfig = function() {
	if time_source_get_state(ATTACKALARM) = time_source_state_stopped {
		if array_length(AttackArray[global.AttackNumber].CYCLEENDINGS) > global.AttackCycle {
			time_source_reconfigure(ATTACKALARM, AttackArray[global.AttackNumber].CYCLEENDINGS[global.AttackCycle], time_source_units_seconds, function(){
				AttackArray[global.AttackNumber].CYCLECREATION()	
			})
			global.AttackCycle++;
		}
		else if (array_length(AttackArray[global.AttackNumber].CYCLEENDINGS) = global.AttackCycle) and (global.AttackNumber + 1 != array_length(AttackArray)){		
			global.AttackNumber++;	
			global.AttackCycle = 0;
			time_source_reconfigure(ATTACKALARM, 0.001, time_source_units_seconds, function(){
				AttackArray[global.AttackNumber].CYCLECREATION()	
			})
		}
	}
}
sprite_index = empty	
debugPressed = false
mouseClick = 1
_x = 0
_y = 0
timeRemaining = function(){
	return time_source_get_time_remaining(ATTACKALARM)
}
songPosition = function(){
	return audio_sound_get_track_position(MAINFIGHT)
}