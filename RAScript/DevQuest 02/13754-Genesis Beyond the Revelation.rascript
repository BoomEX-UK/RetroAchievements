// Genesis: Beyond the Revelation
// #ID = 13754

exp  = bcd(word_be(0x010934)) // level is per 100 EXP
hp   = bcd(word_be(0x010936))
gold = bcd(word_be(0x010938))

class= byte(0x01092e)
status= byte(0x01092f)

stats = {
    "STR" : bcd(byte(0x010930)),
    "DUR" : bcd(byte(0x010931)),
    "DEX" : bcd(byte(0x010932)),
    "IQ"  : bcd(byte(0x010933))
}

secrets = {
    "secret_door"   : bit0(0x010994),
    "palm_tree_hp"  : bit1(0x010994),
    "pyramid_gold" : bit2(0x010994)
}

sellable_item_first = 0x010960
sellable_item_last = 0x01096f

equip_armor = byte(0x01093e)
equip_weapons = byte(0x01093f)
equip_weapon1 = high4(0x01093f)
equip_weapon2 = low4(0x01093f)

town = high4(0x01094a)
ruins_item = 0x01094c

play_timer = bcd(dword_be(0x01093a))
function save_protect() => prev(play_timer) > 0

// ----------------------------------------------------------------------------
// -- Changed
// ----------------------------------------------------------------------------

gold_achs = {
    1: {
        "id"     : 70415,
        "title"  : "Chump Change",
        "gold"   : 1500,
        "points" : 5
    },
    2: {
        "id"     : 70416,
        "title"  : "Earning Potential",
        "gold"   : 3000,
        "points" : 10
    },
    3: {
        "id"     : 70417,
        "title"  : "Modest Savings",
        "gold"   : 6000,
        "points" : 10
    },
    4: {
        "id"     : 70418,
        "title"  : "Full Purse",
        "gold"   : 9999,
        "points" : 25
    }
}

for ach in gold_achs {
    base = gold_achs[ach]
    achievement(
        title = base["title"],
        points = base["points"],
        description = "Have "+base["gold"]+" Gold",
        id = base["id"],
        trigger = 
            save_protect() &&
            prev(gold) < base["gold"] &&
            gold >= base["gold"]
    )    
}

level_achs = {
    1: {
        "id"     : 70377,
        "title"  : "100 Merchants",
        "points" : 10
    },
    2: {
        "id"     : 70378,
        "title"  : "100 Mohicans",
        "points" : 10
    },
    3: {
        "id"     : 70379,
        "title"  : "100 Combat Suits",
        "points" : 10
    },
    4: {
        "id"     : 70380,
        "title"  : "100 Powered Armors",
        "points" : 10
    },
    5: {
        "id"     : 70381,
        "title"  : "50 Destroid Armors",
        "points" : 10
    },
    6: {
        "id"     : 70382,
        "title"  : "100 Battle Tanks",
        "points" : 10
    },
    7: {
        "id"     : 70383,
        "title"  : "35 Siloam-Whites",
        "points" : 10
    },
    8: {
        "id"     : 70384,
        "title"  : "40 Siloam-Reds",
        "points" : 10
    },
    9: {
        "id"     : 70385,
        "title"  : "45 Siloam-Blacks",
        "points" : 10
    },
    10: {
        "id"     : 70386,
        "title"  : "50 Siloam-Blues",
        "points" : 10
    },
    15: {
        "id"     : 70410,
        "title"  : "Stretch at the Limits",
        "points" : 25
    },
    20: {
        "id"     : 70411,
        "title"  : "Grinding Fanatic",
        "points" : 25
    },
    25: {
        "id"     : 70412,
        "title"  : "Plucked from the Realm of Madmen",
        "points" : 25
    }

}

for ach in level_achs {
    base = level_achs[ach]
    achievement(
        title = base["title"],
        points = base["points"],
        description = "Reach Level " + ach,
        id = base["id"],
        trigger = 
            save_protect() &&
            prev(exp) > ((ach-1)*100) &&
            prev(exp) < (ach*100) &&
            exp >= (ach*100)
    )    
}

max_stats = {
    0: {
        "STR" : 50,
        "DUR" : 50,
        "DEX" : 75,
        "IQ"  : 25
    },
    1: {
        "STR" : 75,
        "DUR" : 50,
        "DEX" : 50,
        "IQ"  : 25
    },
    2: {
        "STR" : 25,
        "DUR" : 50,
        "DEX" : 50,
        "IQ"  : 75
    },
    3: {
        "STR" : 25,
        "DUR" : 25,
        "DEX" : 75,
        "IQ"  : 75
    },
    4: {
        "STR" : 99,
        "DUR" : 99,
        "DEX" : 99,
        "IQ"  : 99
    }
}

stats_ach = {
    0: {
        "id" : 70405,
        "title" : "Limits of a Knight",
        "tag" : "Max",
        "points": 10
    },
    1: {
        "id" : 70406,
        "title" : "Limits of a Ninja",
        "tag" : "Max",
        "points": 10
    },
    2: {
        "id" : 70407,
        "title" : "Limits of an Esper",
        "tag" : "Max",
        "points": 10
    },
    3: {
        "id" : 70408,
        "title" : "Limits of a Healer",
        "tag" : "Max",
        "points": 10
    },
    4: {
        "id" : 70409,
        "title" : "Beyond the Limits of Man",
        "tag" : "Maximum Possible",
        "points": 25
    },
}

for ach in stats_ach {
    base = stats_ach[ach]
    achievement(
        title = base["title"],
        points = base["points"],
        description = "Raise all your Stats to " + base["tag"],
        id = base["id"],
        trigger = 
            save_protect() &&
            class == ach &&
            __ornext(any_of(stats,s=>stats[s] > prev(stats[s]))) &&
            all_of(stats,s=>stats[s]==max_stats[ach][s])
    )    
}

hp_achs = {
    0 : {
        "id" : 70419,
        "title" : "I",
        "hp" : 500,
        "points" : 5
    },
    1 : {
        "id" : 70420,
        "title" : "II",
        "hp" : 1000,
        "points" : 10
    },
    2 : {
        "id" : 70421,
        "title" : "III",
        "hp" : 2000,
        "points" : 10
    },
    3 : {
        "id" : 70422,
        "title" : "IV",
        "hp" : 3000,
        "points" : 10
    },
    4 : {
        "id" : 70423,
        "title" : "V",
        "hp" : 4500,
        "points" : 10
    },
    5 : {
        "id" : 70424,
        "title" : "VI",
        "hp" : 6000,
        "points" : 10
    },
    6 : {
        "id" : 70425,
        "title" : "VII",
        "hp" : 8000,
        "points" : 10
    },
    7 : {
        "id" : 70426,
        "title" : "VIII",
        "hp" : 9999,
        "points" : 25
    },
}

for ach in hp_achs {
    base = hp_achs[ach]
    achievement(
        title = "Lifeline Credit " + base["title"] + " (" + base["hp"] + ")",
        points = base["points"],
        description = "Get your life to " + base["hp"] + " using normal means",
        id = base["id"],
        trigger = 
            save_protect() &&
            secrets["palm_tree_hp"] != 0 &&
            prev(hp) > base["hp"]-1000 &&
            prev(hp) <= base["hp"] &&
            hp >= base["hp"]
    )    
}

// lazy
ticket_any = 0
ticket_big = 1

sell_achs = {
    0 : {
        "id" : 70458,
        "title" : "Sell it Slight",
        "count" : 25,
        "points" : 5,
        "ticket" : ticket_any
    },
    1 : {
        "id" : 70459,
        "title" : "Quick Delivery",
        "count" : 50,
        "points" : 10,
        "ticket" : ticket_any
    },
    2 : {
        "id" : 70460,
        "title" : "Sell and Close",
        "count" : 75,
        "points" : 10,
        "ticket" : ticket_any
    },
    3 : {
        "id" : 70461,
        "title" : "Minor Warehouser",
        "count" : 100,
        "points" : 25,
        "ticket" : ticket_any
    },
    10 : {
        "id" : 70462,
        "title" : "Selling Green",
        "count" : 20,
        "points" : 5,
        "ticket" : ticket_big
    },
    11 : {
        "id" : 70463,
        "title" : "Shake that Move",
        "count" : 40,
        "points" : 10,
        "ticket" : ticket_big
    },
    12 : {
        "id" : 70464,
        "title" : "Goods Bringer",
        "count" : 60,
        "points" : 10,
        "ticket" : ticket_big
    },
    13 : {
        "id" : 70465,
        "title" : "Major Warehouser",
        "count" : 85,
        "points" : 25,
        "ticket" : ticket_big
    }
}

bticket = {
    0:0x010962,
    1:0x010963,
    2:0x010964,
    3:0x010965,
    4:0x01096b,
    5:0x01096c,
    6:0x01096d,
    7:0x01096e,
    8:0x01096f,
}

for ach in sell_achs {
    base = sell_achs[ach]
    ticket_tag = ""
    anycond = any_of(range(sellable_item_first,sellable_item_last),s=>byte(s)<prev(byte(s)))
    if (base["ticket"] == ticket_big) {
        ticket_tag = " big ticket"
        anycond = any_of(bticket,s=>byte(bticket[s])<prev(byte(bticket[s])))
    }
    achievement(
        title = base["title"],
        points = base["points"],
        description = "Sell " + base["count"] + ticket_tag + " items in one session",
        id = base["id"],
        trigger = 
            save_protect() &&
            measured(tally(base["count"],__ornext(anycond) &&
            gold > prev(gold))) &&
            never(play_timer == 0)
    ) 
}


equipt_achs = {
    0 : {
        "id" : 70392,
        "title" : "Loaded like a Merchant",
        "desc" : "this form",
        "points" : 5,
        "armor" : 0,
        "weap1" : 0,
        "weap2" : 0,
    },
    1 : {
        "id" : 70393,
        "title" : "Max of the Mohicans",
        "desc" : "the Protector",
        "points" : 5,
        "armor" : 1,
        "weap1" : 1,
        "weap2" : 1,
    },
    2 : {
        "id" : 70394,
        "title" : "Clone Combat",
        "desc" : "the Combat Suit",
        "points" : 10,
        "armor" : 2,
        "weap1" : 2,
        "weap2" : 2
    },
    3 : {
        "id" : 70395,
        "title" : "Maximum Power",
        "desc" : "the Powered Armor",
        "points" : 10,
        "armor" : 3,
        "weap1" : 3,
        "weap2" : 3,
    },
    4 : {
        "id" : 70396,
        "title" : "Turrefic Tanker",
        "desc" : "the Battle Tank",
        "points" : 10,
        "armor" : 4,
        "weap1" : 4,
        "weap2" : 4,
    },
    5 : {
        "id" : 70397,
        "title" : "Destroid Destroyer",
        "desc" : "the Destroid Armor",
        "points" : 25,
        "armor" : 5,
        "weap1" : 5,
        "weap2" : 5,
    },
    6 : {
        "id" : 70398,
        "title" : "Mechacidal Psycholizer",
        "desc" : "the Bio-Psycholizer",
        "points" : 25,
        "armor" : 6,
        "weap1" : 6,
        "weap2" : 7,
    }
}

for ach in equipt_achs {
    base = equipt_achs[ach]
    achievement(
        title = base["title"],
        points = base["points"],
        description = "Equip the best weapons available to " + base["desc"],
        id = base["id"],
        trigger = 
            save_protect() &&
            equip_armor == base["armor"] &&
            prev(equip_weapons) != equip_weapons &&
            equip_weapon1 == base["weap1"] &&
            equip_weapon2 == base["weap2"]
    )
}

secret_achs = {
    0 : {
        "id" : 70390,
        "title" : "It's a secret I",
        "desc" : "Discover the Doorway to the End",
        "flag" : secrets["secret_door"],
        "points" : 5
    },
    1 : {
        "id" : 70389,
        "title" : "It's a secret II",
        "desc" : "Be rewarded by the fruits of your efforts",
        "flag" : secrets["palm_tree_hp"],
        "points" : 10
    },
    2 : {
        "id" : 70391,
        "title" : "It's a secret III",
        "desc" : "Looking for a golden opportunity",
        "flag" : secrets["pyramid_gold"],
        "points" : 10
    }
}

for ach in secret_achs {
    base = secret_achs[ach]
    achievement(
        title = base["title"],
        points = base["points"],
        description = base["desc"],
        id = base["id"],
        trigger = 
            save_protect() &&
            base["flag"] > prev(base["flag"])
    )
}


// ----------------------------------------------------------------------------
// -- Single Achievements
// ----------------------------------------------------------------------------

achievement(
    title = "Man and Machine", points = 10,
    description = "Give up your humanity for the greater good",
    id = 70404,
    trigger = 
        save_protect() &&
        prev(class) != 0x04 &&
        class == 0x04
)

achievement(
    title = "Enemy's Legacy", points = 10,
    description = "Acquire the Dimension Distorter",
    id = 70388,
    trigger = 
        save_protect() &&
        bit7(ruins_item) > prev(bit7(ruins_item))
)

item_magnetron_blaster = byte(0x01097f)

achievement(
    title = "Enemy's Boon", points = 10,
    description = "Acquire the Magnetron Blaster",
    id = 70387,
    trigger = 
        save_protect() &&
        item_magnetron_blaster > prev(item_magnetron_blaster)
)

achievement(
    title = "Unexpected Pathway", points = 10,
    description = "Say a prayer for Jerusalem",
    id = 70413,
    trigger = 
        save_protect() &&
        prev(town) == 0x06 &&
        town == 0x08
)

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

emoji = "🌎"
coin_emoji = "🪙"
clock_emoji = "🕒"

rp_class = {
    0x00:"Knight",
    0x01:"Ninja",
    0x02:"Esper",
    0x03:"Healer",
    0x04:"Cyborg",
}

rp_armor = {
    0x00:"Cloth",
    0x01:"Protector",
    0x02:"Combat Suit",
    0x03:"Powered Armor",
    0x04:"Battle Tank",
    0x05:"Destroid Armor",
    0x06:"Bio-Psycholizer",
}

rp_weap1 = {
    0x00: ", Knife",
    0x01: ", Sword",
    0x02: ", Laser Blade",
    0x03: ", Power Crusher",
    0x04: ", Surge Discharge",
    0x05: ", Heat Hawk",
    0x06: ", Plasma Sword",
    0x07: ", Dimension Distorter"
}

rp_weap2 = {
    0x00: ", Pistol",
    0x01: ", Rifle",
    0x02: ", Ray Gun",
    0x03: ", Missile Launcher",
    0x04: ", Tank Cannon",
    0x05: ", Laser Rifle",
    0x06: ", Power Blaster",
    0x07: ", Dimension Distorter"
}

rp_town = {
    0x1:" Ephesus ‣",
    0x2:" Smyrna ‣",
    0x3:" Pergamum ‣",
    0x4:" Thyatira ‣",
    0x5:" Sardis ‣",
    0x6:" Philadelphia ‣",
    0x7:" Laodicea ‣",
    0x8:" Jerusalem ‣",
    0x9:" Mad Scientists Lab ‣",
    0xa:" SATAN's Base ‣",
    0xb:" Church of Patomos ‣",
    0xc:" Ruin ‣",
}

rp_status = {
    0x01:" (Injured)",
    0x02:" (Poison)",
    0x03:" (Death)",
}

rich_presence_conditional_display( play_timer == 0, "{0} Titlescreen",emoji)

rich_presence_display("{0}{11} L{1} {6}{7} {2}{3} ‣ {8}{9}{10} ‣ {4}{5}",
    emoji,
    rich_presence_macro("Number",exp/100),
    coin_emoji,
    rich_presence_macro("Number",gold),
    clock_emoji,
    rich_presence_macro("Score",play_timer),
    rich_presence_lookup("rp_class",class,rp_class,fallback="Soul"),
    rich_presence_lookup("rp_status",status,rp_status,fallback=""),
    rich_presence_lookup("rp_armor",equip_armor,rp_armor,fallback="Cloth"),
    rich_presence_lookup("rp_weap1",equip_weapon1,rp_weap1,fallback=""),
    rich_presence_lookup("rp_weap2",equip_weapon2,rp_weap2,fallback=""),
    rich_presence_lookup("rp_town",town,rp_town,fallback="")
)

// ----------------------------------------------------------------------------
// -- Preserved
// ----------------------------------------------------------------------------

function battle_flag() => byte(0x000FC2)
function state_flag() => byte(0x001B4F)
function store_flag() => byte(0x004698)
function store_flag() => byte(0x004699)
function class() => byte(0x01092E)
function str_8_bit_decimal() => dword(0x010930)
function exp_16_bit_decimal_be() => byte(0x010934)
function exp_16_bit_decimal_be() => word(0x010934)
function hp_16_bit_decimal_be() => byte(0x010936)
function hp_16_bit_decimal_be() => word_be(0x010936)
function bcd_gold() => low4(0x010938)
function bcd_gold() => high4(0x010938)
function bcd_gold() => byte(0x010938)
function bcd_gold() => word(0x010938)
function bcd_gold() => word_be(0x010938)
function armor_00_06() => byte(0x01093E)
function armor_00_06() => word(0x01093E)
function equipped_weapons_w1_ub_w2_lb() => byte(0x01093F)
function x_pos() => byte(0x010948)
function y_pos() => byte(0x010949)
function room_related() => byte(0x01094A)
function ruins_item_flag() => bit7(0x01094C)
function appearance() => byte(0x01094F)
function flag() => byte(0x010993)
function flag() => bit0(0x010994)
function flag() => bit1(0x010994)
function flag() => bit2(0x010994)
function flag() => byte(0x010B4A)
function flag() => byte(0x010B62)
function flag() => byte(0x010C62)
function room_related() => byte(0x010D28)

//achievement(
//    title = "Do No Harm", points = 10,
//    description = "Get to the Church in Thyatira without killing the Clerics",
//    id = 70435, badge = "75509", published = "24/01/2019 23:48:35", modified = "15/07/2019 07:11:19",
//    trigger = byte(0x0103F8) == 0x47 && byte(0x0103FC) == 0x47 && byte(0x010400) == 0x47 && byte(0x010404) == 0x47 && 
//              byte(0x010408) == 0x47 && byte(0x01040C) == 0x47 && byte(0x010410) == 0x47 && byte(0x010414) == 0x47 && 
//              byte(0x010418) == 0x47 && x_pos() == 0x0C && y_pos() == x_pos() && room_related() ==
//               0x40 && room_related() == 0x07
//)

//achievement(
//    title = "Unbar the Gates", points = 10,
//    description = "Open the path to the Center of Jerusalem",
//    id = 70414, badge = "75277", published = "24/01/2019 21:17:59", modified = "23/11/2022 13:32:05",
//    trigger = byte(0x010972) == 0xFF && prev(byte(0x010972)) == 0x01 && x_pos() == 0x06 && y_pos() == 0x26
//)

//achievement(
//    title = "Defeat 50 Merchants", points = 10,
//    description = "In one Session",
//    id = 70427, badge = "75152", published = "24/01/2019 21:19:23", modified = "22/11/2022 21:22:42",
//    trigger = measured(repeated(50, bit0(0x010935) != prev(bit0(0x010935)))) && unless(battle_flag() != 0x08)
//)

//achievement(
//    title = "Defeat 50 Mohicans", points = 10,
//    description = "In one Session",
//    id = 70428, badge = "75153", published = "24/01/2019 21:19:29", modified = "22/11/2022 21:22:43",
//    trigger = measured(repeated(50, low4(0x010935) != prev(low4(0x010935)))) && unless(battle_flag() != 0x0A)
//)

//achievement(
//    title = "Defeat 50 Combat Suits", points = 10,
//    description = "In one Session",
//    id = 70429, badge = "75200", published = "24/01/2019 21:19:36", modified = "22/11/2022 21:22:44",
//    trigger = measured(repeated(50, low4(0x010935) != prev(low4(0x010935)))) && unless(battle_flag() != 0x02)
//)

//achievement(
//    title = "Defeat 45 Powered Armors", points = 10,
//    description = "In one Session",
//    id = 70430, badge = "75201", published = "24/01/2019 21:19:42", modified = "22/11/2022 21:22:45",
//    trigger = measured(repeated(45, low4(0x010935) != prev(low4(0x010935)))) && unless(battle_flag() != 0x03)
//)

//achievement(
//    title = "Defeat 40 Battle Tanks", points = 10,
//    description = "In one Session",
//    id = 70431, badge = "75203", published = "24/01/2019 21:19:47", modified = "22/11/2022 21:22:46",
//    trigger = measured(repeated(40, low4(0x010935) != prev(low4(0x010935)))) && unless(battle_flag() != 0x04)
//)

//achievement(
//    title = "Defeat 30 Destroid Armors", points = 25,
//    description = "In one Session",
//    id = 70432, badge = "75202", published = "24/01/2019 21:19:55", modified = "22/11/2022 21:22:47",
//    trigger = measured(repeated(30, bit4(0x010935) != prev(bit4(0x010935)))) && unless(battle_flag() != 0x05)
//)

//achievement(
//    title = "Defeat 25 Siloam-Whites", points = 10,
//    description = "In one Session",
//    id = 70433, badge = "75204", published = "24/01/2019 21:20:01", modified = "22/11/2022 21:22:47",
//    trigger = measured(repeated(25, high4(0x010935) != prev(high4(0x010935)))) && unless(battle_flag() != 0x0B)
//)

//achievement(
//    title = "Defeat 20 Siloam-Reds", points = 10,
//    description = "In one Session",
//    id = 70434, badge = "75205", published = "24/01/2019 21:20:08", modified = "22/11/2022 21:22:48",
//    trigger = measured(repeated(25, high4(0x010935) != prev(high4(0x010935)))) && unless(battle_flag() != 0x0C)
//)

//achievement(
//    title = "The end of ???????", points = 10,
//    description = "Clear the Game",
//    id = 70399, badge = "75241", published = "24/01/2019 21:15:57", modified = "15/07/2019 07:15:30",
//    trigger = byte(0x01097F) == 0x00 && once(byte(0x01097F) == 0x01) && once(flag() == 0x0D) && 
//              once(flag() == 0x62) && never(y_pos() != 0x03) && flag() == 0x10 && flag()
//               == 0x00
//)

//achievement(
//    title = "Victory for the Surefooted", points = 5,
//    description = "Clear the Game Under 10000 Steps",
//    id = 70402, badge = "75241", published = "24/01/2019 21:16:15", modified = "15/07/2019 07:15:39",
//    trigger = byte(0x01097F) == 0x00 && once(byte(0x01097F) == 0x01) && once(flag() == 0x0D) && 
//              once(flag() == 0x62) && never(y_pos() != 0x03) && flag() == 0x10 && flag()
//               == 0x00 && byte(0x01093B) < 0x01
//)

//achievement(
//    title = "Victory in Midstep", points = 10,
//    description = "Clear the Game Under 5000 Steps",
//    id = 70401, badge = "75241", published = "24/01/2019 21:16:10", modified = "15/07/2019 07:15:46",
//    trigger = byte(0x01097F) == 0x00 && once(byte(0x01097F) == 0x01) && once(flag() == 0x0D) && 
//              once(flag() == 0x62) && never(y_pos() != 0x03) && flag() == 0x10 && flag()
//               == 0x00 && byte(0x01093C) < 0x50
//)

//achievement(
//    title = "Victory for the Swift", points = 25,
//    description = "Clear the Game under 3000 Steps",
//    id = 70400, badge = "75241", published = "24/01/2019 21:16:03", modified = "15/07/2019 07:15:52",
//    trigger = byte(0x01097F) == 0x00 && once(byte(0x01097F) == 0x01) && once(flag() == 0x0D) && 
//              once(flag() == 0x62) && never(y_pos() != 0x03) && flag() == 0x10 && flag()
//               == 0x00 && byte(0x01093C) < 0x30
//)

//achievement(
//    title = "No Need but Victory", points = 50,
//    description = "Clear the Game under 2000 Steps and 200 Xp",
//    id = 70403, badge = "75241", published = "24/01/2019 21:16:25", modified = "15/07/2019 07:15:59",
//    trigger = byte(0x01097F) == 0x00 && once(byte(0x01097F) == 0x01) && once(flag() == 0x0D) && 
//              once(flag() == 0x62) && never(y_pos() != 0x03) && flag() == 0x10 && flag()
//               == 0x00 && byte(0x01093C) < 0x20 && exp_16_bit_decimal_be() < 0x02
//)