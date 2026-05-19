if (instance_exists(obj_dialogue)) exit; 

// TODO
if (keyboard_check_pressed(vk_space))
{
    create_dialogue([
        {
            name: "You",
            msg: $"I'm {happiness} happy.'"
        }
    ])
}


var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

var _len = _hor != 0 || _ver != 0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = lengthdir_x(_len, _dir);
_ver = lengthdir_y(_len, _dir);

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined);

// we have input and the player is moving
if (_hor != 0 or _ver != 0)
{
    if (_ver > 0) sprite_index = spr_player_walk_down;
        else if (_ver < 0) sprite_index = spr_player_walk_up;
             else if (_hor > 0) sprite_index = spr_player_walk_right;
                 else if (_hor < 0) sprite_index = spr_player_walk_left;
} 
else 
{ 
    
    // idle animations 
    // TODO:
    // angle

    var _r = round(random_range(0, 1));
    _r = 1;    
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
