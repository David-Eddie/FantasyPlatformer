/// scr_get_adjacent_squares(this_x,this_y)

var retval = ds_list_create();
var xyPair;
var this_x = argument0;
var this_y = argument1;
var adj_x, adj_y;

// get upper left
xyPair = ds_map_create();
adj_x = this_x - sprite_width;
adj_y = this_y - sprite_width;
ds_map_add(xyPair,"x", adj_x);
ds_map_add(xyPair,"y", adj_y);
ds_list_add(retval, xyPair);

// get upper
xyPair = ds_map_create();
adj_x = this_x;
adj_y = this_y - sprite_width;
ds_map_add(xyPair,"x", adj_x);
ds_map_add(xyPair,"y", adj_y);
ds_list_add(retval, xyPair);

// get upper right
xyPair = ds_map_create();
adj_x = this_x + sprite_width;
adj_y = this_y - sprite_width;
ds_map_add(xyPair,"x", adj_x);
ds_map_add(xyPair,"y", adj_y);
ds_list_add(retval, xyPair);

// get right
xyPair = ds_map_create();
adj_x = this_x + sprite_width;
adj_y = this_y;
ds_map_add(xyPair,"x", adj_x);
ds_map_add(xyPair,"y", adj_y);
ds_list_add(retval, xyPair);

// get lower right
xyPair = ds_map_create();
adj_x = this_x + sprite_width;
adj_y = this_y + sprite_width;
ds_map_add(xyPair,"x", adj_x);
ds_map_add(xyPair,"y", adj_y);
ds_list_add(retval, xyPair);

// get lower
xyPair = ds_map_create();
adj_x = this_x;
adj_y = this_y + sprite_width;
ds_map_add(xyPair,"x", adj_x);
ds_map_add(xyPair,"y", adj_y);
ds_list_add(retval, xyPair);

// get lower left
xyPair = ds_map_create();
adj_x = this_x - sprite_width;
adj_y = this_y + sprite_width;
ds_map_add(xyPair,"x", adj_x);
ds_map_add(xyPair,"y", adj_y);
ds_list_add(retval, xyPair);

// get left
xyPair = ds_map_create();
adj_x = this_x - sprite_width;
adj_y = this_y;
ds_map_add(xyPair,"x", adj_x);
ds_map_add(xyPair,"y", adj_y);
ds_list_add(retval, xyPair);

return retval;
