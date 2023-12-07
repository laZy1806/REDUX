/// @description Insert description here
// You can write your code in this editor
/*
if (midTrans)
{
	if room = global.roomStart {
		if !layer_exists("exitTrans") and delay = 0 {
			var _lay = layer_create(-9999999, "exitTrans")	
			var seq = layer_sequence_create(_lay, global.centerx, global.centery, exitSequence)	
			alarm[0] = 100
		}
	}
	else if room = global.roomTargetDif {
		if !layer_exists("enterTrans") {
			show_debug_message(global.centerx)
			show_debug_message(global.centery)
			var _lay = layer_create(-9999999, "enterTrans")	
			var seq = layer_sequence_create(_lay, global.centerx, global.centery, enterSequence)
			alarm[1] = 100
		}
	}
}
if delay > 0 delay--
// issue might be that roomTarget in corridor is left the same before we leave
// else if statement is not running, meaning room != roomtarget for some reason
show_debug_message(a)
