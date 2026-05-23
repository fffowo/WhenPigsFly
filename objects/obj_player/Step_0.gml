

if (instance_exists(obj_dialogue)) exit;
if (instance_exists(obj_inventory)) exit;

// TODO
if (keyboard_check_pressed(vk_escape))
{
    room_goto(Room_inventory);
}

if (keyboard_check_pressed(vk_space))
{
    // TODO: snorf!
    var _r = round(random_range(0, 1));
    soundfile = snorfs[_r];
    audio_play_sound(soundfile, 1, false);
}

var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

// diagonals
var _len = _hor != 0 || _ver != 0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = lengthdir_x(_len, _dir);
_ver = lengthdir_y(_len, _dir);

xspeed = _hor * move_speed;
yspeed = _ver * move_speed; 

if (place_meeting(x + xspeed, y, [tilemap, obj_coll]))
{
    xspeed = 0;
}
if (place_meeting(x, y + yspeed, [tilemap, obj_coll]))
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
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;
} 
else 
{ 

    if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_front;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    
    // idle animations 
    //var _r = round(random_range(0, 1));
    //_r = 1;    
    //switch (_r) 
//{ 
        //case 0:
            //sprite_index = spr_player_idle_front;
        //break; 
        //
        //case 1:
            //sprite_index = spr_player_idle_front_alt;
        //break;
        //
        //default:
            //sprite_index = Sprite20;
            //break;
    //}
} 
