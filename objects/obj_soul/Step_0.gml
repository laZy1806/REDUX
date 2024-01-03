	 /// @description movement
	// You can write your code in this editor
	//slowdown mechanic
// for when summoned in cutscene sequence, it doesnt cause errors	

var SoulSpeed = global.soulspeed;
	
global.playerHP = clamp(global.playerHP, 0, global.maxplayerHP);
if show {	
	if keyboard_check(ord("X")) || keyboard_check(vk_rshift) {
		var slow_multi = 1/2
	}
	else {
		var slow_multi = 1	
	}
	countdown = clamp(countdown, -1, 6)
	if afterData.Boolean {
		if (afterData.Alpha > 0) afterData.Alpha = lerp(afterData.Alpha, 0, afterData.Lerp)
		if (afterData.Scale <= 1) afterData.Scale = lerp(afterData.Scale, 1, afterData.Lerp)
	}
	if Mode == SoulModes.Red {
		
		sprite_index = soul;
		BLUE_Gravity = 0
		
		vsp = (keyboard_check(ord(global.downKey)) - keyboard_check(ord(global.upKey))) * spdmulti * slow_multi
		hsp = (keyboard_check(ord(global.rightKey)) - keyboard_check(ord(global.leftKey))) * spdmulti * slow_multi
	
		if slam = false and movementcontrol {
			global.move.xSpdYSpd(hsp, vsp);
		}
		countdown = 0	
	}	
	if Mode == SoulModes.Blue {
		
	// fix for being able to jump when shifting to blue mode	
	countdown += 1	
	sprite_index = soul_blue;
	
	vsp = (keyboard_check(ord(global.downKey)) - keyboard_check(ord(global.upKey))) * spdmulti * slow_multi
	hsp = (keyboard_check(ord(global.rightKey)) - keyboard_check(ord(global.leftKey))) * spdmulti * slow_multi
	
	if slam {
		percent += perchanger
		slam_soul = animcurve_channel_evaluate(gravshift, percent)	
		movementcontrol = false
			switch side {
				case "left":
					global.move.xSpdYSpd(-15 * slam_soul, 0)
					obj_soul.image_angle = -90
					obj_kazy.change_body_sprite(8)
				break;
				case "right":
					global.move.xSpdYSpd(15 * slam_soul, 0)
					obj_soul.image_angle = 90
					obj_kazy.change_body_sprite(13)
				break;
				case "top":
					global.move.xSpdYSpd(0, -15 * slam_soul)
					obj_soul.image_angle = 180
					obj_kazy.change_body_sprite(2)
				break;
				case "bottom":
					global.move.xSpdYSpd(0, 15 * slam_soul)
					obj_soul.image_angle = 0
					obj_kazy.change_body_sprite(5)
				break;
		
			}		
		if global.move.againstWall.hori != 0 or global.move.againstWall.vert != 0 {	
			camControls("null", "null", "null", 1.5)
			slam = false
			percent = 0
			slam_soul = 0
			movementcontrol = true			
		}
	}	
	if movementcontrol {	
		if image_angle = 0 {
			global.move.xSpdYSpd(hsp, BLUE_Gravity);
		}
		else if image_angle = 90 {
			global.move.xSpdYSpd(BLUE_Gravity, vsp);
			
		}
		else if image_angle = -90 {
			global.move.xSpdYSpd(-BLUE_Gravity, vsp);
			
		}
		else if image_angle = 180 {
			global.move.xSpdYSpd(hsp, -BLUE_Gravity);
			
		}
	}
		if image_angle == 0 {
			
			if countdown > 5 {	
				if keyboard_check(ord("W")){
					if BLUE_Jumped == 0 {
						BLUE_Gravity = -4;
					}
				}
			}	
			if keyboard_check_released(ord("W")) {
				if BLUE_Gravity < 0 {
					BLUE_Gravity = 0;
				}
			}
			if global.move.againstWall.vert != 0 {	
				BLUE_Jumped = 0;
				BLUE_Gravity = 0;
			}
			else {
				BLUE_Jumped = 1;
			}
		}
		if image_angle == 90 {
			
			if countdown > 5 {	
				if keyboard_check(ord("A")) {
					if BLUE_Jumped == 0 {
						BLUE_Gravity = -4;
					}
				}
			}
			if keyboard_check_released(ord("A")) {
				if BLUE_Gravity < 0 {
					BLUE_Gravity = 0;
				}
			}
			if global.move.againstWall.hori != 0 {
				
				//if BLUE_Gravity >= 8 audio_play_sound(impact, 20, false);
				BLUE_Jumped = 0;
				BLUE_Gravity = 0;
			}
			else {
				BLUE_Jumped = 1;
			}
		}
		if image_angle == 180 {
			
			if countdown > 5 {	
				if keyboard_check(ord("S")) {
					if BLUE_Jumped == 0 {
						BLUE_Gravity = -4;
					}
				}
			}
			if keyboard_check_released(ord("S")) {
				if BLUE_Gravity < 0 {
					BLUE_Gravity = 0;
				}
			}
			//y -= BLUE_Gravity * delta;
			if global.move.againstWall.vert != 0 {
				
				//if BLUE_Gravity >= 8 audio_play_sound(impact, 20, false);
				BLUE_Jumped = 0;
				BLUE_Gravity = 0;
			}
			else {
				BLUE_Jumped = 1;
			}
		}
		if image_angle == -90 {
			
			if countdown > 5 {	
				if keyboard_check(ord("D")){
					if BLUE_Jumped == 0 {
						BLUE_Gravity = -4;
					}
				}
			}	
			if keyboard_check_released(ord("D")) {
				if BLUE_Gravity < 0 {
					BLUE_Gravity = 0;
				}
			}
			if global.move.againstWall.hori != 0 {	
				BLUE_Jumped = 0;
				BLUE_Gravity = 0;
			}
			else {
				BLUE_Jumped = 1;
			}
		}
		if gravitycontrol {
			
			//begin jump
			if BLUE_Gravity >= -6 * delta && BLUE_Gravity < -0.8 * delta
				BLUE_Gravity += 0.13 * delta;
			//between -0.8 and 0.8, for when dropping	
			else if BLUE_Gravity >= -0.8 * delta && BLUE_Gravity < 0.8 * delta
				BLUE_Gravity += 0.16 * delta;
			//also for when dropping longer	
			else if BLUE_Gravity >= 0.8 * delta && BLUE_Gravity < 2.5 * delta
				BLUE_Gravity += 0.17 * delta;
			
			else if BLUE_Gravity >= 2.5 * delta && BLUE_Gravity < 4 * delta
				BLUE_Gravity += 0.19 * delta;
			//if keyboard_check(ord("W"))	
					
		}
		else {
			BLUE_Gravity = 0
		}
	}
	
	global.SoulX = x;
	global.SoulY = y;
	
	global.soulspeed = SoulSpeed;

	if (global.InvFrames > 0) {
		global.InvFrames -= 1;
	}
	else {
		image_speed = 0;
		image_index = 0;
	}
}











