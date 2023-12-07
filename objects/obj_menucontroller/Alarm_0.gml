/// @description moving options offscreen with alarm delays
// You can write your code in this editor
if global.startGame {
	if (cycle = 0) {
		MenuButton(-100, "gallery", , true, 0.025)
		alarm[0] = 60
	}
	if (cycle = 1) {
		MenuButton(-100, "options", , true, 0.025)
		alarm[0] = 60
	}
	if (cycle = 2) {
		MenuButton(-100, "start", , true, 0.025)
		// add more of this statement to create more submenus
		if (current = 1) menu_state = 1
		swap = false
	}
cycle++;	
}	
else {	
	if menu_state = 0 {
		if current = 2 {
			var timeExtender = 10
			var lerpExtender = 2	
		}
		else {
			var timeExtender = 1
			var lerpExtender = 1
		}
		if (cycle = 0) {
			MenuButton(-100, "gallery", , true, 0.07/lerpExtender)
			alarm[0] = 5 * timeExtender
		}
		if (cycle = 1) {
			MenuButton(-100, "options", , true, 0.06/lerpExtender)
			alarm[0] = 5 * timeExtender
		}
		if (cycle = 2) {
			MenuButton(-100, "start", , true, 0.06/lerpExtender)
			// add more of this statement to create more submenus
			if (current = 1) menu_state = 1
			if (current = 2) {
				// gallery
				menu_state = 1.7 
				galObj.menuChanges("enter")
			}
			swap = false
		}
	cycle++;	
	}
	else if menu_state = 1 {
	
		if (cycle = 0) {
			if (current = 0) MenuButton(490, "back_opt", , true, 0.07, 330)
			else MenuButton(750, "back_opt", , true, 0.07)
			alarm[0] = 5
		}
		if (cycle = 1) {
			MenuButton(750, "fullscreen", , true, 0.06)
			alarm[0] = 10
		}
		if (cycle = 2) {
		
			if (current = 0) MenuButton(490, "controls", , true, 0.08, 100) 
			else MenuButton(750, "controls", , true, 0.06)
		
			// add more of this statement to create more submenus
			if (current = 2) menu_state = 0
			if (current = 0) menu_state = 1.5
			swap = false
		}
	cycle++;
	}
	else if menu_state = 1.5 {
	
		if (cycle = 0) {
			MenuButton(750, "up", , true, 0.05)	
			MenuButton(750, "down", , true, 0.05)	
			MenuButton(750, "left", , true, 0.05)
			MenuButton(750, "right", , true, 0.05)
			alarm[0] = 10
		}
		if (cycle = 1) {
			MenuButton(480, "controls", , true, 0.1, 200 - 10)
			alarm[0] = 10
		}
		if (cycle = 2) {
			MenuButton(540, "back_opt", , true, 0.05, 300 - 10)
			current = 0;
			menu_state = 1
			swap = false
		}
	cycle++;
	}
	else if menu_state = 1.7 {
		if (cycle = 0) {
			MenuButton(750, "next", , true, 0.03)
			alarm[0] = 20
		}
		if (cycle = 1) {
			MenuButton(750, "previous", , true, 0.03)
			alarm[0] = 20
		}
		if (cycle = 2) {
			MenuButton(750, "back_gal", , true, 0.03)
			// add more of this statement to create more submenus
			if (current = 2) { // gallery
				galObj.menuChanges("return")
				obj_menu.randomSwitch(true)
				obj_menu.timeTillNext = 300
			}
			alarm[0] = 60
		}
		if cycle = 3 {
			MenuButton(70, "start", , true, 0.07)
			MenuButton(70, "options", , true, 0.07)
			MenuButton(70, "gallery", , true, 0.07)
			obj_menu.intCord[1] = 100
			lineLerp[1] = 0
			alarm[0] = 60
		}
		if cycle = 4 {
			menu_state = 0
			swap = false
		}
	cycle++;	
	}
}


