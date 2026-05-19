// functions and variables are GLOBAL and can be read by any object!!

function create_dialogue(_messages){

    if (instance_exists(obj_dialogue)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialogue);
    _inst.messages = _messages;
    _inst.current_message = 0; // is set to -1 in obj
    
}

// globals

char_colors = {
    "You": c_aqua,
    "Henrietta": #353738,
    "NPC": c_black,
    "Sibling": c_lime,
    "Camilla": #713970
}

npc_dialogue = [
    // first
    [{
        name: "NPC",
        msg: "This is a test message!"
    }],
    // second
    [{
        name: "NPC",
        msg: "This is a second test message!"
    }]
];

npc_dialogue1 = [
    // first
    [{
        name: "NPC",
        msg: "This is a test message! 2"
    }],
    // second
    [{
        name: "NPC",
        msg: "This is a second test message! 2"
    }]
];

// --------------------------------------------------------------

// --------- HENRIETTA -----------------------------------------------------

dg_henrietta = [
    // first 0
    [{
        name: "Henrietta",
        msg: "Leave me alone." 
        }],
    // second 1
    [{
        name: "Henrietta",
        msg: "I fucking hate this game."
    }]
];


// ----------------------- NPC 2 ----------------------
dg_sib2 = [
    // first talk 0
    [{
        name: "Sibling",
        msg: "I had a fight with our sibling."
    },
        {
        name: "Sibling",
        msg: "I saw them run off toward the top right..."
    },
        {
        name: "Sibling",
        msg: "Can you go check on them for me?"
    }],
    // talk again 1
    [{
        name: "Sibling",
        msg: "Can you go check on them for me?"
    }],
    // after quest 2
    [{
        name: "Sibling",
        msg: "They're okay? Thank you for checking."
    }]
];

// ----------------------- NPC 3 ----------------------

dg_sib3 = [
    // first 0
    [{
        name: "Sibling",
        msg: "*sniff sniff*"
    },
    {
        name: "Sibling",
        msg: "..."
    },
    {
        name: "You",
        msg: "(They're crying...)"
    }],
    // second 1
    [{
        name: "You",
        msg: "(They're  not looking at me...)"
        }
    ],
    // quest started 2
    [{
        name: "Sibling",
        msg: "*sniff sniff*"
    },
        {
        name: "Sibling",
        msg: "Oh? Hey you. *snffff*"
    },
        {
        name: "Sibling",
        msg: "Are you checking up on me? That's so nice of you."
    },
        {
        name: "Sibling",
        msg: "Thank you! I feel better already."
    }],
    // quest finished 3
    [{
        name: "Sibling",
        msg: "Thank you! I feel better already."
    }]
]
// ------------ CAMILLA ----------------------------------

dg_cam = [
    // first 0
    [{
        name: "Camilla",
        msg: "Oh! Careful, please don't step on me!"
    }],
    // second 1
    [{
        name: "Camilla",
        msg: "Say..."
    }
    ,
    { 
        name: "Camilla",
        msg: "Would you do me a favour?"
    }]
];

