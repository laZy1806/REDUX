 /// @description Menu Navigation + drawing UI buttons
// You can write your code in this editor

//draws button sprites via array in create, in unselected form		
/* DRAWIN IN BULLET BOARD OBJ
for (var i = 0; i < 4; i++) {
	
	//instance_create_depth(ButtonPositions_X[i], 430, -2, ButtonSprites[i])
	draw_sprite(ButtonSprites[i], 0, ButtonPositions_X[i], Button_Y)
	
}
*/
// making menu navigatable by making UISel = -1
if (global.UISelectionMenu > -1 and !instance_exists(obj_attacks)) {
	
	//main menu
	if (global.BattleMenu == 0) {
		if (keyboard_check_pressed(vk_left)) or (keyboard_check_pressed(ord("A"))){
			global.UISelectionMenu -= 1;
			audio_play_sound(menu_move, 1, false)
		}	
		if (keyboard_check_pressed(vk_right)) or (keyboard_check_pressed(ord("D"))){
			global.UISelectionMenu += 1;
			audio_play_sound(menu_move, 1, false)
		}	
		//makes sure we stay within the menu range, so not going into secret 5th menu option :/	
		global.UISelectionMenu = clamp(global.UISelectionMenu, 0, 3)
		
		/* implements button highlights when selecting them	
		Buttons do not need this feature in fight, but if Q&A, implement this
		for (var i = 0; i < 4; i++) {
			draw_sprite(ButtonSprites[i], (global.UISelectionMenu == i && !instance_exists(obj_attacks)), ButtonPositions_X[i], 430);
			if !instance_exists(obj_attacks)
				draw_sprite(soul, 0, ButtonPositions_X[global.UISelectionMenu] + 16,452);
			else {
				instance_destroy(soul);
			}
		}
		*/
	}
	
		// forces selection variable to stay within range
		// fight and act selection menu
		if (global.BattleMenu == 1 || global.BattleMenu == 2) {
			global.UISelectionMenu = clamp(global.UISelectionMenu, 0, array_length(global.monster) - 1);
			
		
			// draws health bar of monster unless showhealthbar for monster is false
			for (var i = 0; i < array_length(global.monster); i++) {
				if (global.monster[i].ShowHealthBar) {
					var percent = (global.monster[i].MyHP / global.monster[i].MyMaxHP) * 100;
					draw_set_color(c_red);
					draw_rectangle(470, 287 + (30 * i), 570 ,304 + (30 * i), false);
					draw_set_color(c_lime);
					draw_rectangle(470, 287 + (30 * i), 470 + percent ,304 + (30 * i), false);
				}
			}
		}
	
	//vertical movement on menus, like selecting items and stuff
	// draws sprite on specific coordinates, maybe animate later?
	if(global.BattleMenu == 1 or global.BattleMenu == 2 or global.BattleMenu == 4)
		draw_sprite(soulSPRed, 0, 63, 295 + (30 * global.UISelectionMenu));
	else if (global.BattleMenu > 0)
		draw_sprite(soulSPRed, 0, 63 + (250 * (global.UISelectionMenu % 2)), 295 + (30 * floor(global.UISelectionMenu / 2)));
		
	// backing out of menu
	if keyboard_check_pressed(ord("X")){
		global.BattleMenu = 0;
		global.UISelectionMenu = BelowUIReferenceNum;
	}
	
	 //Navigation controls
	if global.BattleMenu != 2.5 && global.BattleMenu != 3 {
		if (keyboard_check_pressed(vk_up)){
			global.UISelectionMenu -= 1;
			audio_play_sound(menu_move, 1, false)
		}
		if (keyboard_check_pressed(vk_down)){ 
			global.UISelectionMenu += 1;
			audio_play_sound(menu_move, 1, false)
		}
		if (global.UISelectionMenu < 0) {
			global.UISelectionMenu = 0;
		}
	}
	else if (global.BattleMenu > 2) {
		if (global.UISelectionMenu < 0) {
			global.UISelectionMenu = 0;
		}
		if (keyboard_check_pressed(vk_up)){
			global.UISelectionMenu -= 2;
			audio_play_sound(menu_move, 1, false)
		}
		if (keyboard_check_pressed(vk_down)){
			global.UISelectionMenu += 2;
			audio_play_sound(menu_move, 1, false)
		}
		if (keyboard_check_pressed(vk_left)){ 
			audio_play_sound(menu_move, 1, false)
			global.UISelectionMenu -= 1;
		}
		if (keyboard_check_pressed(vk_right)){ 
			global.UISelectionMenu += 1;
		audio_play_sound(menu_move, 1, false)	
		}
	}
	//clamping menus to prevent oob issues with selection
	
	// monster act menu
	if (global.BattleMenu == 2.5) {
		global.UISelectionMenu = clamp(global.UISelectionMenu, 0, array_length(global.monster[MonsterReferenceNum].Act) - 1);
	}
	//item menu
	if (global.BattleMenu == 3){
		global.UISelectionMenu = clamp(global.UISelectionMenu, 0, array_length(global.item) - 1);		
		}
	//mercy menu, another temporary fix for clamp not working
	if (global.BattleMenu == 4)
	// clamp fix maybe temporary too
		if (global.UISelectionMenu > 1)
			global.UISelectionMenu = 1
	
	//confirming an input with Z
	if keyboard_check_pressed(ord("Z")){
		audio_play_sound(select, 1, false)
		switch global.BattleMenu {
			case 0:
			// going into FIGHT,ACT,ITEM,MERCY
			global.BattleMenu = (global.UISelectionMenu + 1);
			if (global.BattleMenu == 3 && array_length(global.item) == 0){
			global.BattleMenu = 0;
			exit;
			}
			// stores original option from four bottom buttons
			BelowUIReferenceNum = global.UISelectionMenu;
			
			// sets input to first option
			global.UISelectionMenu = 0;
			
			// to finish loop
			break;
		case 1:
			//target bar menu
			MonsterReferenceNum = global.UISelectionMenu;
			global.MRN = MonsterReferenceNum
			CreateTarget(global.playerWeapon)
			global.BattleMenu = 1.5;
			global.UISelectionMenu = -3;
			break;
		case 2:
			//ACT menu
			MonsterReferenceNum = global.UISelectionMenu;
			global.MRN = MonsterReferenceNum
			global.BattleMenu = 2.5;
			global.UISelectionMenu = 0;
			break;
		case 2.5:
			//ACT commands within menu
			// with command works with selected monster ie monster 1 or 2, 
			// and works with the selected number event user option in menu, for understanding purposes
			with (global.monster[global.MRN]) {
				event_user(global.UISelectionMenu);
			}
			global.BattleMenu = -2;
			global.UISelectionMenu = -3;
			break;
		case 3:
			// for consuming an item etc
			UseItem(global.UISelectionMenu);
			global.BattleMenu = -2;
			global.UISelectionMenu = -3;
			break;
		case 4:
			// Spare or Flee monster
			var border_left = 320 - (obj_bulletboard.current_width / 2);
			var border_top = 384 - obj_bulletboard.current_height;
			if (global.UISelectionMenu == 0) {
				var Spares = 0;
				for (var i = 0; i < 3; i++) {
					if instance_exists(global.monster[i]) {
						if (global.monster[i].CanSpare) {
							with(global.monster[i])
							alarm[3] = 1;
						Spares += 1;
						}
					}
				}
				if  (Spares > 0) {
					audio_play_sound(vaporize, 20, false);
					var Monsters = 0;
					for (var i = 0; i < 3; i++) {
						if instance_exists(global.monster[i]) {
							Monsters += 1;
						}
					}
					Monsters -= Spares;
					if (Monsters == 0) {
						var AccumulatedEXP = (global.playerEXP - CurrentEXP);
						var AccumulatedGOL = (global.playerGOL - CurrentGOL);
						
						global.BattleMenu = -9999
						global.UISelectionMenu = -1;
						WinText = instance_create_depth(border_left + 30, border_top + 15, 0, obj_text);
						WinText.TextToDraw = "placeholder mercy text"
						WinText.CanAdvance = true;
						exit;
					}
				}
			}		
	
			if (global.UISelectionMenu == 1) {
				global.BattleMenu = -9999
				global.UISelectionMenu = -1
				instance_create_depth(border_left + 30, border_top + 15, 0, obj_flee);
				WinText = instance_create_depth(border_left + 30, border_top + 15, 0, obj_text);
				WinText.TextToDraw = "* Escaped...";
				WinText.TextLength = string_length(WinText.TextToDraw);
				WinText.CanAdvance = true;
				exit;
			}
			global.UISelectionMenu = 0;
			break;
		}
	}
}

				
				
	