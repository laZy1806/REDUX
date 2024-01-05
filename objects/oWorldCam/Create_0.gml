/// @description setup camera
// You can write your code in this editor
cam = view_camera[0];

var instID = instance_find(playerObj, 0);

_x = instID.x - camera_get_view_width(cam) * 0.5
_y = instID.y - camera_get_view_height(cam) * 0.5
