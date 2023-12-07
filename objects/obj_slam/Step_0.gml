/// @description Insert description here
// You can write your code in this editor
// ONLY SET EITHER SLAM DESX OR DESY, CANNOT USE BOTH, bad idea anyways

percent += perchanger
//if percent = 1
//percent -= 1

slam_soul = animcurve_channel_evaluate(gravshift, percent)

if slamed {

	//slam parameters
	slam_disX = abs(storedx - slam_DesX)
	slam_disY = abs(storedy - slam_DesY)	


	slam_DesX = clamp(slam_DesX, global.Left, global.Right)
	slam_DesY = clamp(slam_DesY, global.Top, global.Floor)

	obj_soul.gravitycontrol = false

//
	if side = "left" {
		slam_DesX = global.Left //+ 6
		if slam_soul < 1 { 
			obj_soul.x = storedx - (slam_disX * slam_soul)
			obj_soul.image_angle = -90
		}
		else {
			slamed = false;	
		}
	}
	
	if side = "right" {
		slam_DesX = global.Right //- 6
		if slam_soul < 1 {
			obj_soul.x = storedx + (slam_disX * slam_soul)
			obj_soul.image_angle = 90
		}
		else {
			slamed = false;	
		}
	}
	
	if side = "bottom" {
		slam_DesY = global.Floor //- 6
		
		if slam_soul < 1 {
			obj_soul.y = storedy + (slam_disY * slam_soul)
			obj_soul.image_angle = 0
		}
		else {
			slamed = false;	
		}
	}
	
	if side = "top" {
		slam_DesY = global.Top //+ 6
		if slam_soul < 1 {
			obj_soul.y = storedy - (slam_disY * slam_soul)
			obj_soul.image_angle = 180	
		}
		else {
			slamed = false;	
		}
	}
	
if slamed = false {
		audio_play_sound(impact, 20, false);
		camControls("null", "null", "null", 2)
		slam_DesX = 0;
		slam_DesY = 0;
		percent = 0;
		obj_soul.gravitycontrol = true
		obj_soul.BLUE_Jumped = false
		
		
		//slamed = false
		instance_destroy();
	}
}


	
	
	




























/*
	if !(obj_soul.x = slam_DesX or obj_soul.y = slam_DesY) {
		if storedx > slam_DesX {
			obj_soul.x = storedx - (slam_disX * slam_soul)
			obj_soul.image_angle = 270
		}
			if storedx < slam_DesX {
				obj_soul.x = storedx + (slam_disX * slam_soul)
				obj_soul.image_angle = 90
		}
			if storedy > slam_DesY {
				obj_soul.y = storedy + (slam_disY * slam_soul)
				obj_soul.image_angle = 0
			}
				if storedy < slam_DesY {
					obj_soul.y = storedy - (slam_disY * slam_soul)
					obj_soul.image_angle = 180	
				}
	}
	if (obj_soul.x = slam_DesX or obj_soul.y = slam_DesY) {
		audio_play_sound(impact, 20, false);
		slam_DesX = 0
		slam_DesY = 0
		slamed = false
		obj_soul.gravitycontrol = true
	}
}		

*/






