/// @description for song
// You can write your code in this editor

var seqFrisk = instance_find(frisk, 0)
var sequenceCustscene = corridorSequence;

var seqElement = layer_sequence_create(cutsceneLayer, 1638, 350, sequenceCustscene)
var seqInst = layer_sequence_get_instance(seqElement)