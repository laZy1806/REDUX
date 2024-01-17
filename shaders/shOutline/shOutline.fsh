//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float pixelH;
uniform float pixelW;

//uniform vec3 col;

void main()
{
	vec2 offsetx;
	offsetx.x = pixelW * 2.0;
	vec2 offsety;
	offsety.y = pixelH * 2.0;
	
	// converts texel coords to actual pixel coordinates
	float alpha = texture2D( gm_BaseTexture, v_vTexcoord ).a;
	
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + (offsetx)).a);
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - (offsetx)).a);
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + (offsety)).a);
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - (offsety)).a);
	//omni directional checking
	//alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + (offsetx) + (offsety)).a);
	//alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - (offsetx) + (offsety)).a);
	//alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + (offsetx) - (offsety)).a);
	//alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - (offsetx) - (offsety)).a);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
	gl_FragColor.a = alpha;
}
