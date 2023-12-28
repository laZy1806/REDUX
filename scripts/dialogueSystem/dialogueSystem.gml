function dialogueSystem(_dialogueStruct, _spd = 0.05, _wrapwidth = 300, _wrapheight = 300, _boxWidth = 540, _boxHeight = 140) constructor {
	dialogueList = _dialogueStruct[$ "dialogueList"];
	spriteList = _dialogueStruct[$ "spriteList"] ?? noone;	
	spd = argument[1]
	wrapwidth = argument[2]
	wrapheight = argument[3]
	boxWidth = argument[4]
	boxHeight = argument[5]
	
	currentDialogue = 0;
	typist = scribble_typist()
	typist.in(spd, 0) 
	animCount = 0;
	
	Draw = function(_x, _y, _spScale = 3, _spSpd = 0.01) {
		var isSprite = typeof(spriteList) = "array"
		draw_sprite_stretched(dialogueBox, 0, _x, _y, boxWidth, boxHeight)
		dialogueList[currentDialogue].draw(_x + (isSprite ? 120 : 40) ,_y + 20, typist)
		if isSprite {
			if (animCount < 1) animCount += _spSpd else animCount = 0
			var sp = spriteList[currentDialogue]
			var range = 2
			var anim = floor(animCount * range)
			anim = clamp(anim, 0, range - 0.01) //prevents flickering to next sub-image
			draw_sprite_ext(sp, anim, _x + 50, _y + 70, _spScale, _spScale, 0, c_white, 1)
		}
	}	
	//Mutators
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
