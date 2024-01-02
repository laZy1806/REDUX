/// @description Insert description here
// You can write your code in this editor
//run_alarm(Attack1)
if AttackArray[global.AttackNumber] != noone {
	AttackArray[global.AttackNumber].CYCLESTEP()
	timeReconfig()
	time_source_start(ATTACKALARM)
}
else time_source_stop(ATTACKALARM)
//show_debug_message(time_source_get_time_remaining(ATTACKALARM))
//mouseDebug()
