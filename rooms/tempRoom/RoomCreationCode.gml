if (instance_exists(playerObj)) {
	global.PlayerID.x = global.PlayerID.roomX;
	global.PlayerID.y = global.PlayerID.roomY + 6;
	//+6 is the small offset of speed(probably);
}