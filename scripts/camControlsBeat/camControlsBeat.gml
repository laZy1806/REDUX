// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// default camera placement is 320, 232

function camControlsBeat(zoom, shakespeed = "null"){
	obj_battlecam.beatModifier = true
	
	if shakespeed != "null" obj_battlecam.shake = shakespeed	
	if shakespeed != "null" obj_battlecam.percent_shake = 0
	obj_battlecam.beat_percent = 0;
	
	// calculates beat height and width first frame of cam
	obj_battlecam.ease_out = 0;
	obj_battlecam.beat_Width = obj_battlecam.Width
	obj_battlecam.beat_Height = obj_battlecam.Height
	
	obj_battlecam.bounceX = obj_battlecam.camX
	obj_battlecam.bounceY = obj_battlecam.camY
	
	obj_battlecam.bounce_X_diff = (obj_battlecam.Width - zoom * obj_battlecam.Width)/2
	obj_battlecam.bounce_Y_diff = (obj_battlecam.Height - zoom * obj_battlecam.Height)/2
	
	obj_battlecam.beat_Width_diff = obj_battlecam.Width - obj_battlecam.beat_Width * zoom
	obj_battlecam.beat_Height_diff = obj_battlecam.Height - obj_battlecam.beat_Height * zoom
	obj_battlecam.beat_percent = 0;
	obj_battlecam.camCount++;
	
}