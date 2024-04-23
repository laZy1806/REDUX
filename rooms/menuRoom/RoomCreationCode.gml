if (instance_exists(playerObj) && instance_find(OverworldStateObj, 0).isMenu = false) {
	//show_debug_message("works")
	global.PlayerID.x = global.PlayerID.roomX;
	global.PlayerID.y = global.PlayerID.roomY + 6;
	//+6 is the small offset of speed(probably);
}