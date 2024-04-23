/// @description Insert description here
// You can write your code in this editor
var REF = room_get_info(tempRoom, false, false, true, true, false).layers[1];
/*
for(i = 0; i < array_length(REF.elements); i++) {
	var cur = REF.elements[i];
	draw_sprite_ext(cur.sprite_index, 0, cur.x, cur.y, cur.image_xscale, cur.image_yscale, cur.image_angle, cur.image_blend, cur.image_alpha)
}
*/
if (variable_instance_exists(id, "newSprite")) draw_sprite(newSprite, 0, x - (21* image_xscale), y - (58 * image_yscale))