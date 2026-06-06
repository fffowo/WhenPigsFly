// Inherit the parent event
event_inherited();

char_index = get_char_index(npc_name);

follow_player = false;

path_start(npc_path, 0.4, path_action_continue, true);
