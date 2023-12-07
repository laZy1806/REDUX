/// @description Insert description here
// You can write your code in this editor
if variable_instance_exists(id, "step_function")step_function()

var OBJ = instance_find(fightBoxObj, 0)
var _relx = OBJ.x
var _rely = OBJ.y

var DIST = point_distance(_relx, _rely, _relx + SETWIDTH, _rely + SETHEIGHT)
var DIRECTION = point_direction(_relx, _rely, _relx + SETWIDTH, _rely + SETHEIGHT) - OBJ.image_angle

x = _relx + lengthdir_x(DIST, DIRECTION)
y = _rely + lengthdir_y(DIST, DIRECTION)

image_angle = -OBJ.image_angle



