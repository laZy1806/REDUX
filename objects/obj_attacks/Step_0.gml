/// @description if statements for attacks

// will consistently flicker during attacks to use as a method of tracking certain objects
if countdown {
	global.Timer++
}
else {
	global.Timer = 0;	
}


switch (attack) {
	case 0:	
			with (obj_kazy) if (Start) setSpriteAlpha(1, 0.07)
			with (obj_bulletboard) if (Start) image_alpha = lerp(image_alpha, 1, 0.04)
		if global.audioPosition >= 24.00
		{
			event_perform(ev_alarm, 0)
		}
	break;	
	case 1:	
		if global.Timer >= 35
		{
			event_perform(ev_alarm, 1)	
			global.Timer = 0;
		}
	break;
	case 2:	
		if global.Timer > 35
		{
			attack = 3
			alarm[1] = 5
			global.Timer = 0;
		
		}
	break;
	case 3:
		layer_set_visible(lightswitch, true)	
	break;
	case 4:
		if global.Timer > 5 {
			global.Timer = 0;
			alarm[0] = 2
		}
	break;
	case 5:
		if global.Timer >= 38
		{
			global.Timer = 0;
			event_perform(ev_alarm, 1)	
		}
		if obj_bulletboard.topwall.x >= 320 {
			if(alarm[0] == -1) 
				alarm[0] = 5;
				global.Timer = 0;
		}
		else {
			boxmove(0, 100, false, 320)	
		}
	break;
	case 6:
		if global.Timer > 30 {
			global.Timer = 0;
			event_perform(ev_alarm, 1)	
		}
	break;
	case 7:
		if global.Timer > 8 {
			global.Timer = 0;
			event_perform(ev_alarm, 1)	
		}
		global.borderwidth -= 0.25;
	break;
	case 8:
		if cycle = 1 {
			if global.Timer	= 220 {
				global.Timer = 0;
				event_perform(ev_alarm, 1)	
			}
		}
		else if cycle <= 6 {
			if global.Timer	= 30 {
				global.Timer = 0;
				event_perform(ev_alarm, 1)	
			}
		}
		else if cycle = 7 {
			if global.Timer = 30 {
				global.Timer = 0;
				event_perform(ev_alarm, 1)	
			}
		}
		else if cycle = 8 {
			if global.Timer	= 50 {
				global.Timer = 0;
				event_perform(ev_alarm, 1)	
			}
		}
	break;
	case 9:
		if cycle = 0 {
			global.Timer = 0;	
		
			if boxchange = false {
				global.borderwidth = 180;
				global.borderheight = 100;	
			}
		
		}
		// temporary fix for quickstart
		if cycle < 5 {
			if global.Timer	= 50 {
				event_perform(ev_alarm, 1)	
				global.Timer = 0;
			}
		}
		else if cycle < 9 {
			if global.Timer	= 15 {
				event_perform(ev_alarm, 1)	
				global.Timer = 0;
			}
		}
		else if cycle = 9 {
			if global.Timer	= 60 {
				event_perform(ev_alarm, 1)	
				global.Timer = 0;
			}
		}
		else if cycle <= 12 {
			obj_soul.movementcontrol = false
			obj_soul.gravitycontrol = false
			obj_soul.x = lerp(obj_soul.x, 320, 0.2)
			obj_soul.y = lerp(obj_soul.y, 335, 0.2)
		
			if global.Timer	= 30 {
				if(alarm[1] == -1) {
					alarm[1] = 2;	
					global.Timer = 0;
				}
			}
		}
	break;
	case 10:
		obj_soul.x = lerp(obj_soul.x, 320, 0.2)
		obj_soul.y = lerp(obj_soul.y, 335, 0.2)
		obj_kazy.setSpriteAlpha(0, 0.1)
	break;
	case 11:
		obj_kazy.setSpriteAlpha(1, 0.1)
		obj_soul.movementcontrol = true
		obj_soul.gravitycontrol = true
		if global.Timer	= 120 {	
			event_perform(ev_alarm, 1)
			global.Timer = 0;
		}
		
		if cycle = 5 {
			if(alarm[0] == -1) {
				alarm[0] = 5;	
			}	
		}
	
	break;
	case 12 :
	
		if cycle <= 3{
			if global.Timer	= 120 {
				if(alarm[1] == -1) {
					alarm[1] = 2;	
					global.Timer = 0;
				}
			}
		}
		else if cycle = 4 {
			if(alarm[0] == -1) {
				alarm[0] = 2;	
			}
		}
	
	break;
	case 13:
		obj_soul.x = lerp(obj_soul.x, 140, 0.05)
		obj_soul.y = lerp(obj_soul.y, 335, 0.05)
		obj_soul.image_angle = lerp(obj_soul.image_angle, 90, 0.09)
		if(alarm[0] == -1) {
			alarm[0] = 120;	
		}

	
	break;
	case 14:
		bone_wave = function(heightchange, multiplier) {
			return round(heightchange * sin(multiplier/4))
		}
		if !variable_instance_exists(id, "add") {
			add = 0
			tempNum = 0
		}
		else {
			add = lerp(add, 12, 0.05)
			tempNum -= add
		}		
		obj_soul.image_angle = lerp(obj_soul.image_angle, 90, 0.09)
		with (obj_buttoncontroller) {
			for (var i = 0; i < 4; i++) {
				ButtonPositions_X[i] -= other.add
				//show_debug_message(ButtonPositions_X[i])
			}
		}	
		layer_sequence_x(global.current_anim, 320 + tempNum) 
		if (layer_sequence_get_x(global.current_anim) <= -60) {
			tempNum = 380;
		}	
		with (obj_soul) {
			global.move.xSpdYSpd(0, vsp)
			if other.cycle = 9 {
				x = lerp(x, 320, 0.008)
			}
			
		}		
		if global.Timer	= 30 and cycle < 8{
			alarm[1] = 2;	
			global.Timer = 0;
		}
		else if cycle = 8 {
			if global.Timer = 40 {
				alarm[1] = 2;	
				global.Timer = 0;
			}
		}
		else if cycle = 9{
			if (global.Timer = 230){
				if(alarm[0] == -1) {
					alarm[0] = 2;	
				}	
				global.Timer = 0;
			}
		}
	break;
	case 15:
		add = lerp(add, 12, 0.05)
		tempNum -= add
		layer_sequence_x(global.current_anim, 320 + tempNum) 
		if (layer_sequence_get_x(global.current_anim) <= -60) {
			tempNum = 380;
		}	
		if cycle <= 7 {
			if global.Timer = 30 {
				alarm[1] = 2;	
				global.Timer = 0;
			}
		}
		else if cycle <= 10 {
			if global.Timer = 60 {
				alarm[1] = 2;	
				global.Timer = 0;
			}
			
		}
		else if cycle = 11 {
			if(alarm[1] == -1) {
				alarm[1] = 45;	
			}		
		}
	break;
	case 16:
		// will crash if atk started here
		layer_sequence_x(global.current_anim, 320 + tempNum) 
		if (layer_sequence_get_x(global.current_anim) <= -60) or add = 0{
			if add != 0 {
				tempNum = 380;
				add = 0
			}
			else {
				tempNum = lerp(tempNum, 0, 0.05);
			}
		}	
		else if add != 0{
			tempNum -= add	
		}
		if cycle < 8 and cycle >= 1{
			with (obj_buttoncontroller) {
				ButtonPositions_X[0] = lerp(ButtonPositions_X[0], 30 + 55, 0.05)
				ButtonPositions_X[1] = lerp(ButtonPositions_X[1], 183 + 55, 0.05)
				ButtonPositions_X[2] = lerp(ButtonPositions_X[2], 343 + 55, 0.05)
				ButtonPositions_X[3] = lerp(ButtonPositions_X[3], 497 + 55, 0.05)
			}
		}
		if cycle <= 12 {
			if global.Timer = 40 {
				alarm[1] = 2;	
				global.Timer = 0;
			}	
			if cycle > 11 and instance_exists(gaster[1]) {
			// make sure it is equals, as code will run more than once, 
			//meaning that it will destroy something that doesn't exist anymore
				if gaster[1].Interval = 0 {
					for (i = 1; i < cycle; i++) {
						if instance_exists(bone[i]) bone[i].destroy = true
					}	
				}
			}
		}
		else if cycle <= 20 {
			if global.Timer = 30 {
				alarm[1] = 2;	
				global.Timer = 0;
			}		
		}
		else if cycle = 21 {
			// offset for timing accuracy
			if global.Timer >= 110 - (global.audioPosition - 102){
				event_perform(ev_alarm, 0);	
			}			
		}
	break;
	case 17:
	// nothing needed for now	
		if global.audioPosition >= 139{
			event_perform(ev_alarm, 0)	
		}
		if global.Timer > 60 and cycle >= 1 and cycle < 8 {
			global.playerHP += 1	
			global.Timer = 0
		}
		if cycle >= 9 obj_bulletboard.image_alpha += 0.01
	break;
	case 18:	
	if cycle = 11{
		global.borderwidth -= 1;
		if global.Timer >= 10 {
			CreateBone(1, global.Left + 35, global.Left - 35, global.Floor - 53,  global.Floor - 53, 0, 0, "reverse", 100, 100, 1)
				bone[1].perchanger = 1/60
				bone[1].bone_timer = true
			CreateBone(2, global.Right - 35, global.Right + 35, global.Floor - 53,  global.Floor - 53, 0, 0, "reverse", 100, 100, 1)
				bone[2].perchanger = 1/60
				bone[2].bone_timer = true
			global.Timer = 0;
		}
	}
	break;
	case 19:
		// cinematics
	break;
	case 20:
		if !variable_instance_exists(id, "kazyModifier") {
			kazyModifier = 110;	
		}
		else {
			obj_kazy.currentY = kazyModifier + obj_bulletboard.buttoncurve(500, 1/720, "exit")
		}
		with obj_bulletboard {
			gradPos = lerp(gradPos, 480, 0.03)
			grad_state = false
			ui_y_change = buttoncurve(150, 1/160, "exit")
		}
		if !variable_instance_exists(id, "anglincr") {
			anglincr = 0;	
		}
		else {
			anglincr = lerp(anglincr, 2.5, 0.03)
			global.borderangle += anglincr;
		}	
	break;
	case 21:
		obj_kazy.currentY = lerp(obj_kazy.currentY, 110, 0.03)
		with obj_bulletboard ui_y_change = buttoncurve(150, 1/120, "enter")	
		if !layer_exists("whiteFlash") {
			layer_create(-100, "whiteFlash")
			whiteFlashSprite = layer_sprite_create("whiteFlash", 320, 240, battlepixel)
			flashAlpha = 0
			layer_sprite_xscale(whiteFlashSprite, 360)
			layer_sprite_yscale(whiteFlashSprite, 360)
			layer_sprite_alpha(whiteFlashSprite, flashAlpha)
		}
		else {
			flashAlpha = lerp(flashAlpha, 0, 0.025)
			layer_sprite_alpha(whiteFlashSprite, flashAlpha)
		}
		if (cycle = 9) {
			obj_soul.image_alpha -= 0.0025
			with obj_bulletboard image_alpha -= 0.001
			
			if obj_bulletboard.image_alpha < -0.4
			event_perform(ev_alarm, 4)
		}
		if cycle = 2 {
			obj_bulletboard.image_alpha = lerp(obj_bulletboard.image_alpha, 0.1, 0.01)
		}
	break;
	case "test":
		
	break;
}	
	
/*
if keyboard_check_pressed(ord("V")) {
	with (obj_bulletboard) {
		image_alpha = 1
		Start = false
		grad_state = true
	}
	with (obj_kazy) {
		setSpriteAlpha(1, 1)
	}
	layer_destroy(obj_bulletboard.introLayer)
	countdown = true	
	attack = "test";
	obj_kazy.changeBodyAnim("Idle")
	//attack = 7;
	//cycle = 14;
	event_perform(ev_alarm , 1);
	sound = true
	audio_sound_set_track_position(global.battleSong, 170.4)
}
/*
if keyboard_check_pressed(ord("B")) {
	with (obj_bulletboard) {
		image_alpha = 1
		Start = false
	}
	with (obj_kazy) {
		global.spriteBlacktoWhite = 1
		Start = false
	}
	layer_destroy(obj_bulletboard.introLayer)
	countdown = true	
	attack = "test";
	//attack = 21;
	//cycle = 5;
	alarm[1]= 2;
	sound = true
	audio_sound_set_track_position(global.battleSong, 155)
}
/*
if keyboard_check_pressed(ord("M")) {
	countdown = true	
	attack = 17
	alarm[1]= 2;
	with (obj_bulletboard) {
		image_alpha = 1
		Start = false
	}
	audio_sound_set_track_position(global.battleSong, 102)
	with (obj_kazy) {
		global.spriteBlacktoWhite = 1
		Start = true
	}
	layer_destroy(obj_bulletboard.introLayer)
}
if keyboard_check_pressed(ord("U")) {
	with (obj_bulletboard) {
		image_alpha = 1
		Start = false
	}
	with (obj_kazy) {
		global.spriteBlacktoWhite = 1
		Start = false
	}
	layer_destroy(obj_bulletboard.introLayer)
	countdown = true	
	//attack = "test";
	attack = 1;
	//cycle = 14;
	alarm[1]= 2;
	sound = true
	audio_sound_set_track_position(global.battleSong, 24)
}
if keyboard_check_pressed(ord("L")) {
	tempAudio *= -1
	audio_sound_gain(global.battleSong, tempAudio, 0)
	sound = true
}	
else if sound = false {
	audio_sound_gain(global.battleSong, 0, 0)	
}
*/

	
//show_debug_message(attack)	
//if global.audio_tracker > 42
//game_end()
// 121 - 133