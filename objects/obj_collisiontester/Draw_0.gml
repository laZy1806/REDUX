/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_blue);
with (obj_battlewall)
    {
		
    draw_line(bbox_left, bbox_top, bbox_left, bbox_bottom);
    draw_line(bbox_left, bbox_top, bbox_right, bbox_top);
    draw_line(bbox_right, bbox_top, bbox_right, bbox_bottom);
    draw_line(bbox_left, bbox_bottom, bbox_right, bbox_bottom);
	
    image_blend = c_white;
    }
draw_set_colour(c_white);

var _array = collide(x, y, mouse_x, mouse_y, obj_battlewall, true, true);

if _array[0] != -1
    {
    draw_line(x, y, _array[1], _array[2]);
    _array[0].image_blend = c_red;
	
    }
else
    {
    draw_line(x, y, mouse_x, mouse_y);
    }