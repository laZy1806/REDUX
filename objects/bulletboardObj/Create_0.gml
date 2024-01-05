/// @description setting vars
// You can write your code in this editor
KarmaTimer = 0
var temp = enemyDialogue(global.ENEMYNAMES[0])[$ "stateOneTxt"]
stDefaultTxt = array_create(0, noone)
for(var i = 0; i < array_length(temp); i++) {
	array_push(stDefaultTxt, scribble(temp[i]))
	
}
state = -1
selector = 0
//write for loop to cycle through array and create scribbles for each text element
typerwriter = scribble_typist()

actButton = new Button([[100, 100]], function(){ state = selector }, sp_ACT)	
actButton[$ "stepFunction"] = function() { if (selector = 1) actButton[$ "image_index"] = 1	else actButton[$ "image_index"] = 0	}

buttonList[0] = noone // fightButton
buttonList[1] = actButton
buttonList[2] = noone //itemButton
