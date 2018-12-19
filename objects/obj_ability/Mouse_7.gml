/// @description Stop dragging
// You can write your code in this editor

dragging = 0;

if (place_meeting(x, y, obj_garbageTarget))
{
	instance_destroy();
}