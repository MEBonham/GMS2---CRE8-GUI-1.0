/// @description Stop dragging
// You can write your code in this editor

dragging = 0;

if (place_meeting(x, y, obj_garbageTarget))
{
	deleting = true;
	xscale_start = image_xscale;
	yscale_start = image_yscale;
	countdownMax = 20;
	countdown = countdownMax;
	
	var target = instance_nearest(x, y, obj_garbageTarget);
	direction = point_direction(x, y, target.x, target.y);
	speed = point_distance(x, y, target.x, target.y) / countdownMax;
}