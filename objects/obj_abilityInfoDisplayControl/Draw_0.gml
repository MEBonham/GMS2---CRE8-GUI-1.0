/// @description Draw all the ability's text to the panel
if (contents)
{
	draw_set_color(c_black);
	var yOffset = 0;
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_set_font(fnt_maximumImpact30);
	draw_text(x + 214, y + yOffset, contents[?"name"]);
	yOffset += 44;
	draw_set_halign(fa_left);
	
	if (ds_map_exists(contents, "tags") and contents[?"tags"] != "")
	{
		draw_set_font(fnt_maximumImpact20);
		draw_text(x, y + yOffset, contents[?"tags"] + " " + category);
		yOffset += 40;
	}
	
	if (ds_map_exists(contents, "prereqs") and contents[?"prereqs"] != "")
	{
		draw_set_font(fnt_arial);
		draw_text_ext(x, y + yOffset, 
			"Prerequisites:\n" + contents[?"prereqs"],
			-1, 410);
		yOffset += 80;
	}

	if (ds_map_exists(contents, "benefits") and contents[?"benefits"] != "")
	{
		draw_set_font(fnt_arial);
		draw_text_ext(x, y + yOffset, 
			"Benefits:\n" + contents[?"benefits"],
			-1, 410);
		yOffset += 192;
	}

	if (ds_map_exists(contents, "drawbacks") and contents[?"drawbacks"] != "")
	{
		draw_set_font(fnt_arial);
		draw_text_ext(x, y + yOffset, 
			"Drawbacks:\n" + contents[?"drawbacks"],
			-1, 410);
		yOffset += 120;
	}

	if (ds_map_exists(contents, "xpParcels") and contents[?"xpParcels"] != "")
	{
		draw_set_font(fnt_arial);
		draw_text_ext(x, y + yOffset, 
			"XP Parcels:\n" + contents[?"xpParcels"],
			-1, 410);
		yOffset += 120;
	}
}