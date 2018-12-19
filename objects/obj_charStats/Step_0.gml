/// @description Update stats based on inputs

for (var i = 0; i < instance_number(obj_textbox); i++)
{
	var input = instance_find(obj_textbox, i);
	if (input.type == "stat")
	{
		if (input.code == "baseXp")
		{
			var xpNum = real(string_digits(input.text));
			ds_map_replace(charStats, input.code, xpNum);
		}
		else
		{
			ds_map_replace(charStats, input.code, input.text);
		}
	}
}

if (!ds_map_exists(charStats, "xpParcels"))
{
	ds_map_replace(charStats, "totXp", charStats[?"baseXp"]);
}
else
{
	var numParcels = ds_list_size(charStats[?"xpParcels"]);
	ds_map_replace(charStats, "totXp", charStats[?"baseXp"] + xpPerParcel * numParcels);
}
ds_map_replace(charStats, "level", CalcLevelFromXp(charStats[?"totXp"]));

if (keyboard_check_pressed(vk_f1))
{
	show_debug_message(json_encode(charStats));
}