/// @description health, and other stuff like that 
// You can write your code in this editor

global.corridor = instance_create_depth(1216, 256, 0, corridorDrawObj)
global.frisk = instance_create_depth(150, 350, -1, frisk)
//1448
depth = -3
if !instance_exists(pauseObj) instance_create_depth(0, 0, 0, pauseObj) 
//instance_create_depth(0, 0, -10000, persistentSoul)

targetfps = 60;
global.soulspeed = 2
global.beginFade = 0
debugScript()
birdNoise = audio_play_sound(corridorBirdNoises, 1, true, 0)
birdLevel = 0.5
birdAudioTime = 12000
audio_sound_gain(birdNoise, birdLevel, birdAudioTime)

wall1 = instance_create_depth(350, 444, 0, collisionPixelObj)
wall1.image_xscale = 350
if global.debugMode and global.fightFinished wall2 = instance_create_depth(1200, 444, 0, collisionPixelObj)
else wall2 = instance_create_depth(1050, 444, 0, collisionPixelObj)
wall2.image_xscale = 350