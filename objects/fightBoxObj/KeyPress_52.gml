/// @description Insert description here
// You can write your code in this editor

myLayer = layer_create(fightDrawController.depth - 1)
mySequence = layer_sequence_create(myLayer, global.Left, global.Floor, wallTestSeq)
_seqInst = layer_sequence_get_instance(mySequence)

bottom.isActive = false