/// @description Handle keyboard input

// Keyboard input if active
if (active)
{
	if (keyboard_check(vk_anykey))
	{
		text += string(keyboard_string);
		keyboard_string = "";
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		text += "\n";
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
	
	if (keyboard_check(vk_shift) and keyboard_check_pressed(vk_tab))
	{
		active = 0;
		prevInput.alarm[0] = 1;
	}
	else if (keyboard_check_pressed(vk_tab))
	{
		active = 0;
		nextInput.alarm[0] = 1;
	}
}

// Increment backspace timer
if (deleteTimer != 0)
{
	deleteTimer--;
}