// Make dialog invisible
CloseLoadKitDialogInitial();

with (obj_screenshotMask)
{
	if (sprite_exists(screenshot))
	{
		sprite_delete(screenshot);
	}
}