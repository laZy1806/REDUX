/// @description shifting menu when selecting
// You can write your code in this editor
if !global.startGame {	
	if (menu_state = 1.5) current = clamp(current, -1, 4)
	else current = clamp(current, -1, 2)

	swap_timer = clamp(swap_timer, 0, 60);
	if (!swap) swap_timer++ else swap_timer = 0;

	// first menu with start
	if menu_state = 0 {
		if swap_timer >= 15 {
			switch current {
				case 0:
					MenuButton(100, "start", , , 0.2)
				break;
				case 1:
					MenuButton(100, "options", , , 0.2)
				break;	
				case 2:
					MenuButton(100, "gallery", , , 0.2)
				break;
			}
		}	
		with (obj_menu)	{
			lineRotation = lerp(lineRotation, 0, 0.02)
			intCord[1] = 100
			for(var i = 0; i < instance_number(starObj); i++) {
				starArray[i].yTo = 374
			}
		}
	}
	// options menu
	else if menu_state = 1 {
		if swap_timer >= 15 {
			switch current {
				case 0:
					MenuButton(480, "controls", , , 0.2)
				break;
				case 1:
					MenuButton(480, "fullscreen", , , 0.1)
				break;	
				case 2:
					MenuButton(480, "back_opt", , , 0.1)
				break;
			}
		}
	}
	// controls
	else if menu_state = 1.5 {
		if swap_timer >= 15 {	
			switch current {
				case 0:
					MenuButton(440, "up", , , 0.1)	
					setUp()
				break;
				case 1:
					MenuButton(440, "down", , , 0.1)
					setDown()
				break;	
				case 2:
					MenuButton(440, "left", , , 0.1)		
					setLeft()
				break;
				case 3:
					MenuButton(440, "right", , , 0.1)
					setRight()
				break;
				case 4:
					MenuButton(440, "back_opt", , , 0.1)
				break;
			}
		}	
	}
	// gallery
	else if menu_state = 1.7 {
		if swap_timer >= 60 {	
			switch current {
				case 0:
					MenuButton(530, "next", , , 0.2)						
				break;
				case 1:
					MenuButton(530, "previous", , , 0.2)				
				break;	
				case 2:
					MenuButton(530, "back_gal", , , 0.2)		
				break;
			}
		}		
		with (obj_menu)	{
			lineRotation = lerp(lineRotation, -2, 0.02)
			//lineLerp = lerp(lineLerp, 10, 0.02)
			intCord[1] = -100
			randomSwitch(false)
			for (var i = 0; i < instance_number(starObj); i++) {
				starArray[i].yTo = 380
			}
			//stopParticles = true
		}		
	}
}
if (!global.startGame) galObj.galleryStep()
galObj.spriteAnimation()
