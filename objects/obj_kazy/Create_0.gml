/// @description setting desc,variables,health
// You can write your code in this editor
MyName = "Kyle";
MyHP = 667;
MyMaxHP = 667;
CheckDescription[0] = "* description 1 *";
CheckDescription[1] = "* description 2 *";
Act[0] = "Check";
Act[1] = "Taunt";
ShowHealthBar = true;
CanSpare = false;
curveList()
depth = 2
ogDepth = depth
shakeCount = -1;
shakeX = 0
shake = false
shakeAmount = 4
shakeTime = 20
currentHead = 0
// debug variables

Start = true
Killed = false;

Attack = 4;
Defense = 0;
Dialogue = noone;
ReadyForBattle = false;

turn = 0;

Taunted = false;
flash = false;

DeathParticlesSystem = new advanced_part_system()
DeathParticles = new advanced_part_type()
DeathParticlesEmitter = new advanced_part_emitter(DeathParticlesSystem, currentX - 30, currentX + 30, currentY - 60, currentY + 160, aps_shape.rectangle, aps_distr.linear)

DeathParticlesSystem.set_max_count(1000)
fadeSprite = layer_sprite_create(layer_create(depth + 1, "fadeLayer"), 320, currentY + 155, fadingSprite)
layer_sprite_alpha(fadeSprite, 0)
layer_sprite_index(fadeSprite, 0)
 with DeathParticles {
	
	part_life(140, 160)
	part_size(2, 2, 0, 0)
	part_image(particlePixel, 0, c_white, false, false, false)
	part_speed(1.5, 1.5, 0, 0)
	part_direction(120, 60, 0, 1)
	part_alpha3(1, 0.5, 0)
	part_blend(1)
	//part_death(5, self)
	// compensates for large area by deleting particles that cant be seen.
	/*
	part_step_function(
		function(){
			//if y > 260 life = 0
		}
	)
	*/
	
}
