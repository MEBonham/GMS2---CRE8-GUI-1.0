/// @description Draw menu
draw_self();

draw_set_color(c_black);
var xCenter = x + sprite_width / 2 - 16;
draw_triangle(xCenter - 6, y - 5, xCenter + 6, y - 5, xCenter, y + 5, false);

draw_set_font(fnt_maximumImpact20);
draw_set_color(ColorByType(string_lower(menuOptions[activeIndex])));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (name = noone)
{
	draw_text(x, y + 1, menuOptions[activeIndex]);
}
else
{
	draw_text(x, y + 1, name);
}