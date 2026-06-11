
// @param _name
// @description checks the global inventory for an entry of a specified name
function check_inventory_for_item(_name = "")
{ 
    for (var _i = 0; _i < array_length(global.inventory); _i++)
    {
        if (global.inventory[_i][$ "name"] == _name) 
        {
            return _i;
        }

    }
     return -1;
}

// @description returns the index of the character for the quest array
function get_char_index(_name = "")
{
    var _index = 0;
    for (var _i = 0; _i < array_length(global.quests); _i++)
    {
        if (global.quests[_i].name == _name)
            { 
                _index = _i;
            }
    }
    return _index;
}

// @param [_sides]
// @description right, up, left, down 
function walk_sprite_direction(_sides)
{

    if (direction == 0)
    {
        sprite_index = _sides[0]; // right
    }
    if (direction == 90)
    {
        sprite_index = _sides[1]; // up
    }
    if (direction == 180)
    {
        sprite_index = _sides[2]; // left
    }
    if (direction == 270)
    {
        sprite_index = _sides[3]; // down
    } 
}