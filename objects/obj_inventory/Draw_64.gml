//
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(Font_sprout);



// -- HAPPINESS -------------------------------------------------------------------------------------------

var _dx = display_get_gui_width() / 2;
var _dy = 25;

// textbox
draw_sprite_ext(spr_ass_txtbx, 0, _dx , _dy, 3, 3, 0, c_white, 1);

// portrait
draw_sprite_ext(port, 0, 208, _dy + 20, 3, 3, 0, c_white, 1);

// write name
_dx = 370;
_dy += 25;
var _name = "You";
draw_set_halign(fa_left);
draw_text(_dx, _dy, _name);
draw_set_color(c_white);

// write message
_dx += 20;
_dy += 45;

draw_text_ext(_dx, _dy, $"{msg} ({happiness})", -1, 650);

// debug
var _test = check_inventory_for_item("peach fruit");
draw_text_ext(_dx, _dy + 25, $"{_test}", -1, 650);



// -- QUESTS --------------------------------------------------------------------------------------------------------


var _x = 320 / 2 - (sprite_get_width(spr_frame));
var _y = _dy + 100;
var _margin = 32;
var _item_x = sprite_get_width(spr_frame) + (48*2);
var _x_scale = 5;
var _y_scale = 3;
var _item_scale = 3;


// FRAME
draw_sprite_ext(spr_frame, 0, _x, _y, _x_scale, _y_scale, 0, c_white, 1);



// row 1
//_y += _margin;
//draw_text(_x, _y, $"{msg} ({happiness})");


// row 2
_y += _margin * 1.5;
_x += _margin * 1.5;
draw_text(_x, _y, "People I've met");

// row 3
_y += _margin;
var _item_y = _y;
var _counter = 1;
draw_set_font(Font_sprout_sm);
for (var _i = 0; _i < array_length(global.quests); _i++)
{
   
    if (global.quests[_i].quest_started == true) 
   {
    
    // name
    //draw_text(_item_x, _item_y + (_margin*_i), $"{global.quests[_i].name}");
    
    //draw_text(_margin + 100, _margin*_i  + 1, $"{global.quests[_i].quest_started}");
    //draw_text(_margin + 120, _margin*_i  + 1, $"{global.quests[_i].quest_done}");
    
    // portrait 
    draw_sprite_ext(global.quests[_i].portrait, 0, _x, _item_y + (_margin*_counter), 1, 1, 0, c_white, 1);
       
    var _txt = global.quests[_i].quest_started_msg;

    if (global.quests[_i].quest_done == true) 
        {
            // star for finished quest
            draw_sprite_ext(spr_ui_star, 0, _item_x + 24, _item_y + (_margin*_counter) + 24, 1.5, 1.5, 0, c_white, 1);
            _txt = global.quests[_i].quest_done_msg;
        } 
    
    draw_text(_x + 50, _item_y + (_margin*_counter) + 8, $"{_txt}");
   
       _counter++;
   } 
   else 
    {
           //draw_text(_item_x + 100, _item_y + (_margin*_i) + 1, $"I wonder what {global.quests[_i].name} is up to...");
    }
}



// -- ITEMS ---------------------------------

// FRAME 2
draw_set_font(Font_sprout);
//_y += 300;
_y = _dy + 100;
_x = display_get_gui_width() / 2;
draw_sprite_ext(spr_frame, 0, _x, _y, _x_scale, _y_scale, 0, c_white, 1);

// row 1
_y += _margin * 1.5;
_x =+ 705;
draw_text(_x, _y, "Things I found");

// row 2
draw_set_font(Font_sprout_sm);
_y += _margin;
_item_y = _y;
_item_x = _x;
_margin += sprite_get_height(spr_fruit) * _item_scale;
if (array_length(global.inventory) > 0)
{
    for (var _i = 0; _i < array_length(global.inventory); _i++)
    {
        
        // name
        //draw_text(_x, _y + (_margin*_i), $"{inventory[_i].name}");
        
        // sprite
        //draw_sprite(global.inventory[_i].sprite, 0, _item_x, _y + (_margin*_i));
        draw_sprite_ext(global.inventory[_i].sprite, 0, _x, _item_y + (_margin*_i), _item_scale, _item_scale, 0, c_white, 1);
                
        // description
        draw_text(_x + 120, _y + (_margin*_i), $"{global.inventory[_i].txt}");

        
    } 
}
else 
{
    draw_text(_x, _y*1, "I haven't found anything interesting yet.");
}


