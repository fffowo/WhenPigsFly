//path_speed = 0;
//alarm[1] = 2*60;

if (path_position > 0.5)
{
    path_speed = 0;
    alarm[0] = 30;
}
else 
{
    path_speed = 1;
    //checkpoint++;
    alarm[0] = 60;
}
