
name = noone;

menuOptions = ["Kit", "Feat", "Talent"];
activeIndex = 0;
scriptOnOptionClick = 0;

eggButton = instance_create_layer(x + sprite_width / 2 + 32, y, layer, obj_metaEditorLink);
eggButton.parentLink = id;
eggButton.hover = 0;