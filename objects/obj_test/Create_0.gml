path_start(path_test, 1, path_action_reverse, true);
points = path_get_number(path_test);
alarm[0] = 10;
pt_arr = [];
for (var _point = 0; _point < points; _point++)
{
    array_insert(pt_arr, _point, [path_get_point_x(path_test, _point), path_get_point_y(path_test, _point)]);

}

checkpoint = 1;

//path_position;