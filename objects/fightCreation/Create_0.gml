/// @description Insert description here
// You can write your code in this editor
scrEnemyCreator(global.ENEMYNAMES)

if !instance_exists(attackObject) instance_create_depth(320, 240, 0, attackObject)
if !instance_exists(fightDrawController) instance_create_depth(320, 240, 0, fightDrawController)
if !instance_exists(debugObject) instance_create_depth(0, 0, 0, debugObject)
if !instance_exists(fightBoxObj) instance_create_depth(0, 0, 0, fightBoxObj)
//if !instance_exists(kazyObject) instance_create_depth(0, 0, 0, kazyObject)
if !instance_exists(soulObj) instance_create_depth(320, 240, 0, soulObj)
if !instance_exists(camObj) instance_create_depth(320, 240, 0, camObj)
if !instance_exists(bulletboardObj) instance_create_depth(0, 0, 0, bulletboardObj)
