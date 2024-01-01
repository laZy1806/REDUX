/// @description Insert description here
// You can write your code in this editor
/*
instance_destroy(obj_attacks)
instance_destroy(obj_bulletboard)
instance_destroy(obj_kazy)

if instance_exists(obj_bone) instance_find(obj_bone, all).destroy = true
if instance_exists(obj_gaster) instance_find(obj_gaster, all).destroy = true
*/
depth = -10000
curveList()
#region camera coordinates
instance_find(battleCamObj, 0).RESET = true
instance_destroy(obj_attacks)
instance_destroy(obj_kazy)
instance_destroy(obj_bulletboard)
instance_destroy(obj_buttoncontroller)
instance_destroy(obj_soul)


#endregion
audio_play_sound(Soul_Halve, 1, false)

for(i = 0; i < instance_number(boneObj); i++) {
	instance_find(boneObj, i).destroy = true		
}
for(j = 0; j < instance_number(boneObj_rotation); j++) {
	instance_find(boneObj_rotation, j).destroy = true	
}
for(t = 0; t < instance_number(gasterObj); t++) {
	instance_find(gasterObj, t).destroy = true	
}
timeTillText = 140
#region soulData
	soulX = global.SoulX
	soulY = global.SoulY
	_xTo = soulX
	_yTo = soulY
	_xScale = 1
	_yScale = 1
	_xScaleTo = 1
	_yScaleTo = 1
	ranX = 0
	ranY = 0
	lerpSpeed = 0.02
	currentSprite = Soul_Break
#endregion

restartBattle = false
restoredHeartSeq = 0
returnToMenu = false
shakePercent = 0
shakeModifier = 0;
numShake = 0
deathLayer = 0

optionSelected = false
global.pause = true
alarm[0] = 100
scribbleObject = scribble(global.nameFunctions.returnNameFunction("deathQuote"))
typist = scribble_typist()
typist.in(0.2, 0)