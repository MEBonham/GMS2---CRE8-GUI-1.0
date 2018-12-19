/// @description Draw, including info
draw_self();

draw_set_color(ColorByType(type));
draw_set_font(fnt_maximumImpact20);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y + 2, name);