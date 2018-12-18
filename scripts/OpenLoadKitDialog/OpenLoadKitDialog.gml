with (obj_screenshotMask)
{
	show_debug_message(view_wport);
	screenshot = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, 0, 0, 0, 0);
}

// Make dialog visible
var backdrop = layer_background_get_id(layer_get_id("Load_popup_backdrop"))
layer_background_visible(backdrop, true);
var controls = layer_get_id("Load_popup_controls");
layer_set_visible(controls, true);
var mask = layer_get_id("Screenshot_mask");
layer_set_visible(mask, true);

// Disable elements outside dialog
instance_deactivate_layer(layer_get_id("Controls"));

// Invoke script to display menu from obj_LoadKitDialogControl
with (obj_loadKitDialogControl)
{
	LoadKitDisplayMenu();
}