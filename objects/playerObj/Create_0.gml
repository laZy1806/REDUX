/// @description Values
// You can write your code in this editor
hsp = 0;
vsp = 0;
// was 4
#region frisk indexes
	friskType[0][0] = coloredfriskDown
	friskType[0][1] = coloredfriskLeft
	friskType[0][2] = coloredfriskRight
	friskType[0][3] = coloredfriskUp

#endregion
friskIndex = 0
sprite_index = empty
image_xscale = 2
image_yscale = 2
speed_multipler = 2;
Frozen = false;

friskCam = instance_create_depth(x, y, 1, oWorldCam);
collisionPixelTDMC = use_tdmc()
drawEvent = function() {
	draw_sprite(sprite_index, image_index, x, y)
}