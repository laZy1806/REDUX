  /// @description setting text spacings etc
// You can write your code in this editor
var colour = DefaultColour;
var font = DefaultFont;

//default text positioning 
var sentence_x = 0;
var sentence_y = 0;


//sets the parameters for the space betweens letters and lines
var line_spacing = DefaultLineSpacing;
var letter_spacing = DefaultSpacing;

//draws every letter so far
	//Makes text colour default
	draw_set_color(colour);
	draw_set_font(font);
	// drawing lines with correct spacing wacing
	draw_set_halign(fa_left)
	draw_set_alpha(1)	// fixes intro bug where alpha is coming in, but does not affect this
	//draw_text_transformed(x + sentence_x * scale, y + sentence_y * scale, string_char_at(TextToDraw, i + 1), scale, scale, 0);
	draw_text_transformed(x, y, StringToDraw, scale, scale, 0);
	
// sets number of letters to draw which ignores everything we cancel above
if IsWriting {
	CurrentDelay += 1 //* delta;
	if (CurrentDelay >= TextDelay) {
		CurrentDelay = 0;
		TextLength += 1
		event_perform(ev_alarm, 0)
		//stops the text from writing
		if (TextLength > string_length(TextToDraw)) {
			IsWriting = false;
		}
	}
	
}
#region Uncut if want textQueue
/*
else {   
	//Moves onto next line of dialogue or destroys the text writer
	if Timer_statement = false {
		if (keyboard_check(ord("Z")) || keyboard_check(ord("C"))) && CanAdvance{
			TextLength = 0;
			TextDelay = 2;
			CurrentDelay = 0;
		
			// Checks any text in queue
			if variable_instance_exists(id, "TextQueue") {
				// checks if queue is empty
				//important because without this game will crash  due to looking in unknown memory area
				if (NumInQueue >= array_length(TextQueue)) {
					instance_destroy();
					exit;
				}
				TextToDraw = TextQueue[NumInQueue];
			}
			else {
				// sets text to signaling value to destory the instance
				TextToDraw = "{end}";
			}
		
			IsWriting = true;
			if (TextToDraw == "" || TextToDraw == "{end}") {
				instance_destroy();
			}
			NumInQueue += 1;
		}
	}
	if Timer_statement = true {
		// change back to < 0 if bugged
		if Timer = 0 && CanAdvance {
			TextLength = 0;
			TextDelay = 2;
			CurrentDelay = 0;
		
			// Checks any text in queue
			if variable_instance_exists(id, "TextQueue") || variable_instance_exists(id, "TimerQueue"){
				// checks if queue is empty
				//important because without this game will crash  due to looking in unknown memory area
					if (NumInQueue >= array_length(TextQueue)) {
						instance_destroy();
						exit;
					}
				TextToDraw = TextQueue[NumInQueue];
				Timer = TimerQueue[NumInQueue];
				
			}
			else {
				// sets text to signaling value to destory the instance
				TextToDraw = "{end}";
			}
		
			IsWriting = true;
			if (TextToDraw == "" || TextToDraw == "{end}") {
				instance_destroy();
			}
			NumInQueue += 1;
		}
	}
}
*/
#endregion
