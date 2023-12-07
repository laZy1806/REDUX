// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//addition based, not coordinate based 
//start value is defined in obj_attacks, can't be defined in here as its used in step event, constantly resetting start val
function boxmove(vertical, horizontal, instant, rate){	
	
	if instant {
		obj_bulletboard.middlex += horizontal
		obj_bulletboard.middley += vertical
	}
	
	if instant = false
	{	
		obj_bulletboard.middlex += horizontal/rate
		obj_bulletboard.middley += vertical/rate
	}
}

