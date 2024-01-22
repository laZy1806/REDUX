vsp = (keyboard_check(ord(global.downKey)) - keyboard_check(ord(global.upKey))) * 2
hsp = (keyboard_check(ord(global.rightKey)) - keyboard_check(ord(global.leftKey))) * 2
var verCol = move.againstWall.vert != 0
var horiCol = move.againstWall.hori != 0

switch Color {
	case "Blue":
		slamIncr += slamSpd
		xSlam = (horiCol = true) ? 0 : xSlam
		ySlam = (verCol = true) ? 0 : ySlam
		var _xSlam = (xSlam) * arctan(4 * slamIncr), _ySlam = (ySlam) * arctan(4 * slamIncr)
		
		isSlam = (_xSlam = 0 && _ySlam = 0) ? false : true
		var _x = (image_angle = 0 || image_angle = 180) ? hsp : (image_angle != 270 ? grav : -grav), _y = (image_angle = 90 || image_angle = 270) ? vsp : (image_angle != 180 ? grav : -grav)
		var _jumpCol = (image_angle = 0 || image_angle = 180) ? verticalColChecker : horizontalColChecker
		
		_jumpCol()
		swapCooldown = swapCooldown > 0 ? swapCooldown - 1 : 0
		
		if ((!isJumped) && keyboard_check(ord(jumpKey)) && swapCooldown <= 0) { // starts jump off
			grav = -4;
			isJumped = true
		}
		else if (grav < 0 && keyboard_check_released(ord(jumpKey))) { // allows to prematurely end jump halfway
			grav = 0
		}
		move.xSpdYSpd(_x + _xSlam, _y + _ySlam)			
		if isGrav && !isSlam {
			if (grav >= -6  && grav < -0.8) grav += 0.13;
			//between -0.8 and 0.8, for when dropping	
			else if (grav >= -0.8  && grav < 0.8 ) grav += 0.16;
			//also for when dropping longer	
			else if (grav >= 0.8  && grav < 2.5 ) grav += 0.19;
			else if (grav >= 2.5  && grav < 4 ) grav += 0.21;
			isJumped = true
		}
		else grav = 0
		switch image_angle {
			case 0:
				jumpKey = global.upKey
			break;
			case 90:
				jumpKey = global.leftKey
			break;
			case 180:
				jumpKey = global.downKey
			break;
			case 270:
				jumpKey = global.rightKey
			break;
		}
		sprite_index = soulSPBlue
	break;
	case "Red":
		move.xSpdYSpd(hsp, vsp)
		sprite_index = soulSPRed
		image_angle = 0
	break;
}		
if mouse_check_button(mb_right) {
	x = mouse_x	
	y = mouse_y	- RELY
}
if global.InvFrames <= 0 image_speed = 0
else {
	image_speed = 5
	global.InvFrames--
}