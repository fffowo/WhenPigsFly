path_start(Path_credits, 0.5, path_action_stop, true);


// time = distance/speed

secs = path_get_length(Path_credits) / 0.5;

alarm[0] = secs + 5*60;