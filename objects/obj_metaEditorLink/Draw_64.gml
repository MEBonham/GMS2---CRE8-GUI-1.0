/// @description Draw tooltip
if (hover)
{
	var pale_yellow = make_color_rgb(255, 255, 191);
	draw_set_color(pale_yellow);
	draw_rectangle(x, y, x + 233, y + 32, false);
	
	draw_set_color(c_black);
	draw_set_font(fnt_maximumImpact20);
	draw_set_halign(fa_left);
	draw_text(x + 6, y + 16, "Go to meta-editor");
}