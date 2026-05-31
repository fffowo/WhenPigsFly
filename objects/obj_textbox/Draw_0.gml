
accept_key = keyboard_check_pressed(vk_space);
//textbox_x = camera_get_view_x(view_camera[0]) + 20;
//textbox_y = camera_get_view_y(view_camera[0]) + 100;
textbox_x = 7;
textbox_y = 93;


//setup
if (setup == false)
{
    setup = true;
    draw_set_font(Font_sprout);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    
    // loop through pages
    page_number = array_length(text);
    
    for (var p = 0; p < page_number; p++)
    {
        // find how many characters are on each page and store that number in the text_length array
        text_length[p] = string_length(text[p]);
        
        // get the x position for the text box
            // centering for no character 
            text_x_offset[p] = x_offset;
    }
}


// typing the text
if (draw_char < text_length[page]) 
    {
        draw_char += text_speed;
        draw_char = clamp(draw_char, 0, text_length[page]); // never more than text length
    }

// flip through pages
if (keyboard_check_pressed(vk_space))
{
    // if typing is done
    if (draw_char == text_length[page])
    {
        // next page
        if (page < page_number - 1)
        {
            page++;
            draw_char = 0;
        }
        // destroy textbox
        else {
            instance_destroy();
        
        }
    }
    // if not done typing
    else {
    
        draw_char = text_length[page];    
    
    }
    
}

// ------------------------------------------------------------------
// draw textbox
textb_spr_w = sprite_get_width(textb_img);
textb_spr_h = sprite_get_height(textb_img);


// textbox
draw_sprite_ext(spr_ass_txtbx, 0, textbox_x, textbox_y, 1, 1, 0, c_white, 1);

// portrait 
draw_sprite(spr_player_port, 0, textbox_x + 8, textbox_y + 7);

// draw text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + y_offset, _drawtext, line_sep, line_width);

