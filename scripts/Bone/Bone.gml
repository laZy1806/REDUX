// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// FOR BoneRow, you cannot change a specific bone at the same time as creation, as it will throw error
//for variable decleration being invalid and not existing, it needs to be one frame later
global.boneList = ds_list_create()
function Bone(_x, start_x, _y, start_y, beginheight, finheight, rotational = false, _angleStart = 0, _angleDes = 0, 
moveMeth = "static", heightMeth = "static", angleMeth = "static", heightSpd = 60, moveSpd = 60, angSpd = 60, isTimer = true)
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
		ROTATIONAL : rotational,
		onTimer : isTimer,
		rowXOffset : 0,
		rowYOffset : 0,
		rowAngle : 0,
	})
	ds_list_add(global.boneList, bone)
	return bone;
}
function clearAllBone(){
	for (var i = 0; i < ds_list_size(global.boneList); i++)
	with ds_list_find_value(global.boneList, i) instance_destroy()
}
function BoneRow(_x, start_x, _y, start_y, _beginHeightArray, _finHeightArray, _rowCount, _angle = 0, _distBetween = 15, _moveMethArray = array_create(_rowCount, "static"), _heightMethArray = array_create(_rowCount, "static"), moveSpd = 60, _heightSpdArray = array_create(60, _rowCount), isTimer = true)
{
	var ARRAY = array_create(0)
	for(var i = 0; i < _rowCount; i++) {
		var bone = instance_create_depth(start_x, start_y, 0, boneObj, {
			originX : start_x,
			originY : start_y,
			DesX : _x,
			DesY : _y,
			startx : start_x,
			starty : start_y,
			anglestart : 0,
			DesAngle : 0,
			startheight : _beginHeightArray[i],
			endheight :  _finHeightArray[i],
			movementMethod : _moveMethArray[i],
			angleMethod : "static",
			heightMethod : _heightMethArray[i],
			perAngle : 1/1,
			perHeight : 1/_heightSpdArray[i],
			perMovement : 1/moveSpd,
			ROTATIONAL : false,
			onTimer : isTimer,
			rowXOffset : 0,
			rowYOffset : 0,
			rowAngle : 0,
		})
		ds_list_add(global.boneList, bone)
		array_push(ARRAY, bone)
	}
	var ROW = instance_create_depth(0, 0, 0, boneRowObj, {
		rowXOffset : lengthdir_x(_distBetween * i, _angle),
		rowYOffset : lengthdir_y(_distBetween * i, _angle),
		distBetween : _distBetween,
		image_angle : _angle,
		boneArray : ARRAY,
		rowAngle : 0
	})
	return ROW
}