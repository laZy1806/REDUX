//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float brightness;
//uniform float contrast;
uniform float saturation;

//constrast : base_col.rgb = (base_col.rgb - 0.5) *contrast + 0.5
//brightness : base_col.rgb = base_col.rgb + brightness;
//NTSC CONVERSION = (0.299, 0.587, 0.114)

void main()
{
	vec4 base_col = texture2D(gm_BaseTexture, v_vTexcoord);
	
	float grey = dot(base_col.rgb, vec3(0.299, 0.587, 0.114));
	
	vec3 out_col = mix(vec3(grey), base_col.rgb, saturation);
	
	out_col = out_col + brightness;
	
    gl_FragColor = v_vColour * vec4(out_col, base_col.a);
	
	
	
}
