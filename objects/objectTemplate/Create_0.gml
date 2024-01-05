isInteractable = false
interactableFunc = noone
isDialogue = false
dialouge = {
	
}
drawEvent = function(){
	if (isDialogue) and is_instanceof(dialouge, "dialougeSystem") dialogue.Draw()
	draw_self()
}