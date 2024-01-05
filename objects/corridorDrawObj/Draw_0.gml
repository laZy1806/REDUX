/// @description Insert description here
// You can write your code in this editor

	// lower brightness = less gradient being seen = more bland looking
	//DRAW ORDER: bottom to top
	//floor, then gradient, then top half of corridor, then player, then pillars.


	shader_set(ValuesShader)
	shader_set_uniform_f(SatValue, satObjValue)
	shader_set_uniform_f(BrtValue, brtObjValue)
		
		draw_sprite(sp_corridorBottom, 0, x, y)	
	
	shader_reset()
	
		var kazyColor = make_colour_hsv(200, 250, 190 + gradientValueRight[0]);
		var playerColor = make_colour_hsv(colorLeft.hue, colorLeft.saturation, colorLeft.val + gradientValueLeft[0])
	
	
	// sets brightness and saturation for gradient 
	gpu_set_blendmode_ext(bm_src_alpha, bm_one)
		
		draw_rectangle_color(1340, 293, 1940, 455, playerColor, kazyColor, kazyColor, playerColor, false)
	//draw_rectangle_color(1340, 293, 1640 + 50, 455, playerColor, playerColor, playerColor, playerColor, false)
	//draw_rectangle_color(1640, 293, 1940, 455, kazyColor, kazyColor, kazyColor, kazyColor, false)
		
	gpu_set_blendmode(bm_normal)
	shader_set(ValuesShader)
	shader_set_uniform_f(SatValue, satObjValue)
	shader_set_uniform_f(BrtValue, brtObjValue)
	
		draw_sprite(sp_corridorTop, 0, x, y)
	
	shader_reset()
	
	shader_set(ValuesShader)
	shader_set_uniform_f(SatValue, satObjValue)
	shader_set_uniform_f(BrtValue, 0)
	
		with instance_find(playerObj, 0) draw_sprite(sprite_index, image_index, x, y)
	
		draw_sprite_ext(kazyCorridor, 0, 1786, 378 - 84 * 0.5, 0.5, 0.5, 0, c_white, 1)
	
		draw_sprite_ext(sp_pillar, 0, 355 - 160 - oWorldCam.x/2, 456, 2, 2, 0, c_white, 1)
		draw_sprite_ext(sp_pillar, 0, 835 - 160 - oWorldCam.x/2, 456, 2, 2, 0, c_white, 1)
		draw_sprite_ext(sp_pillar, 0, 1325 - 160 - oWorldCam.x/2, 456, 2, 2, 0, c_white, 1)
		draw_sprite_ext(sp_pillar, 0, 1825 - 160 - oWorldCam.x/2, 456, 2, 2, 0, c_white, 1)
	
		//draw_sprite_ext(sp_pillar, 0, 1080, 456, 2, 2, 0, c_white, 1)
		draw_sprite_ext(sp_pillar, 0, 1320 + 659 - oWorldCam.x/2, 456, 2, 2, 0, c_white, 1)
		draw_sprite_ext(sp_pillar, 0, 1550 + 659 - oWorldCam.x/2, 456, 2, 2, 0, c_white, 1)
		draw_sprite_ext(sp_pillar, 0, 1955 + 659 - oWorldCam.x/2, 456, 2, 2, 0, c_white, 1)

	shader_reset()
	
	draw_sprite_ext(battlepixel, 0, room_width/2, room_height/2, 2000, 2000, 0, c_black, 1 - global.beginFade)
	//if instance_exists(persistentSoul) draw_sprite(soul, 0, persistentSoul.x + (global.centerx - 320), persistentSoul.y + (global.camCenterY - 240))
//}