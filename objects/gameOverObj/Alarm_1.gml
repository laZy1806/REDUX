/// @description Insert description here
// You can write your code in this editor
deathLayer = layer_create(0, "deathLayer")
audio_stop_sound(ClimaticRiser)
emitter = audio_emitter_create()
bus = audio_bus_create()
bus.bypass = false
bus.gain = 1
bus.effects[0] = audio_effect_create(AudioEffectType.Reverb1, {
	bypass : false, size : 0.9, damp : 0.5, mix : 0.3		
})
audio_emitter_bus(emitter, bus)
if restartBattle {
	
	shakePercent = 0
	shakeModifier = 0
	restoredHeartSeq = layer_sequence_create(deathLayer, soulX + ranX, soulY + ranY, heartRestored)
	layer_sequence_xscale(restoredHeartSeq, 3)
	layer_sequence_yscale(restoredHeartSeq, 3)
	alarm[2] = 180 // time till restart fight
	//audio_play_sound(restoredSFX, 1, false)
	audio_play_sound_on(emitter, restoredSFX, false, 1)
	/*
	audio_bus_main.effects[0] = audio_effect_create(AudioEffectType.Reverb1, {
		bypass : false, size : 0.9, damp : 0.5, mix : 0.3
			
	})
	*/
}
if returnToMenu {
	var multi = 1.1
	repeat 6 {
		soulBit = instance_create_depth(soulX, soulY, 0, soulBitObj)
		soulBit.image_xscale = 2
		soulBit.image_yscale = 2
		soulBit.hspeed = multi;
		soulBit.vspeed = -3;
		soulBit.gravity = 0.06;
		multi *= -1.2
		audio_play_sound_on(emitter, destroySFX, false, 1)
		alarm[2] = 180
	}
}













