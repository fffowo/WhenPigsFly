var _text = dg_new;
//if (keyboard_check_pressed(vk_space))
if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
    
    with (instance_create_depth(0, 0, -9999, obj_textbox))
    {
        scr_text(_text);
    }
}