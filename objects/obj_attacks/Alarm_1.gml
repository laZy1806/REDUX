/// @description attacks
//CreateGaster(random(316), 100, 0, 0, 315 , 50, 2, 2, true)

// dont touch, sets atk countdown and box to function
obj_bulletboard.beginningbox = false
countdown = true
obj_soul.show = true
if instance_exists(persistentSoul) instance_destroy(persistentSoul)
if layer_exists(obj_bulletboard.introLayer) layer_destroy(obj_bulletboard.introLayer)
if instance_exists(gameOverObj) {
	instance_destroy(gameOverObj)
}
// IMPORTANT, bone placement needs to be 3 pixels away from coord of box, as center is inside
// the wall, so calc height and - or + 3
if attack = 1 {
	// if attack code is repeated, used to prevent slam happening multiple times
	if cycle = 0 {	
		if camObj.camY != 0 camControls(0, 50, 1, , 0.04)
		obj_kazy.changeBodyAnim("Idle")
		obj_soul.Mode = SoulModes.Blue
		slam_data(0, "bottom")
		if boxchange = false {
			global.borderwidth = 100;
			global.borderheight = 100;	
		}
	}
		obj_kazy.layerSpeed = 1.5
		CreateBone(1, global.Right + 20, global.Left - 20, 368, 368, 0, 0, false, 30, 30, 1)
		bone[1].perchanger = 1/60
		bone[1].bone_timer = true
		CreateBone(2, global.Left - 20, global.Right + 20, 368, 368, , , false, 30, 30, 1)
		bone[2].perchanger = 1/60
		bone[2].bone_timer = true
		CreateBone(3, global.Left - 20, global.Right + 20, 305, 305, 0, 0, false, 40, 40, 1)
		bone[3].perchanger = 1/60
		bone[3].bone_timer = true
		CreateBone(4, global.Right + 20, global.Left - 20, 305, 305, 0, 0, false, 40, 40, 1)
		bone[4].perchanger = 1/60
		bone[4].bone_timer = true
	
	if cycle = 2 {
		Gaster(1, 550, 680, 370, 370, 180, 180, 5, 1.5, 1.5, false, 50, 60, 10)
	}
	if cycle = 3 {
		bone[1].destroy = true
		bone[2].destroy = true
		bone[3].destroy = true
		bone[4].destroy = true	
		event_perform(ev_alarm, 0)
	}	
	// statement used to check if box is gradiually getting bigger, aka allowing box to increase in size overtime
	cycle++;
}
else if attack = 2 {
	
// empty to delay gaster blaster and next attack

}
else if attack = 3 {
		gaster[1].destroy = true
		alarm[0] = 10
		if boxchange = false {
			global.borderwidth = 120;
			global.borderheight = 100;
		}
	
}
else if attack = 4 {
		
	obj_soul.Mode = SoulModes.Red
	boxmove(0, -100, true, 0)
	obj_soul.x = 220
	obj_soul.y = 336
	layer_set_visible(lightswitch, false)
	
}
else if attack = 5 {
	if cycle < 8 {	
		CreateBone(1, global.Left - 30, global.Right + 30, 305, 305, 0, 0, false, 40, 40, 1)
			bone[1].perchanger = 1/45
			bone[1].bone_timer = true
		CreateBone(2, global.Right + 30, global.Left - 30, 358, 358, 0, 0, false, 50, 50, 1)
			bone[2].perchanger = 1/45
			bone[2].bone_timer = true
		}
	else if cycle = 8 {
		Gaster(3, 550, 800, 150, -200, 220, 200, 2, 1.5, 1.5, false, 40, 40, 10);
	}
		cycle++;
}
//32.20 seconds
else if attack = 6 {
	
	if boxchange = false {
		global.borderwidth = 160;
		global.borderheight = 102;
	}
	
	if cycle = 0 {
	CreateBone(1, 345, 400, 383 - 50, 383 - 50, 0, 0, "reverse", 100, 100, 1)
		bone[1].perchanger = 1/80
		bone[1].bone_timer = true
	CreateBone(2, 300, 230, 383 - 50, 383 - 50, 0, 0, "reverse", 100, 100, 1)
		bone[2].perchanger = 1/80
		bone[2].bone_timer = true
	}	
	if cycle = 1 {
	CreateBone(3, 335, 400, 383 - 50, 383 - 50, 0, 0, "reverse", 100, 100, 1)
		bone[3].perchanger = 1/80
		bone[3].bone_timer = true
	CreateBone(4, 280, 230, 383 - 50, 383 - 50, 0, 0, "reverse", 100, 100, 1)
		bone[4].perchanger = 1/80
		bone[4].bone_timer = true
	}	
	if cycle = 2 {
	CreateBone(5, 355, 400, 383 - 50, 383 - 50, 0, 0, "reverse", 100, 100, 1)
		bone[5].perchanger = 1/80
		bone[5].bone_timer = true
	CreateBone(6, 310, 230, 383 - 50, 383 - 50, 0, 0, "reverse", 100, 100, 1)
		bone[6].perchanger = 1/80
		bone[6].bone_timer = true
				
		// timed to beat at 34 sec
		Gaster(1, 500, 700, 295, 295, 180, 180, 0, 1.3, 1.3, false, 50, 55, 20);
				
		Gaster(2, 135, 135 - 200, 365, 365, 0, 0, 0, 1.3, 1.3, false, 50, 55, 20);
				
	}		
	if cycle = 3 {
		CreateBone(7, 335, 400, 383 - 50, 383 - 50, 0, 0, "reverse", 100, 100, 1)
			bone[7].perchanger = 1/55
			bone[7].bone_timer = true
		CreateBone(8, 295, 230, 383 - 50, 383 - 50, 0, 0, "reverse", 100, 100, 1)
			bone[8].perchanger = 1/55
			bone[8].bone_timer = true
	}
	if cycle = 4 {
		if(alarm[0] == -1) 
			alarm[0] = 2;
					
	}
	cycle++
}
//34.20 seconds
else if attack = 7 {	
	if boxchange = false {
		global.borderwidth = 160;
		global.borderheight = 102;
		boxchange = true
	}
	if cycle < 30 {	
		CreateBone(cycle, global.Left + 25, global.Left - 25, 383 - 50, 383 - 50, 0, 0, "reverse", 100, 100, 1)
			bone[cycle].perchanger = 1/60
			bone[cycle].bone_timer = true
		CreateBone(cycle + 1, global.Right - 25, global.Right + 25, 383 - 50, 383 - 50, 0, 0, "reverse", 100, 100, 1)
			bone[cycle + 1].perchanger = 1/60
			bone[cycle + 1].bone_timer = true
	}
	if cycle = 7 {	
		Gaster(1, 500, 500 + 200, 295, 295, 180, 180, 0, 1.2, 1.2, false, 35, 40, 60);
		Gaster(2, 135, 135 - 200, 340, 340, 0, 0, 0, 1.2, 1.2, false, 35, 40, 60);		
	}	
	if cycle = 19 {
		Gaster(3, 135, 135 - 200, 365, 365, 0, 0, 0, 1.2, 1.2, false, 35, 40, 60);		
	}
	if cycle = 25 {
		camControls(0, -100, 0.55, "null", 0.04)
		obj_kazy.headChange(3)
		global.playerHP += 40
	}	
	if cycle = 36 {
		if(alarm[0] == -1) alarm[0] = 2;
		boxchange = false
		if boxchange = false {
			global.borderwidth = 180;
			global.borderheight = 100;	
		}
	}
	cycle++;
}
// 39.5 seconds fancy bone height attack
else if attack = 8 {	
	if cycle = 0 {	
		obj_kazy.headChange(3)
		if camObj.camY != 0 camControls(0, 100, 1, "null", 0.05)
		obj_soul.Mode = SoulModes.Blue	
			for (var i = 0; i < 140; i++) {
				if i mod 10 != 0 {
					// creates number that isnt a multiple of 10
					CreateBone(i, (global.Left - 100) - (15 * i), 2500 - (15 * i), 285 + 17, 285 + 17, 180, 180, false, 36, 36, 20)
					bone[i].perchanger = 1/475
					bone[i].bone_timer = true
					
				}
				else {
					// creates bone that is multiple of 10
					CreateBone(i, (global.Left - 100) - (15 * i), 2500 - (15 * i), 285 + 25, 285 + 25, 180, 180, false, 50, 50, 20)
					bone[i].perchanger = 1/475
					bone[i].bone_timer = true
					// numbers 100 and beyond are not taken
					CreateBone(140 + i, (global.Left - 100) - (15 * i), 2500 - (15 * i), 383 - 10, 383 - 10, 0, 0, false, 20, 20, 20)
					bone[140 + i].perchanger = 1/475
					bone[140 + i].bone_timer = true
				}
			}
		if boxchange = false {
			global.borderwidth = 180;
			global.borderheight = 100; 
		}
	}
	else if cycle = 1 {
		camControls(0, 50, 0.5, "null", 0.04)
	}
	// last bone position is desX - 15 * maximum i value, so 15 * 3
	if cycle >= 1 {
		for (var i = 0; i < 140; i++) {
			if cycle != 0 and cycle < 7 {
				if cycle = 1 {	
					obj_soul.Mode = SoulModes.Red
					if i mod 10 != 0 {
						bone[i].startheight = 36
						bone[i].endheight = 20
						bone[i].height_fin = false
						bone[i].smoothheightmov = true
						bone[i].perchanger_height = 1/10
				
					}			
					else {
						bone[i].startheight = 50
						bone[i].endheight = 25
						bone[i].height_fin = false
						bone[i].smoothheightmov = true
						bone[i].perchanger_height = 1/10
					
						bone[140 + i].startheight = 20
						bone[140 + i].endheight = 40
						bone[140 + i].height_fin = false
						bone[140 + i].smoothheightmov = true
						bone[140 + i].perchanger_height = 1/10
					}
				}
				else if cycle mod 2 = 0{			
					if i mod 10 = 0 {
						bone[i].startheight = 25
						bone[i].endheight = 40
						bone[i].height_fin = false
					
						bone[140 + i].startheight = 40
						bone[140 + i].endheight = 25
						bone[140 + i].height_fin = false	
					}
				}
				else if cycle mod 2 = 1 {				
					if i mod 10 = 0 {
						bone[i].startheight = 40
						bone[i].endheight = 25
						bone[i].height_fin = false
						
						bone[140 + i].startheight = 25
						bone[140 + i].endheight = 40
						bone[140 + i].height_fin = false	
					}
				}
			}	
			if cycle = 7 {
				if i mod 10 = 0 {
					bone[i].startheight = 40
					bone[i].endheight = 25
					bone[i].height_fin = false
				}
				obj_soul.Mode = SoulModes.Blue
				slam_data(2, "right")
				if i = 0 Gaster(0, 390, 390, 220, -80, 270, 270, 0, 1.4, 1.4, false, 30, 40, 15);
			}
			if cycle = 8 {
				if i = 0 Gaster(1, 278, 278, 220, -80, 270, 270, 0, 1.4, 1.4, false, 30, 40, 15);
				slam_data(2, "left")	
				if(alarm[0] == -1) 
					alarm[0] = 60;			
			}
		}
	}
	
	cycle++
}
// 48.0 seconds
else if attack = 9 {
	if cycle = 0 {
		camControls(0, -50, 1, "null", 0.04)
		obj_kazy.headChange(2)
		obj_soul.image_angle = 0 
		obj_soul.Mode = SoulModes.Blue	
	}
	if cycle < 5 {
		CreateBone(cycle, global.Left - 25, global.Right + 25, 383 - 15, 383 - 15, 0, 0, false, 30, 30, 1)
			bone[cycle].perchanger = 1/45	
			bone[cycle].bone_timer = true
		CreateBone(cycle + 1, global.Left - 90, global.Right + 90, 383 - 40, 383 - 40, 0, 0, false, 80, 80, 1)
			bone[cycle + 1].perchanger = 1/75
			bone[cycle + 1].hit_color = "aqua"
			bone[cycle + 1].bone_timer = true
	}
	else if cycle = 5 {
		CreateBone(cycle, 360, global.Right + 25, 383 - 15, 383 - 15, 0, 0, "reverse", 30, 30, 1)
			bone[cycle].perchanger = 1/50	
			bone[cycle].bone_timer = true
		CreateBone(cycle + 1, 360, global.Right + 90, 383 - 40, 383 - 40, 0, 0, "reverse", 80, 80, 1)
			bone[cycle + 1].perchanger = 1/80
			bone[cycle + 1].hit_color = "aqua"
			bone[cycle + 1].bone_timer = true
			
		Gaster(1, 220, 220, 220 , -10, 270, 270, 0, 1.2, 1.2, false, 30, 65, 10);	
	}
	else if cycle = 6 {
		Gaster(2, 290, 290, 220, -10, 270, 270, 0, 1.2, 1.2, false, 30, 65, 10);	
		
	}
	else if cycle = 7 {
		Gaster(3, 360, 360, 220 , -10, 270, 270, 0, 1.2, 1.2, false, 30, 65, 10);	
		
	}
	else if cycle = 8 {
		Gaster(4, 420, 420, 220 , -10, 270, 270, 0, 1.2, 1.2, false, 25, 65, 10);		
	}
	else if cycle = 9 {
		if boxchange = false {
			global.borderwidth = 36;
			global.borderheight = 20;	
		}
	}
	else if cycle = 10 {
		Gaster(1, 373 + 90, 780, 340, 340, 180, 180, 0, 1.5, 1.5, false, 40, 800, 800);	
		//CreateGaster(2, 180, -260, 375, 375, 0, 0, 0, 1.5, 1.5, false, 40, 800, 800);	
	}
	else if cycle = 11 {
		Gaster(2, 264 - 90, -260, 340, 340, 0, 0, 0, 1.5, 1.5, false, 40, 800, 800);	
	}
	else if cycle = 12 {
		obj_kazy.shakeSprite()	
		obj_kazy.bodyChange(1)
		obj_kazy.headChange(3)
		
		if(alarm[0] == -1) {
			alarm[0] = 40;	
		}
	}
	cycle++;
}
// 56.00 seconds make sequence that plays from 56 - 57 and then increase atk count
else if attack = 10 {
	obj_soul.depth = -21
	obj_kazy.depth = -22
	
	flash_layer_white = layer_create(-19)
	layer_sequence_create(flash_layer_white, 320, 240, flash_56_white);
	alarm[0] = 60;	
}
// 57.00 seconds or 57.03
else if attack = 11 {
	obj_soul.depth = obj_soul.ogDepth 
	obj_kazy.depth = obj_kazy.ogDepth 
	obj_soul.Mode = SoulModes.Red
	if boxchange = false {
		global.borderwidth = 180;
		global.borderheight = 100;	
	}
	//obj_kazy.shakeSprite()
	if cycle = 0 {
		obj_kazy.doAfterImage(0.027)
		obj_kazy.bodyChange(0)
		obj_kazy.headChange(3)
		camControls(0, -30, 0.8, 20, 0.08)
	}
	if cycle = 1 {
		camControls(0, 70, 0.8, 10, 0.08)
		obj_kazy.shakeSprite(20, 5)
		obj_bulletboard.grad_state = true	
	}
	if cycle = 2{
		camControls(0, -40, 1, 10, 0.08)
		obj_kazy.shakeSprite(20, 5)
		//camControlsBeat(0.75, 6)
	}
	if cycle = 3{
		obj_kazy.shakeSprite(20, 5)
		camControlsBeat(0.8, 6)
	}
	
	cycle++;
	
}
//65.00 seconds	
else if attack = 12 {
	if boxchange = false {
		global.borderwidth = 180;
		global.borderheight = 100;	
	}
	if cycle = 0 {
		camControlsBeat(0.8, 5)
		Gaster(1, 520, 500 + 200, 295, 295, 180, 180, 0, 1.2, 1.2, false, 40, 50, 40);
		Gaster(2, 520, 500 + 200, 365, 365, 180, 180, 0, 1.2, 1.2, false, 40, 50, 40);
		Gaster(3, 500, 500 + 200, 150, -50, 225, 225, 0, 1.2, 1.2, false, 40, 50, 40);
	}
	if cycle = 1 {
		obj_soul.Mode = SoulModes.Blue
		slam_data(1, "right")
		
		CreateBone(1, global.Right - 3 - 25, global.Right - 3 - 25, global.Floor + 64, global.Top  - 64, 90, 90, false, 50, 50, 1)
			bone[1].perchanger = 1/70
			bone[1].hit_color = "aqua"
			bone[1].bone_timer = true
		CreateBone(2, global.Right - 3 - 25, global.Right - 3 - 25, global.Top  - 64, global.Floor + 64, 90, 90, false, 50, 50, 1)
			bone[2].perchanger = 1/70
			bone[2].hit_color = "aqua"
			bone[2].bone_timer = true
	}
	if cycle = 2 {
		obj_soul.image_angle = 0	
		slam_data(2, "bottom")
		for (var i = 0; i < 3; i++)	{
			CreateBone(i, global.Right + (30 + i * 100), global.Left - (30 + i * 100), global.Floor - 25 - 3, global.Floor - 25 - 3, 0, 0, false, 50, 50, 1)
			bone[i].perchanger = 1/(80 * (1 + (0.8 * i)))
			bone[i].bone_timer = true
			//bone[1].startheight = 50
			bone[i].endheight = 25
			//bone[1].height_fin = false
			bone[i].smoothheightmov = true
			bone[i].perchanger_height = 1/(50 * (1 + (0.8 * i)))
		
			CreateBone(i + 1, global.Right + (30 + i * 100), global.Left - (30 + i * 100), global.Top + 13 + 3, global.Top + 3 + 13, 180, 180, false, 25, 25, 1)
			bone[i + 1].perchanger = 1/(80 * (1 + (0.8 * i)))
			bone[i + 1].bone_timer = true	
			//bone[2].startheight = 50
			bone[i + 1].endheight = 50
			//bone[2].height_fin = false
			bone[i + 1].smoothheightmov = true
			bone[i + 1].perchanger_height = 1/(50 * (1 + (0.8 * i)))
		}
	}
	cycle++;
}
else if attack = 13 {
	if boxchange = false {
		global.borderwidth = 380;
		global.borderheight = 100;	
	}
	obj_soul.Mode = SoulModes.Red
	obj_soul.gravitycontrol = false
	obj_soul.movementcontrol = false
	camControls(-120, 75, 0.6, "null", 0.04)

}
//73 seconds
else if attack = 14 {
	if cycle = 0 {
		obj_soul.movementcontrol = false
		obj_soul.x = 140
		if camObj.camX != 0 camControls(120, -75, 1, "null", 0.04)
		
		if boxchange = false {
			global.borderwidth = 680;
			global.borderheight = 100;
			obj_bulletboard.box_speed = 10
		}
	}
	if cycle = 1 {	
		Gaster(1, 580, 680, 340, 340, 180, 180, 10, 1.2, 1.2, false, 30, 30, 10)	
	}
	else if cycle = 2{
		Gaster(1, 580, 680, 300, 300, 180, 180, 10, 1.2, 1.0, false, 30, 40, 10)	
		Gaster(1, 580, 680, 370, 370, 180, 180, 10, 1.2, 1.0, false, 30, 40, 10)	
	}
	else if cycle = 3 {
		CreateBone(cycle, global.Left, global.Right, global.Top + 3 + 25, global.Top + 3 + 25, 180, 180, false, 50, 50, 1)
		bone[cycle].perchanger = 1/60
		bone[cycle].bone_timer = true
		CreateBone(cycle + 1, global.Left, global.Right, global.Floor - 3 - 10, global.Floor - 3 - 10, 0, 0, false, 20, 20, 1)
		bone[cycle + 1].perchanger = 1/60
		bone[cycle + 1].bone_timer = true
	}
	else if cycle = 4 {
		CreateBone(cycle, global.Left, global.Right, global.Top + 3 + 18, global.Top + 3 + 18, 180, 180, false, 36, 36, 1)
			bone[cycle].perchanger = 1/60
			bone[cycle].bone_timer = true
		CreateBone(cycle + 1, global.Left, global.Right, global.Floor - 3 - 18, global.Floor - 3 - 18, 0, 0, false, 36, 36, 1)
			bone[cycle + 1].perchanger = 1/60
			bone[cycle + 1].bone_timer = true
	}
	else if cycle = 5 {
		for (var i = 1; i < 9; i++) {
			CreateBone(cycle + i, global.Left - 120 + (15 * i), global.Right + 120 + (15 * i), global.Top + 3 + 50, global.Top + 3 + 50, 180, 180, false, 100, 100, 1)
			bone[cycle + i].perchanger = 1/60
			bone[cycle + i].dmg = 2
			bone[cycle + i].bone_timer = true
			bone[cycle + i].hit_color = "orange";
		}
		
	}
	else if cycle = 6 {
		for (var i = 1; i < 9; i++) {
			CreateBone(cycle + i, global.Left - 120 + (15 * i), global.Right + 120 + (15 * i), global.Top + 3 + 50, global.Top + 3 + 50, 180, 180, false, 100, 100, 1)
			bone[cycle + i].perchanger = 1/60
			bone[cycle + i].dmg = 2
			bone[cycle + i].bone_timer = true
			bone[cycle + i].hit_color = "aqua";
		}	
	}
	else if cycle = 7 {
		Gaster(1, 50, -80, 340, 340, 0, 0, 10, 1.5, 1.3, false, 30, 40, 10)	
		
	}
	else if cycle = 8 {
		var count = 100
		/* bone wall to close in, unused
		for (var i = 1; i < 8; i++) {
			CreateBone(cycle + i, 200, global.Left - 250, global.Top + (14 * i) - 3, global.Top + (14 * i) - 3, 90, 90, false, 500, 500, 1)
			bone[cycle + i].perchanger = 1/360
			bone[cycle + i].dmg = 2
			//bone[cycle + i].bone_timer = true
		}	
		*/
		for (var i = 0; i < count; i++) {
			
			var topheight = global.Top + 15 + 3 + bone_wave(10, i)/2
			var bottomheight = global.Floor - 20 - 3 - bone_wave(-10, i)/2
			
			CreateBone(cycle + i, global.Left - (20 * i), global.Right - (20 * i) + count * 20, topheight, topheight, 180, 180, false, 30 + bone_wave(10, i), 30 + bone_wave(10, i), 1)
				bone[cycle + i].perchanger = 1/240
				bone[cycle + i].bone_timer = true
			CreateBone(cycle + 1 + i, global.Left - (20 * i), global.Right - (20 * i) + count * 20, bottomheight, bottomheight, 0, 0, false, 40 + bone_wave(-10, i), 40 + bone_wave(-10, i), 1)
				bone[cycle + 1 + i].perchanger = 1/240
				bone[cycle + 1 + i].bone_timer = true
				
		}
	}

	cycle++;
}
//81 seconds	
else if attack = 15 {
	if cycle = 0 {
		obj_soul.countdown = 0;
		
		if boxchange = false {
			global.borderwidth = 680;
			global.borderheight = 100;
			obj_bulletboard.box_speed = 10
		}
		camControls(0, 75, 0.5, "null")
		with obj_soul {
			movementcontrol = true
			gravitycontrol = true
			Mode = SoulModes.Blue
			image_angle = 0;
		}
	}	
	else if cycle <= 6 {
		CreateBone(cycle, 320 + 250, 320 - 250, global.Floor - 3 - 10, global.Floor - 3 - 10, 0, 0, false, 20, 20, 1)
		bone[cycle].perchanger = 1/85
		bone[cycle].bone_timer = true
		CreateBone(cycle + 1, 320 + 250, 320 - 250, global.Top + 3 + 25, global.Top + 3 + 25, 0, 0, false, 50, 50, 1)
		bone[cycle + 1].perchanger = 1/85
		bone[cycle + 1].bone_timer = true
		
		CreateBone(cycle, 320 - 250, 320 + 250, global.Floor - 3 - 10, global.Floor - 3 - 10, 0, 0, false, 20, 20, 1)
		bone[cycle].perchanger = 1/85
		bone[cycle].bone_timer = true
		CreateBone(cycle + 1, 320 - 250, 320 + 250, global.Top + 3 + 25, global.Top + 3 + 25, 0, 0, false, 50, 50, 1)
		bone[cycle + 1].perchanger = 1/85
		bone[cycle + 1].bone_timer = true
	}	
	else if cycle = 7 {
		CreateBone(cycle, 320 + 250, 320 - 250, global.Floor - 3 - 25, global.Floor - 3 - 25, 0, 0, false, 50, 50, 1)
		bone[cycle].perchanger = 1/100
		bone[cycle].bone_timer = true
		CreateBone(cycle + 1, 320 + 250, 320 - 250, global.Top + 3 + 10, global.Top + 3 + 10, 0, 0, false, 20, 20, 1)
		bone[cycle + 1].perchanger = 1/100
		bone[cycle + 1].bone_timer = true
		
		CreateBone(cycle, 320 - 250, 320 + 250, global.Floor - 3 - 25, global.Floor - 3 - 25, 0, 0, false, 50, 50, 1)
		bone[cycle].perchanger = 1/100
		bone[cycle].bone_timer = true
		CreateBone(cycle + 1, 320 - 250, 320 + 250, global.Top + 3 + 10, global.Top + 3 + 10, 0, 0, false, 20, 20, 1)
		bone[cycle + 1].perchanger = 1/100
		bone[cycle + 1].bone_timer = true
	}
	else if cycle = 8 {
		Gaster(1, 450, 600, 360, 360, 180, 180, 10, 1.2, 1.0, false, 30, 40, 5)	
	}
	else if cycle = 9 {
		CreateBone(100, global.Left + 100, global.Right - 100, global.Top + 3 + 50, global.Top + 3 + 50, 180, 180, false, 100, 100, 1)
		bone[100].perchanger = 1/120
		bone[100].dmg = 2
		bone[100].bone_timer = true
		bone[100].hit_color = "aqua";
		obj_kazy.headChange(10)
	}
	else if cycle = 10 {
		Gaster(1, 215, 0, 358, 358, 0, 0, 10, 1.2, 1.0, false, 30, 40, 10)	
	}	
	else if cycle = 11 {
		obj_soul.Mode = obj_soul.SoulModes.Red	
		alarm[0] = 2;
	}	
	cycle++;
}
//88 seconds	
else if attack = 16 {
	if cycle = 0 {
		with obj_buttoncontroller {
			ButtonPositions_X[0] = 640 + 30 
			ButtonPositions_X[1] = 640 + 183 
			ButtonPositions_X[2] = 640 + 343 
			ButtonPositions_X[3] = 640 + 497 
		}
		if boxchange = false {
			global.borderwidth = 200;
			global.borderheight = 100;
			obj_bulletboard.box_speed = 10
		}
		camControls(0, -75, 1, "null")
	}	
	if cycle < 12 and cycle > 0{
		// bone[1] is start not bone[0], important for destroy code.
		if cycle mod 7 != 0 {
			if !instance_exists(blasterObj) {
				if cycle < 7 {
					CreateBone(cycle, global.Left - 10, global.Right + 15, global.Top + 20 + 3, global.Top + 20 + 3, 0, 0, false, 40, 40, 1)
					bone[cycle].perchanger = 1/60
					bone[cycle].bone_timer = true
				}
				else {
					CreateBone(cycle + 10, global.Left - 15, global.Right + 15, global.Floor - 25 - 3, global.Floor - 25 - 3, 0, 0, false, 50, 50, 1)
					bone[cycle + 10].perchanger = 1/50
					bone[cycle + 10].bone_timer = true
					obj_kazy.headChange(5)
					obj_kazy.layerSpeed = 0.8
				}
			}
			if cycle < 7 {
				CreateBone(cycle + 10, global.Right + 15, global.Left - 15, global.Floor - 25 - 3, global.Floor - 25 - 3, 0, 0, false, 50, 50, 1)
				bone[cycle + 10].perchanger = 1/50
				bone[cycle + 10].bone_timer = true
			}
			else {
				// 
				CreateBone(cycle, global.Right + 15, global.Left - 15, global.Top + 20 + 3, global.Top + 20 + 3, 0, 0, false, 40, 40, 1)
				bone[cycle].perchanger = 1/60
				bone[cycle].bone_timer = true
			}
		}	
		else {
			CreateBone(cycle, global.Right - 40, global.Right + 20, global.Top + 20 + 3, global.Top + 20 + 3, 0, 0, "reverse", 40, 40, 1)
			bone[cycle].perchanger = 1/60
			bone[cycle].bone_timer = true
			CreateBone(cycle + 10, global.Left + 40, global.Left - 20, global.Floor - 25 - 3, global.Floor - 25 - 3, 0, 0, "reverse", 50, 50, 1)
			bone[cycle + 10].perchanger = 1/50
			bone[cycle + 10].bone_timer = true
		}		
		if cycle = 11 {
			Gaster(1, 140, -40, 303, 303, 0, 0, 20, 1.5, 1.4, false, 30, 40, 10)
			
		}
	}
	//97 seconds
	if cycle = 14 {
		
		if boxchange = false {
			global.borderwidth = 150;
			global.borderheight = 100;
			obj_bulletboard.box_speed = 10
		}		
	}
		if cycle = 15 {		
			Gaster(1, 150, -50, 200, 50, gasteranglefunc(140), gasteranglefunc(140), 0, 1.2, 1.1, false, 30, 40, 30)		
		}
		if cycle = 16 {
			Gaster(2, 490, 690, 200, 50, gasteranglefunc(40), gasteranglefunc(40), 0, 1.2, 1.1, false, 30, 40, 30)	
		}
		if cycle = 17 {		
			Gaster(3, 110, -40, 350, 350, 0, 0, 0, 1.2, 1.1, false, 30, 40, 30)		
		}
		if cycle = 18 {		
			Gaster(4, 270, 270, 180, -20, gasteranglefunc(90), gasteranglefunc(90), 0, 1.2, 1.1, false, 30, 40, 30)				
		}
		if cycle = 19 {		
			Gaster(5, 390, 390, 180, -20, gasteranglefunc(90), gasteranglefunc(90), 0, 1.2, 1.1, false, 30, 40, 30)		
		}
		if cycle = 20 {	
			Gaster(5, 480, 680, 300, 300, 180, 180, 0, 1.2, 1.1, false, 30, 40, 30)
		}
	cycle++;
}
//102.00 seconds	
else if attack = 17 {	
	if cycle = 0 {
		obj_kazy.headChange(6)
		obj_kazy.layerSpeed = 0.5
		obj_soul.Mode = SoulModes.Blue
		camControls(0, -20, 0.9, , 0.04)
		CreateBone(10, global.Right + 20, global.Left - 20, global.Floor - 13, global.Floor - 13, 0, 0, false, 20, 20, 1)
		bone[10].perchanger = 1/300
		bone[10].bone_timer = true
		var fade = layer_create(-1000)
		layer_sequence_create(fade, 320, 240, atk17fade);
	}
	else if cycle = 1 {			
		bone[10].destroy = true
		obj_bulletboard.grad_state = false
		obj_bulletboard.image_alpha = 0.05
		obj_kazy.setSpriteAlpha(0.2, 1)
		obj_kazy.changeBodyAnim("Tired")
		obj_kazy.headChange(7)
		obj_kazy.layerSpeed = 0.3
		camControls(0, 20, 1, , 1)
		with obj_soul {
			Mode = SoulModes.Red;
			x = 320;
			y = 336;
			movementcontrol = false;
		}
		alarm[1] = 490	
	}	
	else if cycle = 2 {		
		camControls(0, -30, 0.8, , 0.003)
		alarm[1] = 490
	}	
	else if cycle = 3 {
		obj_kazy.changeBodyAnim("Tired")
		obj_kazy.headChange(7)
		obj_kazy.shakeSprite(20, 4)
		obj_soul.doAfterImage(0.035, 0.5)
		alarm[1] = 120
	}	
	else if cycle = 4 {
		obj_kazy.shakeSprite(20, 3)
		obj_soul.doAfterImage(0.035, 0.5)
		alarm[1] = 120
	}	
	else if cycle = 5 {
		obj_kazy.shakeSprite(20, 2)
		obj_soul.doAfterImage(0.035, 0.5)
		alarm[1] = 240
	}	
	else if cycle = 6 {
		obj_kazy.shakeSprite(20, 3)
		obj_kazy.layerSpeed = 0.65
		obj_soul.doAfterImage(0.035, 0.5)
		//camControls(0, 10, 0.90, "null", 0.04)
		alarm[1] = 120
	}	
	else if cycle = 7 {
		obj_kazy.layerSpeed = 0.7
		obj_soul.doAfterImage(0.035, 0.5)
		//camControls(0, 0, 0.85, "null", 0.04)
		obj_kazy.shakeSprite(20, 4)
		alarm[1] = 120
	}	
	else if cycle = 8 {
		obj_kazy.headChange(8)
		obj_kazy.setSpriteAlpha(1, 1)
		obj_kazy.layerSpeed = 0.8
		camControls(0, 30, 1, 4, 0.04)
		obj_kazy.shakeSprite(20, 5)
		obj_kazy.doAfterImage(0.04, 1)
		obj_bulletboard.grad_state = true
		obj_bulletboard.changeGradientColor(c_purple, 0.05, 1)
		alarm[1] = 120
	}	
	else if cycle = 9 {
		obj_kazy.layerSpeed = 0.9
		obj_soul.movementcontrol = true
		obj_kazy.doAfterImage(0.04, 1)
		camControlsBeat(0.9, 5)
		alarm[1] = 120
		if boxchange = false {
			global.borderwidth = 225;
			global.borderheight = 100;
			obj_bulletboard.box_speed = 10
		}
	}
	else if cycle = 10 {
		obj_kazy.layerSpeed = 1
		obj_kazy.doAfterImage(0.04, 1)
		obj_soul.movementcontrol = true
		camControlsBeat(0.9, 5)
		alp_end = 0;
		if boxchange = false {
			global.borderwidth = 225;
			global.borderheight = 100;
			obj_bulletboard.box_speed = 10
		}
	}
	cycle++;
}
// 133 seconds, cycles through it own attacks
else if attack = 18 {	
	var heights = 
		[
			[40, 30], [20, 50],	[30, 30], [20, 60], [60, 20], [45, 35],
		]	
	if cycle = 0 {	
		obj_soul.depth = obj_soul.ogDepth - 3
		if boxchange = false {
			global.borderwidth = 225;
			global.borderheight = 100;
			obj_bulletboard.box_speed = 10
		}
		for (var i = 0; i < 4; i++)	{
			CreateBone(i, (global.Left - 100) - (120 * i), 434 + 360 - (120 * i), global.Floor - heights[i][0]/2 - 3, global.Floor - heights[i][0]/2 - 3, 0, 0, false, heights[i][0], heights[i][0], 1)
				bone[i].perchanger = 1/135
				bone[i].bone_timer = true
			CreateBone(i + 10, (global.Left - 100) - (120 * i), 434 + 360 - (120 * i), global.Top + heights[i][1]/2 + 3, global.Top + 3 + heights[i][1]/2, 0, 0, false, heights[i][1], heights[i][1], 1)
				bone[i + 10].perchanger = 1/135
				bone[i + 10].bone_timer = true
		}
		camControlsBeat(0.90, 4)
		alarm[1] = 115
	}
	else if cycle = 1 {
		boxmove(-100, 200, true, 0)
		with obj_soul {
			x = 520
			y = 225
			Mode = SoulModes.Blue
		}
		layer_set_visible(lightswitch, true)
		alarm[1] = 15
		global.borderwidth = 150;
		global.borderheight = 100;
		obj_bulletboard.box_speed = 1
		obj_kazy.currentX = 200
	}
	else if cycle = 2{
		layer_set_visible(lightswitch, false)
		slam_data(1, "right")
		Gaster(1, global.Right - 50, global.Right - 50, global.Top - 80, global.Top - 80, 270, 270, 5, 1.4, 1.3, false, 30, 30, 50)	
		alarm[1] = 40
	}
	else if cycle = 3{
		CreateBone(1, global.Right - 3 - 25, global.Right - 3 - 25, global.Floor + 64, global.Top - 64, 90, 90, false, 50, 50, 1)
			bone[1].perchanger = 1/60
			bone[1].hit_color = "orange"
			bone[1].bone_timer = true
		CreateBone(2, global.Right - 3 - 25, global.Right - 3 - 25, global.Top  - 64, global.Floor + 64, 90, 90, false, 50, 50, 1)
			bone[2].perchanger = 1/60
			bone[2].hit_color = "orange"
			bone[2].bone_timer = true
		alarm[1] = 55
	}	
	else if cycle = 4{		
		boxmove(100, -350, true, 0)
		with obj_soul {
			x = 130
			y = 320
		}
		obj_kazy.currentX = 500
		obj_kazy.currentY = 230
		layer_set_visible(lightswitch, true)
		alarm[1] = 15
	}
	else if cycle = 5{		
		layer_set_visible(lightswitch, false)
		slam_data(1, "left")
		Gaster(2, global.Left + 15, global.Left + 15, global.Top - 80, global.Top - 80, 270, 270, 0, 1.4, 1.3, false, 30, 40, 10)	
		alarm[1] = 30
	}
	else if cycle = 6{	
		Gaster(3, 440, 700, 327, 327, 180, 180, 0, 1.3, 1.2, false, 40, 40, 10)	
		obj_soul.Mode = SoulModes.Red
		obj_soul.image_angle = 0
		alarm[1] = 70
	}
	else if cycle = 7{	
		layer_set_visible(lightswitch, true)
		obj_kazy.currentX = 320
		obj_kazy.currentY = 110
		with obj_soul {
			x = 320
			y = 340
			Mode = SoulModes.Red
			image_angle = 0;
		}
		boxmove(0, 150, true, 0)
		alarm[1] = 15
	}
	else if cycle = 8{	
		layer_set_visible(lightswitch, false)
		Gaster(4, 100, 100, 100, 100, 315, 315, 5, 1.5, 1.4, false, 20, 30, 50)	
		alarm[1] = 100
	}
	else if cycle = 9{	
		layer_set_visible(lightswitch, true)
		with obj_soul {
			x = 170
			y = 220
		}
		obj_kazy.currentX = 420
		obj_kazy.currentY = 110
		boxmove(-100, -150, true, 0)
		alarm[1] = 15
		global.borderwidth = 200;
		global.borderheight = 100;
		obj_bulletboard.box_speed = 1
	}
	else if cycle = 10{

		boxchange = true
		Gaster(1, global.Left, global.Left, global.Top - 70, global.Top - 70, 312, 312, 0, 1.4, 1.3, false, 30, 60, 10)	
		Gaster(2, global.Right, global.Right, global.Top - 70, global.Top - 70, 228, 228, 0, 1.4, 1.3, false, 30, 60, 10)	
		layer_set_visible(lightswitch, false)
			
		alarm[1] = 95
	}
	else if cycle = 11{
		boxmove(100, 150, true, 0)
		global.borderwidth = 200;
		global.borderheight = 100;
		layer_set_visible(lightswitch, true)
		for(var i = 0; i < instance_number(boneObj); i++) {
			instance_find(boneObj, i).destroy = true
		}
		obj_kazy.currentX = 320
		obj_kazy.currentY = 110
		alarm[1] = 15
	}
	else if cycle = 12{	
		with obj_soul {
			x = 320
			y = 320
		}
		layer_set_visible(lightswitch, false)
		alarm[0] = 2
		CreateBone(10, global.Right + 20, global.Left - 20, global.Floor - 13, global.Floor - 13, 0, 0, false, 20, 20, 1)
			bone[10].perchanger = 1/360
			bone[10].bone_timer = true
	}
	cycle++;
}
// 148.7 seconds, camera anim and sprite anim atk
else if attack = 19 {
	//camControls(640 - 640 * 0.80, 4, 0.80, "null", 2)
	//obj_soul.depth = -21
	//obj_kazy.depth = -22
	numLayer = layer_create(obj_kazy.depth - 1)
	layer_sequence_create(numLayer, 320, 240, numberEffects)
	//layer_sequence_headpos(num, 220)	
	global.borderwidth = 200;
	global.borderheight = 100;
	alarm[0] = 360
}
// 154.6 seconds
else if attack = 20 { 
	obj_soul.depth = obj_soul.ogDepth	
	var _angle = function(num) {
		return num + 180;			
	}
	if cycle = 0 {
		obj_bulletboard.rain = true
		//obj_bulletboard.grad_state = false
		global.borderwidth = 150;
		global.borderheight = 150;
		obj_bulletboard.box_speed = 50
		obj_bulletboard.changeAngle(-360 * 15, 1/1020)
		alarm[1] = 60;	
	}
	else if cycle = 1 {
		CreateBone_Rot(0, 320, 320, 340, 340, 90, 90, false, 0, 80, 1)
		bone[0].changeHeight(undefined, 1/80, true)
		bone[0].changeAngle(-360 * 15 - 90, 1/960)
		alarm[1] = 40
	}
	else if cycle = 2 {
		Gaster(cycle, 550, 495 + 150, 139, 139 - 150, _angle(40), _angle(40), 0, 1.5, 1.4, false, 30, 30, 20)
		alarm[1] = 45
	}
	else if cycle = 3 {
		Gaster(cycle, 250, 250, 100, -30, _angle(90), _angle(90), 0, 1.5, 1.4, false, 30, 30, 20)
		alarm[1] = 30
		
	}
	else if cycle = 4 {
		Gaster(cycle, 540, 480 + 200, 275, 275, _angle(0), _angle(0), 0, 1.5, 1.4, false, 30, 30, 20)
		alarm[1] = 30
		
	}
	else if cycle = 5 {
		Gaster(cycle, 90, -50, 346, 346, _angle(180), _angle(180), 0, 1.5, 1.4, false, 30, 30, 20)
		alarm[1] = 45
		
	}
	else if cycle = 6 {
		Gaster(cycle, 480, 480 + 200, 433, 433 + 180, _angle(330), _angle(330), 0, 1.4, 1.3, false, 30, 30, 20)
		alarm[1] = 45
		
	}
	else if cycle = 7 {
		Gaster(cycle, 524, 680, 295, 295, _angle(0), _angle(0), 0, 1.5, 1.4, false, 30, 60, 20)
		alarm[1] = 20
		
	}
	else if cycle = 8 {
		Gaster(cycle, 120, -50, 380, 380, _angle(180), _angle(180), 0, 1.5, 1.4, false, 30, 30, 10)
		alarm[1] = 50
		
	}
	else if cycle = 9 {
		bone[0].changeHeight(100, 1/50, true)
		global.borderwidth = 250;
		global.borderheight = 250;
		alarm[1] = 25
	}
	else if cycle = 10 {
		CreateBone_Rot(1, 320, 700, 340, 340, 1690, 5670, true, 0, 100, 1)
		bone[1].perchanger = 1/80
		bone[1].changeHeight(undefined, 1/60, true)
		bone[1].changeAngle(undefined, 1/680)
		//bone[1].hit_color = "aqua"
		alarm[1] = 60
	}
	else if cycle = 11 {
		// random arbitrary number
		var _x = 345
		Gaster(50, _x, _x, 110, -60, _angle(90), _angle(90), 0, 1.5, 1.4, false, 30, 60, 50)
		Gaster(51, _x + 50, _x + 50, 110, -60, _angle(90), _angle(90), 0, 1.5, 1.4, false, 50, 65, 45, false)
		Gaster(52, _x + 100, _x + 100, 110, -60, _angle(90), _angle(90), 0, 1.5, 1.4, false, 70, 70, 40, false)
		bone[0].changeHeight(160, 1/80, true)
		bone[1].changeHeight(160, 1/80, true)
		alarm[1] = 30
	}
	else if cycle = 12 {
		Gaster(cycle, 130, -50, 255, 255, _angle(180), _angle(180), 0, 1.5, 1.4, false, 40, 50, 60)
		Gaster(cycle, 515, 700, 416, 416, _angle(0), _angle(0), 0, 1.5, 1.4, false, 40, 50, 60)
		alarm[1] = 50
	}
	else if cycle = 13{
		Gaster(cycle, 100, -50, 346, 346, _angle(180), _angle(180), 0, 1.4, 1.3, false, 40, 50, 60)
		alarm[1] = 160
	}
	else if cycle = 14 {
		var ending = layer_create(-100)
		layer_sequence_create(ending, 320, 240, endingFlash)	
	}
	cycle++;
}
//169.80
else if attack = 21 {
	
	if (cycle = 0) {
		obj_bulletboard.grad_state = true
		alarm[1] = 270
		var colorData = global.nameFunctions.returnNameFunction("floorColor")
		obj_bulletboard.changeGradientColor(make_color_hsv(colorData.hue, colorData.saturation, colorData.val), 0.02, 1)
	}
	if (cycle = 1) {
		camControls(0, -10, 0.9, , 0.01)
		alarm[1] = 270
		var colorData = global.nameFunctions.returnNameFunction("floorColor")
		obj_bulletboard.changeGradientColor(make_color_hsv(colorData.hue, colorData.saturation, 50), 0.02, 1)
	}
	if (cycle >= 2 and cycle < 5) {
		obj_kazy.doAfterImage(0.035, 0.5)
		obj_soul.doAfterImage(0.035, 0.5)
		flashAlpha = 0.5
		alarm[1] = 130
		camControlsBeat(0.95)
	}
	if cycle = 5 {
		obj_kazy.headChange(4)
		camControls(0, -75, 0.65, , 0.085)	
		alarm[1] = 45
		instance_create_depth(320, 140, -100, slashObj)
	}
	if cycle = 6 {
		obj_kazy.headChange(12)
		obj_kazy.bodyChange(18)
		obj_kazy.shakeSprite(30, 8)
		flashAlpha = 1
		obj_kazy.layerSpeed = 0.5
		if camObj.camDesY = -85 camControls(0, 85, 1, 5, 0.05)	
		else camControls(0, 85, 1, 5, 0.05)	
		alarm[1] = 150
		obj_bulletboard.grad_state = false
	}
	if cycle = 7 {
		obj_kazy.shakeSprite(20, 3)
		obj_kazy.bodyChange(19)
		obj_kazy.Killed = true
		alarm[1] = 240
		saveObj.save()
	}
	
	cycle++
	show_debug_message("time " + string(attack) + " " + string(cycle) + " " + string(global.audioPosition))
}
if attack = "test" { 
	
	camControls(0, 50, 0.6, , 0.04)
	var _angle = function(num) {
		return num + 180;	
	}
	var spd = 1.2
	cycle++;
}