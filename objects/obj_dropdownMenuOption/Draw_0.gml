/// @description Draw menu option
draw_self();

// Highlight while mouse is over it:
if (hover)
{
	draw_set_alpha(0.2);
	draw_set_color(c_white);
	draw_rectangle(x - sprite_width / 2, y - sprite_height / 2,
		x + sprite_width / 2, y + sprite_height / 2,
		false);
	draw_set_alpha(1);
}

if (customFont)
{
	draw_set_font(customFont);
}
else
{
	draw_set_font(fnt_maximumImpact20);
}
if (customColor)
{
	draw_set_color(customColor);
}
else
{
	draw_set_color(ColorByType(string_lower(text)));
}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y + 1, text);