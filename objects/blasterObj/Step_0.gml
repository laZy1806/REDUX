/// @description Insert description here
// You can write your code in this editor
x = toFollow.x;
y = toFollow.y;
image_angle = toFollow.image_angle
image_xscale = toFollow.image_xscale;
image_alpha = Hide = true ? 0 : (toFollow.BeamAlp);
if !Hide {
	frameCounter++
	stSize = lerp(stSize, 1, 0.15)
	image_yscale = toFollow.image_yscale * (abs(sin(toFollow.Timer / 6) / 3) + stSize);
	if (frameCounter % 2 == 0) && place_meeting(x, y, soulObj) takeDamage(1, false, 0, true)
}