//var _dx = display_get_gui_width() / 2;
//var _dy = display_get_gui_height() * 0.7; // 70% down at the bottom of the screen
//
//draw_set_halign(fa_left);
//draw_set_valign(fa_bottom);
//
//if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
//{
//
//// textbox
//draw_sprite_ext(spr_ass_txtbx, 0, _dx , _dy, 3, 3, 0, c_white, 1);
//
//// portrait
//var _port = spr_npc_blank;
//draw_sprite_ext(_port, 0, 208, _dy + 20, 3, 3, 0, c_white, 1);
//
//// write name
//_dx = 370;
//_dy += 55;
//var _name = "Test";
//draw_set_halign(fa_left);
//draw_set_color(c_black);
//draw_text(_dx, _dy, _name);
//draw_set_color(c_white);
//
//// write message
//_dx += 20;
//_dy += 50;
//draw_sprite_ext(spr_icon_frog, 0, _dx, _dy, 3, 3, 0, c_white, 1);
//}