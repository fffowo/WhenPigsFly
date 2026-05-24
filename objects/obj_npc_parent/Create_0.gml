input_key = vk_space;
can_talk = false;
has_interacted = 0;
y_offset = 1;
x_offset = 0;
draw = true;

// quests
quest_done = false;
quest_started = false; 


// movement
tilemap = layer_tilemap_get_id("Tiles_col");
can_move = 0;
move_speed = 1; 
move_x = x;
move_y = y;
alarm[0] = 120;

