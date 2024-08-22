shader_type canvas_item;

void fragment() {
	vec4 original_colour = texture(TEXTURE, UV);
	float grayscale = (original_colour.r + original_colour.g + original_colour.b)/3.0;

	COLOR = vec4(vec3(grayscale), original_colour.a);
}
