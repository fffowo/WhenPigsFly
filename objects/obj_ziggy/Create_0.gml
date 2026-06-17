// Inherit the parent event
event_inherited();


path_start(npc_path, 0.5, path_action_continue, false);

rand = round(random_range(0, 1));

sprites = [];
if (rand == 0) sprites = [spr_npc1_roll, spr_npc1_roll_left, spr_npc1_roll_left, spr_npc1_roll];
if (rand == 1) sprites = [spr_npc_ziggy_roll_1, spr_npc_ziggy_roll_2, spr_npc_ziggy_roll_1, spr_npc_ziggy_roll_2];
        