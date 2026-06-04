
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//var _name = quests[0].name;
//draw_text(20, 20, $"{_name}");


//draw_text(20, 45, $"quest: {quest_milo}");


draw_text(20, 25, $"happiness: {happiness}, {msg}");

var _margin = 50;
for (var _i = 1; _i < array_length(quests) - 1; _i++)
{
    draw_text(_margin, _margin*_i, $"{quests[_i].name}");
        draw_text(_margin + 120, _margin*_i, $"{quests[_i].quest_started}");
        draw_text(_margin + 160, _margin*_i, $"{quests[_i].quest_done}");

}

if (array_length(inventory) > 0)
{
    
    for (var _i = 1; _i < array_length(inventory) - 1; _i++)
    {
        draw_text(_margin, _margin*_i, $"{inventory[_i].name}");
    
    } 


}
else 
{
    draw_text(_margin, _margin*1, "I haven't found anything interesting yet.");
}


//draw_sprite_ext(spr_frame, 0, 20, 20, 5, 5, 0, c_white, 1);

//var _w = display_get_gui_width();
//var _h = display_get_gui_width()/2;
//draw_sprite_stretched_ext(spr_frame, 0, 20, 20, 700, 500, c_white, 1);
//draw_sprite_stretched(spr_frame, 0, 20, 20, _w, _h);