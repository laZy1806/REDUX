// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// valid side names are left, right, top, bottom.
function slam_data(num, side){	
//slamnum[num] = instance_create_depth(x, y, 0, obj_slam)	
obj_soul.slam = true;
obj_soul.side = side;	
obj_soul.countdown = 0
//obj_soul.Mode = SoulModes.Blue
/*
obj_soul.storedx = global.SoulX
obj_soul.storedy = global.SoulY
obj_soul.storedy = global.SoulY
obj_soul.perchanger = 1/slamspeed
*/
}