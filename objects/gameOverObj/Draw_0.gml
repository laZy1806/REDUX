/// @description Insert description here
// You can write your code in this editor
//draw_sprite(Soul_Break, 1, instance_find(obj_soul, 0).x, instance_find(obj_soul, 0).y)
//draw_set_alpha(1)
if !layer_exists("deathLayer") draw_sprite_ext(currentSprite, 0, soulX + ranX, soulY + ranY, _xScale, _yScale, 0, c_white, 1)
draw_set_font(menuFont)
scribbleObject.starting_format("deathFont")
scribbleObject.align(fa_center, fa_middle)
scribbleObject.wrap(350, 350, false)
if timeTillText < 0 
scribbleObject.draw(320, 350, typist)

//draw_set_alpha(1)
//draw_line_color(320, 0, 320, 480, c_white, c_white)






