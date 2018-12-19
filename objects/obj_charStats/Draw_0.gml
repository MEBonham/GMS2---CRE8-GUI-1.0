/// @description Draw character stats
if (room == rm_editor)
{
	draw_set_color(c_black);
	draw_set_font(fnt_maximumImpact20);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text(x - 8, y + 4, "Level: " + string(charStats[?"level"]));
	
	draw_set_halign(fa_center);
	draw_text(x + 432, y - 51, "+");
	
	draw_text(x + 500, y - 90, "Parcel XP");
	
	draw_text(x + 500, y - 50, ds_map_exists(charStats, "xpParcels")
		? ds_list_size(charStats[?"xpParcels"]) * xpPerParcel
		: 0);
}