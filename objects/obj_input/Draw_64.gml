draw_set_font(Font_pixel);


draw_text_transformed(750, 255, $"x: {x / move_speed_x - 2}, y: {y / move_speed_y - 1}", text_scale, text_scale, 0);       
draw_text_transformed(750, 325, $"x: {x}, y: {y}", text_scale, text_scale, 0);           

//draw_text(128, 35, $"{name}");
draw_text_transformed(26*32, 32*5, $"{name_str}", text_scale, text_scale, 0);


//var _x = 43; 
//var _y = 37;

//var _x = x + margin_x; 
//var _y = y + margin_y;

var _x = draw_x;
var _y = draw_y;

//var _x_char = 128;  // further right on screen: a b c d e () A ....
//var _y_char = _y;   // same row as x 


// row is 1 so the modulo does what i want and breaks after E
for (row = 1; row <= (array_length(letters)); row++)
    //for (row = 1; row < 4; row++)
{
    // CAPS
    draw_text_transformed(_x, _y, letters[row - 1][2], text_scale, text_scale, 0);
    //draw_sprite_ext(letters[row - 1][4], 0, _x, _y, 1, 1, 0, c_white, 1);
    
    // small letters
    //draw_text(_x_char, _y_char, letters[row - 1][3]);
    
    _x += move_speed_x*text_scale;    
    //_x_char += 16;

        if (row % 7 == 0)
    {
        _x = draw_x;
        _y += move_speed_y*text_scale;
        
        //_x_char = 70 + (_x * 2);
        //_y_char += 32;
        //draw_text(_x, _y, "\n");
    }    
} 



// works!!
//// row is 1 so the modulo does what i want and breaks after E
//for (row = 1; row < (array_length(caps) + 1); row++)
//{
//
    //draw_text(_x, _y, caps[row - 1]);
    //draw_text(_x_char, _y_char, chars[row - 1]);
//
    //array_insert(location, -1, [_x, _y]);
    //
    //_x += 16;    
    //_x_char += 16;
//
        //if (row % 6 == 0)
    //{
        //_x = 43;
        //_y += 32;
        //
        //_x_char = 70 + (_x * 2);
        //_y_char += 32;
        //draw_text(_x, _y, "\n");
    //}    
//} 


//draw_text_ext_transformed(25, 250, "ABCDEFG", 30, 250, 1.5, 1.5, 0);


