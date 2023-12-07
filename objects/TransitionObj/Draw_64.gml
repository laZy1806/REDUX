/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(battlepixel, 0, 320, 240, 320, 240, 0, c_black, fadeAlpha)
if exitTrans {
	if fadeAlpha < 1 {
		fadeAlpha += 0.025
		run_alarm(exitAlarm)
	}
	else { 
	room_goto(destination)
		exitTrans = false
		delay = 200
	}
}
if room = destination and fadeAlpha > 0 {
	if fadeAlpha > 0 fadeAlpha -= 0.025	
	run_alarm(destinationAlarm)
}
if delay > 0 delay--


















