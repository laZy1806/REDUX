/// @description Insert description here
// You can write your code in this editor
if DRAW {	// a minor delay to let everything create and set variables
	var fBox = instance_find(fightBoxObj, 0)
	var soulRef = instance_find(soulObj, 0)
	var bulletRef = instance_find(bulletboardObj, 0)
	
	//make into a function that'll draw any characters attack
	var boneDrawAll = function(){
		with instance_find(fightBoxObj, 0) innerBoxDraw()
		for(var i = 0; i < ds_list_size(global.boneList); i++) ds_list_find_value(global.boneList, i).drawEvent()	
	}
	boxMasking(boneDrawAll)

	with bulletRef drawEvent()

	for(var i = 0; i < ds_list_size(global.gasterList); i++) {
		ds_list_find_value(global.gasterList, i).drawEvent()	
	}
	// 0 is a temporary thing, will have variable to track img indx for flashing sp
	with soulRef draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, 1)
	
	for(var i = 0; i < instance_number(fightWall); i++) {
		with instance_find(fightWall, i) {
			//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + 0.2, image_yscale + 0.2, image_angle, c_black, image_alpha) //baked in outline (NOT OPTIMAL)
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
		}
	}			
	for (var f = 0; f < array_length(bulletRef.buttonList); f++) {		
		if bulletRef.buttonList[f] != noone {
			var texPage = sprite_get_texture(bulletRef.buttonList[f][$ "toDisplay"], bulletRef.buttonList[f].image_index)
			var texW = texture_get_texel_width(texPage)
			var	texH = texture_get_texel_height(texPage)
		
			shader_set(shaderOutline)
				shader_set_uniform_f(pixW, texW)
				shader_set_uniform_f(pixH, texH)
				//bulletRef.buttonList[f].DISPLAY()
			shader_reset()
		}
	}
	//if instance_exists(kazyObject) instance_find(kazyObject, 0).drawEvent()
}