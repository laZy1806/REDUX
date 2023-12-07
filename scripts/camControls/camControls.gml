// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// default camera placement is 320, 232

function camControls(camX = "null", camY = "null", zoom = "null", shakespeed = "null", spdfactor = 0.05){
	var ref = obj_battlecam
	ref.beatModifier = false
	ref.camCount++;
	if camX != "null" {
		ref.supposedX = ref.camX
		//ref.camDesX = ref.supposedX + camX + ((ref.supposedWidth - zoom * 640))/2			
		ref.camDesX = camX // + ((ref.supposedWidth - zoom * 640))/2			
	}
	if camY != "null" {	
		ref.camDesY = ref.supposedY + camY + ((ref.supposedHeight - zoom * 480))/2
	}
	if zoom != "null" {
		ref.zoom = zoom	
	}	
	if shakespeed != "null" {
		ref.shake = shakespeed	
		ref.percent_shake = 0
	}
	if spdfactor != "null" {
		ref.spd = spdfactor
	}
}