// Make dialog invisible
var backdrop = layer_background_get_id(layer_get_id("Load_popup_backdrop"))
layer_background_visible(backdrop, false);
var controls = layer_get_id("Load_popup_controls");
layer_set_visible(controls, false);
var mask = layer_get_id("Screenshot_mask");
layer_set_visible(mask, false);

// Activate normal operations
instance_activate_layer(layer_get_id("Controls"));