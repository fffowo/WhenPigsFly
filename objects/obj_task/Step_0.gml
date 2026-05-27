// dialogue
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;

    if (keyboard_check_pressed(vk_space))
        { 
            create_dialogue([{
                name: "You",
                msg: msg
            }]) 
            
        }

}
else 
{
    can_talk = false;
}

if (place_meeting(x, y, obj_bitty)) {
    obj_bitty.follow_player = false;
    
    //create_dialogue([{
        //name: "Bitty",
        //msg: "This is great! I'll stay here."
    //}])
}