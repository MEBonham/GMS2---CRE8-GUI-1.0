var name = argument0[0];
var _category = argument0[2];

var file;
switch (_category)
{
	case "Kit":
		file = file_text_open_read(working_directory + "kit_library.txt");
		break;
	case "Feat":
		file = file_text_open_read(working_directory + "feat_library.txt");
		break;
	case "Talent":
	default:
		file = file_text_open_read(working_directory + "talent_library.txt");
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
libraryMap = json_decode(str);

var abilityInfo = ds_map_create();
ds_map_copy(abilityInfo, ds_map_find_value(libraryMap, name));
ds_map_destroy(libraryMap);
libraryMap = -1;
ds_map_replace(abilityInfo, "name", name);

with (obj_abilityInfoDisplayControl)
{
	//if (contents and (json_encode(contents) != json_encode(abilityInfo)))
	//if (contents)
	//{
	//	ds_map_destroy(contents);
	//}
	contents = abilityInfo;
	show_debug_message(contents);
	category = _category;
	event_user(0);
}