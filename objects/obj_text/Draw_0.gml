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
if !instance_exists(obj_OverworldDialogue) {
	if show {
	//draws every letter so far
		for (var i = 0; i < TextLength; i++){
			//Makes text colour default
			if string_char_at (TextToDraw, i + 1) == "~" {
				if string_char_at(TextToDraw, i + 2) == "R"
					colour = c_red;
				if string_char_at(TextToDraw, i + 2) == "O"
					colour = c_orange;
				if string_char_at(TextToDraw, i + 2) == "Y"
					colour = c_yellow;
				if string_char_at(TextToDraw, i + 2) == "G"
					colour = c_green;
				if string_char_at(TextToDraw, i + 2) == "A"
					colour = c_aqua;
				if string_char_at(TextToDraw, i + 2) == "B"
					colour = c_blue;
				if string_char_at(TextToDraw, i + 2) == "P"
					colour = c_fuchsia;
				if string_char_at(TextToDraw, i + 2) == "D"
					colour = DefaultColour;	
				i += 2;
			}
			draw_set_color(colour);
			draw_set_font(font);
	
			// for making new lines
			if (string_char_at(TextToDraw, i + 1) == "&" &&  string_char_at(TextToDraw, i) != "}") {
				sentence_x = 0
				sentence_y += line_spacing;
				i += 1;
			}
	
			// usage for text delays
			// how : "@4Bingusblungus
			if (string_char_at(TextToDraw, i + 1) == "@") {
				TextDelay = 2 * real(string_char_at(TextToDraw, i + 2));
				if (TextDelay < 2) {
					//TextDelay = 2;
				}
				i += 2;
			}	
			// drawing lines with correct spacing wacing
			draw_set_halign(fa_center)
			draw_set_alpha(1)	// fixes intro bug where alpha is coming in, but does not affect this
			draw_text_transformed(x + sentence_x * scale, y + sentence_y * scale, string_char_at(TextToDraw, i + 1), scale, scale, 0);
			sentence_x += letter_spacing;
		}
		// sets number of letters to draw which ignores everything we cancel above
		if IsWriting {
			CurrentDelay += 1 //* delta;
			if (CurrentDelay >= TextDelay) {
				CurrentDelay = 0;
				TextLength += 1;
				//adds half second delay between sentences
				if (string_char_at(TextToDraw, TextLength) == "." || string_char_at(TextToDraw, TextLength) == "?"){
					CurrentDelay = -30 /// delta;
				}
		
				// pause within middle of sentence via comma
				if (string_char_at(TextToDraw, TextLength)) == ","{
					CurrentDelay = -15 /// delta;
				}	
		
				//stops the text from writing
				if (TextLength > string_length(TextToDraw)) {
					IsWriting = false;
				}
			}
			if (keyboard_check(ord("X")) || keyboard_check(ord("C"))) && Timer_statement = false && current_time > skipDelay + 500{
				TextLength = string_length(TextToDraw);
				IsWriting = false;
			}
		}
		else {   
			//Moves onto next line of dialogue or destroys the text writer
			if Timer_statement = false {
				if (keyboard_check(ord("Z")) || keyboard_check(ord("C"))) && CanAdvance {	
					TextLength = 0;
					TextDelay = 2;
					CurrentDelay = 0;
					skipDelay = current_time 
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
	}
}