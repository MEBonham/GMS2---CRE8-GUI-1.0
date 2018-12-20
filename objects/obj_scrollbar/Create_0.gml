/// @description Initialize
yTop = y - sprite_height / 2;
yBottom = y + sprite_height / 2;

a = instance_create_depth(x, yTop, depth - 1, obj_scrollBead);
a.parentLink = id;

fraction = (a.y - yTop) / (yBottom - yTop);

// Redo y-positioning stuff one step later:
alarm_set(0, 1);