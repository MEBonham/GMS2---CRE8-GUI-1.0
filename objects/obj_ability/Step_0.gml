/// @description Move if being dragged
// You can write your code in this editor

if (dragging) {
	var vectorX = mouse_x - mAnchorX;
	var vectorY = mouse_y - mAnchorY;
	x = anchorX + vectorX;
	y = anchorY + vectorY;
}