// functions and variables are GLOBAL and can be read by any object!!

function create_dialogue(_messages){

    if (instance_exists(obj_dialogue)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialogue);
    //_inst.color = _color;
    _inst.messages = _messages;
    _inst.current_message = 0; // is set to -1 in obj
    
}

// globals

char_colors = {
    "You": c_aqua,
    "NPC": c_black,
    "Sibling": c_gray,
    "Mama": c_gray,
    
    "Olive" : #713970,
    "Bitty": #713970,
    "Milo": #713970,
    "Daisy": #713970,
    "Kiwi": #353738,
    "Leonard": #353738,
    "Noodle": #353738,
    
    "Camilla": #713970,
    "Henrietta": #353738,
    "Leo": #353738,

}

dg_npc = [
    // 0
    [{
        name: "Follower",
        msg: "You want me to follow you? Okay!"
    }],
    // 1
    [{
        name: "Follower",
        msg: "I'll stop following you!"
    }]
];

npc_dialogue = [
    // first
    [{
        name: "NPC",
        msg: "WHEEEEEE"
    }],
    // second
    [{
        name: "NPC",
        msg: "W H E E E E E E"
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

// --------- MAMA -------------------------------------------

dg_mama = [
    // first
    [{
        name: "Mama",
        msg: "Zzzz..."
    }]
];

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



// ------------ CAMILLA ----------------------------------

dg_camilla = [
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

// ------------ LEO ----------------------------------

dg_leo = [
    // first 0
    [{
        name: "Leo",
        msg: "Oh no oh no oh no..."
    }],
    // second 1
    [{
        name: "Leo",
        msg: "I lost my glasses..."
    }
    ,
    { 
        name: "Leo",
        msg: "Oh no..."
    }]
];

// ------------ SIBLINGS ----------------------------------

// ------------------ leonard -----------------------------

dg_leonard = [
    [{
        name: "Leonard",
        msg: "Hey you."   
    }],
    [{ 
        name: "Leonard",
        msg: "Don't bother me."  
    }]
]

// ------------ nooodle ----------------

dg_noodle = [
    [{
        name: "Noodle",
        msg: "I'm not letting you trough."   
    }],
    [{ 
        name: "Noodle",
        msg: "Nuh-uh."  
    }]
]

// ----------------------- Milo ----------------------
dg_milo = [
    // first talk 0
    [{
        name: "Milo",
        msg: "I had a fight with Daisy."
    },
        {
        name: "Milo",
        msg: "I saw her run off toward the top right..."
    },
        {
        name: "Milo",
        msg: "Can you go check on her for me?"
    }],
    // talk again 1
    [{
        name: "Milo",
        msg: "Can you go check on her for me?"
    }],
    // after quest 2
    [{
        name: "Milo",
        msg: "She's okay? Thank you for checking."
    }]
];


// ----------------------- Daisy ----------------------

dg_daisy = [
    // first 0
    [{
        name: "Daisy",
        msg: "*sniff sniff*"
    },
    {
        name: "Daisy",
        msg: "..."
    },
    {
        name: "You",
        msg: "(She's crying...)"
    }],
    // second 1
    [{
        name: "You",
        msg: "(She's not looking at me...)"
        }
    ],
    // quest started 2
    [{
        name: "Daisy",
        msg: "*sniff sniff*"
    },
        {
        name: "Daisy",
        msg: "Oh? Hey you. *snffff*"
    },
        {
        name: "Daisy",
        msg: "Are you checking up on me?\nThat's so nice of you."
    },
        {
        name: "Daisy",
        msg: "Thank you! I feel better already."
    }],
    // quest finished 3
    [{
        name: "Daisy",
        msg: "Thank you! I feel better already."
    }]
]

// ------------------- BITTY ----------------------------------------------

dg_bitty = [
    // first
    [{
        name: "Bitty",
        msg: "Everyone says I'm tiny.."
    },
    {
        name: "Bitty",
        msg: "But I'm tall, right?"
    }],
     //second
    [{
        name: "Bitty",
        msg: "... right?"
    }]
];

// ------------- OLIVE -------------------------

dg_olive = [
        [{
        name: "Olive",
        msg: "Hi! I'm Olive."
    }],
    // 1
            [{
        name: "Olive",
        msg: "The fence behind the tree is broken..."
    },
    {
        name: "Olive",
        msg: "I'm worried..."
    }],
]

// ---------- kIWI ---------------

dg_kiwi = [
        [{
        name: "Kiwi",
        msg: "ü"
    }],
    // 1 
    [{
        name: "Kiwi",
        msg: "î"
    },
],
]
