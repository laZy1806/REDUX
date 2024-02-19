/// @description Insert description here
// You can write your code in this editor
Start.STEP(global.menuState, vk_enter)
Options.STEP(global.menuState, vk_enter)

switch global.menuState {
	case 0:
		Start.checkPressed()	
		Options.checkPressed()	
	break;
	case 1:

	break;
	case 2:
		Start.checkPressed()	
		Options.checkPressed()
	break;
}
if keyboard_check_pressed(vk_enter) {
	global.menuState++
}
if keyboard_check_pressed(ord("Y")) {
	room_restart();
}
