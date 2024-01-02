/// @description Insert description here
// You can write your code in this editor
var fBox = instance_find(fightBoxObj, 0)
var soulRef = instance_find(obj_test, 0)
	
	
draw_sprite_ext(battlepixel, 0, 320, 240, 320, 320, 0, c_black, 1)

with fBox innerBoxDraw()

for(var i = 0; i < ds_list_size(global.boneList); i++) {
	ds_list_find_value(global.boneList, i).drawEvent()	
}
for(var i = 0; i < ds_list_size(global.gasterList); i++) {
	ds_list_find_value(global.gasterList, i).drawEvent()	
}

// 0 is a temporary thing, will have variable to track img indx for flashing sp
with soulRef draw_sprite(sprite_index, 0, x, y)

for(var i = 0; i < instance_number(fightWall); i++) {
	with instance_find(fightWall, i) 
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
}

for(var f = 0; f < array_length(fBox.buttonList); f++) {
	fBox.buttonList[f].DISPLAY()
}
if instance_exists(kazyObject) instance_find(kazyObject, 0).drawEvent()