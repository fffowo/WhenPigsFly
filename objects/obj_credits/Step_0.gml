if (instance_exists(obj_credits))
{
    if (keyboard_check_pressed(vk_enter))
    {
        room_goto(Room_title);
    }
}

if (keyboard_check_pressed(vk_space))
{
    path_speed++;
    alarm[0] --;
    
}
if (keyboard_check_released(vk_space)){
    path_speed--;
    alarm[0]++;
}
