
// TODO confirm 
if (keyboard_check_pressed(vk_escape)) {
    room_goto(Room_Outside);
    global.player_name = name_str;
}


var _hor = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
var _ver = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

var _xloc = x / move_speed_x - 2; // wg scaling 
var _yloc = y / move_speed_y - 1;

move_and_collide(_hor * move_speed_x, _ver * move_speed_y, 1, undefined, undefined, undefined);




if (keyboard_check_pressed(vk_enter))
{
    if (name_len < name_max)
    {
        //array_insert(input, -1, [_xloc, _yloc]);
        //array_copy(name, array_length(input)-1, input, 0, 1);
        
        var _let = get_char_from_location(_xloc, _yloc);
        //array_insert(name, name_len, letters[_let][2]);
   
        name_str += letters[_let][2];
        
        var _first = string_char_at(name_str, 1);
        name_str = string_replace(name_str, _first, string_upper(_first));
        
        
        name_len++;
        //array_pop(name);
    }

}

if (keyboard_check_pressed(vk_backspace))
{
    if (string_length(name_str) >= 1)
    {
        //array_pop(name);
        //array_insert(name, -1, "-");    
        //array_pop(input);
        name_len--;
        name_str = string_delete(name_str, string_length(name_str), 1);
    }

}

if (_xloc < 0) x = 128;
if (_xloc > 6) x = 32; 
if (_yloc < 0) y = 128;
if (_yloc > 3) y = 32;