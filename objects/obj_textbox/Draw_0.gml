/// @description Include label and inner text
draw_self();

var xTopLeft = x - sprite_width / 2;
var yTopLeft = y - sprite_height / 2;
//var lineHeight = font_get_size(fontHere) * 1.25;

var blockHeight = (fontHere == fnt_arial)
	? sprite_height - 2 * yOffText
	: sprite_height - yOffText;

if (active)
{
	draw_set_color(c_white);
	draw_circle(xTopLeft + 5, yTopLeft + 5, 3, false);
}

draw_set_color(c_black);
draw_set_font(fnt_maximumImpact20);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text(xTopLeft, yTopLeft + 8, name);

draw_set_color(ColorByType(type));
draw_set_font(fontHere);
draw_set_valign(fa_top);
var yScroll = 0;

if (string_height_ext(text, -1, sprite_width - 2 * xOffText) <= blockHeight)
{
	draw_text_ext(xTopLeft + xOffText, yTopLeft + yOffText,	text, -1,
		sprite_width - 2 * xOffText);
	if (scr)
	{
		instance_destroy(scr.a);
		instance_destroy(scr.f);
		instance_destroy(scr);
		scr = false;
	}
}
else
{
	if (!scr)
	{
		scr = instance_create_depth(
			x + sprite_width / 2 - xOffText / 2, y,
			depth - 1, obj_scrollbar);
		scr.image_yscale = blockHeight / scr.sprite_height;
		scr.f = instance_create_layer(x - sprite_width / 2,
			y - sprite_height / 2, layer, obj_scrollWheelField);
		scr.f.parentLink = scr;
		scr.f.image_yscale = sprite_height / scr.f.sprite_height;
		scr.f.image_xscale = sprite_width / scr.f.sprite_width;
		scr.f.divisor = 10;
		//object_set_visible(scr.f, true);
	}
	
	var overshoot = 
		string_height_ext(text, -1, sprite_width - 2 * xOffText) - blockHeight;
	yScroll = 0 - overshoot * scr.fraction;
	
	if (!surface_exists(surf))
	{
		surf = surface_create(sprite_width - 2 * xOffText, blockHeight);
	}
	surface_set_target(surf);
		draw_clear_alpha(ColorByType(type), 0);
		draw_text_ext(0, yScroll, text, -1, sprite_width - 2 * xOffText);
	surface_reset_target();
	draw_surface(surf, x - sprite_width / 2 + xOffText,
		y - sprite_height / 2 + yOffText);
}