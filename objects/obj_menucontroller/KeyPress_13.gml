/// @description moving between menus
// You can write your code in this editor
// first menu with start
if menu_state = 0 {
	
	switch current {
		case 0:
			cycle = 0;
			with (obj_menu) startGameFunc()
			alarm[0] = 2
		break;
		case 1:
			cycle = 0;
			event_perform(ev_alarm, 0)
			swap = true
			obj_menu.videoAlpha[3] = 0.5 
			// dulls out video if we are in options menu, easy visibility
		break;	
		case 2:
			cycle = 0;
			event_perform(ev_alarm, 0)
			swap = true
		break;
	}
		
}
// options menu
else if menu_state = 1 {
	switch current {
		case 0:	
			cycle = 0;
			event_perform(ev_alarm, 0)
			swap = true
				//controls button	
		break;
		case 1:
			with pauseObj event_perform(ev_keypress, ord("F"))
			// fullscreen button
		
		break;	
		case 2:
			cycle = 0;
			event_perform(ev_alarm, 0)
			swap = true
			obj_menu.videoAlpha[3] = 0
		break;
	}
}
else if menu_state = 1.5 {
	if current = 4 {
		cycle = 0;
		event_perform(ev_alarm, 0)
		swap = true
	}
}
else if menu_state = 1.7 {
	if current = 0 {
		galObj.forward();
	}
	if current = 1 {
		galObj.reverse();
	}
	if current = 2 {
		cycle = 0;
		event_perform(ev_alarm, 0)
		swap = true
		
	}
}