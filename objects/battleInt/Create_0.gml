 /// @description health, and other stuff like that 
// You can write your code in this editor

delta_init()

mbx = 0
mby = 0
global.test = 0;

if !instance_exists(obj_kazy) instance_create_depth(320, 270, 2, obj_kazy);

global.centerx = 320
global.centery = 240

//if !instance_exists(obj_attacks) instance_create_depth(300, 384, 1, obj_attacks);
if !instance_exists(obj_bulletboard) instance_create_depth(290, 384, 1, obj_bulletboard);
if !instance_exists(obj_buttoncontroller) instance_create_depth(290, 384, 1, obj_buttoncontroller);
if !(instance_exists(obj_soul)) instance_create_depth(320, 340, 0, obj_soul)
if !instance_exists(saveObj) instance_create_depth(0, 0, 0, saveObj)

global.delta_factor = 1
#macro delta global.delta_factor

targetdelta = 1/60
actualdelta = (delta_time/1000000) 
deltamulti = actualdelta/targetdelta

targetfps = 60;

global.soulspeed = 2
if !instance_exists(obj_battlecam) instance_create_depth(320, 232, 0, obj_battlecam);
if !instance_exists(pauseObj) instance_create_depth(0, 0, 0, pauseObj)
application_surface_draw_enable(true)

depth = -2000