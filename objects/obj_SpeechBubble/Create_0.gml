if instance_exists(obj_kazy) {
	x = obj_kazy.currentX
	y = obj_kazy.currentY - 50
}

textElement = instance_create_depth(x + 80, y - 25, -11, obj_text)
textElement.DefaultColour = c_black
textElement.scale = 1