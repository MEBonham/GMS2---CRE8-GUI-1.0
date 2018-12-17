/// @description Draw menu
draw_self();

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