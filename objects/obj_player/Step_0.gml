if (instance_exists(obj_dialogue)) exit; 

if (keyboard_check_pressed(vk_space))
{
    create_dialogue([
        {
            name: "You",
            msg: "Hello world!"
        }
    ])
}

var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);

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
    // TODO angle
    sprite_index = spr_player_idle_front;
    // TODO
    // idle animations 
} 

// happiness

//if keyboard_check(vk_enter)
//{
//	obj_game.happiness += 10;
//}