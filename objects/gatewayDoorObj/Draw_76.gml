/// @description Insert description here
// You can write your code in this editor
scrAddToDepthGD(-40);

var REF = room_get_info(tempRoom, false, false, true, true, false).layers[1];

if (!variable_instance_exists(id, "newSprite")) {
	if !surface_exists(tempsurf) tempsurf = surface_create(1280, 960);
	surface_set_target(tempsurf)
		for(i = 0; i < array_length(REF.elements); i++) {
			var cur = REF.elements[i];
			draw_sprite_ext(cur.sprite_index, 0, cur.x, cur.y, cur.image_xscale, cur.image_yscale, cur.image_angle, cur.image_blend, cur.image_alpha)
		}
	surface_reset_target()
	//21 and 58 are the values that pertain to the door entrance sprite.
	newSprite = sprite_create_from_surface(tempsurf, (doorTo.x - (21 * doorTo.xscale)), 
	(doorTo.y - (58 * doorTo.yscale)), 
	(42 * doorTo.xscale), (58 * doorTo.yscale), false, false, 0, 0)
	
}

