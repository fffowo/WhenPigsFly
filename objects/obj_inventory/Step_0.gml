if (keyboard_check_pressed(vk_escape))
{
    room_goto(Room_Outside);
}

if (instance_exists(obj_npc2))
{
    if (obj_npc2.quest_started)
{
    quest_milo = "I talked to Milo. He wants me to check up on Daisy.";
}
else if (obj_npc2.quest_done)
{
    quest_milo = "Daisy is fine now.";
}

}

