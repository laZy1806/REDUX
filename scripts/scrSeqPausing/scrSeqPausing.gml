// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrSeqPausing(){
	if global.pause {
		layer_sequence_speedscale(self.elementID, 0)	
	}
	else {
		layer_sequence_speedscale(self.elementID, 1)
	}	
}