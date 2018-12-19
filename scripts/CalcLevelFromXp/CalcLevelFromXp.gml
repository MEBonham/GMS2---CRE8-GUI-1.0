num = argument0;

if (!is_real(num) || num < 0)
{
	return -1;
}

var xpNeeded = 0;
var level = 0;
var newLevel = 100;
while (xpNeeded <= num)
{
	level++;
	xpNeeded += newLevel;
	if (level < 7)
	{
		newLevel += 100;
	}
	else
	{
		newLevel = 500;
	}
}
return level;