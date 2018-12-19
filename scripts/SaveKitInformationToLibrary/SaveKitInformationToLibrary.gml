var kitMap = ds_map_create();
var kitName = "";

for (var i = 0; i < instance_number(obj_textbox); i++)
{
	var curTextbox = instance_find(obj_textbox, i);
	if (curTextbox.code == "name")
	{
		kitName = curTextbox.text;
	}
	else
	{
		kitMap[? curTextbox.code] = curTextbox.text;
	}
}
if (kitName != "")
{
	// Read the Kit Library file into the variable kitLibraryMap
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

	// Add or replace the current kit to the library
	ds_map_replace_map(kitLibraryMap, kitName, kitMap);

	// Save the altered library object
	file = file_text_open_write(working_directory + "kit_library.txt");
	if (file == -1)
	{
		show_debug_message("Opening file to write failed");
		exit;
	}
	file_text_write_string(file, json_encode(kitLibraryMap));
	file_text_close(file);

	// Clean up leftover ds_map(s)
	ds_map_destroy(kitLibraryMap);

	with (obj_textbox)
	{
		text = "";
	}
}
else
{
	ds_map_destroy(kitMap);
}