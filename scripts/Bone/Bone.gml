// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.boneList = ds_list_create()
function Bone(_x, start_x, _y, start_y, beginheight, finheight, rotational = false, _angleStart = 0, _angleDes = 0, 
moveMeth = "static", heightMeth = "static", angleMeth = "static", heightSpd = 60, moveSpd = 60, angSpd = 60)
{
	var bone = instance_create_depth(start_x, start_y, 0, boneObj, {
		originX : start_x,
		originY : start_y,
		DesX : _x,
		DesY : _y,
		startx : start_x,
		starty : start_y,
		anglestart : _angleStart,
		DesAngle : _angleDes,
		startheight : beginheight,
		endheight : finheight,
		movementMethod : moveMeth,
		angleMethod : angleMeth,
		heightMethod : heightMeth,
		perAngle : 1/angSpd,
		perHeight : 1/heightSpd,
		perMovement : 1/moveSpd,
		ROTATIONAL : rotational
	})
	ds_list_add(global.boneList, bone)
	return bone;
}
function clearAllBone(){
	for (var i = 0; i < ds_list_size(global.boneList); i++)
	with ds_list_find_value(global.boneList, i)
		instance_destroy()
}