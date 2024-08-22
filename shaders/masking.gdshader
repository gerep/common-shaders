shader_type canvas_item;

uniform sampler2D mask_texture;

void fragment() {
	vec4 mask_colour = texture(mask_texture, UV);
	vec4 original_colour = texture(TEXTURE, UV);
	//COLOR = mask_colour;
	if(original_colour.a > 0.0) {
		COLOR.a = mask_colour.r;
	}
}