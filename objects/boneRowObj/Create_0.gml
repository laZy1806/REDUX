/// @description Insert description here
// You can write your code in this editor
toDestroy = function(){
	for(var i = 0; i < array_length(boneArray); i++){
		if (instance_exists(boneArray[i])) return true;
	}
	return false;
}































