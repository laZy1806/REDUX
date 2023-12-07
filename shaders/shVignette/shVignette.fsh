//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float vignette_opacity;
uniform float vignette_outer;
uniform float vignette_falloff;
uniform vec2  uv_center;
uniform vec2  uv_dimensions;

void main()
{
	vec4 base_col = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	
	float len	= length((v_vTexcoord - uv_center) / uv_dimensions);
	float vignette = smoothstep(vignette_outer, vignette_outer - vignette_falloff, len);
	base_col.rgb = mix(base_col.rgb, base_col.rgb * vignette, vignette_opacity);
	
    gl_FragColor = base_col;
	
	
}
