var name = argument0[0];
var category = argument0[2];

var file;
switch (category)
{
	case "Kit":
		file = file_text_open_read(working_directory + "\kit_library.txt");
		break;
	case "Feat":
		file = file_text_open_read(working_directory + "\feat_library.txt");
		break;
	case "Talent":
	default:
		file = file_text_open_read(working_directory + "\talent_library.txt");
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