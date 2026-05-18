// end step plays AFTER step event 
if (current_message < 0) exit;
    
var _str = messages[current_message].msg;

if (current_char < string_length(_str))
{
    current_char += char_speed * (1 + keyboard_check(input_key)); // increases characters drawn
    draw_message = string_copy(_str, 0, current_char); // string at a char at any given moment
} 
else if (keyboard_check_pressed(input_key)) {
    current_message++;
    if (current_message >= array_length(messages))
    {
        instance_destroy(); // dialogue is over
    }
    else {
    	current_char = 0;
    }
	
}