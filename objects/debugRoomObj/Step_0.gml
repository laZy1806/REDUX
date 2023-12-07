/// @description Insert description here
// You can write your code in this editor
/*
if place_meeting(x, y, global.frisk) {
	if keyboard_check_pressed(ord("Z")) {
		
	}
}
*/
var cam = instance_find(obj_cam, 0)
left = cam.x
right = cam.x + 640
top = cam.y
bottom = cam.y + 600
global.centerx = 320
global.centery = 240

ds_list_clear(draw_list)
collision_rectangle_list(left, top, right, bottom, all, false, true, draw_list, false)

for (var i = 0; i < ds_list_size(draw_list); i++) {
	var ins = draw_list[|i]
	ds_priority_add(draw_queue, ins, ins.y)
}
if !instance_exists(obj_OverworldDialogue) global.frisk.Frozen = false
noteObject.stepEV()

if frisk.y > 490 {
	if instance_exists(TransitionObj) {
		global.TRANSOBJ.startTransition(corridor)
		var func = function() {
			if room = corridor {
				corridorInt.birdAudioTime = 1000
				corridorInt.birdLevel = 0.5
			}
		}
		global.TRANSOBJ.destinationAlarm = new Alarm(1, func, false)
	}
}
