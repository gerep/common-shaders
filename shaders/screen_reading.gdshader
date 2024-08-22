shader_type canvas_item;

uniform sampler2D screen_texture: hint_screen_texture, filter_nearest;

void fragment() {
	vec4 screen_colour = texture(screen_texture, SCREEN_UV);
	vec4 original_colour = texture(TEXTURE, UV);

	float grey_scale = (screen_colour.r + screen_colour.g + screen_colour.b) / 3.0;
	COLOR = vec4(vec3(grey_scale), original_colour.a);
}