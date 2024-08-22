shader_type canvas_item;

uniform sampler2D screen_texture: hint_screen_texture, filter_nearest;

uniform sampler2D noise_text: repeat_enable;
uniform sampler2D noise_text2: repeat_enable;

uniform vec2 offset1 = vec2(0.1);
uniform vec2 offset2 = vec2(0.2);

uniform float distotion_strength: hint_range(-1.0, 1.0) = 0.1;

void fragment() {
	vec4 noise_colour1 = texture(noise_text, UV + (TIME * offset1));
	vec4 noise_colour2 = texture(noise_text2, UV + (TIME * offset2));

	float final_noise = (noise_colour1.r * noise_colour2.r) * distotion_strength;
	vec4 final_colour = texture(screen_texture, SCREEN_UV + final_noise);

	COLOR = final_colour;
}