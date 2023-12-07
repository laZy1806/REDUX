/// @description Insert description here
// You can write your code in this editor

//kazy.currentX = mouse_x
//kazy.currentY = mouse_y
var curve = ease_in_out_Menu(1/180, 0) 

if !curveCalcDone(0) {
	kazy.currentX = -100 + 420 * curve
}
else {
	run_alarm(placementAlarm)	
	if instance_exists(obj_OverworldDialogueNONTEXT) and instance_exists(obj_text){
		var D = Dialogue
		D.x = Box.x + 90
		D.y = Box.y + 40
		if D.TextToDraw = D.TextQueue[18] {
			if kazy.currentX != 220 kazy.currentX = 320 - 100 * ease_in_out_Menu(1/60, 1)
			else {
				run_alarm(explosionAlarm)
			}
		}
		else if kazy.currentX != 320 and D.NumInQueue < 23{
			kazy.currentX = lerp(kazy.currentX, 320, 0.05)
			if instance_exists(eggsplosionOBJ) instance_destroy(eggsplosionOBJ)
			if audio_is_playing(eggsplosionSFx) audio_stop_sound(eggsplosionSFx)
		}
		else if D.TextToDraw = D.TextQueue[24] {
			kazy.currentX = 320 + 500 * ease_in_out_Menu(1/120, 2)
			if curveCalcDone(2) run_alarm(SFXAlarm)
		}
		else if D.TextToDraw = D.TextQueue[25] {
			kazy.currentX = 320 + 800
			if D.Timer <= 1100 {
				ALPHA += 0.005
			}
			if ALPHA >= 1.5 {
				room_goto(menu)	
			}
		}
		if Dialogue.CurrentDelay = 0 and Dialogue.TextLength = 0 /*only true at beginning of line*/{
			run_alarm(spriteAlarm)
		}
	}
}