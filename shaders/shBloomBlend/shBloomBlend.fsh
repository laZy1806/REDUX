//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;


uniform float	bloom_intensity;
uniform float	bloom_darken;
uniform float	bloom_saturation;
uniform sampler2D bloom_texture;


void main()
{
	vec4 base_col		= texture2D(gm_BaseTexture, v_vTexcoord );
	vec3 bloom_col		= texture2D(bloom_texture, v_vTexcoord ).rgb;
	
	// saturate the bloom color
	float lum		= dot(base_col.rgb, vec3(0.229, 0.587, 0.114));
	bloom_col		= mix(vec3(lum), bloom_col, bloom_saturation);
	
	
	
	//add or linear dodge
	base_col.rgb		= base_col.rgb * bloom_darken + bloom_col * bloom_intensity;
	
    gl_FragColor = v_vColour * base_col;
}  
