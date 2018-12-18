/// @description Handle keyboard input

// Keyboard input if active
if (active)
{
	if (keyboard_check(vk_anykey))
	{
		text += string(keyboard_string);
		keyboard_string = "";
	}

	if (keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and deleteTimer == 0)
	{
		text = string_delete(text, string_length(text), 1);
		deleteTimer = 3;
		keyboard_string = "";
	}

	if (keyboard_check_pressed(vk_backspace))
	{
		text = string_delete(text, string_length(text), 1);
		keyboard_string = "";
		deleteTimer = 20;
	}
}

// Increment backspace timer
if (deleteTimer != 0)
{
	deleteTimer--;
}