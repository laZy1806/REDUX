// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrOutlineShaderinit(){
	shaderOutline = shOutline
	pixWH = shader_get_uniform(shaderOutline, "pixWH")
	accuracy = shader_get_uniform(shaderOutline, "sampleCount")
	thickness = shader_get_uniform(shaderOutline, "thickness")
	color = shader_get_uniform(shaderOutline, "color")
	tolerance = shader_get_uniform(shaderOutline, "tol")
}
function scrOutlineShaderData(_toShade, _accuracy = 16.0, _thickness = 1.0, _color = c_black, _tolerance = 0.0){
	if (asset_get_type(_toShade) = asset_sprite) texture = sprite_get_texture(_toShade, 0);
	if (asset_get_type(_toShade) = asset_font) texture = font_get_texture(_toShade);
	if (surface_exists(_toShade)) texture = surface_get_texture(_toShade);
	
	var width = texture_get_texel_width(texture), height = texture_get_texel_height(texture)

	shader_set(shaderOutline)
	shader_set_uniform_f(pixWH, width, height)
	shader_set_uniform_f(accuracy, _accuracy)
	shader_set_uniform_f(thickness, _thickness)
	shader_set_uniform_f(color, color_get_red(_color)/255, color_get_blue(_color)/255, color_get_green(_color)/255)
	shader_set_uniform_f(tolerance, _tolerance)
	
	
}
