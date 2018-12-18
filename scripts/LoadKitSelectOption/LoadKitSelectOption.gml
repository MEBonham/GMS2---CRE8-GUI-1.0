var kitInfo = argument0[0];
var kitName = argument0[1];
var dataStructureToCleanup = argument0[2];

CloseLoadKitDialog();

ds_map_replace(kitInfo, "name", kitName);

with (obj_textbox)
{
	if (ds_map_exists(kitInfo, code))
	{
		text = kitInfo[?code];	
	}
	else
	{
		text = "";
	}
}