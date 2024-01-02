function enemyCreator(_enemyarray){
	var ARRAY = _enemyarray
	var xSpacing = round(320 / array_length(ARRAY))
	
	for(var i = 0; i < array_length(ARRAY); i++) {
		var xLoc = xSpacing * (i + 1)
		switch ARRAY[i] {
			case "Kazy":
				instance_create_depth(xLoc, 110, 0, kazyObject)
			break;
			case "King Pilesworth":
				//instance_create_depth(xLoc, 110, 0, dickhead)
			break;
			default:
			
			break;
		}
		
	}
	
}