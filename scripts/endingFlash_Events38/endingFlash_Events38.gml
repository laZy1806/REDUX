// Auto-generated stubs for each available event.

function endingFlash_atk21Data()
{
	if instance_exists(obj_attacks) {
		for (var i = 0; i <= instance_number(obj_gaster); i++){
			instance_destroy(instance_find(obj_gaster, i))
		}
		with obj_attacks {
			if instance_exists(boneObj_rotation) {
				bone[0].destroy = true	
				bone[1].destroy = true	
			}
			if (attack = 20) {
				show_debug_message(global.audioPosition)
				attack++
				cycle = 0
				alarm[1] = 45
			}
		}
		obj_soul.x = 320
		obj_soul.y = 340
		obj_soul.movementcontrol = false
		global.borderwidth = 100
		global.borderheight = 100
		obj_bulletboard.box_speed = 10
		obj_bulletboard.curvespd = 0
		obj_bulletboard.rain = false
		obj_kazy.headChange(6)
		obj_kazy.changeBodyAnim("Tired")
	}
}