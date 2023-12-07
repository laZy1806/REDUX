/// @description Insert description here
// You can write your code in this editor
/*
if room = initRoom {
	if !global.fileChecker() room_goto(mistake)
	else if global.name = "" room_goto(title)
	else room_goto(menu)
}
*/
if room = initRoom {
	room_goto(battleRoom)
}