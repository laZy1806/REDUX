/// @description Insert description here
// You can write your code in this editor

box = instance_create_depth(0, 0, 0, obj_OverworldDialogue)
text = instance_create_depth(0, 0, 0, obj_text)
Soul.x = frisk.x
Soul.y = frisk.y
Soul.Activate = false
Soul.noGUI = true
with text {
	DefaultFont = menuFont
	DefaultSpacing = 14
	DefaultLineSpacing = 24
	TextToDraw = "@9.......c3Ryb2tpbmdteXNoaXQ=";
	Timer_statement = true
	Timer = 5
	headSprite = punisherKazyHead
	step_function = function() {
		if (CurrentDelay = TextDelay - 1) audio_play_sound(talkingSoundMistake, 1, false)  
		if Timer = 0 with mistakeObj event_perform(ev_alarm, 1)
	}
}

