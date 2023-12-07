/// @description Insert description here
// You can write your code in this editor
frisk.Frozen = true;

if Event == 1 {
	with obj_cam xModi += other.cutSpeed;
	
	global.centerx += cutSpeed
	if (obj_cam.x >= 1300) {
		Event = 2;
		alarm[0] = 30;	//delay between dialogue and camera movement
	}
}
if (Event == 3) { 
	if !instance_exists(obj_OverworldDialogue) {
		textbox = instance_create_depth(0, 0, 0, obj_OverworldDialogue);
	}
	with startDialogue {
		makeTimerDiag(6)
		if (TextToDraw = TextQueue[7] and Timer = TimerQueue[7]) {
			other.startMusic()
			with other event_perform(ev_alarm, 1)
		}
		show = true;
	}
	
	if (!instance_exists(obj_text)) event_perform(ev_alarm, 0)	

}

if Event == 4 && !instance_exists(obj_OverworldDialogue) {
	TransitionStart(battle, heartCenter, battleIntro)	
}
