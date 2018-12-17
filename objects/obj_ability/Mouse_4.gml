/// @description Start dragging
// You can write your code in this editor

dragging = 1;
anchorX = x;
anchorY = y;
mAnchorX = mouse_x;
mAnchorY = mouse_y;

// If more than one obj_ability is being dragged, drag only the top one
// Find ids of all instances being dragged
var numFound = 0;
var idsArray;
for (var i = 0; i < instance_number(obj_ability); i += 1)
{
	var curObj = instance_find(obj_ability, i);
	if (curObj.dragging)
	{
		idsArray[numFound] = curObj;
		numFound += 1;
	}
}
if (array_length_1d(idsArray) > 1)
{
	// Find the dragged istance with the lowest depth; set all dragging to 0
	var lowestDepthIndex = 0;
	for (var i = 0; i < array_length_1d(idsArray); i += 1)
	{
		idsArray[i].dragging = 0;
		if (idsArray[i].depth <= idsArray[lowestDepthIndex].depth)
		{
			lowestDepthIndex = i;
		}
	}
	// Reset dragging to 1 for lowest-depth instance
	idsArray[lowestDepthIndex].dragging = 1;
}