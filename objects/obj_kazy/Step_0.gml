/// @description checking for text to ready monster for battle
// monster will be ready once text is advanced
// You can write your code in this editor
//global.kazy_inst = layer_sequence_get_instance(global.current_anim);

if Killed {
	DeathParticlesSystem.step()
	var func = function(num) {
		if num <= 140 return abs(num - 140)
		return 0
	}
	var _y = layer_sprite_get_y(fadeSprite)
	DeathParticlesEmitter.y_down = 265 - func(_y)
	DeathParticlesEmitter.y_top = _y - 20
	
	DeathParticlesEmitter.x_left = layer_sprite_get_x(fadeSprite) - 30
	DeathParticlesEmitter.x_right = layer_sprite_get_x(fadeSprite) + 30
	
	layer_sprite_alpha(fadeSprite, 1)
	if layer_sprite_get_y(fadeSprite) > -140 layer_sprite_y(fadeSprite, _y - 2.9)
	
	if layer_sprite_exists(layer_get_id("fadeLayer"), fadeSprite) and _y > 100 and array_length(DeathParticlesSystem.particle_array) < 400 {
		advanced_part_emitter_burst(DeathParticlesSystem, DeathParticlesEmitter, DeathParticles, 5)
	}
	testNumber++;
	//tempValue += 3
	//tempValue = clamp(tempValue, 0, 400)

}