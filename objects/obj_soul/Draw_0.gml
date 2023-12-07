/// @description Insert description here
// You can write your code in this editor
//draw_sprite(sprite_index, image_index, global.move.drawX, global.move.drawY)
//draw_sprite(sprite_index, 0, global.move.drawX, global.move.drawY)

if show {
	if afterData.Boolean {
		if afterData.Alpha != 0 {
			draw_sprite_ext(sprite_index, image_index, x, y, 1 + 2 * afterData.Scale, 1 + 2 * afterData.Scale,
			0, c_white, afterData.Alpha)
		}
	}
	draw_self()
}
//show_debug_message(countdown)
//draw_text(400, 50, "X " + string(BLUE_Gravity))