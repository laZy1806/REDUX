/// @description Insert description here
// You can write your code in this editor
//with instance_find(frisk, 0)
//draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)

//draw_self()

for (var i = 0; i < ds_list_size(draw_list); i++) {
	var ins = ds_priority_delete_min(draw_queue)
	if sprite_exists(ins.sprite_index) {
		draw_sprite_ext(ins.sprite_index, ins.image_index, ins.x, ins.y, ins.image_xscale, ins.image_yscale, ins.image_angle, ins.image_blend, ins.image_alpha)
	}	
}
noteObject.drawEV()

