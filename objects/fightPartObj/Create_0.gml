/// @description Insert description here
// You can write your code in this editor

depth = obj_bulletboard.depth + 2
fightParticlesSystem = new advanced_part_system()
fightParticles = new advanced_part_type()
fightParticlesEmitter = new advanced_part_emitter(fightParticlesSystem, 0, 640, 490, 490, aps_shape.rectangle, aps_distr.linear)

with fightParticles {
	part_life(60, 150)
	part_size(2, 2, 0, 0)
	part_image(particlePixel, 0, c_white, false, false, true)
	part_speed(2, 2, 0, 0)
	part_direction(140, 37, 0, 0)
	part_alpha3(1, 0.5, 0)
	part_blend(true)
	//part_death(5, self)
	// compensates for large area by deleting particles that cant be seen.
	/*
	part_step_function(
		function(){
			if (x < 0 or 640 < x) life = 0		
		}
	)
	*/
}