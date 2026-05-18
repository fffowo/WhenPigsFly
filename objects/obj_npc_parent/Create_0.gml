input_key = vk_space;
can_talk = false;
has_interacted = 0;

// quests
quest_done = false;
quest_started = false; 

can_move = 0;

alarm[0] = 60;


function move(move_x, move_y, move_speed){ 
    var tilemap = layer_tilemap_get_id("Tiles_col");
    
    //alarm[0] = 120;
        
    var _hor = clamp(move_x - x, -1, 1);
    var _ver = clamp(move_y - y, -1, 1);
    
    // TODO
    // change sprite when moving
    //if (_hor != 0 or _ver != 0)
    //{
        //sprite_index = spr_obj_chicken_walk;
    //}
    //else 
    //{
        //sprite_index = spr_obj_chicken_idle;
    //}
    
    move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);
    

}


