
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//var _name = quests[0].name;
//draw_text(20, 20, $"{_name}");

draw_text(600, 25, $"ID: {layer_instance_get_instance(self)}");

draw_text(250, 25, $"{msg} ({happiness})");

var _margin = 25;
for (var _i = 0; _i < array_length(global.quests); _i++)
{
    draw_text(_margin, _margin*_i, $"{global.quests[_i].name}");
    //draw_text(_margin + 100, _margin*_i  + 1, $"{global.quests[_i].quest_started}");
    //draw_text(_margin + 120, _margin*_i  + 1, $"{global.quests[_i].quest_done}");
    
    if (global.quests[_i].quest_done == true) 
    {
        draw_text(_margin + 100, _margin*_i  + 1, $"{global.quests[_i].quest_done_msg}");
    } 
    else if (global.quests[_i].quest_started == true) 
    {
        draw_text(_margin + 100, _margin*_i  + 1, $"{global.quests[_i].quest_started_msg}");
    }
    else {
        // TODO
    }
}

var _x = 25;
var _y = 255;


if (array_length(global.inventory) > 0)
{
    for (var _i = 0; _i < array_length(global.inventory); _i++)
    {
        
        //draw_text(_x, _y + (_margin*_i), $"{inventory[_i].name}");
        draw_sprite(global.inventory[_i].sprite, 0, _x, _y + (_margin*_i));
        draw_text(_x + 120, _y + (_margin*_i), $"{global.inventory[_i].txt}");
        
        draw_text(_x + 130, _y + (_margin*_i) + 20, $"{global.inventory[_i].found}");
    } 
}
else 
{
    draw_text(_x, _y*1, "I haven't found anything interesting yet.");
}



//draw_sprite_ext(spr_frame, 0, 20, 20, 5, 5, 0, c_white, 1);

//var _w = display_get_gui_width();
//var _h = display_get_gui_width()/2;
//draw_sprite_stretched_ext(spr_frame, 0, 20, 20, 700, 500, c_white, 1);
//draw_sprite_stretched(spr_frame, 0, 20, 20, _w, _h);