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
add = 0;
global.TRANSOBJ = instance_create_depth(0, 0, 0, TransitionObj)

ValuesShader = shBrtSatConGam;
BrtValue	 = shader_get_uniform(ValuesShader, "brightness")
SatValue	 = shader_get_uniform(ValuesShader, "saturation")

cutsceneShaderTrigger = false;
fadeBoolean = false;

satObjValue = 1; // saturation
brtObjValue = 0; // brightness

#region Gradient Vars
//colorRight = make_colour_hsv(194, 220, 180);
colorLeft = global.nameFunctions.returnNameFunction("floorColor");	//temporary
gradBrightness = 0;
gradientValueRight[0] = -190 
gradientValueRight[1] = -190
gradientValueLeft[0] = -colorLeft.val
gradientValueLeft[1] = -colorLeft.val

/* scraped gradient shader
gradient_sprite = gradientSheet

Gradient		= shGradient
uMixAmount		= shader_get_uniform(Gradient, "mix_amount")
uMapIndex		= shader_get_uniform(Gradient, "map_index")
uTexelh			= shader_get_uniform(Gradient, "texel_h")
uGradientTex	= shader_get_sampler_index(Gradient, "gradient_tex")

GradientTex		= sprite_get_texture(gradient_sprite, 0)
Texelh			= texture_get_texel_height(GradientTex)
*/
#endregion
