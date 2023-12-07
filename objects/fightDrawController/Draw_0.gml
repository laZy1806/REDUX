/// @description Insert description here
// You can write your code in this editor


//surface_set_target(battleSurf)
	
draw_sprite_ext(battlepixel, 0, 320, 240, 320, 320, 0, c_black, 1)

with instance_find(fightBoxObj, 0) instance_find(fightBoxObj, 0).innerBoxDraw()

for(var i = 0; i < ds_list_size(global.boneList); i++) {
	ds_list_find_value(global.boneList, i).drawEvent()	
}

// 0 is a temporary thing, will have variable to track imgindx for flashing sp
with instance_find(obj_test, 0) draw_sprite(sprite_index, 0, x, y)

for(var i = 0; i < instance_number(fightWall); i++) {
	with instance_find(fightWall, i) 
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
}
if instance_exists(kazyObject) instance_find(kazyObject, 0).drawEvent()
instance_find(kazyObject, 0).x = mouse_x
//draw_sprite_ext(testBox, 0, 320, 240, xscale, yscale, 0, c_white, 1)

//surface_reset_target()

//surface_resize(application_surface, 640, 480)
















