/// @description Insert description here
// You can write your code in this editor
//show_debug_message(instance_number(obj_soul))
soulX = lerp(soulX, _xTo, lerpSpeed)
soulY = lerp(soulY, _yTo, lerpSpeed)
_xScale = lerp(_xScale, _xScaleTo, lerpSpeed)
_yScale = lerp(_yScale, _yScaleTo, lerpSpeed)

if timeTillText > -100 timeTillText--; 

numShake = animcurve_channel_evaluate(animcurve_get_channel(gameOverCurve, "othershakeData"), shakePercent)
				
ranX = random_range(-5 * numShake, 5 * numShake)
ranY = random_range(-2 * numShake, 2 * numShake)
	
shakePercent += shakeModifier;

shakePercent = clamp(shakePercent, -1, 1)

if !optionSelected and timeTillText = -100{
	if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) {
		shakeModifier = 1/120	
		restartBattle = true
		typist.out(0.2, 0, true)
		alarm[1] = 240
		optionSelected = true
		audio_play_sound(ClimaticRiser, 1, false)
	}	
	if keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("X")) {
		shakeModifier = 1/120	
		returnToMenu = true
		typist.out(0.2, 0, true)
		alarm[1] = 240
		optionSelected = true
		audio_play_sound(ClimaticRiser, 1, false)
	}	
}
if layer_sequence_exists(deathLayer, restoredHeartSeq) {
	layer_sequence_x(restoredHeartSeq, soulX + ranX)	
	layer_sequence_y(restoredHeartSeq, soulY + ranY)	
	layer_sequence_xscale(restoredHeartSeq, _xScale)	
	layer_sequence_yscale(restoredHeartSeq, _yScale)	
	
	if layer_sequence_is_finished(restoredHeartSeq) {
		layer_sequence_pause(restoredHeartSeq)			
		_xTo = 320
		_yTo = 340
		_xScaleTo = 1
		_yScaleTo = 1	
		lerpSpeed = 0.04
	}	
}



	
