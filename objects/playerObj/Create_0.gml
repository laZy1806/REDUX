/// @description Values
// You can write your code in this editor
hsp = 0;
vsp = 0;
global.PlayerID = id;
roomX = 0;
roomY = 0;
// was 4
#region frisk indexes
	friskType[0][0] = coloredfriskDown
	friskType[0][1] = coloredfriskLeft
	friskType[0][2] = coloredfriskRight
	friskType[0][3] = coloredfriskUp

#endregion
friskIndex = 0
sprite_index = coloredfriskDown
image_xscale = 2
image_yscale = 2
speed_multipler = 2;
Frozen = false;

friskCam = instance_create_depth(x, y, 1, oWorldCam);
collisionPixelTDMC = use_tdmc()

drawEvent = function() {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1)
	//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	//show_debug_message("dog")
	//draw_set_color(c_blue)
	//draw_rectangle(x + 60, y + 20, x - 60, y - 20, false)
}
