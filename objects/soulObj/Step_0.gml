vsp = (keyboard_check(ord(global.downKey)) - keyboard_check(ord(global.upKey))) * 2
hsp = (keyboard_check(ord(global.rightKey)) - keyboard_check(ord(global.leftKey))) * 2
var collisionCheckHori = move.againstWall.hori
var collisionCheckVeri = move.againstWall.vert

switch Color {
	case "Blue":
		if (!isSlam) { //normal movement
			if (!isJumped && keyboard_check(ord(jumpKey))) {
				grav = -4;
				isJumped = true
			}
			else if (grav < 0 && keyboard_check_released(ord(jumpKey))) grav = 0
			switch image_angle {
				case 0:
					move.xSpdYSpd(hsp, grav)
					jumpKey = global.upKey
					verticalColChecker()
				break;
				case 90:
					move.xSpdYSpd(grav, vsp)
					jumpKey = global.leftKey
					horizontalColChecker()
				break;
				case 180:
					move.xSpdYSpd(hsp, -grav)
					jumpKey = global.downKey
					verticalColChecker()
				break;
				case 270:
					move.xSpdYSpd(-grav, vsp)
					jumpKey = global.rightKey
					horizontalColChecker()
				break;
			}
			if isGrav {
				if (grav >= -6  && grav < -0.8 ) grav += 0.13 ;
				//between -0.8 and 0.8, for when dropping	
				else if (grav >= -0.8  && grav < 0.8 ) grav += 0.16 ;
				//also for when dropping longer	
				else if (grav >= 0.8  && grav < 2.5 ) grav += 0.17 ;
				else if (grav >= 2.5  && grav < 4 ) grav += 0.19 ;
			}
			else grav = 0
		}
		else { //code when slammed
		
		
		
		
		}
		sprite_index = soulSPBlue
	break;
	case "Red":
		move.xSpdYSpd(hsp, vsp)
		sprite_index = soulSPRed
	break;
	
}		
if mouse_check_button(mb_left) {
	x = mouse_x	
	y = mouse_y	
}
