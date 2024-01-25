/// @description setting vars
// You can write your code in this editor
KarmaTimer = 0
var temp = scrEnemyDialogue(global.ENEMYNAMES[0])[$ "stateOneTxt"]
stDefaultTxt = array_create(0, noone)
for(var i = 0; i < array_length(temp); i++) {
	array_push(stDefaultTxt, scribble(temp[i]))
	
}

x = 100
y = 100

state = -1
selector = 0
scrOutlineShaderinit()
//write for loop to cycle through array and create scribbles for each text element
typerwriter = scribble_typist()

//actButton = new scrButton([[100, 100]], function(){ state = selector }, sp_ACT)	
//actButton[$ "stepFunction"] = function() { if (selector = 1) actButton[$ "image_index"] = 1	else actButton[$ "image_index"] = 0	}

buttonList = array_create(0)
//buttonList[0] = noone // fightButton
//buttonList[1] = actButton
//buttonList[2] = noone //itemButton
drawEvent = function(){
	var WIDTH = instance_find(fightBoxObj, 0).WIDTHSTATIC, HEIGHT = instance_find(fightBoxObj, 0).HEIGHTSTATIC
	var _x = instance_find(fightBoxObj, 0).x, _y = instance_find(fightBoxObj, 0).y
	if instance_exists(fightBoxObj) {
		if (WIDTH == 570 && HEIGHT == 120) {
			switch state {
				case -1: //main selecting state
					for(var i = 0; i < array_length(stDefaultTxt); i++) {
						stDefaultTxt[i].starting_format("fontBattleDiag", c_white)
						stDefaultTxt[i].scale(1)
						stDefaultTxt[i].wrap(WIDTH - 20, HEIGHT - 20)
					}
					stDefaultTxt[0].draw(global.Left + (20), global.Top + (15))
					selector += (keyboard_check_pressed(ord(global.rightKey)) - keyboard_check_pressed(ord(global.leftKey)))
					//show_debug_message(string(selector) + " State " + string(state))
					if (selector < 3 && selector > -1) buttonList[selector][$ "isPressed"] = (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")))
				break;
				case 0: //fight menu
				
				
				break;
				case 1: // act me
					
			
			
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
		var _y = 400
		var _x = 35 
		
		var hpbarwidth = (global.maxplayerHP * 1.25);
		var hpbarwidth_fill = (global.playerHP * 1.25)
		var hp_barwidth_karma = (global.Karma * 1.25)
		
		//draw_set_font(healthfont);
		//draw_set_color(c_white);
		//draw_set_halign(fa_left)
		//draw_text(_x, _y + 3, global.name + "  LV " + string(global.playerLV));
		
		if !global.KARMA_ENABLED {
			draw_text((_x + 290) + hpbarwidth, _y + 2, string(global.playerHP) + " / " + string(global.maxplayerHP));
		}	
		else {
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
			draw_set_font(healthFont)
			draw_set_color(c_white)
			draw_text((_x + 275) + hpbarwidth, _y + 2, string(global.Karma) + " /" + string(global.maxplayerHP));
		} 

		draw_set_color(c_white);
		draw_set_font(widgetsFont);
		
			draw_text((_x + 200), _y + 3 , "HP");
		
			if (global.KARMA_ENABLED) draw_text(_x + 240 + hpbarwidth, _y + 3, "KR");
		
		draw_set_color(c_red) 
		draw_rectangle((_x + 230), _y, (_x + 230) + hpbarwidth, _y + 20, false);
		
		draw_set_color(c_fuchsia)
		if (global.KARMA_ENABLED) draw_rectangle((_x + 230), _y, (_x + 230) + hp_barwidth_karma, _y + 20, false);
		
		draw_set_color(c_yellow);
		draw_rectangle((_x + 230), _y, (_x + 230) + hpbarwidth_fill, _y + 20, false);
		
		draw_set_color(c_black);
		draw_rectangle((_x + 230), _y, (_x + 230) + hpbarwidth, _y + 20, true);
	}
}