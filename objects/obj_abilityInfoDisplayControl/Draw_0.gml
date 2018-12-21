/// @description Draw all the ability's text to the panel
show_debug_message(json_encode(contents));
if (contents)
{
	// Constants defining the panel and section spacing
	var width = 410;
	var blockHeight = 200;
	var centerOffset = 214;
	var yBuffer = 20;

	// Draw title and tags
	draw_set_alpha(1);
	draw_set_color(c_black);
	var yOffset = 0;
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_set_font(fnt_maximumImpact30);
	draw_text(x + centerOffset, y + yOffset, contents[?"name"]);
	yOffset += 48;
	draw_set_halign(fa_left);
	
	if (ds_map_exists(contents, "tags") and contents[?"tags"] != "")
	{
		var str = contents[?"tags"] + " " + category;
		draw_set_font(fnt_maximumImpact20);
		draw_text(x, y + yOffset, str);
		yOffset += 20 + yBuffer;
	}
	
	// Draw main text (on a surface)
	draw_set_font(fnt_arial);
	var yScroll = 0;

	if (string_height_ext(mainText, -1, width) <= blockHeight)
	{
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
			scr = instance_create_layer(
				x + width + 16,
				y + yOffset + blockHeight / 2,
				layer, obj_scrollbar);
			scr.image_yscale = blockHeight / scr.sprite_height;
			scr.f = instance_create_layer(x, y + yOffset, layer, obj_scrollWheelField);
			scr.f.parentLink = scr;
			scr.f.image_yscale = blockHeight / scr.f.sprite_height;
			scr.f.image_xscale = width / scr.f.sprite_width;
		}
		var overshoot = string_height_ext(mainText, -1, width) - blockHeight;
		yScroll = 0 - overshoot * scr.fraction;
	}

	if (!surface_exists(panel))
	{
		panel = surface_create(width, blockHeight);
	}
	
	surface_set_target(panel);
		draw_clear_alpha(c_black, 0);
		draw_text_ext(0, yScroll, mainText, -1, width);
	surface_reset_target();
	draw_surface(panel, x, y + yOffset);
	
}