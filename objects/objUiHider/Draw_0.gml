/// @description Insert description here
// You can write your code in this editor
depth = 0
if instance_exists(obj_attacks) and obj_attacks.hideui{
		
	draw_set_color(c_black)
	obj_attacks.alp = lerp(obj_attacks.alp, obj_attacks.alp_end, obj_attacks.alpLerp)
	draw_set_alpha(obj_attacks.alp)
	draw_rectangle(0, 275, 640, 500, false)
		
}
