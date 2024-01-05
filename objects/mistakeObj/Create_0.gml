/// @description Insert description here
// You can write your code in this editor
if room = mistake {
	global.fileDeleted = true
	saveObj.save()
	global.frisk = instance_create_depth(500, 240, 0, playerObj)
	kazy = instance_create_depth(1000, 1500, 0, punisherKazyObj)
	Soul = instance_create_depth(0, 0, 0, persistentSoul)
	_Timer = 120
	text = false
	/*
	scribbleObject = scribble("............THISISWHATHAPPENS&THISISWHATHAPPENS&THISISWHATHAPPENS&THISISWHATHAPPENS&THISISWHATHAPPENS")
	typist = scribble_typist()
	typist.in(0.2, 0)
	boxAlpha = 1
	*/
	lightSwitch = -1
	lightCount = 0
	depth = -202 // one above text
	
}
if room = mistakeBattle {
	depth = -202
	// testing stopwatch function
	kazyAlpha[0] = 0
	kazyAlpha[1] = 0
	textCycle = 0
	ScribbleObj = scribble("PUT THEM BACK")
	scribTypist = scribble_typist()
	scribTypist.in(0.02, 0)
	sound[0] = talkingSoundMistake
	var scribFunc = function() {
		audio_play_sound(talkingSoundMistake, 1, false)
	}
	scribTypist.function_per_char(scribFunc)
	
	var alphafunc = function() {
		kazyAlpha[1] = 1	
	}
	var textfunc = function() {
		var ranText = ""
		var ranNumber = irandom_range(0, 4)
		switch ranNumber {
			case 0:
				ranText = "why didnt you listen"
			break;
			case 1:
				ranText = "do you see what happens"
			break;
			case 2:
				ranText = "stupid"
			break;
			case 3:
				ranText = "when you dont listen"
			break;
			case 4:
				ranText = "put them back"
			break;
		}
		if textCycle < 50 {
			#region objText version
				text1 = instance_create_depth(irandom_range(50, 550), irandom_range(50, 400), 0, objTextStripped)
				with text1 {
					DefaultFont = menuFont
					DefaultSpacing = 14
					DefaultLineSpacing = 24
					TextToDraw = ranText;
					step_function = function() {
						if mistakeObj.textCycle >= 50 {
							instance_destroy()	
						}
					}
				}
			#endregion
			if variable_instance_exists(mistakeObj, "stopwatchAlarmText") {
				if stopwatchAlarmText.startTime > 25 stopwatchAlarmText.startTime -= 25
			}
			textCycle++	
		}	
		else {
			kazyAlpha[0] = 0
			kazyAlpha[1] = 0	
		}
	}
	var endFunc = function() {
		kazyAlpha[1] = 0.96
		lay = layer_create(-201) //below
		endSeq = layer_sequence_create(lay, 320, 240, mistakeSequence)
		audio_play_sound(laugh, 1, false)
		alarm[3] = 300
	}	
	stopwatchAlarm = new Alarm(120, alphafunc)
	stopwatchAlarmText = new Alarm(300, textfunc, true)
	stopwatchAlarmEnd = new Alarm(20, endFunc, false)
	var temp = instance_find(persistentSoul, 0)
	temp.Activate = true
	temp.x = temp.x - (global.camCenterX - 320)
	temp.y = temp.y - (global.camCenterY - 240)
	
}