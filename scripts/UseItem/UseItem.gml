// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UseItem(itemNum){
	var StartingHP = global.playerHP;
	var Healed = false;
	var ItemKeep = false;
	var PrevArmor = "";
	var PrevWeapon = "";
	
	var border_left = 320 - (obj_bulletboard.current_width / 2);
	var border_top = 384 - obj_bulletboard.current_height;
	
	global.monster[0].Dialogue = instance_create_depth(border_left + 30, border_top + 15, 0, obj_text);
	global.monster[0].Dialogue.CanAdvance = true;
	
	if (global.item[itemNum] == "Pie") {
		global.playerHP += 99;
		global.monster[0].Dialogue.TextToDraw = "* You ate the Butterscotch Pie.&";
	}	
	if (global.item[itemNum] == "food") {
		global.playerHP -= 2;
		global.monster[0].Dialogue.TextToDraw = "* food taste bad.&";
		Healed = false
	}	
	
	if (global.item[itemNum] == "Stick") {
		global.monster[0].Dialogue.TextToDraw = "* You threw the Stick.&* Then you picked it back up&  again.";
	}
	
	if (global.item[itemNum] == "Unisicle") {
		global.monster[0].Dialogue.TextToDraw = "* You ate the Unisicle.&";
		global.playerHP += 11;
	}
	if (global.item[itemNum] == "Bisicle") {
		global.monster[0].Dialogue.TextToDraw = "* You eat one half of the&  Bisicle.&";
		global.Item[itemNum] = "Unisicle";
		global.playerHP += 11;
		ItemKeep = true;
	}
	
	if (global.item[itemNum] == "S.Apron") {
		global.monster[0].Dialogue.TextToDraw = "* You donned the Stained Apron.";
		PrevArmor = global.playerArmor;
		global.playerArmor = global.Item[itemNum];
	}
	
	if (global.item[itemNum] == "Bandage") {
		global.monster[0].Dialogue.TextToDraw = "* You reapplied the Bandage.&* Still kind of gooey.&";
		global.playerHP += 10;
	}
	
	if (global.item[itemNum] == "L.Hero") {
		global.playerHP += 40;
		global.playerAttack += 4;
		global.monster[0].Dialogue.TextToDraw = "* You ate the Legendary Hero.&* ATTACK increased by 4!&";
	}
	if (PrevArmor != "")
		global.item[itemNum] = PrevArmor;
	if (PrevWeapon != "")
		global.item[itemNum] = PrevWeapon;	
	if (StartingHP < global.playerHP) {
		//audio_play_sound(heal
		
		if !ItemKeep {
			global.item[itemNum] = "";
			Healed = true;
		}
		
		if (global.playerHP >= global.maxplayerHP) {
			global.monster[0].Dialogue.TextToDraw += "* Your HP was maxed out!";
		}
		else {
			global.monster[0].Dialogue.TextToDraw += "*You recovered " + string(global.playerHP - StartingHP)
		}
	}
	else {
		//audio_play_sound(Item
	}
	
	global.playerHP = clamp(global.playerHP, 0, global.maxplayerHP);
	
	for (var i = 0; i < array_length(global.item) - 1; i++) {
		if (global.item[i] == "") {
			global.item[i] = global.item[i + 1];
			global.item[i + 1] = "";
		}
	}
	if Healed
		array_resize(global.item,array_length(global.item) - 1);
}
