/// @description Insert description here
// You can write your code in this editor
//draw_sprite(testsprite, 0, mouse_x, mouse_y)
testSin += 0.02
draw_sprite(human, 0, 0 + 700 * sin(testSin), 240)
//draw_sprite(testsprite, 0, 0, 0)

show_debug_message(window_get_height() - gameframe_caption_get_height())