shader_type canvas_item;

uniform vec4 flash_colour: source_color = vec4(1.0);
uniform float flash_pct : hint_range(0.0, 1.0, 0.1);

void fragment()
{
	vec4 original_colour = texture(TEXTURE, UV);

	COLOR = mix(original_colour, flash_colour, flash_pct);
	COLOR.a *= original_colour.a;
}