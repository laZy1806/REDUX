// Auto-generated stubs for each available event.

function flash_56_destroyGaster()
{
	if instance_exists(obj_attacks) {
		with obj_attacks {	
			if instance_exists(obj_gaster) {
				gaster[1].destroy = true	
				gaster[2].destroy = true		
			}
		}
	}
}