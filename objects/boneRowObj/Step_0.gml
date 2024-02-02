//image_angle = mouse_x
if !toDestroy() {
	instance_destroy(self)
}
else {
	for(var i = 0; i < array_length(boneArray); i++) {
		if instance_exists(boneArray[i]) {
			boneArray[i].rowXOffset = lengthdir_x(distBetween * i, image_angle) 
			boneArray[i].rowYOffset = lengthdir_y(distBetween * i, image_angle) 
			boneArray[i].rowAngle = image_angle
		}
	}
}