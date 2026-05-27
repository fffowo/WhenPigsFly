function follow(){

    move_speed = 1.3;
    
    player_x = obj_player.x;
    player_y = obj_player.y;
    
    var _hor = clamp(player_x - x, -1, 1);
    var _ver = clamp(player_y - y, -1, 1);
    xspeed = _hor * move_speed;
    yspeed = _ver * move_speed; 

    if (distance_to_object(obj_player) > 16)
    { 
        
        if (place_meeting(x + xspeed, y, global.tilemap))  xspeed = 0;
        if (place_meeting(x, y + yspeed, global.tilemap)) yspeed = 0;

       if (player_x != x) x += xspeed;
       if (player_y != y) y += yspeed;

    }
    
}