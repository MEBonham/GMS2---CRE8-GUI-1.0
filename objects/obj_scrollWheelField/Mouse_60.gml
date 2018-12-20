/// @description Scroll up

if (mouse_x > xMin and mouse_x < xMax and mouse_y > yMin and mouse_y < yMax)
{
	var qty = (parentLink.yBottom - parentLink.yTop) / divisor;
	parentLink.a.y -= qty;
	parentLink.a.y = clamp(parentLink.a.y, parentLink.yTop, parentLink.yBottom);
}