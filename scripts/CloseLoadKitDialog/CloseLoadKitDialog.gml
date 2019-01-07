// Make dialog invisible
CloseLoadKitDialogInitial();

with (obj_screenshotMask)
{
	if (sprite_exists(screenshot))
	{
		sprite_delete(screenshot);
	}
}

with (obj_loadKitDialogControl)
{
	if (scr)
	{
		numButtons = false;
		instance_destroy(scr.a);
		instance_destroy(scr.f);
		instance_destroy(scr);
		scr = false;
	}
}

with (obj_dropdownMenuOption)
{
	if (layer == layer_get_id("Load_popup_buttons"))
	{
		instance_destroy();
	}
}