// TOD  global
happiness = global.happiness;
//quest_milo  = "None yet!";
msg = $"I'm {happiness} happy.";


if (happiness <= 25) {msg = "I'm not very happy...";}
    
else if (happiness <= 50) {msg = "I'm pretty happy!";}

else if (happiness <= 75) {msg = "I'm so happy already!!";}

else if (happiness <= 99) {msg = "Ohhh so close!! I can feel it!";}
        
else if (happiness >= 100) {msg = "I'm so happy I could fly!!";}

//found_items = global.inventory;
//
//for (var _i = 0; _i < array_length(found_items); _i++)
//{
        //// keep a list of found items
        //var _accessor = global.inventory[_i][$ "name"];
        //array_insert(found_items, -1, _accessor);
        //
//}