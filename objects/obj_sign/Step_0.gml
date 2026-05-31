var _text = text; 
//if (keyboard_check_pressed(vk_space) && obj_player < 8)
if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    
    with (instance_create_depth(0, 0, -9999, obj_textbox))
    {
        scr_text(_text);
    }
} 