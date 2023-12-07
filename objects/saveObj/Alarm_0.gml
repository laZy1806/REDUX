/// @description Save
// You can write your code in this editor
var saveData = array_create(0)

var toSave = {
	savedName : global.name,	
	fightFinished : global.fightFinished,
	fileDeleted : global.fileDeleted, 
	//GallerydebugMode : global.debugMode,
	noteCollected : global.noteCollected
}
array_push(saveData, toSave)

var String = json_stringify(saveData)
var Buffer = buffer_create(string_byte_length(String) + 1, buffer_fixed, 1)
buffer_write(Buffer, buffer_string, String)

buffer_save(Buffer, "saveData.json")

buffer_delete(Buffer)
