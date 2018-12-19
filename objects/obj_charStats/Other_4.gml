/// @description Force inputs to adopt saved stats when main editor loads

if (room == rm_editor)
{
	for (var i = 0; i < instance_number(obj_textbox); i++)
	{
		var input = instance_find(obj_textbox, i);
		if (input.type == "stat")
		{
			if (input.code == "baseXp")
			{
				input.text = (charStats[?"baseXp"] == 0)
					? ""
					: string(charStats[?"baseXp"]);
			}
			else
			{
				input.text = charStats[?input.code];
			}
		}
	}
}