/// @description Move if being dragged
// You can write your code in this editor

if (!deleting and dragging)
{
	var vectorX = mouse_x - mAnchorX;
	var vectorY = mouse_y - mAnchorY;
	x = anchorX + vectorX;
	y = anchorY + vectorY;
}
else if (deleting)
{
	if (countdown == 0)
	{
		instance_destroy();
	}
	else
	{
		var fraction = countdown / countdownMax;
		image_xscale = fraction * xscale_start;
		image_yscale = fraction * yscale_start;
		countdown--;
	}
}