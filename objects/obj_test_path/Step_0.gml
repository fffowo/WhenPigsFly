if (instance_exists(obj_dialogue)) exit;

// dialogue
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(vk_space))
    { 
        
        if (has_interacted % 2 == 0) 
        {
            follow_player = true
        }
        else {
            follow_player = false;
        }
        
        create_dialogue(global.dg_npc[has_interacted % 2]);
        has_interacted++;
        

    }
    

}
else 
{
    can_talk = false;
}

if (follow_player) {

    follow();

}