/// @description Open/close menu options

if (clickStart)
{
	if (!open)
	{
		var yOffset = 0;
		for (var i = 0; i < array_length_1d(menuOptions); i += 1)
		{
			yOffset += sprite_height;
			currentOpenOptions[i] =
				instance_create_layer(x, y + yOffset, layer, obj_dropdownMenuOption);
			currentOpenOptions[i].parentLink = id;
			currentOpenOptions[i].text = menuOptions[i];
			currentOpenOptions[i].index = i;
			currentOpenOptions[i].depth -= 1;
			
			if (scriptOnOptionClick)
			{
				currentOpenOptions[i].scriptOnClick = scriptOnClick;
				currentOpenOptions[i].scriptArgs = [menuOptions[i], i, otherArgs];
			}
		}
		open = 1;
	}
	else
	{
		CloseDropdownMenu(id);
	}
}