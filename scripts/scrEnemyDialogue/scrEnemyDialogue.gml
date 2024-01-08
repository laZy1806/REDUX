// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyDialogue(_enemyName){
	switch _enemyName {
		case "Kazy":
			Dialogue = {
				stateOneTxt : [
					"* Froggit hopped close!", 
					"frungy dungy"
				]
			}
			return Dialogue
		break;
	}
}