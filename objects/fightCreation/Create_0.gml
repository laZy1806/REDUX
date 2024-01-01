/// @description Insert description here
// You can write your code in this editor
if !instance_exists(attackObject) instance_create_depth(320, 240, 0, attackObject)
if !instance_exists(fightDrawController) instance_create_depth(320, 240, 0, fightDrawController)
if !instance_exists(debugObject) instance_create_depth(0, 0, 0, debugObject)
if !instance_exists(fightBoxObj) instance_create_depth(0, 0, 0, fightBoxObj)
if !instance_exists(kazyObject) instance_create_depth(0, 0, 0, kazyObject)
if !instance_exists(obj_test) instance_create_depth(320, 240, 0, obj_test)
if !instance_exists(obj_battlecam) instance_create_depth(320, 240, 0, obj_battlecam)

game_set_speed(60, gamespeed_fps)
//instance_create_depth(0, 0, 0, pauseObj)
//put song here
//put new bulletboard