/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor
if room = mistake {
	if instance_exists(frisk) {
		if point_in_rectangle(global.frisk.x, global.frisk.y, kazy.x - 50, kazy.y - 50, kazy.x + 50, kazy.y + 50) {
			global.frisk.Frozen = true
			if _Timer > 0 _Timer--
			else if _Timer = 0{
				event_perform(ev_alarm, 0)
				_Timer--
			}
		}
	}
}
if room = mistakeBattle {
	if textCycle < 50 {
		run_alarm(stopwatchAlarmText)
		run_alarm(stopwatchAlarm)	
	}
	kazyAlpha[0] = lerp(kazyAlpha[0], kazyAlpha[1], 0.04)
}
#region unused
/*
!instance_exists(obj_battlecam){
	//if instance_exists(punisherKazyObj) instance_destroy(kazy)
	if instance_exists(frisk) instance_destroy(global.frisk)
	if instance_exists(obj_cam) instance_destroy(obj_cam)
	if instance_exists(obj_text) instance_destroy(text)
	if instance_exists(obj_OverworldDialogue) instance_destroy(box)
	punisherKazyObj.sprite_index = punisherKazy
	punisherKazyObj.x = 320
	punisherKazyObj.y = 160
	punisherKazyObj.image_xscale = 2
	punisherKazyObj.image_yscale = 2
	depth = 1
	if !instance_exists(obj_battlecam) instance_create_depth(0, 0, 0, obj_battlecam)
	room_width = 640
	room_height = 480
}
*/
#endregion