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
    "\ ": c_black,
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
    "Pepper": #353738,
    
    "Camilla": #713970,
    "Henrietta": #353738,
    "Leo": #353738,

}

txt_sign = [{
        name: "",
        portrait: spr_npc_blank,
        msg: "Ruins! Keep out!"
    }];

txt_sign_peak = [{
        name: "",
        portrait: spr_npc_blank,
        msg: "Mt. Peekpeak"
    }];

dg_npc_new = "Hello world!";

dg_npc = [
    // 0
    [{
        name: "Follower",
        portrait: spr_npc_blank,
        msg: "You want me to follow you? Okay!"
    }],
    // 1
    [{
        name: "Follower",
        portrait: spr_npc_blank,
        msg: "I'll stop following you!"
    }]
];


npc_dialogue1 = [
    // first
    [{
        name: "NPC",
        portrait: spr_npc_blank,
        msg: "This is a test message! 2"
    }],
    // second
    [{
        name: "NPC",
        portrait: spr_npc_blank,
        msg: "This is a second test message! 2"
    }]
];

// --------------------------------------------------------------

// --------- MAMA -------------------------------------------

dg_mama = [
    // first
    [{
        name: "Mama", 
        portrait: spr_npc_blank,
        msg: "Zzzz..."
    }]
];

// --------- HENRIETTA -----------------------------------------------------

dg_henrietta = [
    // first 0
    [{
        name: "Henrietta",
        portrait: spr_npc_blank,
        msg: "Leave me alone." 
        }],
    // second 1
    [{
        name: "Henrietta",
        portrait: spr_npc_blank,
        msg: "I fucking hate this game."
    }]
];



// ------------ CAMILLA ----------------------------------

dg_camilla = [
    // first 0
    [{
        name: "Camilla",
        portrait: spr_npc_blank,
        msg: "Oh! Careful, please don't step on me!"
    }],
    // second 1
    [{
        name: "Camilla",
        portrait: spr_npc_blank,
        msg: "Say..."
    }
    ,
    { 
        name: "Camilla",
        portrait: spr_npc_blank,
        msg: "Would you do me a favour?"
    }]
];

// ------------ LEO ----------------------------------

dg_leo = [
    // first 0
    [{
        name: "Leo",
        portrait: spr_npc_blank,
        msg: "Oh no oh no oh no..."
    }],
    // second 1
    [{
        name: "Leo",
        portrait: spr_npc_blank,
        msg: "I lost my glasses..."
    }
    ,
    { 
        name: "Leo",
        portrait: spr_npc_blank,
        msg: "Oh no..."
    }]
];

// ------------ SIBLINGS ----------------------------------

// ------------------ ziggy -----------------------------
dg_ziggy = [
    // first
    [{
        name: "Ziggy",
        portrait: spr_npc_happy,
        msg: "WHEEEEEE"
    }],
    // second
    [{
        name: "Ziggy",
        portrait: spr_npc_happy,
        msg: "W H E E E E E E"
    },
    {
        name: "You",
        portrait: spr_player_port,
        msg: "(He seems to have fun...)"
    }]
];

// ------------------ dominik -----------------------------

dg_dominik = [
    [{
        name: "Dominik",
        portrait: spr_npc_blank,
        msg: "I'm making sure nobody goes into the woods."   
    }],
    [{ 
        name: "Dominik",
        portrait: spr_npc_blank,
        msg: "It's dangerous in there."  
    }]
]


// ------------------ pepper -----------------------------

dg_pepper = [
    [{
        name: "Pepper",
        msg: "*sigh*",
                portrait: spr_npc_blank,   
    }],
    [{ 
        name: "You",
        msg: "I don't think she's noticing me..."  ,
        portrait: spr_player_port,
    }]
]

// ------------------ sophie -----------------------------

dg_sophie = [
    [{
        name: "Sophie",
        msg: "Careful please!", 
        portrait: spr_npc_blank,  
    },
    {
        name: "Sophie",
        msg: "I'm growing a sunflower here.",
                portrait: spr_npc_blank,
    }],
    [{ 
        name: "Sophie",
        msg: "... it's not going very well, to be honest.",
        portrait: spr_npc_blank, 
    }]
]

// ------------------ leonard -----------------------------

dg_leonard = [
    [{
        name: "Leonard",
        msg: "Don't bother me.",
                portrait: spr_npc_blank,    
    }],
    [{ 
        name: "Leonard",
        msg: "I'm very smart.",
                portrait: spr_npc_blank, 
    }]
]

// ------------ nooodle ----------------

dg_noodle = [
    [{
        name: "Noodle",
        msg: "I'm not letting you trough.",
                portrait: spr_npc_blank,    
    }],
    [{ 
        name: "Noodle",
        msg: "Nuh-uh.",
                portrait: spr_npc_blank,   
    }]
]

// ----------------------- Milo ----------------------
dg_milo = [
    // first talk 0
    [
    {
        name: "Milo",
        msg: "Ugh...",
                portrait: spr_npc_sad, 
    },
    {
        name: "You",
        msg: "Hey Milo, what's up?",
                portrait: spr_player_port, 
    },    
    {
        name: "Milo",
        msg: "I had a fight with Daisy.",
                portrait: spr_npc_sad, 
    },
    {
        name: "You",
        msg: "Oh no!",
        portrait: spr_player_port, 
    },
        {
        name: "Milo",
        msg: "Yeah, and now she's run off and I can't find her...",
        portrait: spr_npc_sad, 
    },
            {
        name: "Milo",
        msg: "I bet she's hiding somewhere...",
        portrait: spr_npc_sad, 
    },
    {
        name: "Milo",
        msg: "If you see her, can you tell her I'm sorry?",
        portrait: spr_npc_sad, 
    },
    {
        name: "You",
        msg: "Yeah, sure!",
                portrait: spr_player_port, 
    },
        {
        name: "Milo",
        msg: "Thanks.",
            portrait: spr_npc_happy, 
    }],
    // talk again 1
    [{
        name: "Milo",
        msg: "Can you go check on Daisy for me?",
        portrait: spr_npc_sad
    }],
    // after quest 2
    [{
        name: "Milo",
        msg: "She's okay? Thank you for checking.",
        portrait: spr_npc_happy, 
    }]
];


// ----------------------- Daisy ----------------------

dg_daisy = [
    // first 0
    [{
        name: "Daisy",
        msg: "*sniff sniff*",
        portrait: spr_npc_sad,  
    },
    {
        name: "Daisy",
        msg: "...",
        portrait: spr_npc_sad, 
    },
    {
        name: "You",
        msg: "(She's crying...)",
        portrait: spr_player_port, 
    }],
    // second 1
    [{
        name: "You",
        msg: "(She's not looking at me...)",
        portrait: spr_player_port, 
        }
    ],
    // quest started 2
    [{
        name: "Daisy",
        msg: "*sniff sniff*",
        portrait: spr_npc_sad, 
    },
        {
        name: "Daisy",
        msg: "Oh? Hey you. *snffff*",
        portrait: spr_npc_sad, 
    },
        {
        name: "Daisy",
        msg: "Are you checking up on me?\nThat's so nice of you.",
               portrait: spr_npc_happy, 
    },
        {
        name: "Daisy",
        msg: "Thank you! I feel better already.",
               portrait: spr_npc_happy, 
    }],
    // quest finished 3
    [{
        name: "Daisy",
        msg: "Thank you! I feel better already.",
               portrait: spr_npc_happy, 
    }]
]

// ------------------- BITTY ----------------------------------------------

dg_bitty = [
    // first
    [{
        name: "Bitty",
        msg: "Everyone says I'm tiny...",
        portrait: spr_npc_blank,  
    },
    {
        name: "Bitty",
        msg: "But I'm tall, right?",
        portrait: spr_npc_blank,  
    }],
        [{
        name: "Bitty",
        msg: "I want to be...",
        portrait: spr_npc_blank,  
    },
    {
        name: "Bitty",
        msg: "... THE TALLEST!",
        portrait: spr_npc_blank,  
    }]
];

// ------------- OLIVE -------------------------

dg_olive = [
        [{
        name: "Olive",
        msg: "Hi! I'm Olive.",
        portrait: spr_npc_blank,  
    }],
    // 1
    [{
        name: "Olive",
        msg: "The fence behind the tree is broken...",
        portrait: spr_npc_blank,  
    },
    {
        name: "Olive",
        msg: "I'm worried...",
        portrait: spr_npc_blank,  
    }],
]

// ---------- kIWI ---------------

dg_kiwi = [
        [{
        name: "Kiwi",
        msg: "ü",
        portrait: spr_npc_blank,  
    }],
    // 1 
    [{
        name: "Kiwi",
        msg: "î",
        portrait: spr_npc_blank,  
    },
],
]
