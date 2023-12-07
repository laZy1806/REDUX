/// @description drawing the box
//setting side parameters
//depth = 0
if instance_exists(obj_battlewall) {
	border_left = leftwall.x	 //318 - (current_width / 2) + hori_change
	border_right = rightwall.x	 //318 + (current_width / 2) + hori_change
	border_top = topwall.y		 //384 - (current_height) - veri_change
	border_bottom =	bottomwall.y //384 - veri_change;

	global.Left = border_left	//+ lengthdir_x(2, -global.borderangle)
	global.Right = border_right	//+ lengthdir_x(-2, -global.borderangle)
	global.Top = border_top	//+ lengthdir_y(2, -global.borderangle)
	// floor for blue soul jumping
	global.Floor = border_bottom	//+ lengthdir_y(-2, -global.borderangle)
if !instance_exists(obj_attacks) {	
	if (global.borderwidth == 570 && global.borderheight == 120){
		if instance_exists(Dialogue){
			Dialogue.visible = false;
			Fight.visible = false;
			Act.visible = false;
		
			ActML.visible = false;
			ActMR.visible = false;
		
			ItemL.visible = false;
			ItemR.visible = false;
			Mercy.visible = false;
		}
		if (global.BattleMenu == -1) {
			//instance which is responsible for drawing the text
			Dialogue = instance_create_depth(border_left + 30, border_top + 15, 0,obj_text);
			Dialogue.TextToDraw = "* I'm a ~Btext~D. I have some&  ~Rdeadly~D proprerties, and ~Ablue&  ~Ohot ~Ghealing~D items."
			Dialogue.CanAdvance = false;
	
	
		Fight = instance_create_depth(border_left + 50, border_top + 15 , 0, obj_text);
		for (var i = 0; i < array_length(global.monster); i++) {
			Fight.TextToDraw = "* " + global.monster[i].MyName;
			}
		Fight.TextLength = string_length(Fight.TextToDraw);
		Fight.CanAdvance = false;
		Fight.visible = false;
	
		Act = instance_create_depth(border_left + 50, border_top + 15,0, obj_text);
		for (var i = 0; i <  array_length(global.monster); i++) {
			Act.TextToDraw = "* " + global.monster[i].MyName;
			}
		Act.TextLength = string_length(Act.TextToDraw);
		Act.CanAdvance = false;
		Act.visible = false;
	
		// resposible for sub act menu 
		ActML = instance_create_depth(border_left + 50, border_top + 15, 0, obj_text);
			ActML.visible = false;
			ActMR = instance_create_depth(border_left + 300, border_top + 15, 0, obj_text);
			ActMR.visible = false;

		ItemL = instance_create_depth(border_left + 50, border_top + 15, 0, obj_text);
		for (var i = 0; i < array_length(global.item); i += 2) {
			ItemL.TextToDraw += "* " + global.item[i] + "&";
		}
		ItemL.TextLength = string_length(ItemL.TextToDraw);
		ItemL.CanAdvance = false;
		ItemL.visible = false;
	
		ItemR = instance_create_depth(border_left + 300, border_top + 15, 0, obj_text);
		for (var i = 1; i < array_length(global.item); i+= 2) {
			ItemR.TextToDraw += "* " + global.item[i] + "&";
			}
		ItemR.TextLength = string_length(ItemR.TextToDraw);
		ItemR.CanAdvance = false;
		ItemR.visible = false;

		Mercy = instance_create_depth(border_left + 50, border_top + 15, 0, obj_text);
		for (var i = 0; i < array_length(global.monster); i++) {
			if global.monster[i].CanSpare {
				Mercy.TextToDraw += "~Y";
				break;
			}
		}
		Mercy.TextToDraw += "* Spare~D&* Flee";
		if !global.CanFlee
			Mercy.TextToDraw += "* Spare";
		Mercy.TextLength = string_length(Mercy.TextToDraw);
		Mercy.CanAdvance = false;
		Mercy.visible = false;
			global.BattleMenu = 0;
		}
		if (global.BattleMenu == 0)
		Dialogue.visible = true;
		if (global.BattleMenu == 1)
		Fight.visible = true;
		if (global.BattleMenu == 2)
		Act.visible = true;
	
		// for drawing the sub act menu after selecting
		if (global.BattleMenu == 2.5) {
			ActML.visible = true;
			ActMR.visible = true;
			ActML.TextToDraw = "";
			for (var i = 0; i < array_length(global.monster[global.MRN].Act); i += 2) {
				ActML.TextToDraw += "* " + global.monster[global.MRN].Act[i] + "&";
			}
			ActML.TextLength = string_length(ActML.TextToDraw);
			ActML.CanAdvance = false;
		
			ActMR.TextToDraw = "";
			for (var i = 1; i < array_length(global.monster[global.MRN].Act); i += 2) {
				ActMR.TextToDraw += "* " + global.monster[global.MRN].Act[i] + "&";
			}
			ActMR.TextLength = string_length(ActMR.TextToDraw);
			ActMR.CanAdvance = false;
		}
	
			if (global.BattleMenu == 3){
			ItemL.visible = true;
			ItemR.visible = true;
			}
			if (global.BattleMenu == 4)
			Mercy.visible = true;	
		}
}
	box_mask_func();	
	fightParticlesSystem.draw()
	rainParticlesSystem.draw()
	// draw these bones outside the box
	if instance_exists(persistentSoul) draw_sprite(soul, 0, persistentSoul.x, persistentSoul.y)
	
	if instance_exists(boneObj_rotation) {
		for(var i = 0; i < instance_number(boneObj_rotation); i++) {
			
			var bone_num = instance_find(boneObj_rotation, i)
	
			with (bone_num) {
				
				draw_sprite_ext(sp_bonemid, 0, (bottombone.x - ((bottombone.x - topbone.x) / 2)), (bottombone.y - ((bottombone.y - topbone.y) / 2)), 1, midbone_scale, midbone.image_angle, midbone.image_blend, 1)

				draw_sprite_ext(sp_bonebottom_rot, 0, bottombone.x, bottombone.y, 1, 1, bottombone.image_angle, bottombone.image_blend, 1)
	
				draw_sprite_ext(sp_topbone_rot, 0, topbone.x, topbone.y, 1, 1, topbone.image_angle, topbone.image_blend, 1)
				
			}
			
		}
		
	}
	
	draw_set_alpha(image_alpha)
	
	var hpbarwidth = (global.maxplayerHP * 1.5);
	var hpbarwidth_fill = (global.playerHP * 1.5)
	var hp_barwidth_karma = (global.Karma * 1.5)
	var _y = 400 + ui_y_change;
	
	with (obj_buttoncontroller) {
		for (var i = 0; i < 4; i++) {
	
			draw_sprite(ButtonSprites[i], 0, ButtonPositions_X[i], Button_Y + other.ui_y_change)
		
		}
	}
	draw_set_font(healthfont);
	draw_set_color(c_white);
	draw_set_halign(fa_left)
	draw_text(10, _y + 5, global.name + " LV " + string(global.playerLV));
	if !global.KARMA_ENABLED {
		draw_text(320 + hpbarwidth, _y, string(global.playerHP) + " / " + string(global.maxplayerHP));
	}	
	else {
		global.InvFrames = 0;
		if global.Karma > global.playerHP {
			KarmaTimer += 1;
			if global.Karma < 7 && KarmaTimer > 6 {
				KarmaTimer = 0;
				global.Karma -= 1 ;
			}
			if global.Karma >= 7 && global.Karma < 16 && KarmaTimer > 14 {
				KarmaTimer = 0;
				global.Karma -= 1;
			}
			if global.Karma >= 16 && global.Karma < 25 && KarmaTimer > 10 {
				KarmaTimer = 0;
				global.Karma -= 1;
			}
			if global.Karma >= 25 && global.Karma < 35 && KarmaTimer > 6 {
				KarmaTimer = 0;
				global.Karma -= 1;
			}
			if global.Karma >= 35 && KarmaTimer > 2 {
				KarmaTimer = 0;
				global.Karma -= 1;
			}
			draw_set_color(c_fuchsia);
		}
		else {
			global.Karma = global.playerHP;
		}
		draw_text(320 + hpbarwidth, _y + 3, string(global.Karma) + " / " + string(global.maxplayerHP));
	} 
	draw_set_color(c_white);
	draw_set_font(widgetsfont);
	draw_text(220, _y + 5, "HP");
	if global.KARMA_ENABLED {
		draw_text(273 + hpbarwidth, _y + 5, "KR");
	}

	draw_set_color(c_red) 
	draw_rectangle(260, _y + 2, 260 + hpbarwidth, _y + 25, false);
	draw_set_color(c_fuchsia)
	
	if global.KARMA_ENABLED {
		draw_rectangle(260, _y + 2, 260 + hp_barwidth_karma, _y + 25, false);
	}
	draw_set_color(c_yellow);
	draw_rectangle(260, _y + 2, 260 + hpbarwidth_fill, _y + 25, false);
	//topwall.drawWall()
	//bottomwall.drawWall()
	//leftwall.drawWall()
	//rightwall.drawWall()
	
	// sets surface masks for attacks // DO NOT TOUCH
	//draw_surface_general(global.BORDER_SURFACE, global.Left, global.Top, current_width, current_height, box_x, box_y, 1, 1, -global.borderangle, c_white, c_white, c_white, c_white, 1);
}	