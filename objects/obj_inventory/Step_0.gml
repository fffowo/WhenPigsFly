if (instance_exists(obj_dialogue)) exit;

// TODO: remove player obj??

// TODO: exit    
if (keyboard_check_pressed(vk_escape))
{
    room_goto(Room_Outside);
}




if (happiness <= 25) {msg = "I'm not very happy...";}
    
else if (happiness <= 50) {msg = "I'm pretty happy!";}

else if (happiness <= 75) {msg = "I'm so happy already!!";}

else if (happiness <= 99) {msg = "Ohhh so close!! I can feel it!";}
        
else if (happiness >= 100) {msg = "I'm so happy I could fly!!";}


if (global.milo_quest_started)
{
    quest_milo = "I talked to Milo. He wants me to check up on Daisy.";
}
if (global.milo_quest_done)
{
    quest_milo = "Daisy is fine now.";
}
