/// @description Insert description here
// You can write your code in this editor
if !instance_exists(pauseObj)  instance_create_depth(0, 0, 0, pauseObj)
// values also set from menucontroller object
// constantly lerping values to create smooth movement 
// during menu swaps
menuParticles_system.step()
for (i = 0; i < array_length(button); i++) {
	button[i][0] = lerp_func(button[i][0], button[i][1], button[i][4]);
	button[i][2] = lerp_func(button[i][2], button[i][3], button[i][4]);
}

if !stopParticles{
	advanced_part_emitter_burst(menuParticles_system, menuParticles_emitter, menuParticles, 1)
}	
lineLerp[0] = lerp(lineLerp[0], lineLerp[1], 0.05)
if global.fightFinished and starCycle - 1 < starAmount and !global.startGame{
	run_alarm(starAlarm)
}
#region random menu stuff
// corridor scroll
if runEvent and ranEventNum = 40 {
	corAlp[0] = lerp(corAlp[0], corAlp[1], 0.03)
	corridorY += 0.035/2 ;
	corridorX -= 1/2;
	if (corridorX < ranFinish + 200) {
		corAlp[1] = 0
		if (corAlp[0] = 0) event_perform(ev_alarm, 1)
	}
	
}
//video checks
if runEvent and (ranEventNum = 50 or ranEventNum = 45) {
	videoAlpha[0] = lerp(videoAlpha[0], videoAlpha[1] - videoAlpha[3], 0.05) 
	if videoAlpha[0] <= 0.01{
		event_perform(ev_alarm, 1)
	}
}
//randomizer code	
if !runEvent and timeTillNext = 0 and obj_menucontroller.menu_state != 1.7 {
	if !isEventNum() {
		ranEventNum = irandom_range(35, 65)
		if (ranEventNum = 69) potatoCounter++
	}
	else if isEventNum(){
		event_perform(ev_alarm, 0)
	}
}
else if timeTillNext > 0 and obj_menucontroller.menu_state != 1.7{
	timeTillNext -= 1;	
}
#endregion
if global.startGame {
	videoAlpha[1] = 0
	corAlp[1] = 0
	stopParticles = true
	obj_menucontroller.menu_state = -1
	//if global.fightFinished and starCycle - 1 < starAmount run_alarm(starAlarmExit)
}
if musicRotCounter >= 1 {
	menuRotMusic = 3 * menuBump(1/90, -1 + musicRotCounter)
	menuScaleMusic = 0.1 * menuBump(1/90 , -1 + musicRotCounter)
}
if layer_sequence_exists(global.transLayer, introSeqElement) {
	intCord[0] = lerp(intCord[0], intCord[1], 0.08)		
	intCord[2] = lerp(intCord[2], intCord[3], 0.04)		
	intCord[4] = lerp(intCord[4], intCord[5], 0.04)		
		
	layer_sequence_x(introSeqElement, intCord[0])
	layer_sequence_y(introSeqElement, intCord[2])
	layer_sequence_angle(introSeqElement, intCord[4] + menuRotMusic)
	layer_sequence_xscale(introSeqElement, 1 + menuScaleMusic)
	layer_sequence_yscale(introSeqElement, 1 + menuScaleMusic)
	
}
if variable_instance_exists(id, "menuTheme") {
	
	audio_sound_gain(menuTheme, 1, 600)
	if current_time >= musicTimerVar + 2500 and !global.startGame {
		event_perform(ev_alarm, 2)
	}
	else if global.startGame{
		audio_sound_gain(menuTheme, 0, 800)	
	}
}
