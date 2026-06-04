
happiness = 0;


if (happiness <= 25) {msg = "I'm not very happy...";}
    
else if (happiness <= 50) {msg = "I'm pretty happy!";}

else if (happiness <= 75) {msg = "I'm so happy already!!";}

else if (happiness <= 99) {msg = "Ohhh so close!! I can feel it!";}
        
else if (happiness >= 100) {msg = "I'm so happy I could fly!!";}

// ----------------------------------------------------------------------------------

inventory = [];

inventory = [{
    name: "peach fruit",
    sprite: spr_fruit,
    txt: "A scrumptious peach fruit."
},
{
    name: "pinwheel",
    sprite: spr_ass_pinwheel_1,
    txt: "A pinwheel I found in a chest."
},
{
    name: "n/a",
    sprite: Sprite20,
    txt: "something else."
}];

// ----------------------------------------------------------------------------------

quests = [

    {name: "n/a",
    quest_started : false,
    quest_done : false
    },
    
    { name: "bitty",
    quest_started : false,
    quest_done : false
    },
    
    { name : "camilla",
        quest_started : false,
        quest_done : false
    }, 
        
    { name: "milo",
        quest_started : false,
        quest_done : false
    },
    
    { name: "leo",
        quest_started : false,
        quest_done : false
    },
    { name: "henrietta",
        quest_started : false,
        quest_done : false
    },
    
    { name: "kiwi", 
        quest_started : false,
        quest_done : false
    },
    { name: "noodle",
        quest_started : false,
        quest_done : false
    },
    
    { name: "pepper",
        quest_started : false,
        quest_done : false
    },
    
    { name: "sophie",
        quest_started : false,
        quest_done : false
    }
    ];