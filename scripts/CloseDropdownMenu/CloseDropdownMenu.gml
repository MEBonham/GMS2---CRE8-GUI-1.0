/// Close dropdown menu 
/// @description CloseDropdownMenu(menuID)
/// @param menuID

with (argument0)
{
	for (var i = 0; i < array_length_1d(currentOpenOptions); i += 1)
	{
		instance_destroy(currentOpenOptions[i]);
	}
	open = 0;
	if (object_get_name(object_index) == "obj_selectAbilityDropdownMenu")
	{
		instance_activate_object(obj_generateButton);
	}
}