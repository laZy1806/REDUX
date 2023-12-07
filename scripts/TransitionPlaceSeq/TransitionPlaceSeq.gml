// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.midTransition = false
global.roomTarget = -1
global.transLayer = 0
global.currentTransSequence = 0
// var room sequence fixes issue where second sequence isnt placed properly, not most efficent but still works


// places sequence within room
function TransitionPlaceSeq(_type){
 if (layer_exists(global.transLayer)) layer_destroy(global.transLayer)
global.transLayer = layer_create(-5);
global.currentTransSequence = layer_sequence_create(global.transLayer, global.centerx, global.centery, _type)	

}
// called when going to one room from another with in/out sequences
function TransitionStart(_roomTarget, _typeOut, _typeIn) 
{
	if (!global.midTransition)
	{
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSeq(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaceSeq(_typeIn);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

// called at end of out transition sequence
function TransitionChangeRoom()
{
	room_goto(global.roomTarget);	
}

// called at the end of an in transition sequence.
function TransitionFinished()
{
	
	//layer_sequence_destroy(global.currentTransSequence);
	layer_sequence_destroy(global.currentTransSequence);
	global.midTransition = false
	global.roomTarget = -1
	global.transLayer = 0
	global.currentTransSequence = 0
}
/*
function TransitionPlaceSeq(_type){
	if (layer_exists("transition")) layer_destroy("transition")
	var _lay = layer_create(-9999, "transition");
	layer_sequence_create(_lay, global.centerx, global.centery, _type)	
}
// called when going to one room from another with in/out sequences
function TransitionStart(_roomTarget, _typeOut, _typeIn) 
{
	if (!global.midTransition)
	{
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSeq(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaceSeq(_typeIn);
		layer_reset_target_room();
		return true;
	}
	else return false;
}
// called at end of out transition sequence
function TransitionChangeRoom()
{
	room_goto(global.roomTarget);	
}
// called at the end of an in transition sequence.
function TransitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false
}