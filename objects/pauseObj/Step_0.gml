/// @description Insert description here
// You can write your code in this editor
delta_step()
if fullscreenDelay > 0 fullscreenDelay -= 1
//show_debug_message(global.minimized)
if (fps < 50 and current_time > 10000) global.fpsDipCount++;
/*
var dmx = display_mouse_get_x();
var dmy = display_mouse_get_y();
show_debug_message(dmx)
if keyboard_check(vk_space) {
    window_x += (dmx - mouse_x_prev);
    window_y += (dmy - mouse_y_prev);
    window_frame_set_rect(window_x, window_y, 640, 480);
}
mouse_x_prev = dmx;
mouse_y_prev = dmy;