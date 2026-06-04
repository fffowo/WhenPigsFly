
if (instance_exists(obj_dialogue)) exit;

if (instance_exists(obj_inventory) && keyboard_check_pressed(vk_enter))
{
    instance_destroy();
}



// TODO: remove player obj??

// TODO: exit    
//if (keyboard_check_pressed(vk_escape))
//{
    ////room_goto(Room_Outside);
//}

//
//
//if (global.milo.quest_started)
//{
    //quest_milo = "I talked to Milo. He wants me to check up on Daisy.";
//}
//if (global.milo.quest_done)
//{
    //quest_milo = "Daisy is fine now.";
//}


