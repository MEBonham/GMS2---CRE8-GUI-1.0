/// @description Initialize
divisor = 30;
xMin = x - 20;
xMax = x + sprite_width * image_xscale + 20;
yMin = y - 20;
yMax = y + sprite_height * image_yscale + 20;

// Set alarm to re-set xMin, xMax, yMin, yMax after resize
alarm_set(0, 1);