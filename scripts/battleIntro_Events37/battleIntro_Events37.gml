// Auto-generated stubs for each available event.

function battleIntro_FadeBattleBox()
{
	if instance_exists(obj_bulletboard) obj_bulletboard.Start = true;
}
function battleIntro_FadeSprite()
{
	if instance_exists(obj_kazy) {
		obj_kazy.Start = true;
		obj_kazy.doAfterImage(0.025, 0.55)
		obj_kazy.shakeSprite(30, 3)
	}
}
function battleIntro_introDialogue()
{
	camControls(0, -50, 0.75, , 0.06)
	if instance_exists(persistentSoul) persistentSoul.noGUI = true
	if instance_exists(obj_kazy) {
		with obj_kazy {
			global.nameFunctions.returnNameFunction("battleIntroDialogue")	
		}
	}
}
function battleIntro_SetVariables(){
	global.spriteBlacktoWhite = 0
}
function battleIntro_pauseFunction()
{
	seqPausing()
}