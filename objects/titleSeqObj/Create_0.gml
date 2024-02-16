/// @description Insert description here
// You can write your code in this editor
introLayer = layer_create(-100) //change depth layer
introSeqElem = layer_sequence_create(introLayer, 320, 240, titleSequence)
introSeqInst = layer_sequence_get_instance(introSeqElem)
