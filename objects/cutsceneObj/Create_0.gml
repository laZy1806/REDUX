/// @description setting event and alarm
// You can write your code in this editor
Event = 0;
//alarm[0] = 10;
alarm[0] = 90;
global.test = 0;
cutSpeed = 2 // debug variable
startMusic = function() {
///@func startMusic()
	if !instance_exists(songObj) instance_create_depth(x, y, 0, songObj)
}

startDialogue = global.nameFunctions.returnNameFunction("cut_dialogue")


cutsceneLayer = layer_create(-1000)
corridorInt.birdLevel = 0
corridorInt.birdAudioTime = 3000
depth = -20