
happiness = global.happiness;

msg = $"I'm {happiness} happy.";
port = spr_player_port;

if (happiness <= 25) {
    msg = "I'm not very happy...";
    port = spr_player_port_sad;
}
    
else if (happiness <= 50) {
    msg = "I guess I'm a little happy.";
    port = spr_player_port_question;
}

else if (happiness <= 75) {
    msg = "I'm pretty happy!";
    port = spr_player_port;
}

else if (happiness <= 99) {
    msg = "Ohhh so close!! I can feel it!";
    port = spr_player_port;
}
        
else if (happiness >= 100) {
    msg = "I'm so happy I could fly!!";
    port = spr_player_port;
}