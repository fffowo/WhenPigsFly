if (room == Room_house_inside && !global.visit_house)
{
    create_dialogue([{
        msg: "Eeep! It's so dark!!",
        name: "You",
        portrait: spr_player_port_shocked
    }
    ])
    global.visit_house = true;
    
}