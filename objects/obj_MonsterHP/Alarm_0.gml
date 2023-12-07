/// @description destroys health bar and readys for battle
// You can write your code in this editor
instance_destroy();
if (global.Damage > 0) {
	for (var i = 0; i < array_length(global.monster); i++) {
		with (global.monster[i]) {
			ReadyForBattle = true;
		}
	}
}




