// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NONSPECIAL(interaction_num){
	switch(interaction_num)
	{
		case "cut_dialogue":
			Dialogue = instance_create_depth(0, 0, 0, obj_text)
			Dialogue.show = false;	
			var Counter = 1
			with Dialogue {
					DefaultFont = menuFont
					DefaultSpacing = 14
					DefaultLineSpacing = 26
					TextToDraw = "* hey."; //0
					TextQueue[0] = "* welcome.";
					TextQueue[1] = "* you might recongized this &place";
					TextQueue[2] = "* or at least i hope so";
					TextQueue[3] = "* well..";
					TextQueue[4] = "* if this isnt familiar to &you then";
					TextQueue[5] = "* im sure you'll figure it&out";
					
					//Use first real number as guide based on textQueue
					headQueue[Counter - 1] = 1
					headQueue[0 + Counter] = 1
					headQueue[1 + Counter] = 13
					headQueue[2 + Counter] = 14
					headQueue[3 + Counter] = 2
					headQueue[4 + Counter] = 2
					headQueue[5 + Counter] = 3
					headQueue[6 + Counter] = 14
					headQueue[7 + Counter] = 3
					headQueue[8 + Counter] = 3
					headQueue[9 + Counter] = 11
					headQueue[10 + Counter] = 15
					headQueue[11 + Counter] = 16
					// Timer instead of TimerQueue because itll skip over this text timer.
					TextQueue[6] = "...";
					Timer = 120
					TextQueue[7] = "* but";
					TimerQueue[7] = 180
					TextQueue[8] = "* enough with the exposition";
					TimerQueue[8] = 200;
					TextQueue[9] = "* let us both see...";
					TimerQueue[9] = 100;
					TextQueue[10] = "* if you got what it takes";
					TimerQueue[10] = 100;
					TextQueue[11] = "* let's get this started";
					TimerQueue[11] = 200;
				}
			return Dialogue
		break;	
		case "floorColor":
		floorColor = {
			hue : 195,	
			saturation: 255,
			val : 255
		}
			return floorColor // purple
		break;
		case "battleIntroDialogue":
			MySpeechBubble = instance_create_depth(0, 0, -10, obj_SpeechBubble);
			MySpeechBubble.textElement.TextToDraw = "Best of luck";
			MySpeechBubble.textElement.Timer_statement = true;
			MySpeechBubble.textElement.Timer = 100;
			MySpeechBubble.textElement.DefaultFont = menuFont;
			MySpeechBubble.textElement.DefaultSpacing = 14;
		break;
		case "nameSelect":
			nameData[0] = scribble("Are you sure you want this name?")
			nameData[0].starting_format("titleText")
			nameData[0].align(fa_center, fa_top)
			nameData[0].draw(320, 39)
			nameData[0].transform(1, 1, 0)
			nameData[0].blend(make_colour_hsv(0, 0, 255), 1, 0)
			nameData[0].gradient(make_colour_hsv(201, 255, 10), 1, 0)
			nameData[1] = make_colour_hsv(0, 0, 255)
			return nameData
		break;
		case "deathQuote":
			var ranText = irandom_range(0, 1) 
			//var ranText = 0
			var selectedQuote = "";
			switch ranText {
				case 0:
					selectedQuote = "keep trying"
				break;
				case 1:
					selectedQuote = "good effort"
				break;
			}
			return selectedQuote;
		break;
		case "endMSG":
			return "* right " + global.name + "?"
		break;
	}
}