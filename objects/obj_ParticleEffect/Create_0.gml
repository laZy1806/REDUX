/// @description Insert description here
// You can write your code in this editor
global.partSystem = part_system_create();
// want it to be behind attack box, so high depth to be behind objects
part_system_depth(global.partSystem, 2);
particleScript();

particle_timer = 0;
