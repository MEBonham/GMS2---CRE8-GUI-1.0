/// @description Initialize
xpPerParcel = 30;

charStats = ds_map_create();
ds_map_add(charStats, "name", "");
ds_map_add(charStats, "baseXp", 0);
ds_map_add(charStats, "totXp", 0);
ds_map_add(charStats, "level", 1);