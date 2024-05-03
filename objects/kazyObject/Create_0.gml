/// @description Insert description here
// You can write your code in this editor
//ORIGIN IS CENTER OF BODY
#region anim vars
	image_xscale = 2
	image_yscale = 2
	headX = 0
	headY = 0

	bodyX = 0
	bodyY = 0

	legROT = 0
	legSCALE = 0

	SPEED = 1/100
	SPDCALC = 0
	
#endregion
alarm[0] = 100
animationLayer = layer_create(depth)
animationArray = array_create(0)

idle = layer_sequence_create(animationLayer, 325, 250, kazyIdleSequence)
idle2 = layer_sequence_create(animationLayer, 325, 250, kazyTestSequence)

array_push(animationArray, idle, idle2);

currentAnim = idle;

for(var i = 0; i < array_length(animationArray); i++) {
	layer_sequence_xscale(animationArray[i], 2);
	layer_sequence_yscale(animationArray[i], 2);
	layer_sequence_x(animationArray[i], -200);	//moved offscreen in order to 
}

layer_sequence_x(currentAnim, 325);	//sets the first anim to be at correct x

switchAnim = function(anim){
	layer_sequence_x(currentAnim, -200);
	currentAnim = (variable_instance_exists(id, anim)) ? variable_instance_get(id, anim) : idle	//name of variable;
	layer_sequence_x(currentAnim, 325);
	layer_sequence_headpos(currentAnim, 0);
}


drawEvent = function() {
	//draw_sprite_ext(legs, 1, x - 1, y + 73 * image_yscale, image_xscale, image_yscale, image_angle, c_white, 1)
	//draw_sprite_ext(legs, 0, x - 1, y + 73 * image_yscale, image_xscale, legSCALE, legROT, c_white, 1)
	//draw_sprite_ext(body, 0, bodyX, bodyY, image_xscale, image_yscale, image_angle, c_white, 1)
	//draw_sprite_ext(head, 0, headX, headY, image_xscale, image_yscale, image_angle, c_white, 1)	
	//draw_sprite_ext(temporary, 0, mouseDebug()[0] - 100, mouseDebug()[1], 2, 2, 0, c_white,
}
AttackArray = kazyAttackData(false, 0, 7)