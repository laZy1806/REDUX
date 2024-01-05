/// @description setting vars
// You can write your code in this editor
current_width = 0
current_height = 0
Dialogue = noone;
Fight = noone;
Act = noone;
ActML = noone;
ActMR = noone;
ItemL = noone;
ItemR = noone;
Mercy = noone;
//instance_create_depth(0, 0, 3, fightPartObj)
gradPos = 480;
attackbox = 0; 
global.battlebox = noone
//sets  
beginningbox = true
hideui = false
veri_change = 0;
hori_change = 0;

box_speed = 5
boxoutline = 0;

Button_Y = 430
ui_y_change = 0;
curvespd = 0;
percent = 0;

dynamicColor = make_color_hsv(0, 255, 162)
newColor = make_color_hsv(0, 255, 162)
colorSpeed = 0
colorMix = 1

grad_state = false;
KarmaTimer = 0;

perchanger_angle = 0
anglestart = 0
DesAngle = 0
angledistance = 0
percent_angle = 0;

buttoncurve = function(additive, calcspd, type) {
///@func buttoncurve(distance, speed, exiting or entering)
		
	while curvespd < 1 {
		curvespd += calcspd
		return additive * animcurve_channel_evaluate(animcurve_get_channel(curveButton, type), curvespd)			
	}
			
	return additive * animcurve_channel_evaluate(animcurve_get_channel(curveButton, type), curvespd);	
			
}
changeAngle = function(newAngle = anglestart, per = 1/60) {
///@func changeAngle(newAngle, per)
	if (newAngle != anglestart) {
		anglestart = DesAngle
		DesAngle = newAngle
		angledistance = abs(DesAngle - anglestart)
	}
	percent_angle = per;
}

scrCurveList()
fightParticlesSystem = new advanced_part_system()
fightParticles = new advanced_part_type()
fightParticlesEmitter = new advanced_part_emitter(fightParticlesSystem, 0, 640, 490, 490, aps_shape.rectangle, aps_distr.linear)

rain = false
rainParticlesSystem = new advanced_part_system()
rainParticles = new advanced_part_type()
rainParticlesEmitter = new advanced_part_emitter(rainParticlesSystem, 0, 640, -50, -50, aps_shape.rectangle, aps_distr.gaussian)

rainMaxCount = 30
rainParticlesSystem.set_max_count(rainMaxCount)
with fightParticles {
	
	part_life(50, 150)
	part_size(2, 2, 0, 0)
	part_image(particlePixel, 0, other.dynamicColor, false, false, false)
	part_speed(2, 2, 0, 0)
	part_direction(140, 37, 0, 0)
	part_alpha3(1, 0.5, 0)
	part_blend(1)
	//part_death(5, self)
	// compensates for large area by deleting particles that cant be seen.
	part_step_function(
		function(){
			if collision_point(x, y, obj_battlewall, false, true) life = 0
			color = obj_bulletboard.dynamicColor
		}
	)
	
}
with rainParticles {
	
	part_life(60, 80)
	part_size(1, 1, 0, 0)
	part_scale(1, 1.5)
	part_image(rainSprites, 0, c_white, false, false, true)
	part_gravity(1, 270)
	part_alpha3(1, 0.5, 0.5)
	//part_color3(c_aqua, c_aqua, c_green)
	part_blend(1)
	//part_death(5, self)
	// compensates for large area by deleting particles that cant be seen.
	
	part_step_function(
		function(){
			if ((x > 200 - 50) and x < 440 + 50) life = 0
		}
	)
	
}

changeGradientColor = function(color, spd, mixamount){
///@func changeGradientColor(color, speed, mixamount)	
//func changeGradientColor(hue, saturation, value, speed)	
	//currentColor[1][0] = hue
	//currentColor[1][1] = saturation
	//currentColor[1][2] = value
	//currentColor[2][0] = lerpspd
	colorSpeed = spd
	colorMix = mixamount
	newColor = color
	fightParticles.part_color3(newColor, newColor, newColor)
}
global.Karma = global.playerHP

global.BORDER_SURFACE = -1;
//in order to fast forward to attacks

global.borderwidth = 100;
global.borderheight = 100;
global.borderangle = 0;

middlex = 320
middley = 334
rot_x = 0;
rot_y = 0;

Start = true;
image_alpha = 1;
depth = 2

topwall = instance_create_depth(320, 140, depth - 1, obj_battlewall)
bottomwall = instance_create_depth(220, 240, depth - 1, obj_battlewall)
leftwall = instance_create_depth(200, 240, depth - 1, obj_battlewall)
rightwall = instance_create_depth(420, 240, depth - 1, obj_battlewall)

box_mask_func_grad = function() {
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false, false, false, true)
	draw_set_alpha(0)
	draw_rectangle(0, 0, room_width, room_height, false);
	// fills the alpha channel with nothing; helps protect the actual image without influencing the blend modes onto them

	draw_set_alpha(1)
	draw_sprite_ext(battlepixel, 0, middlex, middley, 2 + current_width/2, 2 + current_height/2, -global.borderangle, c_white, 1)
	gpu_set_blendenable(true)
	gpu_set_colorwriteenable(true, true, true, true)
	// this is the drawing of the mask, what we are allowing to be seen, being stored directly into the alpha channel
	
	gpu_set_blendmode_ext(bm_inv_dest_alpha, bm_dest_alpha)
	gpu_set_alphatestenable(true)
	
	draw_rectangle_color(0, gradPos - (160 * gradient_curve), 640, 480 + 100, c_black, c_black, dynamicColor, dynamicColor, 0)
	
	gpu_set_alphatestenable(false)
	gpu_set_blendmode(bm_normal)
	// inverse of box_mask_func, by changing bm_dest_alpha to bm_inv_dest_alpha and vice versa.
}	
box_mask_func = function() {	
	box_mask_func_grad()
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false, false, false, true)
	draw_set_alpha(0)
	draw_rectangle(0, 0, room_width, room_height, false);
	// fills the alpha channel with nothing; helps protect the actual image without influencing the blend modes onto them

	draw_set_alpha(1)
	draw_sprite_ext(battlepixel, 0, middlex, middley, 2 + current_width/2, 2 + current_height/2, -global.borderangle, c_white, 1)
	gpu_set_blendenable(true)
	gpu_set_colorwriteenable(true, true, true, true)
	// this is the drawing of the mask, what we are allowing to be seen, being stored directly into the alpha channel
	
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
	gpu_set_alphatestenable(true)
	
	if instance_exists(boneObj) {
		for(var i = 0; i < instance_number(boneObj); i++) {
			
			var bone_num = instance_find(boneObj, i)
	
			with (bone_num) {
				
				draw_sprite_ext(sp_bonemid, 0, (bottombone.x - ((bottombone.x - topbone.x) / 2)), (bottombone.y - ((bottombone.y - topbone.y) / 2)), 1, midBoneScale, midbone.image_angle, midbone.image_blend, 1)

				draw_sprite_ext(sp_bonebottom, 0, bottombone.x, bottombone.y, 1, 1, bottombone.image_angle, bottombone.image_blend, 1)
	
				draw_sprite_ext(sp_topbone, 0, topbone.x, topbone.y, 1, 1, topbone.image_angle, topbone.image_blend, 1)
				
			}
			
		}
		
	}

	gpu_set_alphatestenable(false)
	gpu_set_blendmode(bm_normal)
	// using the gpu set blend mode, it reads alpha from the screen, which so happens to be the mask we implemented, so it will only show the alpha
	// where the mask is located, instead of directly from the sprite itself.	
}