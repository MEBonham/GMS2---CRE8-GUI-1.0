/// @description Draw all the ability's text to the panel
if (contents)
{
	var width = 410;
	var centerOffset = 214;
	var yBuffer = 20;
	
	draw_set_color(c_black);
	var yOffset = 0;
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_set_font(fnt_maximumImpact30);
	draw_text(x + centerOffset, y + yOffset, contents[?"name"]);
	yOffset += 44;
	draw_set_halign(fa_left);
	
	if (ds_map_exists(contents, "tags") and contents[?"tags"] != "")
	{
		var str = contents[?"tags"] + " " + category;
		draw_set_font(fnt_maximumImpact20);
		draw_text(x, y + yOffset, str);
		yOffset += 20 + yBuffer;
	}
	
	if (ds_map_exists(contents, "prereqs") and contents[?"prereqs"] != "")
	{
		var str = "Prerequisites:\n" + contents[?"prereqs"];
		draw_set_font(fnt_arial);
		draw_text_ext(x, y + yOffset, str, -1, width);
		yOffset += yBuffer + string_height_ext(str, -1, width);
	}

	if (ds_map_exists(contents, "benefits") and contents[?"benefits"] != "")
	{
		var str = "Benefits:\n" + contents[?"benefits"];
		draw_set_font(fnt_arial);
		draw_text_ext(x, y + yOffset, str, -1, width);
		yOffset += yBuffer + string_height_ext(str, -1, width);
	}

	if (ds_map_exists(contents, "drawbacks") and contents[?"drawbacks"] != "")
	{
		var str = "Drawbacks:\n" + contents[?"drawbacks"];
		draw_set_font(fnt_arial);
		draw_text_ext(x, y + yOffset, str, -1, width);
		yOffset += yBuffer + string_height_ext(str, -1, width);
	}

	if (ds_map_exists(contents, "xpParcels") and contents[?"xpParcels"] != "")
	{
		var str = "XP Parcels:\n" + contents[?"xpParcels"];
		draw_set_font(fnt_arial);
		draw_text_ext(x, y + yOffset, str, -1, width);
		yOffset += yBuffer + string_height_ext(str, -1, width);
	}
}