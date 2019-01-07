/// @description Check scrollable status

visible = false;

if (parentLink.scr and (y < parentLink.yTop or y > parentLink.yBottom))
{
	inZone = false;
}
else
{
	visible = true;
	inZone = true;
}