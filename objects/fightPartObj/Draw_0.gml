/// @description Insert description here
// You can write your code in this editor
var ref = instance_find(obj_bulletboard, 0)
ref.grad_state = true
fightParticlesSystem.draw()
draw_sprite_ext(battlepixel, 0, ref.middlex, ref.middley, 1 + ref.current_width/2, 1 + ref.current_height/2, -global.borderangle, c_black, 1)