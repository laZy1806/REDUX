// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//check depth in case of issue with surface mask

//start x and start y works based on destination x and y, minusing from those coordinates

// dont set rate higher than timer, will cut off the movement of the blaster
// timer counts down first, then interval counts down after timer hits 0
function CreateGaster(num, _x, startx, _y, starty, _angle, _anglestart, _interval, _xscale, _yscale, _aims, rate, timer, endtime, shake = true){
gaster[num] = instance_create_depth(x,y, -10000, obj_gaster);
gaster[num].DesX = _x
gaster[num].DesY = _y
gaster[num].startx = startx 
gaster[num].starty = starty

if _aims = false gaster[num].DesAngle = _angle;
gaster[num].shake = shake
gaster[num].anglestart = _anglestart;
gaster[num].Interval = _interval;
gaster[num].per_speed = rate;
gaster[num].Timer = timer;
gaster[num].end_time = endtime;
gaster[num].image_xscale = _xscale;
gaster[num].image_yscale = _yscale;
// not best to use, buggy
	if _aims {
		gaster[num].DesAngle = 180 + point_direction(obj_soul.x, obj_soul.y, gaster[num].DesX, gaster[num].DesY) + _angle; 
		gaster[num].anglestart = 180 + point_direction(obj_soul.x, obj_soul.y, gaster[num].DesX, gaster[num].DesY) + _angle;
	}
} 