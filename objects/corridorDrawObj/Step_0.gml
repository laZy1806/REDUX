/// @description Insert description here
// You can write your code in this editor
if corridorShaders.cutsceneShaderTrigger { 
	gradientValueLeft[0] = lerp(gradientValueLeft[0], gradientValueLeft[1], 0.05) 
	gradientValueRight[0] = lerp(gradientValueRight[0], gradientValueRight[1], 0.05) 
}
if fadeBoolean {
	satObjValue = lerp(satObjValue, 0, 0.025)
	brtObjValue = lerp(brtObjValue, -0.40, 0.025)
}
	
if instance_find(playerObj, 0).y > 520 {
	if instance_exists(TransitionObj) {
		global.TRANSOBJ.startTransition(debugRoom)
		var func = function() {
			if room = corridor {
				corridorInt.birdAudioTime = 1000
				corridorInt.birdLevel = 0
			}
		}
		global.TRANSOBJ.exitAlarm = new Alarm(1, func, false)
	}
}
