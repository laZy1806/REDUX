/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_bulletboard) {
	instance_destroy(self)	
	
}
/*
var tx,ty,rot_x,rot_y

// globals set in bulletboard
	tx = -(global.width/2)
	ty = -(global.height/2)
	
	rot_x = tx * cos(degtorad(global.borderangle)) - ty * sin(degtorad(global.borderangle))
	rot_y = tx * sin(degtorad(global.borderangle)) + ty * cos(degtorad(global.borderangle))
	
	box_x = startx + rot_x //* 1.02
	box_y = starty + rot_y 
	