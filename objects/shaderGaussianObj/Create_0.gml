/// @description Insert description here
// You can write your code in this editor

shader = shader2PassGaussian
u_blur_steps		= shader_get_uniform(shader, "blur_steps")
u_sigma				= shader_get_uniform(shader, "sigma")
u_texel_size		= shader_get_uniform(shader, "texel_size")
u_blur_vector		= shader_get_uniform(shader, "blur_vector")

gui_w = display_get_gui_width()
gui_h = display_get_gui_height()

texel_w = 1/ gui_w
texel_h = 1/ gui_h

srf_ping = -1
srf_pong = -1

sfr_scale = 1
sfr_scale_prev = 1

application_surface_draw_enable(false)















