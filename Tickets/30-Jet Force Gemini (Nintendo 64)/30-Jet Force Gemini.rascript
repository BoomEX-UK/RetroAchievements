// Jet Force Gemini
// #ID = 30

ship_parts          = word(0x1E6046)
text_id             = dword(0x1EFDD4)
map_id              = word(0x0A3252)
area_id             = byte(0x0A326A)
tri_rocket_kills    = word(0x1E650C)
sniper_kills        = word(0x1E6510)
current_weapon      = byte(0xff7a4)
current_character   = byte(0x0a3242)

weapons = {
    "sniper": 0x11,
    "shocker": 0x0e,
    "tri-rocket": 0x0f,
}

characters = {
    "juno"  : 0x01,
    "lupus" : 0x02,
    "vela"  : 0x03
}

unlocked_weapons = {
    "juno" : {
        "base_addr":0x1e61ee,
        //"shocker" : bit4(0x1e61ee)
    },
    "vela" : {
        "base_addr":0x1e6174,
        //"shocker" : bit4(0x1e6174)
    },
    "lupus" : {
        "base_addr":0x1e6260,
        //"shocker" : bit4(0x1e6260)
    }
}

function build_weaponunlock( addr, arr){
    arr["pistol"] = bit0(addr)
    arr["homing_rocket"] = bit1(addr)
    arr["machine_gun"] = bit2(addr)
    arr["plasma_shotgun"] = bit3(addr)
    arr["shocker"] = bit4(addr)
    arr["tri-rocket"] = bit5(addr)
    arr["flamethrower"] = bit6(addr)
    arr["sniper"] = bit7(addr)
    arr["grenades"] = bit0(addr+1)
    arr["shurikens"] = bit1(addr+1)
    arr["fish_food"] = bit2(addr+1)
    arr["proximity_mines"] = bit3(addr+1)
    arr["remote_mines"] = bit4(addr+1)
    arr["flares"] = bit5(addr+1)
    arr["cluster_bombs"] = bit6(addr+1)
    arr["ricochet"] = bit7(addr+1)  
    return arr
}

for char in unlocked_weapons {
    unlocked_weapons[char] = build_weaponunlock(unlocked_weapons[char]["base_addr"], unlocked_weapons[char])
}

function character_loaded() => __ornext(current_character == characters["juno"] || current_character == characters["vela"] || current_character == characters["lupus"])

unlocked_ship_parts = {
    "key_lupu":         bit0(0x1e6046),
    "tank_nitrogen":    bit1(0x1e6046),
    "tank_oxygen":      bit2(0x1e6046),
    "stabilizer":       bit3(0x1e6046),
    "power_cell":       bit0(0x1e6047),
    "radar_dish":       bit1(0x1e6047),
    "fin":              bit2(0x1e6047),
    "key_cargo_bay":    bit3(0x1e6047),
    "deflector":        bit4(0x1e6047),
    "fuse":             bit5(0x1e6047),
    "key_vela":         bit6(0x1e6047),
    "key_juno":         bit7(0x1e6047)
}

function unlocked_ship_parts( previ ){
    tmp = 0
    for f in unlocked_ship_parts {
        if(previ == true) tmp = tmp + prev(unlocked_ship_parts[f])
        else tmp = tmp + unlocked_ship_parts[f]
    }
    return tmp
}

// -------------------------------------
// - Unresolved
// -------------------------------------

// -------------------------------------
// - Resolved
// -------------------------------------

// Ticket 51337: Opened chest with Lupus but didn’t trigger
//               RetroAchievements Hash: 772CC6EAB2620D2D3CDC17BBC26C4F68
//               Emulator: RetroArch (Mupen)
//               Emulator Version: 1.10.2
achievement(
    title = "Shocker", points = 5,
    description = "Get the Shocker",
    id = 67644, badge = "71579", published = "09/11/2018 02:35:03", modified = "30/11/2021 01:01:16",
    trigger = 
        character_loaded() &&
        (prev(unlocked_weapons["juno"]["shocker"]) + prev(unlocked_weapons["vela"]["shocker"]) + prev(unlocked_weapons["lupus"]["shocker"]) == 0) &&
        (unlocked_weapons["juno"]["shocker"] + unlocked_weapons["vela"]["shocker"] + unlocked_weapons["lupus"]["shocker"] == 1)
)

// Ticket 61014: Popped as soon as I got my first couple of kills in the game. Didn't even have the Tri-Rocket Launcher.
//               RetroAchievements Hash: BAAF237E71AA7526C9B2F01C08B68A53
//               Emulator: RALibRetro (Mupen64Plus-Next 2.5-Vulkan 90dae29)
//               Emulator Version: 1.6
achievement(
    title = "Tri-Rocket Launcher", points = 10,
    description = "Get 15 kills with the Tri-Rocket Launcher in the same Area",
    id = 67650, badge = "71586", published = "09/11/2018 02:35:27", modified = "04/08/2020 17:40:21",
    trigger =
        character_loaded() &&
        current_weapon == weapons["tri-rocket"] &&
        prev(tri_rocket_kills) < 0x0F && 
        tri_rocket_kills >= 0x0F
)

// Ticket 61013: Popped as soon as I got my first couple of kills in the game. Didn't even have the Sniper.
//               RetroAchievements Hash: BAAF237E71AA7526C9B2F01C08B68A53
//               Emulator: RALibRetro (Mupen64Plus-Next 2.5-Vulkan 90dae29)
//               Emulator Version: 1.6
achievement(
    title = "Sniper", points = 10,
    description = "Get 15 kills with the Sniper in the same Area",
    id = 67652, badge = "71582", published = "09/11/2018 02:35:36", modified = "04/08/2020 17:40:23",
    trigger = 
        character_loaded() &&
        current_weapon == weapons["sniper"] &&
        prev(sniper_kills) < 0x0F && 
        sniper_kills >= 0x0F
)

// Ticket 61012: Popped shortly after I got my first couple kills in the game. I think I picked up a single part and
//               this triggered.
//               RetroAchievements Hash: BAAF237E71AA7526C9B2F01C08B68A53
//               Emulator: RALibRetro (Mupen64Plus-Next 2.5-Vulkan 90dae29)
//               Emulator Version: 1.6
achievement(
    title = "S.S. Dolphin", points = 25,
    description = "Get all ship parts",
    id = 67630, badge = "71565", published = "09/11/2018 02:34:03", modified = "04/08/2020 17:39:46",
    trigger =
        character_loaded() &&
        unlocked_ship_parts(true) == 11 &&
        unlocked_ship_parts(false) == 12
)

// -------------------------------------
// - Closed
// -------------------------------------