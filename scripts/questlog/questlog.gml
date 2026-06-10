
happiness = 0;


// ----------------------------------------------------------------------------------

inventory = [];

//inventory = [
    //{
        //name: "pinwheel",
        //sprite: spr_ass_pinwheel_1,
        //txt: "A pinwheel I found in a chest.",
    //},
    //
//];

// ----------------------------------------------------------------------------------

quests = [
    
    { name: "bitty",
    portrait : spr_npc_bitty_port,
    quest_started : false,
    quest_done : false,
    quest_started_msg: "Bitty said something about wanting to be tall.",
    quest_done_msg: "",
    },
    
        { name: "bonnie",
    portrait : spr_npc_bitty_port,
    quest_started : false,
    quest_done : false,
    quest_started_msg: "Bonnie wants me to find her towel.",
    quest_done_msg: "",
    },
    
    { name : "camilla",
        portrait : spr_npc_blank,
        quest_started : false,
        quest_done : false,
    quest_started_msg: "Camilla is looking for her dots. I found __ so far.",
    quest_done_msg: "",

    }, 
    
        {name: "daisy",
    portrait : spr_npc_blank,
    quest_started : false,
    quest_done : false,
    quest_started_msg: "I found Daisy crying behind the barn...",
    quest_done_msg: "",
    }, 
    
    {name: "dominik",
    portrait : spr_npc_blank,
    quest_started : false,
    quest_done : false,
    quest_started_msg: "Dominik is guarding the entrance to the ruins.",
    quest_done_msg: "",
    }, 
        
    { name: "milo",
        portrait : spr_npc_milo_port_happy,
        quest_started : false,
        quest_done : false,
    quest_started_msg: "Milo wants me to check up on Daisy. She's probably hiding somewhere.",
    quest_done_msg: "I talked to Daisy. She's fine now.",
    },
    
    { name: "leo",
        portrait : spr_npc_blank,
        quest_started : false,
        quest_done : false,
    quest_started_msg: "Leo lost her glasses. I wonder where they could be?",
    quest_done_msg: "",
    },
    
        { name: "leonard",
        portrait : spr_npc_blank,
        quest_started : false,
        quest_done : false,
    quest_started_msg: "I have no idea what leonard's deal is.",
    quest_done_msg: "",
    },
    
    { name: "henrietta",
        portrait : spr_npc_blank,
        quest_started : false,
        quest_done : false,
    quest_started_msg: "Henrietta wants to leave...",
    quest_done_msg: "",
    },
    
    { name: "kiwi", 
        portrait : spr_npc_blank,
        quest_started : false,
        quest_done : false,
    quest_started_msg: "Kiwi looked sad... I wonder why...",
    quest_done_msg: "",
    },
    
    { name: "noodle",
        portrait : spr_npc_noodle_port,
        quest_started : false,
        quest_done : false,
    quest_started_msg: "Noodle won't let me go to the lake until she gets something to eat.",
    quest_done_msg: "I gave Noodle the peach I found. Not very fun to run errands, but I saw a cool part of the woods!",
    },
    
        { name: "olive",
        portrait : spr_npc_blank,
        quest_started : false,
        quest_done : false,
    quest_started_msg: "Olive said the fence was broken somewhere? I should check that out...",
    quest_done_msg: "",
    },
    
    { name: "pepper",
        portrait : spr_pepper_port_side,
        quest_started : false,
        quest_done : false,
    quest_started_msg: "Pepper only wants to leave the hill if she can see the wind.",
    quest_done_msg: "",
    },
    
    { name: "sophie",
        portrait : spr_sophie_port_happy,
        quest_started : false,
        quest_done : false,
    quest_started_msg: "Sophie is trying to grow a sunflower.",
    quest_done_msg: "",
    },
    
        { name: "ziggy",
        portrait : spr_sophie_port_happy,
        quest_started : false,
        quest_done : false,
    quest_started_msg: "Ziggy looks so happy rolling in mud...",
    quest_done_msg: "",
    }
    ];