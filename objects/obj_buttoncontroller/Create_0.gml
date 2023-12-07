/// @description vars for buttons -1 depth
//  You can write your code in this editor
ButtonPositions_X[0] = 30 + 55;
ButtonPositions_X[1] = 183 + 55;
ButtonPositions_X[2] = 343 + 55;
ButtonPositions_X[3] = 497 + 55;
Button_Y = 430 + 21
percent = 0;

Dir = 0; 
toggle = true;

ButtonSprites[0] = sp_FIGHT;
ButtonSprites[1] = sp_ACT;
ButtonSprites[2] = sp_ITEM;
ButtonSprites[3] = sp_MERCY;

//add = 0;


//monster choice in fight or act menu
MonsterReferenceNum = 0;
BelowUIReferenceNum = 0;

WinText = noone;
BattleWon = false;

CurrentEXP = global.playerEXP;
CurrentGOL = global.playerGOL; 
global.Monsters = 0