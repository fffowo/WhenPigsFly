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
    "Sign": c_black,
    "NPC": c_black,
    "Follower": c_black,
    "Sibling": c_gray,
    "Mama": c_gray,
    
    "Olive" : #658ca1,
    "Bitty": #c58d99,
    "Milo": #8c7369,
    "Daisy": #8c7369,
    "Kiwi": #545959,
    "Leonard": #78a158,
    "Noodle": #694a87,
    "Pepper": #555793,
    "Dominik": #5f699c,
    "Sophie": #754c60,
    "Ziggy": #865161,
    "Bonnie": #865161,
    
    "Camilla": #713970,
    "Henrietta": #353738,
    "Leo": #353738,

}

txt_sign = [{
        name: "Sign",
        portrait: spr_npc_blank,
        msg: "Ruins! Keep out!"
    }];

txt_sign_peak = [{
        name: "Sign",
        portrait: spr_npc_blank,
        msg: "Mt. Peekpeak lorem ipsum dolor sit amet, the quick brown fox jumps over the lazy dog. Lorem ipsum lorem ipsum."
    }];


dg_npc_new = "Hello world!";

dg_npc = [
    // 0
    [{
        name: "Follower",
        portrait: spr_npc_blank,
        msg: "You want me to follow you? Okay!",
        font: Font_pixel
    }],
    // 1
    [{
        name: "Follower",
        portrait: spr_npc_blank,
        msg: "I'll stop following you!",
        font: Font_pixel
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
        portrait: spr_npc_camilla_port,
        msg: "Oh! Careful, please don't step on me!"
    }],
    // second 1
    [{
        name: "Camilla",
        portrait: spr_npc_camilla_port,
        msg: "Say..."
    }
    ,
    { 
        name: "Camilla",
        portrait: spr_npc_camilla_port,
        msg: "Would you do me a favour?"
    }]
];

// ------------ LEO ----------------------------------

dg_leo = [
    // first 0
    [{
        name: "Leo",
        portrait: spr_npc_leo_port_sad,
        msg: "Oh no oh no oh no..."
    }],
    // second 1
    [{
        name: "Leo",
        portrait: spr_npc_leo_port_sad,
        msg: "I lost my glasses..."
    }
    ,
    { 
        name: "Leo",
        portrait: spr_npc_leo_port_sad,
        msg: "Oh no..."
    }]
];

// ------------ SIBLINGS ----------------------------------

// ------------------ ziggy -----------------------------
dg_ziggy = [
    // first
    [{
        name: "Ziggy",
        portrait: spr_npc1_port,
        msg: "WHEEEEEE"
    }],
    // second
    [{
        name: "Ziggy",
        portrait: spr_npc1_port,
        msg: "W H E E E E E E"
    },
    {
        name: "You",
        portrait: spr_player_port_question,
        msg: "(He seems to have fun...)"
    }]
];

// ------------------ dominik -----------------------------

dg_dominik = [
    [{
        name: "Dominik",
        portrait: spr_npc_dominik_port,
        msg: "I'm making sure nobody goes into the woods."   
    }],
    [{ 
        name: "Dominik",
        portrait: spr_npc_dominik_port,
        msg: "It's dangerous in there."  
    }]
]


// ------------------ pepper -----------------------------

dg_pepper = [
    [{
        name: "Pepper",
        msg: "*sigh*",
        portrait: spr_pepper_port_side,   
    }],
    [{
        name: "Pepper",
        msg: "*siiiigh*",
        portrait: spr_pepper_port_side,   
    },
    {
        name: "You",
        msg: "I don't think she's noticing me..."  ,
        portrait: spr_player_port_question,
    }]
]

// ------------------ sophie -----------------------------

dg_sophie = [
    // 0 first
    [{
        name: "Sophie",
        msg: "Careful please!", 
        portrait: spr_sophie_port_happy,  
    },
    {
        name: "Sophie",
        msg: "I'm growing a sunflower here.", 
        portrait: spr_sophie_port_happy,
    }],
    // 1 has interacted
    [{ 
        name: "Sophie",
        msg: "... it's not going very well, to be honest.",
        portrait: spr_npc_blank, // TODO 
    }],
    // 2 QUEST START TRUE
        [{ 
        name: "You",
        msg: "Maybe you could try watering it?",
        portrait: spr_player_port_question, 
    },
    { 
        name: "Sophie",
        msg: "I'd love to, smartiepants.",
        portrait: spr_npc_blank, // TODO 
    },
        { 
        name: "You",
        msg: "But?",
        portrait: spr_player_port_question,
    },
        { 
        name: "Sophie",
        msg: "I don't have a watering can.",
        portrait: spr_npc_blank, // TODO 
    },
            { 
        name: "You",
        msg: "Oh.",
        portrait: spr_player_port_shocked,
    },
                { 
        name: "You",
        msg: "Yeah I can see how that would be a problem.",
        portrait: spr_player_port_sad,
    },
    ]
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
    },
    { 
        name: "You",
        msg: "(Alright, sheesh...)",
        portrait: spr_player_port_question, 
    }]
]

// ------------ nooodle ----------------

dg_noodle = [
    [{
        name: "Noodle",
        msg: "I'm not letting you trough.",
        portrait: spr_npc_noodle_port,    
    },
    {
        name: "You",
        msg: "What? Why?!",
        portrait: spr_player_port_shocked,    
    },
    {
        name: "Noodle",
        msg: "Because I'm hungry.",
        portrait: spr_npc_noodle_port,    
    },
    {
        name: "You",
        msg: "What kind of a reason is that?",
        portrait: spr_player_port_question,    
    },
    {
        name: "Noodle",
        msg: "Just bring me something to eat. Something sweet.",
        portrait: spr_npc_noodle_port,    
    },
        {
        name: "You",
        msg: "Get your own food, Noodle!!",
        portrait: spr_player_port_sad,    
    }],
        // talk again 1
    [{
        name: "Noodle",
        msg: "Find something yet?",
        portrait: spr_npc_noodle_port,   
    },
    {
        name: "You",
        msg: "No...",
        portrait: spr_player_port_sad,    
    }],

    // end quest 2
    [{
        name: "Noodle",
        msg: "A peach! Oooh that's exactly what I wanted.",
        portrait: spr_npc_noodle_port,  // TODO 
    },
    {
        name: "Noodle",
        msg: "OM NOM NOM NOM",
        portrait: spr_npc_noodle_port_eating,  // TODO 
    },
    {
        name: "Noodle",
        msg: "Aaaaah.",
        portrait: spr_npc_noodle_port,  // TODO 
    },
     {
        name: "Noodle",
        msg: "Thank you! I guess you can go through now.",
        portrait: spr_npc_noodle_port,  // TODO 
    }],
        // after quest 3
    [{
        name: "Noodle",
        msg: "Thanks for the peach!",
        portrait: spr_npc_noodle_port, // TODO
    }],
]

// ----------------------- Milo ----------------------
dg_milo = [
    // first talk 0
    [
    {
        name: "Milo",
        msg: "Ugh...",
        portrait: spr_npc_milo_port_sad, 
    },
    {
        name: "You",
        msg: "Hey Milo, what are you doing skulking all the way out here ?",
        portrait: spr_player_port_question, 
    },    
    {
        name: "Milo",
        msg: "I had a fight with Daisy.",
        portrait: spr_npc_milo_port_sad, 
    },
    {
        name: "You",
        msg: "Oh no!",
        portrait: spr_player_port_sad, 
    },
        {
        name: "Milo",
        msg: "Yeah, and now she's run off and I can't find her...",
        portrait: spr_npc_milo_port_sad, 
    },
            {
        name: "Milo",
        msg: "I bet she's hiding somewhere...",
        portrait: spr_npc_milo_port_sad, 
    },
    {
        name: "Milo",
        msg: "If you see her, can you tell her I'm sorry?",
        portrait: spr_npc_milo_port_sad, 
    },
    {
        name: "You",
        msg: "Yeah, sure!",
        portrait: spr_player_port, 
    },
        {
        name: "Milo",
        msg: "Thanks.",
        portrait: spr_npc_milo_port_happy, 
    }],
    // talk again 1
    [{
        name: "Milo",
        msg: "Can you go check on Daisy for me?",
        portrait: spr_npc_milo_port_sad
    }],
    // after quest 2
    [{
        name: "Milo",
        msg: "She's okay? Thank you for checking.",
        portrait: spr_npc_milo_port_happy, 
    }]
];


// ----------------------- Daisy ----------------------

dg_daisy = [
    // first 0
    [{
        name: "Daisy",
        msg: "*sniff sniff*",
        portrait: spr_daisy_port_sad,  
    },
    {
        name: "Daisy",
        msg: "...",
        portrait: spr_daisy_port_sad, 
    },
    {
        name: "You",
        msg: "(She's crying...)",
        portrait: spr_player_port_sad, 
    }],
    // second 1
    [{
        name: "You",
        msg: "(She's not looking at me...)",
        portrait: spr_player_port_sad, 
        }
    ],
    // quest started 2
    [{
        name: "Daisy",
        msg: "*sniff sniff*",
        portrait: spr_daisy_port_sad, 
    },
        {
        name: "Daisy",
        msg: "Oh? Hey you. *snffff*",
        portrait: spr_daisy_port_sad, 
    },
        {
        name: "Daisy",
        msg: "Are you checking up on me?\nThat's so nice of you.",
        portrait: spr_daisy_port_sad, 
    },
        {
        name: "Daisy",
        msg: "Thank you! I feel better already.",
        portrait: spr_daisy_port_happy, 
    }],
    // quest finished 3
    [{
        name: "Daisy",
        msg: "Thank you! I feel better already.",
        portrait: spr_daisy_port_happy, 
    }]
]

// ------------------- BITTY ----------------------------------------------

dg_bitty = [
    // first
    [{
        name: "Bitty",
        msg: "Everyone says I'm the runt of the litter and that's why I'm tiny...",
        portrait: spr_npc_bitty_port,  
    },
    {
        name: "Bitty",
        msg: "But I'm tall, right?",
        portrait: spr_npc_bitty_port,  
    }],
        [{
        name: "Bitty",
        msg: "I want to be...",
        portrait: spr_npc_bitty_port,  
    },
    {
        name: "Bitty",
        msg: "... THE TALLEST!",
        portrait: spr_npc_bitty_port,  
    }]
];

// ------------- OLIVE -------------------------

dg_olive = [

    [{
        name: "Olive",
        msg: "The fence behind the tree is broken...",
        portrait: spr_npc_olive_port,  
    },
    {
        name: "Olive",
        msg: "I'm worried...",
        portrait: spr_npc_olive_port,  
    }],
        [{
        name: "Olive",
        msg: "What if a tiger comes in?!",
        portrait: spr_npc_olive_port_shocked,  
    },
    {
        name: "You",
        msg: "Is that possible?!",
        portrait: spr_player_port_shocked,  
    },
    {
        name: "Olive",
        msg: "I DON'T KNOW!",
        portrait: spr_npc_olive_port_shocked,  
    },
    {
        name: "You",
        msg: "Aaaaah!",
        portrait: spr_player_port_shocked,  
    },
        {
        name: "Olive",
        msg: "Aaaah!",
        portrait: spr_npc_olive_port_shocked,  
    },],
]

// ---------- kIWI ---------------

//dg_kiwi = [
        //[{
        //name: "Kiwi",
        //msg: "ü",
        //portrait: spr_npc_kiwi_port,  
    //}],
    //// 1 
    //[{
        //name: "Kiwi",
        //msg: "î",
        //portrait: spr_npc_kiwi_port_sad,  
    //},
//],
//]

dg_kiwi = [
        [{
        name: "Kiwi",
        msg: "( ; w ;)",
        portrait: spr_npc_kiwi_port,  
        font: Font_kiwi
    }],
    // 1 
    [{
        name: "Kiwi",
        msg: "( ; w;`) ?",
        portrait: spr_npc_kiwi_port_sad,  
        font: Font_kiwi
    },
],
]

// ---------- BONNIE ---------------

dg_bonnie = [
        [{
        name: "Bonnie",
        msg: "Aaah!",
        portrait: spr_npc_blank,  
    },
    {
        name: "Bonnie",
        msg: "Help!",
        portrait: spr_npc_blank,  
    },
        {
        name: "You",
        msg: "What's wrong? Are you drowning?!",
        portrait: spr_player_port_shocked, 
    },
        {
        name: "Bonnie",
        msg: "What?!",
        portrait: spr_npc_blank,  
    },
            {
        name: "Bonnie",
        msg: "No, silly.",
        portrait: spr_npc_blank,  
    },
                {
        name: "Bonnie",
        msg: "But the wind blew my towel away and now I can't get out of the water.",
        portrait: spr_npc_blank,  
    },
            {
        name: "You",
        msg: "You... can't get out of the water because you don't have a towel?",
        portrait: spr_player_port_question, 
    },
                    {
        name: "Bonnie",
        msg: "Yeah! Because it'll be cold!",
        portrait: spr_npc_blank,  
    },
    {
        name: "Bonnie",
        msg: "Can you please find my towel for me?",
        portrait: spr_npc_blank,  
    },
    {
        name: "You",
        msg: "Uh... yeah, sure.",
        portrait: spr_player_port_question, 
    },
    
    ],
    // 1 
    [{
        name: "Bonnie",
        msg: "Can you please find my towel for me?",
        portrait: spr_npc_blank,  
    },
],
]