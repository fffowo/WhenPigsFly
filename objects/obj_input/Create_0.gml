x = 32;
y = 32;

move_speed_x = 16;
move_speed_y = 32;

text_scale = 4;

margin_x = move_speed_x;
margin_y = 8;

draw_x = 32*5 + margin_x;
draw_y = 32*7 + margin_y;

//chars = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
//caps = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];

//location = [];
//name = ["-", "-", "-", "-", "-", "-"];
name_str = "";
//input = [];
name_max = 60;
name_len = 0;

letters = [
    [0,0,"a","A"],
    [1,0,"b","B"],
    [2,0, "c","C"],
    [3,0, "d","D"],
    [4,0, "e","E"],
    [5,0, "f","F"],
    [6,0, "g","G"],
    
    [0,1, "h","H"],
    [1,1, "i","I"],
    [2,1, "j","J"],
    [3,1, "k","K"],
    [4,1, "l","L"],
    [5,1, "m","M"],
    [6,1, "n","N"],
    
    [0,2, "o","O"],
    [1,2, "p","P"],
    [2,2, "q","Q"],
    [3,2, "r","R"],
    [4,2, "s","S"],
    [5,2, "t","T"],
    [6,2, "u","U"],
    
    [0,3, "v","V"],
    [1,3, "w","W"],
    [2,3, "x","X"],
    [3,3, "y","Y"],
    [4,3, "z","Z"],
    [5,3, "*","*"],
    [6,3, "'","'"],

];


function get_char_from_location(_x = 0, _y = 0)
{
    for (var _i = 0; _i <= array_length(letters)-1; _i++)
    {
        if (_x == letters[_i][0] && _y == letters[_i][1])
            {
                return _i;
            }
    }
}