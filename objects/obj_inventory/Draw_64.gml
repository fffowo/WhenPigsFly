
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(20, 25, $"happiness: {happiness}, {msg}");
draw_text(20, 45, $"quest: {quest_milo}");

var _x = 20;
var _y = 65;

var _x_char = 120;
var _y_char = 65;



// row is 1 so the modulo does what i want and breaks after E
for (row = 1; row < (array_length(caps) + 1); row++)
{

    draw_text(_x, _y, caps[row - 1]);
    draw_text(_x_char, _y_char, chars[row - 1]);

    _x += 20;    
    _x_char += 20;

        if (row % 4 == 0)
    {
        _x = 20;
        _y += 20;
        
        _x_char = 120;
        _y_char += 20;
        draw_text(_x, _y, "\n");
    }    
} 

draw_text_ext_transformed(25, 250, "ABCDEFG", 30, 250, 1.5, 1.5, 0);
