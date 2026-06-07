up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
input_key= keyboard_check_pressed(vk_enter);

// store number of options in current menu
op_length = array_length(options[menu_level]);


pos += down_key - up_key;

// loops through the lengh of array 
if (pos >= op_length) pos = 0;
if (pos < 0) pos = op_length -1;
    
if (input_key){
    var _sml = menu_level; // start menu level
        switch (menu_level) {
            case 0: 
        
                    {
                        switch (pos) {
                        case 0:
                            room_goto(Room_Outside);
                            break;
                        case 1:
                            menu_level = 1;
                            break;
                        case 2:
                            room_goto(Room_credits);
                            break;
                        case 3:
                            game_end();
                            break;
                        default:
                            break;
                    }
                    }
                break;
            case 1:
                switch (pos){
                    case 0:
                        // window size
                        break;
                    case 1:
                        // brightness
                        break;
                    case 2: 
                        // controls
                        break;
                    case 3:
                        // back
                        menu_level = 0;
                        break;
                    default:
                        break;
                }
        }

    // resets level so we don't get sublevels confused
    if (_sml != menu_level) {pos=0};
    
    
    op_length = array_length(options[menu_level]);
}


