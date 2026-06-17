
if (instance_exists(obj_dialogue) || instance_exists(obj_input)) exit;

if (!instance_exists(obj_inventory) && keyboard_check_pressed(vk_escape))
{
    instance_create_depth(x, y, -5000, obj_inventory);
} 
else if (instance_exists(obj_inventory) && keyboard_check_pressed(vk_escape))
{
       instance_destroy(obj_inventory);
}




// movement 
var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

// diagonals
var _len = _hor != 0 || _ver != 0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = lengthdir_x(_len, _dir);
_ver = lengthdir_y(_len, _dir);

xspeed = _hor * move_speed;
yspeed = _ver * move_speed; 

if (place_meeting(x + xspeed, y, [obj_coll, obj_coll_viz, obj_npc_parent]))
{
    xspeed = 0;
}
if (place_meeting(x, y + yspeed, [obj_coll, obj_coll_viz, obj_npc_parent]))
{
    yspeed = 0;
}

x += xspeed;
y += yspeed;

// we have input and the player is moving
if (_hor != 0 or _ver != 0)
{
    if (_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right_1;
    else if (_hor < 0) sprite_index = spr_player_walk_left_1;
        
    //if (counter_footsteps == 0)
    //{
        //var _r = round(random_range(0, 2));
        //soundfile = steps[_r];
        //audio_play_sound(soundfile, 8, false);
        //counter_footsteps = 30;  number of steps to wait before trying to play the sound again
    //}
    //else if (counter_footsteps > 0) counter_footsteps--;
} 
else 
{ 

    if (sprite_index == spr_player_walk_down) 
        {
              // idle animations 
                var _r = round(random_range(0, 1));
                switch (_r) 
            { 
                    case 0:
                        sprite_index = spr_player_idle_front;
                    break; 
                    
                    case 1:
                        sprite_index = spr_player_idle_front_alt;
                    break;
                    
                    default:
                        sprite_index = Sprite20;
                        break;
                }        
            }
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if (sprite_index == spr_player_walk_right_1) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left_1) sprite_index = spr_player_idle_left;
} 

