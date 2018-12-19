/// @description Glow if ready to delete

if (place_meeting(x, y, obj_ability))
{
	draw_sprite(spr_redGlow, 0, x, y);
}

draw_self();