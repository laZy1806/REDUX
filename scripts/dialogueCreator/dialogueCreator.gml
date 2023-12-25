/// @desc Function Description
/// @param {Array*} _dialoguelist Description
function dialogueCreator(_dialoguelist) constructor{
	currentDialogue = 0
	dialogueList = _dialoguelist
	Draw = function() {
		dialogueList[currentDialogue].Draw()
	}
	
	chooseDialogue = function(_diagNum){
		currentDialogue = _diagNum
	}
	advanceDialogue = function(){
		currentDialogue++
	}
	resetDialogue = function(){
		currentDialogue = 0
	}
}
