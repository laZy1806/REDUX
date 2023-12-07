//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float		mix_amount;
uniform float		map_index;
uniform float		texel_h;
uniform sampler2D	gradient_tex;
void main()
{
    vec4 base_col = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	float value = dot(base_col.rgb, vec3((0.299, 0.587, 0.114)));
	
	//                                  targets area on gradient map, 0.5 targets in the middle of a row instead edge
	gl_FragColor = vec4(mix(base_col.rgb, texture2D(gradient_tex, vec2(value, (0.5 + map_index) * texel_h)).rgb, mix_amount), base_col.a);
}
