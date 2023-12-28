function dialogueSystem(_dialoguelist, _spd = 0.05, _speakSprite = noone, _wrapwidth = 300, _wrapheight = 300, _boxWidth = 546, _boxHeight = 146) constructor {
	currentDialogue = 0;
	dialogueList = argument[0];
	spd = argument[1]
	speakSprite = argument[2]
	wrapwidth = argument[3]
	wrapheight = argument[4]
	boxWidth = argument[5]
	boxHeight = argument[6]
	
	typist = scribble_typist()
	typist.in(spd, 0) 
	
	Draw = function(_x, _y) {
		draw_rectangle_color(_x, _y, _x + boxWidth, _y + boxHeight, c_black, c_black, c_black, c_black, false)
		dialogueList[currentDialogue].draw(_x,_y, typist)
	}	
	chooseDialogue = function(_diagNum){
		currentDialogue = _diagNum;
	}
	advanceDialogue = function(){
		currentDialogue++;
	}
	resetDialogue = function(){
		currentDialogue = 0;
	}
	changeSpd = function(_input){
		spd = _input
	}
}
