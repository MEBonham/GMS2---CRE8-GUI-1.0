/// @description Check if parent menu has been updated, respond
if (category != parentMenu.menuOptions[parentMenu.activeIndex])
{
	// Set category anew
	category = parentMenu.menuOptions[parentMenu.activeIndex];
	
	// Load information on correct category of ability
	var file;
	switch (category)
	{
		case "Kit":
			file = file_text_open_read(working_directory + "\\kit_library.txt");
			break;
		case "Feat":
			file = file_text_open_read(working_directory + "\\feat_library.txt");
			break;
		case "Talent":
		default:
			file = file_text_open_read(working_directory + "\\talent_library.txt");
	}
	if (file == -1)
	{
		show_debug_message("Opening file to read failed");
		exit;
	}
	var str = "";
	while (!file_text_eof(file))
	{
		str += file_text_readln(file);
	}
	file_text_close(file);
	var libraryMap = json_decode(str);
	show_debug_message(str);
	
	// Get ability names and sort them alphabetically
	var numAbilities = ds_map_size(libraryMap);
	var namesList = ds_list_create();
	if (numAbilities > 0)
	{
		var key = ds_map_find_first(libraryMap);
		ds_list_add(namesList, key);
		for (var i = 1; i < numAbilities; i++)
		{
			key = ds_map_find_next(libraryMap, key);
			ds_list_add(namesList, key);
		}
	}
	ds_list_sort(namesList, true);

	// (Re)set menu options using this list of names
	menuOptions = [];
	show_debug_message(menuOptions);
	for (var i = 0; i < numAbilities; i++)
	{
		menuOptions[i] = namesList[|i];
	}
	ds_list_destroy(namesList);
	ds_map_destroy(libraryMap);
}