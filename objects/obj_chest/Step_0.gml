if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    if (keyboard_check_pressed(vk_space))
    {
        sprite_index = spr_chest;
        sprite_index = spr_chest_open;
    }
}