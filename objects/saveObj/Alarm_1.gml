/// @description Load
// You can write your code in this editor
if (file_exists("saveData.json")) {
	var Buffer = buffer_load("saveData.json")
	var String = buffer_read(Buffer, buffer_string)
	buffer_delete(Buffer)
	
	var loadedData = json_parse(String)
	
	while (array_length(loadedData) > 0) {
		var loadedEntity = array_pop(loadedData) 
		global.name = loadedEntity.savedName
		global.fightFinished = loadedEntity.fightFinished
		global.fileDeleted = loadedEntity.fileDeleted
		//global.debugMode = loadedEntity.GallerydebugMode
		global.noteCollected = loadedEntity.noteCollected
	}
	
	if global.fightFinished {
		var Buffer = buffer_load("misc/debuggingJSON.json")
		var String = buffer_read(Buffer, buffer_string)
		buffer_delete(Buffer)
		
		if String != "true" and String != "false" {
			show_error("either true or false dumbass", true)	
		}
		var loadedData = json_parse(String)
		global.debugMode = loadedData	
	}
}