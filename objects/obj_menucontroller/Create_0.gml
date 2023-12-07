/// @description Insert description here
// You can write your code in this editor
depth = 0
current = 0;
menu_state = -1
//alarm[9] = 20 // take out for debug
swap_timer = 0;
swap = false
cycle = 0;
curveList()
controlMenu()
global.startGame = false;
//make gallery system that holds corrdinates, and has a function that swaps sprites
#region structs for images
	scarf = {
		sprite : scarfSprite,
		AnimationData : [0, 4, 1],
		x : -200,
		y : 230,
		savedX : -200,
		offsetX : 130,
		xToBe: 0,
		scaleFactor: 3,
		textXToBe: -450,
		textYToBe: 250,
		textYOffset: 0,
		displayText : function(create = false) {
			if create {
				scarfText = instance_create_depth(-450, 250, 0, obj_text)
				scarfText.TextToDraw = "An animated piece for&the sprite, which was&a handmade scarf that I&have in real life, but because&of my lacking animation skills&it got scrapped for purple shoes."
				scarfText.CanAdvance = false		
				scarfText.show = true
				scarfText.DefaultFont = menuFont
				scarfText.DefaultSpacing = 14
				scarfText.DefaultLineSpacing = 23
				scarfText.TextLength = string_length(scarfText.TextToDraw)
			}
			return scarfText;
		}
	}	
	oldSprite = {
		sprite : sprite_add_ext("kazySprites/full body.png", 0, 55, 77, true),
		AnimationData : [0, 4, 1],
		x : -200,
		y : 250,
		savedX : -200,
		offsetX : 35,
		scaleFactor: 2,
		xToBe : 0,
		textXToBe: -450,
		textYToBe: 250,
		textYOffset: -65,
		displayText : function(create = false) {
			if create {
				oldSpriteText = instance_create_depth(-450, 185, 0, obj_text)
				oldSpriteText.TextToDraw = "One of the older&sprites I made of&myself whilst learning&pixel art. I'm still&not amazing at it but&this definitely shows&the improvement I've&made overtime.&(still ugly though)"
				oldSpriteText.CanAdvance = false		
				oldSpriteText.show = true
				oldSpriteText.DefaultFont = menuFont
				oldSpriteText.DefaultSpacing = 14
				oldSpriteText.DefaultLineSpacing = 23
				oldSpriteText.TextLength = string_length(oldSpriteText.TextToDraw)
				
			}
			return oldSpriteText;
		}
	}
	olderSprite = {
		sprite : sprite_add_ext("kazySprites/bad.png", 0, 106, 300, true),
		AnimationData : [0, 4, 1],
		x : -200,
		y : 250,
		savedX : -200,
		offsetX : 35,
		scaleFactor: 0.5,
		xToBe : 0,
		textXToBe: -450,
		textYToBe: 250,
		textYOffset: 0,
		displayText : function(create = false) {
			if create {
				oldSpriteText = instance_create_depth(-450, 250, 0, obj_text)
				oldSpriteText.TextToDraw = "The oldest sprite I&made when first &learning, being&another highlight of my&growth, but just really&damn ugly."
				oldSpriteText.CanAdvance = false		
				oldSpriteText.show = true
				oldSpriteText.DefaultFont = menuFont
				oldSpriteText.DefaultSpacing = 14
				oldSpriteText.DefaultLineSpacing = 23
				oldSpriteText.TextLength = string_length(oldSpriteText.TextToDraw)
				
			}
			return oldSpriteText;
		}
	}
	Kai = {
		sprite : sprite_add_ext("kai/inGameImage.png", 0, 151, 201, true),
		AnimationData : [0, 4, 1],
		x : -200,
		y : 250,
		savedX : -200,
		offsetX : 25,
		scaleFactor: 0.5,
		xToBe : 0,
		textXToBe: -450,
		textYToBe: 250,
		textYOffset: 0,
		displayText : function(create = false) {
			if create {
				KaiText = instance_create_depth(-450, 280, 0, obj_text)
				//oldSpriteText.TextToDraw = "I originally wanted an animated piece on my character, and this handmade scarf I have would have been great, but im bad at animating, so its scrapped."
				KaiText.TextToDraw = "My pet cat,&Kai"
				KaiText.CanAdvance = false		
				KaiText.show = true
				KaiText.DefaultFont = menuFont
				KaiText.DefaultSpacing = 14
				KaiText.DefaultLineSpacing = 23
				KaiText.TextLength = string_length(KaiText.TextToDraw)
				
			}
			return KaiText;
		}
	}
	corridorEE = {
		sprite : EECorSP,
		AnimationData : [0, 4, 1],
		x : -250,
		y : 250,
		savedX : -250,
		offsetX : -25,
		scaleFactor: 0.5,
		xToBe : 0,
		textXToBe: -450,
		textYToBe: 250,
		textYOffset: 0,
		displayText : function(create = false) {
			if create {
				corridorEEText = instance_create_depth(-450, 280, 0, obj_text)
				//oldSpriteText.TextToDraw = "I originally wanted an animated piece on my character, and this handmade scarf I have would have been great, but im bad at animating, so its scrapped."
				corridorEEText.TextToDraw = "whats this?"
				corridorEEText.CanAdvance = false		
				corridorEEText.show = true
				corridorEEText.DefaultFont = menuFont
				corridorEEText.DefaultSpacing = 14
				corridorEEText.DefaultLineSpacing = 23
				corridorEEText.TextLength = string_length(corridorEEText.TextToDraw)
				
			}
			return corridorEEText;
		}
	}
#endregion
galleryArray[0] = scarf
galleryArray[1] = oldSprite
galleryArray[2] = olderSprite
galleryArray[3] = Kai
if global.debugMode galleryArray[4] = corridorEE
galleryFunc = function() { 
	//GALLERY TEXT BIG CONTRIBUTER TO LAG, DUE TO CREATION OF TXT OBJ 
	return {
		obj : obj_menucontroller,
		gallerySelector : 0,
		curveCounter : 0,
		reverse : 0,
		frameTime : 10,
		delayStep : 10,
		galleryStep : function() {
			delayStep = clamp(delayStep, 0, 20)
			Curve = obj.ease_in_out_Menu(1/120, curveCounter)
			for(var i = 0; i < array_length(obj.galleryArray); i++) {	
			//KNOWN ISSUE, if step event is always being calculated, curve is calculated at times when it isnt supposed to, causing errors
				var textObjects = obj.galleryArray[i].displayText()
				//var Curve = obj.ease_in_out_Menu(1/240, curveCounter)
				if (obj.curveCalcDone(curveCounter)) {
					obj.galleryArray[i].savedX = obj.galleryArray[i].x
					obj.galleryArray[i].xToBe = 0
					delayStep--;	
				}
				else { 
					obj.galleryArray[i].x = obj.galleryArray[i].savedX + (obj.galleryArray[i].xToBe * Curve)
				}
				textObjects.x = lerp(textObjects.x, obj.galleryArray[i].textXToBe, 0.065 * Curve * 1.5)
				textObjects.y = lerp(textObjects.y, obj.galleryArray[i].textYToBe + obj.galleryArray[i].textYOffset, 0.065 * Curve * 1.5) 
			}			
		},
		galleryDraw : function() {
			for(var i = 0; i < array_length(obj.galleryArray); i++) {
				with obj {
					draw_sprite_ext(galleryArray[i].sprite, galleryArray[i].AnimationData[0], galleryArray[i].x, galleryArray[i].y, galleryArray[i].scaleFactor, galleryArray[i].scaleFactor, 0, c_white, 1)		
				}
			}	
		},
		forward : function() {
			if gallerySelector + 1 < array_length(obj.galleryArray) and (obj.curveCalcDone(curveCounter)) and delayStep <= 0 {
				obj.galleryArray[gallerySelector].xToBe = 500 + obj.galleryArray[gallerySelector].offsetX
				obj.galleryArray[gallerySelector + 1].xToBe = 550 + obj.galleryArray[gallerySelector + 1].offsetX
				
				obj.galleryArray[gallerySelector].textYToBe = 550
				obj.galleryArray[gallerySelector + 1].textXToBe = 10
				gallerySelector++;
				curveCounter++
				delayStep = 10
			}
		},
		reverse : function() {
			if gallerySelector > 0 and (obj.curveCalcDone(curveCounter)) and delayStep <= 0 {
				obj.galleryArray[gallerySelector - 1].xToBe = -500 - obj.galleryArray[gallerySelector - 1].offsetX
				obj.galleryArray[gallerySelector].xToBe = -550 - obj.galleryArray[gallerySelector].offsetX
				
				obj.galleryArray[gallerySelector - 1].textYToBe = 250
				obj.galleryArray[gallerySelector].textXToBe = -450 //- obj.galleryArray[gallerySelector].offsetX
				gallerySelector--;
				curveCounter++
				delayStep = 10
			}
		},
		menuChanges : function(action) {
			// put into an alarm to make objects return to positions or come into position based on if entering or exiting gallery
			if (action = "enter") {
				obj.galleryArray[gallerySelector].xToBe = 500 + obj.galleryArray[gallerySelector].offsetX
				obj.galleryArray[gallerySelector].textXToBe = 10
			}
			else if (action = "return") {
				obj.galleryArray[gallerySelector].xToBe = -500 - obj.galleryArray[gallerySelector].offsetX	
				obj.galleryArray[gallerySelector].textXToBe = -450 //- obj.galleryArray[gallerySelector].offsetX	
			}
			curveCounter++
		},
		textCreation : function(){
			for(var i = 0; i < array_length(obj.galleryArray); i++) {
				obj.galleryArray[i].displayText(true)
				
			}	
		},
		spriteAnimation : function() {
		var scarf = obj.galleryArray[0]  
			frameTime--;
			if scarf.AnimationData[0] = 4 and frameTime = 0{
				scarf.AnimationData[2] = -1
			}
			else if scarf.AnimationData[0] = 0 and frameTime = 0{
				scarf.AnimationData[2] = 1
			}
			if frameTime = 0 {
				scarf.AnimationData[0] = scarf.AnimationData[0] + scarf.AnimationData[2]
				frameTime = 10
			}
		}
	}				
}
galObj = galleryFunc()	
galObj.textCreation()
// use gallery selector to set coordinates for sprites, instead just calculate every object
// idea for erasing text, draw over entire sentence, but with one less letter, so take a string
// and delete a character from it, then draw over it instantly
MenuButton = function (_cordx = 0, _name, _color = c_white, _transition = false, lerpvalue = 0.2, _cordy = 0){
	#region button name selections
		if (_name) = "start" var selected = ButtonNames.start
		if (_name) = "options" var selected = ButtonNames.options
		if (_name) = "gallery" var selected = ButtonNames.gallery

		if (_name) = "controls" var selected = ButtonNames.controls
		if (_name) = "fullscreen" var selected = ButtonNames.fullscreen
		if (_name) = "back_opt" var selected = ButtonNames.back_opt

		if (_name) = "up" var selected = ButtonNames.up
		if (_name) = "down" var selected = ButtonNames.down
		if (_name) = "left" var selected = ButtonNames.left
		if (_name) = "right" var selected = ButtonNames.right

		if (_name) = "next" var selected = ButtonNames.next
		if (_name) = "previous" var selected = ButtonNames.previous
		if (_name) = "back_gal" var selected = ButtonNames.back_gal
	#endregion
	if (_cordx != 0 ) with instance_find(obj_menu, 0) button[selected][1] = _cordx
	// since script was never first written with this, it will only change y if I set it to something
	if (_cordy != 0) with instance_find(obj_menu, 0)  button[selected][3] = _cordy
	with instance_find(obj_menu, 0)  button[selected][4] = lerpvalue
	// pushes back every setting that isnt the one selected
	
	if !_transition and !global.startGame{
		switch menu_state {
			case 0:
				// increase for limit if i add more buttons to a single menu state
				for(i = 0; i < 3; i++) {
					if (i != current and !swap) obj_menu.button[i][x_orig] = 70;
				}
			break;
			case 1:
				for(i = 0; i < 3; i++) {
					if (i != current and !swap) obj_menu.button[i + 3][x_orig] = 540;
				}
			break;
			case 1.5:
				for(i = 0; i < 5; i++) {
					if (i != current and !swap) obj_menu.button[i + 6][x_orig] = 480;
				}
			break;
			case 1.7:
				for(i = 0; i < 3; i++) {
					if (i != current and !swap) obj_menu.button[i + 11][x_orig] = 570;
				}
			break;
		}
	}
}
