/// @description Initialize (as closed)
event_inherited()

name = "Select";

activeIndex = 0;
scriptOnOptionClick = 1;

// menuOptions = 
parentMenu = inst_5DD9CB09;
category = parentMenu.menuOptions[parentMenu.activeIndex];
// Load kit information and put it into a ds_map
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
menuOptions = [];
for (var i = 0; i < numKits; i++)
{
	menuOptions[i] = namesList[|i];
}
ds_list_destroy(namesList);
ds_map_destroy(kitLibraryMap);

// Prepare for options to call scripts
scriptOnClick = LoadAbilityInfoDisplay;
otherArgs = category;