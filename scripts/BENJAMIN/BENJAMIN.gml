function BENJAMIN(interaction_num){
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
					TimerQueue[7] = 170
					TextQueue[8] = "* im taking these next few&minutes ~OBen~D,";
					TimerQueue[8] = 140;
					TextQueue[9] = "* to get back for all&the bitching you've done";
					TimerQueue[9] = 140;
					TextQueue[10] = "* so stay still";
					TimerQueue[10] = 110;
					TextQueue[11] = "* and don't waste our time here";
					TimerQueue[11] = 150;
				}
			return Dialogue
		break;	
		case "floorColor":
		floorColor = {
			hue : 25,	
			saturation: 255,
			val : 255
		}
			return floorColor // light purple
		break;
		case "nameSelect":
			nameData[0] = scribble("Gayass")
			nameData[0].starting_format("titleText")
			nameData[0].align(fa_center, fa_top)
			nameData[0].draw(320, 39)
			nameData[0].transform(1, 1, 0)
			nameData[0].blend(make_colour_hsv(0, 0, 255), 1, 0)
			nameData[0].gradient(make_colour_hsv(201, 255, 10), 1, 0)
			nameData[1] = c_orange
			return nameData
		break;
		case "battleIntroDialogue":
			MySpeechBubble = instance_create_depth(0, 0, -10, obj_SpeechBubble);
			MySpeechBubble.textElement.TextToDraw = "gay";
			MySpeechBubble.textElement.Timer_statement = true;
			MySpeechBubble.textElement.Timer = 100;
			MySpeechBubble.textElement.DefaultFont = menuFont;
			MySpeechBubble.textElement.DefaultSpacing = 14;		
		break;
		case "deathQuote":
			var ranText = irandom_range(0, 3) 
			//var ranText = 0
			var selectedQuote = "";
			switch ranText {
				case 0:
					selectedQuote = "little bitch"
				break;
				case 1:
					selectedQuote = "i hope you're keeping count "
				break;
				case 2:
					selectedQuote = "if you die again you're gay"
				break;
				case 3:
					selectedQuote = "i love you no homo"
				break;
			}
			return selectedQuote;
			/*
		deathDialogue = instance_create_depth(200, 330, 0, obj_text)
		deathDialogue.TextToDraw = selectedQuote
		deathDialogue.Timer_statement = true
		deathDialogue.DefaultFont = deathFont
		deathDialogue.scale = 1
		deathDialogue.Timer = -1
		*/
		break;
		case "endMSG":
			return "*right ~OBenjamin?~D"
		break;
	
	}
}