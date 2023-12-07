/// @description Values
// You can write your code in this editor
hsp = 0;
vsp = 0;
// was 4
#region frisk indexes
	friskType[0][0] = friskDown
	friskType[0][1] = friskLeft
	friskType[0][2] = friskRight
	friskType[0][3] = friskUp

	friskType[1][0] = coloredfriskDown
	friskType[1][1] = coloredfriskLeft
	friskType[1][2] = coloredfriskRight
	friskType[1][3] = coloredfriskUp
	
	friskType[2][0] = punishfriskDown
	friskType[2][1] = punishfriskLeft
	friskType[2][2] = punishfriskRight
	friskType[2][3] = punishfriskUp
#endregion

friskIndex = 0

speed_multipler = 3;
if room = corridor {
	friskIndex = 0 	
	sprite_index = friskType[friskIndex][0] 
}
if room = mistake {
	friskIndex = 2 
	sprite_index = friskType[friskIndex][0]
}
if room = debugRoom {
	friskIndex = 1 
	sprite_index = friskType[friskIndex][0]
}
Frozen = false;
tilemap = layer_tilemap_get_id("Collision")

friskCam = instance_create_depth(x, y, 1, obj_cam);
friskCam.follow = id

collisionPixelTDMC = use_tdmcCPixel()

