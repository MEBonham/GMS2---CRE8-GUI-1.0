/// @description Update scrolling based on scroll bar
if (scr)
{
	var numRowsTot = ceil(numButtons / 2);
	var overshotRows = numRowsTot - maxNumRows;
	var yRowsOffset = round(overshotRows * scr.fraction);
	
	for (var i = 0; i < instance_number(obj_dropdownMenuOption); i++)
	{
		curOption = instance_find(obj_dropdownMenuOption, i);
		if (layer == curOption.layer)
		{
			curOption.y = curOption.ystart - rowHeight * yRowsOffset;
			if (curOption.y < yTop or curOption.y > yBottom)
			{
				instance_deactivate_object(curOption);
			}
		}
	}
}