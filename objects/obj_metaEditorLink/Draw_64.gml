/// @description Draw tooltip
if (hover)
{
	var pale_yellow = make_color_rgb(255, 255, 191);
	draw_set_color(pale_yellow);
	draw_rectangle(mouse_x, mouse_y, mouse_x + 233, mouse_y + 32, false);
	
	draw_set_color(c_black);
	draw_set_font(fnt_maximumImpact20);
	draw_set_halign(fa_left);
	draw_text(mouse_x + 6, mouse_y + 16, "Go to meta-editor");
}