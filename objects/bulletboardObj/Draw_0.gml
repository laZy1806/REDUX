/// @description drawing the box
//setting side parameters
var WIDTH = instance_find(fightBoxObj, 0).WIDTHSTATIC
var HEIGHT = instance_find(fightBoxObj, 0).HEIGHTSTATIC

if instance_exists(fightBoxObj) {
	if (WIDTH == 570 && HEIGHT == 120) {
		switch STATE {
			case 0:
				
			
			
			break;
			case 1:
			
			
			
			break;
			case 2:
			
			
			
			break;
			case 3:
			
			
			
			break;
			case 4:
			
			
			
			break;
		}
	}
	draw_set_alpha(image_alpha)
	
	var _y = 300
	
	var hpbarwidth = (global.maxplayerHP * 1.5);
	var hpbarwidth_fill = (global.playerHP * 1.5)
	var hp_barwidth_karma = (global.Karma * 1.5)
	
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
}