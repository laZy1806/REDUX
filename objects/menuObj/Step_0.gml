/// @description Insert description here
// You can write your code in this editor
if !isMoving() {
	if keyboard_check_pressed(global.enterKey) && (global.menuState < array_length(allButtons)){
		global.menuState++
	}
	if keyboard_check_pressed(global.backKey) && (global.menuState > 0){
		global.menuState--
	}
	if keyboard_check_pressed(ord("W")) {
		buttonHover--
	}
	if keyboard_check_pressed(ord("S")) {
		buttonHover++
	}
}
if global.menuState < array_length(allButtons) {
	Start.STEP(global.menuState)
	//Options.STEP(global.menuState)
	var currentStateArray = allButtons[global.menuState]
	for(var i = 0; i < array_length(currentStateArray); i++) {
		currentStateArray[i].onMe = (i = buttonHover) ? true : false
		currentStateArray[i].checkPressed()	//will one activate the one that has onMe as true
	}
}
if keyboard_check_pressed(ord("Y")) {
	room_restart();
}
