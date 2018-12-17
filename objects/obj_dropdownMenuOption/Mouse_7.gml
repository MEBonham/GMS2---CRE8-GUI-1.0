/// @description Select menu option

if (clickStart)
{
	if (parentLink.scriptOnOptionClick)
	{
		script_execute(scriptOnClick, scriptArgs);
	}
	else
	{
		parentLink.activeIndex = index;
	}
	CloseDropdownMenu(parentLink);
}