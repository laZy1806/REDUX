/// @description Insert description here
// You can write your code in this editor
global.fightFinished = true
saveObj.save()
curveList()
if !instance_exists(obj_kazy) kazy = instance_create_depth(320, 270, 2, obj_kazy);
kazy.setSpriteAlpha(1, 1)
kazy.Start = true
kazy.changeBodyAnim("Tired")
kazy.headChange(1)
kazy.bodyChange(18)
kazy.layerSpeed = 0
kazy.currentX = -100
kazy.currentY = 130 
spCycle = -1
depth = -1000
ALPHA = 0
camera = instance_create_depth(0, 0, 0, camObj)
// 0 starts on TextToDraw, not TextQueue[0]
spriteFunc = function() {
	switch spCycle {
		case -1:
			// empty
		break;
		case 0:
			kazy.headChange(17)
		break;
		case 1:
			kazy.headChange(3)
			kazy.bodyChange(0)
			kazy.shakeSprite(20, 3)
		break;
		case 2:
			kazy.headChange(1)
		break;
		case 3:
			kazy.headChange(13)
		break;
		case 4:
			kazy.headChange(13)
		break;
		case 5:
			kazy.headChange(14)
		break;
		case 6:
			kazy.headChange(3)
		break;
		case 7:
			//empty
		break;
		case 8:
			kazy.headChange(3)
			kazy.bodyChange(1)
			kazy.shakeSprite(20, 3)
		break;
		case 9:
			kazy.headChange(13)
			kazy.bodyChange(0)
			kazy.shakeSprite(20, 3)
		break;
		case 10:
			kazy.headChange(1)
		break;
		case 11:
			//empty
		break;
		case 12:
			kazy.headChange(2)
		break;
		case 13:
			kazy.shakeSprite(20, 3)
			kazy.headChange(11)
		break;
		case 14:
			
		break;
		case 15:
			kazy.headChange(15)
			kazy.shakeSprite(20, 3)
		break;
		case 16:
			kazy.headChange(2)
			kazy.shakeSprite(20, 3)
		break;
		case 17:
			kazy.headChange(1)
		break;
		case 18:
			kazy.headChange(13)
		break;
		case 19:
			kazy.headChange(1)
		break;
		case 20:
			kazy.headChange(1)
		break;
		case 21:
			kazy.headChange(1)
		break;
		case 22:
			kazy.headChange(3)
		break;
		case 23:
			kazy.headChange(1)
		break;
		case 24:
			kazy.headChange(13)
		break;
		case 25:
			
		break;
	}
	spCycle++
}
placementAlarm = new Alarm(1, function() {
	kazy.layerSpeed = 0.5
	kazy.currentX = 320
	Dialogue = instance_create_depth(90, 300, -1, obj_text)
	Box = instance_create_depth(0, 290, 0, obj_OverworldDialogueNONTEXT)
	Box.x = 0
	Box.y = 290
	var Counter = 1
	with Dialogue {
				step_function = function() {
					makeTimerDiag(24)	
				}
				DefaultFont = menuFont
				DefaultSpacing = 14
				DefaultLineSpacing = 28
				TextToDraw = "* hey@2,@1 congrats on the win.";
				TextQueue[0] = "* i did my best, but you killed&me.";
				TextQueue[1] = "* just kidding, im still right&here, obviously";
				TextQueue[2] = "* in all seriousness, thank you for&playing.";
				TextQueue[3] = "* it's been a year since development&and 2 years since i had the idea.";
				TextQueue[4] = "* a lot of my time was put into&this, and i'm glad you got to play&it.";
				TextQueue[5] = "* not like the idea is super&original anyways though.";
				TextQueue[6] = "* although, who best to fight&against in my own game than, myself,";
				TextQueue[7] = global.nameFunctions.returnNameFunction("endMSG")
				TextQueue[8] = "* i hope the wait was worth it,&albeit it was only 3 minutes.";
				TextQueue[9] = "* but there are still some stuff to&find,";
				TextQueue[10] = "* so keep looking.";
				TextQueue[11] = "* before i go though, just for the&record";
				TextQueue[12] = "* i could've made this harder";
				TextQueue[13] = "* way harder";
				TextQueue[14] = "* so don't jump for joy too much";
				TextQueue[15] = "* talking to you ~Gelijah~D";
				TextQueue[16] = "* but,";
				TextQueue[17] = "* as a parting gift, take a&celebratory explosion";
				TextQueue[18] = "* ..........";
				TextQueue[19] = "* incredible";
				TextQueue[20] = "* that's all for me, goodbye for now";
				TextQueue[21] = "* and good luck with the secret&hunting";
				TextQueue[22] = "* you JSON gotta look hard";
				TextQueue[23] = "* take care.";
				TextQueue[24] = "* ......";
				Timer = 60
				TextQueue[25] = "* ow";
				TimerQueue[25] = 1200
				//Use first real number as guide based on textQueue
				#region unused
				/*
					headQueue[Counter - 1] = 1
					headQueue[0 + Counter] = 1
					headQueue[1 + Counter] = 1
					headQueue[2 + Counter] = 1
					headQueue[3 + Counter] = 1
					headQueue[4 + Counter] = 1
					headQueue[5 + Counter] = 1
					headQueue[6 + Counter] = 1
					headQueue[7 + Counter] = 1
					headQueue[8 + Counter] = 1
					headQueue[9 + Counter] = 1
					headQueue[10 + Counter] = 1
					headQueue[11 + Counter] = 1
					headQueue[12 + Counter] = 1
					headQueue[13 + Counter] = 1
					headQueue[14 + Counter] = 1
					headQueue[15 + Counter] = 1
					headQueue[16 + Counter] = 1
					headQueue[17 + Counter] = 1
					headQueue[18 + Counter] = 1
					headQueue[19 + Counter] = 1
					headQueue[20 + Counter] = 1
					headQueue[20 + Counter] = 1
					*/
				#endregion
				// Timer instead of TimerQueue because itll skip over this text timer.
		}
		
}, false)
spriteAlarm = new Alarm(1, spriteFunc, true)
explosionAlarm = new Alarm(1, function(){
	kazy.currentX = 220
	if !instance_exists(eggsplosionOBJ) instance_create_depth(400, 130, 0, eggsplosionOBJ)
}, false)
SFXAlarm = new Alarm(1, function(){
	audio_play_sound(impact, 1, false)
	camControls( , ,  , 5)
}, false)