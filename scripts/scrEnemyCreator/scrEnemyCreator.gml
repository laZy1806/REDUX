function scrEnemyCreator(_enemyarray){
	var ARRAY = _enemyarray	//array of strings
	var xSpacing = round(320 / array_length(ARRAY))
	
	for(var i = 0; i < array_length(ARRAY); i++) {
		var xLoc = xSpacing * (i + 1)
		switch ARRAY[i] {
			case "Kazy":
				array_push(global.ENEMYARRAY, instance_create_depth(xLoc, 110, 0, kazyObject))
			break;
			case "King Pilesworth":
				//temp = instance_create_depth(xLoc, 110, 0, dickhead)
				//array_push(global.ENEMYARRAY, temp)
			break;
			default:
			
			break;
		}
		
	}
	
}