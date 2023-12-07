// Auto-generated stubs for each available event.

function preNumData()
{
	if instance_exists(obj_battlecam) camControls(0, -20, 0.80, "null", 0.04)
}
function postNumData()
{
	if instance_exists(obj_battlecam) {
		camControls(0, 20, 1, "null", 0.04)
		obj_kazy.doAfterImage(0.04)
		obj_kazy.shakeSprite()
		obj_kazy.headChange(9)
	}
}