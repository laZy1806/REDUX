// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrNameActions(){
	// stored in a global variable
	return {
		setGameName : function(name = "null") {
		///@func setGameName(name)	
			global.name = name;
		},
		returnNameFunction : function(dialogueType) {
		///@func returnNameFunction(dialogueType)	
			switch (global.name)
			{
				case "elijah":
					return ELIJAH(dialogueType)
				break;		
				case "keon":
					return KEON(dialogueType)
				break;
				case "jamie":
					return JAMIE(dialogueType)
				break;
				case "bean":
					return BENJAMIN(dialogueType)
				break;
				case "ben":
					return BENJAMIN(dialogueType)
				break;
				case "adel":
					return ADEL(dialogueType)
				break;
				default:
					return NONSPECIAL(dialogueType)
				break;
			}		
		}
	}
}