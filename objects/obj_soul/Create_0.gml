/// @description setting variables for soul modes
// You can write your code in this editor
Mode = 0;
show = true
BLUE_Jumped = 0;
BLUE_Gravity = 0;
global.Floor = 0;
countdown = 0
global.SoulX = x;
global.SoulY = y;

enum SoulModes {
	Red = 0,
	Blue = 1
}
depth = 0
ogDepth = depth
gravitycontrol = true;
movementcontrol = true
global.move = fightCollision()
spdmulti = 2

slam = false;
percent = 0
perchanger = 1/10
gravshift = animcurve_get_channel(soulcurve,"slam");
afterData = {
	Boolean : false,
	Alpha : 0.7,
	Scale : 0,
	Lerp : 0.02
}
doAfterImage = function(spd = 0.02, alpha = 0.7){
///@func doAfterImage(speed, alpha)
	with afterData {
		Boolean = true
		Alpha = alpha
		Scale = 0
		Lerp = spd
		
	}
}