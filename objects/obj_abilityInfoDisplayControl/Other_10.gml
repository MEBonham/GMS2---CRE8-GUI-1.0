/// @description Re-calculate mainText
mainText = "";

if (ds_map_exists(contents, "prereqs") and contents[?"prereqs"] != "")
{
	var str = "Prerequisites:\n" + contents[?"prereqs"];
	mainText += str;
}
if (ds_map_exists(contents, "benefits") and contents[?"benefits"] != "")
{
	if (mainText != "")
	{
		mainText += "\n\n";
	}
	var str = "Benefits:\n" + contents[?"benefits"];
	mainText += str;
}
if (ds_map_exists(contents, "drawbacks") and contents[?"drawbacks"] != "")
{
	if (mainText != "")
	{
		mainText += "\n\n";
	}
	var str = "Drawbacks:\n" + contents[?"drawbacks"];
	mainText += str;
}
if (ds_map_exists(contents, "xpParcels") and contents[?"xpParcels"] != "")
{
	if (mainText != "")
	{
		mainText += "\n\n";
	}
	var str = "XP Parcels:\n" + contents[?"xpParcels"];
	mainText += str;
}