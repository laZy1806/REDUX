/// @description Insert description here
// You can write your code in this editor

myLayer = layer_create(fightDrawController.depth)
mySequence = layer_sequence_create(myLayer, bottom.x, bottom.y - 20, wallTestSeq)
_seqInst = layer_sequence_get_instance(mySequence)