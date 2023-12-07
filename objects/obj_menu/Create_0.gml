/// @description Insert description here
// You can write your code in this editor
// [0][0] is x newplace, [0][0] is origin 
// [1][0] is y newplace, [1][1] is origin
// re-organize array's into buttons
//instance_create_depth(0, 0, 0, fightShaderObj)
delta_init()
#region setting each button's cords
button[ButtonNames.start] = 
[
	-100,
	-100,
	200,
	200,
	0.2,
]
button[ButtonNames.options] = 
[
	-100,
	-100,
	250,
	250,
	0.2,
]
button[ButtonNames.gallery] = 
[
	-100,
	-100,
	300,
	300,
	0.2,
]
button[ButtonNames.controls] = 
[
	750,
	750,
	200 - 10,
	200 - 10,
	0.2,
]
button[ButtonNames.fullscreen] = 
[
	750,
	750,
	250 - 10,
	250 - 10,
	0.2,
]
button[ButtonNames.back_opt] = 
[
	750,
	750,
	300 - 10,
	300 - 10,
	0.2,
]
button[ButtonNames.up] = 
[
	750,
	750,
	270 - 130 + 20,
	270 - 130,
	0.2,
]
button[ButtonNames.down] = 
[
	750,
	750,
	270 - 100 + 20,
	270 - 100 + 20,
	0.2,
]
button[ButtonNames.left] = 
[
	750,
	750,
	270 - 50 + 20,
	270 - 50 + 20,
	0.2,
]
button[ButtonNames.right] = 
[
	750,
	750,
	270 - 0 + 20,
	270 - 0 + 20,
	0.2,
]
button[ButtonNames.back_control] = button[ButtonNames.back_opt]
button[ButtonNames.next] = 
[
	750,
	750,
	175,
	175,
	0.2,
]
button[ButtonNames.previous] = 
[
	750,
	750,
	225,
	225,
	0.2,
]
button[ButtonNames.back_gal] = 
[
	750,
	750,
	275,
	275,
	0.2,
]
#endregion
curveList()
depth = 0
additive = 20;
count = 0;
cycle = 0;
lineLerp[0] = 100;
lineLerp[1] = 100;
lineRotation = 0;
menuAlphaLerp = 1;
menuLerp = 0;
menuRotMusic = 0
menuScaleMusic = 0
starAmount = -1
potatoCounter = 0
stopParticles = true;
_cycle = 0
if global.fightFinished starAmount++
if global.fileDeleted starAmount++
if global.noteCollected starAmount++

starCycle = 0

menuParticles_system = new advanced_part_system()
menuParticles = new advanced_part_type()
// emitter is spread far to reduce pixel density
menuParticles_emitter = new advanced_part_emitter(menuParticles_system, 0, 640, 50, 50, aps_shape.rectangle, aps_distr.linear)
menuParticles_system.set_max_count(50)
with menuParticles{
	//part_gravity(0.05, 285)
	part_life(150, 200)
	part_size(2, 2, 0, 0)
	part_image(particlePixel, 0, c_white, false, false, true)
	part_speed(1.5, 3, 0, 0)
	part_direction(280, 290, 0, 0)
	part_alpha3(1, 0.5, 0)
	//part_death(5, self)
	// compensates for large area by deleting particles that cant be seen.
	part_step_function(
		function(){
			if (x < 0 or 640 < x) life = 0		
		}
	)
}

//lerpval = 0.2
lerp_func = function(origin, newplace, lerpval) {
	origin = lerp(origin, newplace, lerpval)
	return origin
}

//firstClip = video_open("firstClip.mp4")
video_enable_loop(false)
video_pause()

ValuesShader = shBrtSatConGam;
Brt	 = shader_get_uniform(ValuesShader, "brightness")
Sat	 = shader_get_uniform(ValuesShader, "saturation")

var StarAlarm = function() {
	starArray[starCycle] = instance_create_depth(490 + 40 * starCycle, 450, 1, starObj)
	starArray[starCycle].yTo = 374
	starCycle++
}
starAlarm = new Alarm(450, StarAlarm, true, 30)
var StarAlarmExit = function() {
	starArray[starCycle].yTo = 520
	starArray[starCycle].lerpVal = 0.01
	starCycle++;
	
}
starAlarmExit = new Alarm(15, StarAlarmExit, true, 30)

shader_set_uniform_f(Brt, 0)
shader_set_uniform_f(Sat, 1)
#region random elements and video variables
	ranEventNum = 0
	runEvent = false
	// 0 is current, 1 is target
	videoAlpha[0] = 0
	videoAlpha[1] = 0.8
	// 2 is currentModi, 3 is targetModi
	videoAlpha[2] = 0
	videoAlpha[3] = 0
	corAlp[0] = 0
	corAlp[1] = 0.2
	
	corridorX = 640 - 640
	corridorY = 260 + 240 * 0.035/2 
	ranFinish = 0
	beginVideo = 1
	timeTillNext = 900
#endregion
startGameFunc = function() {
///@func startGameFunc()
	global.startGame = true
	starCycle = 0
	videoAlpha[1] = 0
	corAlp[1] = 0
	stopParticles = true	
	alarm[4] = 120
}
isEventNum = function() {
	
	return ranEventNum = 40 or ranEventNum = 50 or ranEventNum = 45 or potatoCounter >= 5
	
}
randomSwitch = function(on) {
	if on {
		runEvent = false
	}
	else {
		runEvent = true
		videoAlpha[1] = 0
		corAlp[1] = 0
	}
}
musicRotCounter = 0;
musicTimerVar = 0
#region intro animation coordinates and lerp
	intCord[0] = 320
	intCord[1] = 320
	intCord[2] = 240
	intCord[3] = 240
	intCord[4] = 0
	intCord[5] = 0
if global.currentTransSequence = 0 {
	global.transLayer = layer_create(-5)
	introSeqElement = layer_sequence_create(global.transLayer, intCord[0], intCord[2], afamINTRO)	
	introSeqInst = layer_sequence_get_instance(introSeqElement)
	if global.name = "keon" {
		audio_play_sound(introKeonVer, 1, false) 
	}
	else {
		var ranSound = irandom_range(0, 1)
		if ranSound = 0 {
			audio_play_sound(introCreateVer, 1, false) 
		}
		if ranSound = 1 {
			audio_play_sound(introGrabVer, 1, false) 
		}
	}
}
else {
	introSeqElement = global.currentTransSequence
	introSeqInst = layer_sequence_get_instance(introSeqElement)
	if global.name = "keon" {
		audio_play_sound(introKeonVer, 1, false) 
	}
	else {
		var ranSound = irandom_range(0, 1)
		if ranSound = 0 {
			audio_play_sound(introCreateVer, 1, false) 
		}
		if ranSound = 1 {
			audio_play_sound(introGrabVer, 1, false) 
		}
	}
}
#endregion