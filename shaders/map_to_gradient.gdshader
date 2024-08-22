shader_type canvas_item;

uniform sampler2D gradient_texture;

void fragment() {
	vec4 original_colour = texture(TEXTURE, UV);
	float grayscale = (original_colour.r + original_colour.g + original_colour.b)/3.0;
	vec4 gradient_colour = texture(gradient_texture, vec2(grayscale));

	COLOR = vec4(gradient_colour.rgb, original_colour.a);
}
