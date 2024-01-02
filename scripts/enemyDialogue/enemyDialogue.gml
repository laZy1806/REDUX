// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyDialogue(_enemyName){
	switch _enemyName {
		case "Kazy":
			Dialogue = {
				stateOneTxt : [
					"big chungy", 
					"frungy dungy"
				]
			}
			return Dialogue
		break;
	}
}