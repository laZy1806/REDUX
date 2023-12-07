if !instance_exists(obj_text) {
	
	instance_destroy();
	
}
if instance_exists(obj_kazy) {
	with obj_kazy {
		other.x = currentX + 35
		other.y = currentY - 50
	}
}