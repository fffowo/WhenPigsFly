
if (instance_exists(obj_dialogue)) exit;
    
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    {
        if (has_interacted) {
            create_dialogue(dialog[1]);
        }
        else 
        {
            create_dialogue(dialog[0])
            has_interacted = true;
        }
    }
}
else 
{
    can_talk = false;
}