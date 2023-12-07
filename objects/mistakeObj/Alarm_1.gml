/// @description Insert description here
// You can write your code in this editor
if lightCount < 5 {
	if instance_exists(obj_text) instance_destroy(text)
	lightSwitch *= -1
	lightCount++
	alarm[1] = 10
	Soul.Alpha *= -1
}
else {
	room_goto(mistakeBattle)
}














