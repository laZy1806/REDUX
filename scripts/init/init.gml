// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
gml_pragma("global", "init()");

#region global variables 
	delta_init()
	bktglitch_init()
	global.upKey = "W";
	global.downKey = "S";
	global.leftKey = "A";
	global.rightKey = "D";
	global.borderheight = 100;
	global.borderwidth = 100;
	global.playerHP = 92;
	global.maxplayerHP = 92;
	global.playerEXP = 0;
	global.playerGOL = 0;
	global.playerLV = 19;
	global.name = "Jamie"
	global.nameFunctions = scrNameActions(); 
	global.spriteBlacktoWhite = 0
	global.test = 0;
	global.pause = false
	global.UISelectionMenu = 0;
	global.BattleMenu = -1;
	global.isFullscreen = -1
	global.fightFinished = false
	global.fileDeleted = false
	global.debugMode = false
	global.noteCollected = false
	
	global.fpsDipCount = 0
	global.item[0] = "food"
	global.item[1] = "Stick"
	global.item[2] = "Pie" 
	global.item[3] = "L.Hero" 

	global.playerArmor = "Bandage";
	global.playerWeapon = "Real Knife";

	global.CanFlee = true;
	global.menuState = 0

	global.Timer = 0;

	global.playerAttack = 20; 
	global.playerDefense = 0;
	global.InvFrames = 0;

	global.Karma = 0;
	global.KARMA_ENABLED = true;

	global.hp_coordinates = 0
	
	global.windWidth = 640
	global.windHeight = 480
	global.windOffset = 0
	
	global.midTransition = false
	global.roomTarget = -1
	
	global.Top = 0
	global.Floor = 0
	global.Right = 0
	global.Left = 0
	
	global.ENEMYNAMES = array_create(1, "Kazy")
	global.ENEMYARRAY = array_create(0)
	#macro RELY 17		//the relative y due to the change from gameframe
	
#endregion
scribble_font_bake_outline_8dir("menuFont", "outlinemenuFont", c_black, false)
application_surface_draw_enable(true)




