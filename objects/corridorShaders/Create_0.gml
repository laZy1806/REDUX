/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
#region old code for preset vignette
/*
grayTint = fx_create("_filter_colourise")
TintLayer = layer_create(depth - 1)
Vignette = fx_create("_filter_vignette");
VignetteLayer = layer_create(depth - 2)

zoom = 1


layer_set_fx(TintLayer, grayTint)
layer_set_fx(VignetteLayer, Vignette)



layer_set_visible(VignetteLayer, true)
layer_set_visible(TintLayer, false)

Edge1 = 2
Edge2 = 2
*/
#endregion
//surface_resize(application_surface, 640, 480)
vignetteAdd = 0;

#region Vignette Vars
var tex = surface_get_texture(application_surface)
var uvs	= texture_get_uvs(tex)

var uv_w			= uvs[2] - uvs[0]
var uv_h			= uvs[3] - uvs[1]
uv_dimensions[0]	= uv_w
uv_dimensions[1]	= uv_h
uv_center[0]		= 0.5 * uv_w + uvs[0]
uv_center[1]		= 0.5 * uv_w + uvs[1]

Vignette			= shVignette
u_vignette_opacity	= shader_get_uniform(Vignette, "vignette_opacity")
u_vignette_outer	= shader_get_uniform(Vignette, "vignette_outer")
u_vignette_falloff	= shader_get_uniform(Vignette, "vignette_falloff")
u_uv_center			= shader_get_uniform(Vignette, "uv_center")
u_uv_dimensions		= shader_get_uniform(Vignette, "uv_dimensions")

#endregion 

cutsceneShaderTrigger = false;

depth = -100

application_surface_draw_enable(false);
vignetteSurface = surface_create(640, 480)
