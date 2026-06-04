
if (instance_exists(obj_dialogue)) exit;

if (instance_exists(obj_inventory) && keyboard_check_pressed(vk_enter))
{
    instance_destroy();
}

