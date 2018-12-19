/// @description Open/close menu options and modify them
event_inherited();

if (clickStart and open)
{
	for (var i = 0; i < array_length_1d(menuOptions); i ++)
	{
		currentOpenOptions[i].customColor = ColorByType(string_lower(category));
		currentOpenOptions[i].customFont = fnt_arial;
	}
}