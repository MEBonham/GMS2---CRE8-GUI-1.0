/// @description Update scrolling based on scroll bar
if (scr)
{
	var numRowsTot = ceil(numButtons / 2);
	var overshotRows = numRowsTot - maxNumRows;
	var yRowsOffset = round(overshotRows * scr.fraction);
	
	for (var i = 0; i < instance_number(obj_scrollableDropdownOption); i++)
	{
		curOption = instance_find(obj_scrollableDropdownOption, i);
		if (curOption.layer == layer_get_id("Load_popup_buttons"))
		{
			curOption.y = curOption.ystart - rowHeight * yRowsOffset;
			//if (curOption.y < yTop or curOption.y > yBottom)
			//{
			//	//instance_deactivate_object(curOption);
			//	with (curOption)
			//	{
			//		alarm_set(0, 1);
			//	}
			//}
		}
	}
}