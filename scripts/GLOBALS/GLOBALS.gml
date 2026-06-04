
coll = [layer_tilemap_get_id("Tiles_col"), obj_coll, obj_npc_parent];

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