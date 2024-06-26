/// @description Insert description here
// You can write your code in this editor
if !surface_exists(drawSurf) drawSurf = surface_create(640, 480)

if DRAW {	// a minor delay to let everything create and set variables
	surface_set_target(drawSurf)

	draw_clear_alpha(c_black, 0)
		
	var fBox = instance_find(fightBoxObj, 0)
	var soulRef = instance_find(soulObj, 0)
	var bulletRef = instance_find(bulletboardObj, 0)
	//var Enem = instance_find(bulletboardObj, 0)

	//make into a function that'll draw any characters attack
	var toMask = function(){
		for(var i = 0; i < ds_list_size(global.boneList); i++) ds_list_find_value(global.boneList, i).drawEvent()	
	}
	
	boxMasking(toMask)
	
	if (instance_exists(bulletboardObj)) with (bulletRef) drawEvent();

	for(var i = 0; i < ds_list_size(global.gasterList); i++) {
		ds_list_find_value(global.gasterList, i).drawEvent()	
	}
	
	// 0 is a temporary thing, will have variable to track img indx for flashing sp
		with soulRef {
			draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, 1)
		
		}
		
	for(var i = 0; i < instance_number(fightWall); i++) {
		with instance_find(fightWall, i) drawEvent()
	}			
	
	if instance_exists(obj_bulletboard){
		for (var f = 0; f < array_length(bulletRef.buttonList); f++) {		
			if (bulletRef.buttonList[f] != noone) bulletRef.buttonList[f].DISPLAY()
		}
	}	

	for(var a = 0; a < array_length(global.ENEMYARRAY); a++) {
		global.ENEMYARRAY[a].drawEvent()
	}			

	surface_reset_target()
	
		scrOutlineShaderData(drawSurf, 20, 1)
	
			draw_surface(drawSurf, 0, 0)
			
		shader_reset()
}