// Auto-generated stubs for each available event.

function afamINTRO_event_create()
{
	seqPaused = false
}
function afamINTRO_event_step()
{
	if !seqPaused {
		seqPausing()	
	}
	else {
		layer_sequence_speedscale(self.elementID, 0)
	}
}
function afamINTRO_beginMovement()
{	
	if instance_exists(obj_menu) {
		with obj_menu {
			menuTheme = audio_play_sound(menuSong, 1, true)
			musicTimerVar = current_time
			audio_sound_gain(menuTheme, 0, 0)
			intCord[1] = 100
			intCord[3] = 120
			intCord[5] = 3
			lineLerp[1] = 0
			alarm[3] = 50
			layer_sequence_pause(introSeqElement)
		}
		seqPaused = true
	}
}