/// @description Draw all the ability's text to the panel
if (contents)
{
	draw_set_color(c_black);
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_maximumImpact30);
	draw_text(x + 230, y, contents[?"name"]);
}