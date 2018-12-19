// Load information and put it into a ds_map
var file = file_text_open_read(working_directory + "kit_library.txt");
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
var kitLibraryMap = json_decode(str);

// Get kit names and sort them alphabetically
var numKits = ds_map_size(kitLibraryMap);
var namesList = ds_list_create();
if (numKits > 0)
{
	var key = ds_map_find_first(kitLibraryMap);
	ds_list_add(namesList, key);
	for (var i = 1; i < numKits; i++)
	{
		key = ds_map_find_next(kitLibraryMap, key);
		ds_list_add(namesList, key);
	}
}
ds_list_sort(namesList, true);

// Iterate through sorted names and create buttons for them
var yOffset = 10;
for (var i = 0; i < numKits; i++)
{
	yOffset += 30;
	currentOpenOptions[i] =
		instance_create_layer(x, y + yOffset, layer, obj_dropdownMenuOption);
	currentOpenOptions[i].parentLink = id;
	currentOpenOptions[i].text = namesList[|i];
	currentOpenOptions[i].scriptOnClick = LoadKitSelectOption;
	var kitName = namesList[|i];
	var kitInfo = kitLibraryMap[?kitName];
	currentOpenOptions[i].scriptArgs[0] = kitInfo;
	currentOpenOptions[i].scriptArgs[1] = namesList[|i];
	currentOpenOptions[i].scriptArgs[2] = kitLibraryMap;
}
ds_list_destroy(namesList);