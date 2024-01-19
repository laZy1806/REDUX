precision highp float;
const float PI = 3.14159265359;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 pixWH;
uniform float sampleCount;
uniform float thickness;
uniform vec3 color;
uniform float tol;

void main() {
	float alpha = 0.0;
	//bool TEST = false;
	vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 newPixel = vec4(color, 0.0);
	
	for(float i = 1.0; i <= thickness; i++) {
		
		for(float radius = 0.0; radius < 2.0 * PI; radius += (2.0 * PI)/sampleCount) {
			
			vec2 pixPos = v_vTexcoord + i * vec2(cos(radius)*pixWH.x, sin(radius)*pixWH.y);
			
			float newAlp = (v_vColour * texture2D(gm_BaseTexture, pixPos)).a; //optimized from Mathroos
			//alpha = step(tol + 0.001, newPix); //if this gets 1, it means we found a pixel with alpha in radius
			newPixel = mix(newPixel, vec4(color, 1.0), newAlp);	
		}
	}
	gl_FragColor = mix(newPixel, base_col, base_col.a);
}
