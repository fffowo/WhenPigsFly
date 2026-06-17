// NAME INPUT TRIGGER 
// TODO globals 
if (instance_exists(obj_test_input))
{
    if (obj_test_input.trigger_room) room_goto(Room_name);  
}


// FOUND STICK
if (global.trigger_stick_txt) {
    create_dialogue([
    {
        name: "You",
        msg: "I'm so happy I found a cool stick!",
        portrait: spr_player_port
    }
    ])
    
    global.happiness += 10;
    
    global.trigger_stick_txt = false;
}
