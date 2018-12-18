/// @description Include label and inner text
draw_self();

var xTopLeft = x - sprite_width / 2;
var yTopLeft = y - sprite_height / 2;

draw_set_color(c_black);
draw_set_font(fnt_maximumImpact20);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text(xTopLeft, yTopLeft + 8, name);

draw_set_color(ColorByType(type));
draw_set_font(fontHere);
draw_set_valign(fa_center);
draw_text_ext(xTopLeft + xOffText,
	yTopLeft + yOffText,
	text,
	font_get_size(fontHere) * 1.25,
	sprite_width - 40);
