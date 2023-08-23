// Jurassic Park 2: The Chaos Continues
// #ID = 970

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

stage_ranges = {
    // Functions
    "titlescreen" : {
        "name": "Titlescreen",
        "id_from": 0,
        "id_to" : 0,
        "is_emergency": false
    },
    "endscreen" : {
        "name": "Stage End",
        "id_from": 0x72,
        "id_to" : 0x72,
        "is_emergency": false
    },
    // Stages
    "raptor_attack" : {
        "name": "Raptor Attack",
        "id_from": 0x38,
        "id_to" : 0x3f,
        "is_emergency": false
    },
    "e_radio" : {
        "name": "Scientist Radios For Help",
        "id_from": 0x5e,
        "id_to" : 0x63,
        "is_emergency": true
    },
    "trex_carnage" : {
        "name": "T-Rex Carnage",
        "id_from": 0x16,
        "id_to" : 0x1b,
        "is_emergency": false
    },
    "e_incubators" : {
        "name": "Get Power Supplies To Incubators",
        "id_from": 0x48,
        "id_to" : 0x4e,
        "is_emergency": true
    },
    "blockade" : {
        "name": "Blockade",
        "id_from": 0x0a,
        "id_to" : 0x12,
        "is_emergency": false
    },
    "e_aux" : {
        "name": "Auxiliary Power Switch",
        "id_from": 0x66,
        "id_to" : 0x6e,
        "is_emergency": true
    },
    "high_ptera" : {
        "name": "High Ptera",
        "id_from": 0x03,
        "id_to" : 0x09,
        "is_emergency": false
    },
    "high_ptera_extra" : {
        "name": "High Ptera",
        "id_from": 0x13,
        "id_to" : 0x13,
        "is_emergency": false
    },
    "e_dropship" : {
        "name": "Drop Ship Supplies",
        "id_from": 0x65,
        "id_to" : 0x65,
        "is_emergency": true
    },
    "seek_destroy" : {
        "name": "Seek and Destroy",
        "id_from": 0x1c,
        "id_to" : 0x2e,
        "is_emergency": false
    },
    "e_spy" : {
        "name": "Track Down The Spy",
        "id_from": 0x64,
        "id_to" : 0x64,
        "is_emergency": true
    },
    "protect_g" : {
        "name": "Protect Gallimimus",
        "id_from": 0x02,
        "id_to" :0x02,
        "is_emergency": false
    },
    "e_medication" : {
        "name": "Give Medication To the Scout",
        "id_from": 0x2f,
        "id_to" : 0x37,
        "is_emergency": true
    },
    // Endgame
    "destroy_hq" : {
        "name": "Destroy the Biosyn Headquarters",
        "id_from": 0x40,
        "id_to" : 0x47,
        "is_emergency": false
    },
    "disarm_bombs" : {
        "name": "Disarm the Bombs",
        "id_from": 0x4f,
        "id_to" : 0x5c,
        "is_emergency": false
    },
    "kill_trex" : {
        "name": "Destroy T-Rex",
        "id_from": 0x70,
        "id_to" : 0x70,
        "is_emergency": false
    },
    //- Hard difficulty only
    "chopper_fight" : {
        "name": "Destroy the Biosyn Helecopter",
        "id_from": 0x6f,
        "id_to" : 0x6f,
        "is_emergency": false
    },
}

difficulty_levels = {
    "easy": {
        "id": 0x00,
        "name": "Easy"
    },
    "normal": {
        "id": 0x01,
        "name": "Normal"
    },
    "hard": {
        "id": 0x02,
        "name": "Hard"
    },
}

mission_states = {
    "loading"       : 0xFFFF,
    "playing"       : 0x0000,
    "dead_health"   : 0x0001,
    "dead_time"     : 0x0002,
    "dead_stock"    : 0x0003,
    "win"           : 0x0004
}

weapons = {
    "rifle"         : 0x00,
    "machine_gun"   : 0x01,
    "shotgun"       : 0x02,
    "stun_gun"      : 0x03,
    "tranq"         : 0x04,
    "grenade"       : 0x05
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

stage_id_old = byte(0x000002)

stage_id = byte(0x000003)
mission_status = word(0x00a9eb)
difficulty = byte(0x00ffc2)
health = byte(0x00b032)
health_part = health/8
continues = word(0x00a9a6)
dino_stock = byte(0x000008)
time_remaining = word(0x00000a)
p1_projectiles = byte(0x00B033)
p1_weapon = byte(0x00b040)

stage_triggers = {}
for stage in stage_ranges {
    tmparr = []
    for ra in range(stage_ranges[stage]["id_from"],stage_ranges[stage]["id_to"]) {
        array_push(
            tmparr,
            stage_id == ra &&
            prev(mission_status) == mission_states["playing"] &&
            mission_status == mission_states["win"]
        )
    }
    stage_triggers[stage] = tmparr
}

function not_cheating() => continues <= 5
function stage_win() => prev(mission_status) == mission_states["playing"] && mission_status == mission_states["win"]
function countdown_enabled() => byte(0x00a9e9) == 0x01

// ----------------------------------------------------------------------------
// -- Original
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// -- Revised
// ----------------------------------------------------------------------------

//- Mission 1

achievement(
    title = "Raptor Attack", points = 5,
    description = "Complete the Raptor Attack mission (any difficulty)",
    id = 72658, badge = "77734", published = "26/02/2019 01:24:02", modified = "02/03/2019 04:52:01",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["raptor_attack"]["id_from"] &&
        stage_id <= stage_ranges["raptor_attack"]["id_to"] &&
        stage_win()
)

achievement(
    title = "Raptor Assault", points = 10,
    description = "Complete the Raptor Attack mission (hard)",
    id = 72674, badge = "77787", published = "26/02/2019 01:25:02", modified = "02/03/2019 04:53:20",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["raptor_attack"]["id_from"] &&
        stage_id <= stage_ranges["raptor_attack"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Emergency 1

achievement(
    title = "Rescue the Scientist", points = 5,
    description = "Complete the scientist emergency mission (any difficulty)",
    id = 72664, badge = "77777", published = "26/02/2019 01:24:26", modified = "02/03/2019 04:52:34",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_radio"]["id_from"] &&
        stage_id <= stage_ranges["e_radio"]["id_to"] &&
        stage_win()
)

achievement(
    title = "That's Not Henry Wu", points = 10,
    description = "Complete the scientist emergency mission (hard)",
    id = 72680, badge = "77793", published = "26/02/2019 01:25:25", modified = "02/03/2019 04:54:01",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_radio"]["id_from"] &&
        stage_id <= stage_ranges["e_radio"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Mission 2

achievement(
    title = "T-Rex Carnage", points = 5,
    description = "Complete the T-Rex Carnage mission (any difficulty)",
    id = 72659, badge = "77735", published = "26/02/2019 01:24:07", modified = "02/03/2019 04:52:06",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["trex_carnage"]["id_from"] &&
        stage_id <= stage_ranges["trex_carnage"]["id_to"] &&
        stage_win()
)

achievement(
    title = "T-Rex Massacre", points = 10,
    description = "Complete the T-Rex Carnage mission (hard)",
    id = 72675, badge = "77788", published = "26/02/2019 01:25:07", modified = "02/03/2019 04:53:24",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["trex_carnage"]["id_from"] &&
        stage_id <= stage_ranges["trex_carnage"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Emergency 2

achievement(
    title = "Power the Incubators", points = 5,
    description = "Complete the incubators emergency mission (any difficulty)",
    id = 72665, badge = "77778", published = "26/02/2019 01:24:30", modified = "02/03/2019 04:52:38",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_incubators"]["id_from"] &&
        stage_id <= stage_ranges["e_incubators"]["id_to"] &&
        stage_win()
)

achievement(
    title = "Life Finds A Way", points = 10,
    description = "Complete the incubators emergency mission (hard)",
    id = 72681, badge = "77794", published = "26/02/2019 01:25:28", modified = "02/03/2019 04:54:07",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_incubators"]["id_from"] &&
        stage_id <= stage_ranges["e_incubators"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Mission 3

achievement(
    title = "Blockade", points = 5,
    description = "Complete the Blockade mission (any difficulty)",
    id = 72660, badge = "77736", published = "26/02/2019 01:24:10", modified = "02/03/2019 04:52:13",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["blockade"]["id_from"] &&
        stage_id <= stage_ranges["blockade"]["id_to"] &&
        stage_win()
)

achievement(
    title = "Barricade", points = 10,
    description = "Complete the Blockade mission (hard)",
    id = 72676, badge = "77789", published = "26/02/2019 01:25:11", modified = "02/03/2019 04:53:29",
    trigger =  
        not_cheating() &&
        stage_id >= stage_ranges["blockade"]["id_from"] &&
        stage_id <= stage_ranges["blockade"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Emergency 3

achievement(
    title = "Reactivate Main Power", points = 5,
    description = "Complete the main power emergency mission (any difficulty)",
    id = 72666, badge = "77779", published = "26/02/2019 01:24:33", modified = "02/03/2019 04:52:42",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_aux"]["id_from"] &&
        stage_id <= stage_ranges["e_aux"]["id_to"] &&
        stage_win()
)

achievement(
    title = "I Think We're Back In Business", points = 10,
    description = "Complete the main power emergency mission (hard)",
    id = 72682, badge = "77795", published = "26/02/2019 01:25:32", modified = "02/03/2019 04:54:11",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_aux"]["id_from"] &&
        stage_id <= stage_ranges["e_aux"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Mission 4

achievement(
    title = "Higher Ptera", points = 10,
    description = "Complete the High Ptera mission (hard)",
    id = 72677, badge = "77790", published = "26/02/2019 01:25:14", modified = "02/03/2019 04:53:33",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["high_ptera"]["id_from"] &&
        stage_id <= stage_ranges["high_ptera"]["id_to"] &&
        stage_win()
)

achievement(
    title = "High Ptera", points = 5,
    description = "Complete the High Ptera mission (any difficulty)",
    id = 72661, badge = "77737", published = "26/02/2019 01:24:14", modified = "02/03/2019 04:52:22",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["high_ptera"]["id_from"] &&
        stage_id <= stage_ranges["high_ptera"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Emergency 4

achievement(
    title = "Recover the Supplies", points = 5,
    description = "Complete the supplies emergency mission (any difficulty)",
    id = 72667, badge = "77780", published = "26/02/2019 01:24:38", modified = "02/03/2019 04:52:47",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_dropship"]["id_from"] &&
        stage_id <= stage_ranges["e_dropship"]["id_to"] &&
        stage_win()
)

achievement(
    title = "Beer Run", points = 10,
    description = "Complete the supplies emergency mission (hard)",
    id = 72683, badge = "77796", published = "26/02/2019 01:25:35", modified = "02/03/2019 04:54:15",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_dropship"]["id_from"] &&
        stage_id <= stage_ranges["e_dropship"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Mission 5

achievement(
    title = "Seek and Destroy", points = 5,
    description = "Complete the Seek and Destroy mission (any difficulty)",
    id = 72662, badge = "77739", published = "26/02/2019 01:24:18", modified = "17/08/2020 02:53:32",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["seek_destroy"]["id_from"] &&
        stage_id <= stage_ranges["seek_destroy"]["id_to"] &&
        stage_win()
)

achievement(
    title = "Pinpoint and Obliterate", points = 10,
    description = "Complete the Seek and Destroy mission (hard)",
    id = 72678, badge = "77791", published = "26/02/2019 01:25:17", modified = "17/08/2020 02:57:07",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["seek_destroy"]["id_from"] &&
        stage_id <= stage_ranges["seek_destroy"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Emergency 5

achievement(
    title = "Track Down the Spy", points = 5,
    description = "Complete the spy emergency mission (any difficulty)",
    id = 72668, badge = "77781", published = "26/02/2019 01:24:42", modified = "02/03/2019 04:52:51",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_spy"]["id_from"] &&
        stage_id <= stage_ranges["e_spy"]["id_to"] &&
        stage_win()
)

achievement(
    title = "We've Got Dodgson Here", points = 10,
    description = "Complete the spy emergency mission (hard)",
    id = 72684, badge = "77797", published = "26/02/2019 01:25:38", modified = "02/03/2019 04:54:19",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_spy"]["id_from"] &&
        stage_id <= stage_ranges["e_spy"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Mission 6

achievement(
    title = "Protect The Gallimimus", points = 5,
    description = "Complete the Protect The Gallimimus mission (any difficulty)",
    id = 72663, badge = "77740", published = "26/02/2019 01:24:22", modified = "02/03/2019 04:52:31",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["protect_g"]["id_from"] &&
        stage_id <= stage_ranges["protect_g"]["id_to"] &&
        stage_win()
)

achievement(
    title = "They're Flocking This Way", points = 10,
    description = "Complete the Protect The Gallimimus mission (hard)",
    id = 72679, badge = "77792", published = "26/02/2019 01:25:21", modified = "02/03/2019 04:53:56",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["protect_g"]["id_from"] &&
        stage_id <= stage_ranges["protect_g"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Emergency 6

achievement(
    title = "Rescue the Scout", points = 5,
    description = "Complete the scout emergency mission (any difficulty)",
    id = 72669, badge = "77782", published = "26/02/2019 01:24:45", modified = "07/03/2019 22:44:26",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_medication"]["id_from"] &&
        stage_id <= stage_ranges["e_medication"]["id_to"] &&
        stage_win()
)

achievement(
    title = "Clever Girl", points = 10,
    description = "Complete the scout emergency mission (hard)",
    id = 72685, badge = "77798", published = "26/02/2019 01:25:42", modified = "07/03/2019 22:44:53",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["e_medication"]["id_from"] &&
        stage_id <= stage_ranges["e_medication"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Endgame 1

achievement(
    title = "Destroy Biosyn Headquarters", points = 10,
    description = "Complete the Biosyn HQ mission (any difficulty)",
    id = 72670, badge = "77783", published = "26/02/2019 01:24:49", modified = "07/03/2019 22:44:40",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["destroy_hq"]["id_from"] &&
        stage_id <= stage_ranges["destroy_hq"]["id_to"] &&
        stage_win()
)

achievement(
    title = "Biosyns End?", points = 25,
    description = "Complete the Biosyn HQ mission (hard)",
    id = 72686, badge = "77799", published = "26/02/2019 01:25:45", modified = "07/03/2019 22:45:02",
    trigger =   
        not_cheating() &&
        stage_id >= stage_ranges["destroy_hq"]["id_from"] &&
        stage_id <= stage_ranges["destroy_hq"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Endgame 2

achievement(
    title = "Disarm the Bombs", points = 5,
    description = "Complete the bomb disarming emergency mission (any difficulty)",
    id = 72671, badge = "77784", published = "26/02/2019 01:24:52", modified = "02/03/2019 04:53:07",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["disarm_bombs"]["id_from"] &&
        stage_id <= stage_ranges["disarm_bombs"]["id_to"] &&
        stage_win()
)

achievement(
    title = "Fallen Kingdom", points = 10,
    description = "Complete the bomb disarming emergency mission (hard)",
    id = 72687, badge = "77800", published = "26/02/2019 01:25:49", modified = "28/03/2021 14:04:07",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["disarm_bombs"]["id_from"] &&
        stage_id <= stage_ranges["disarm_bombs"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

//- Endgame 3

achievement(
    title = "Evacuate", points = 25,
    description = "Destroy the T-Rex and evacuate the island (normal + only)",
    id = 72672, badge = "77785", published = "26/02/2019 01:24:56", modified = "28/03/2021 14:03:49",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["kill_trex"]["id_from"] &&
        stage_id <= stage_ranges["kill_trex"]["id_to"] &&
        stage_win() &&
        difficulty >= difficulty_levels["normal"]["id"]
)

//- Endgame 4 (Hard Only)

achievement(
    title = "Get to the Choppa", points = 25,
    description = "Escape Biosyns attack chopper (hard only)",
    id = 72673, badge = "77907", published = "26/02/2019 01:24:59", modified = "28/03/2021 14:03:56",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["chopper_fight"]["id_from"] &&
        stage_id <= stage_ranges["chopper_fight"]["id_to"] &&
        stage_win() &&
        difficulty == difficulty_levels["hard"]["id"]
)

// ----------------------------------------------------------------------------
// -- Challenges
// ----------------------------------------------------------------------------

//- Mission 1

achievement(
    title = "P.E.T.D.", points = 25,
    description = "Complete Raptor Attack on normal or higher without firing your weapon",
    id = 72689, badge = "77802", published = "26/02/2019 01:25:56", modified = "28/03/2021 14:04:14",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["raptor_attack"]["id_from"] &&
        stage_id <= stage_ranges["raptor_attack"]["id_to"] &&
        trigger_when(stage_win()) &&
        difficulty >= difficulty_levels["normal"]["id"] &&
        once(prev(stage_id) != 0x38 && stage_id == 0x38) &&
        never(
            p1_projectiles > 0 || 
            stage_id == 0x00 ||
            mission_status == mission_states["dead_health"] ||
            mission_status == mission_states["dead_time"] ||
            mission_status == mission_states["dead_stock"]
         ) 

)

//- Emergency 1

achievement(
    title = "For Science!", points = 25,
    description = "Rescue the InGen scientist with at least 75 seconds left (first emergency mission)",
    id = 72691, badge = "77804", published = "26/02/2019 01:26:03", modified = "28/03/2021 14:04:27",
    trigger =
        not_cheating() &&
        stage_id >= stage_ranges["e_radio"]["id_from"] &&
        stage_id <= stage_ranges["e_radio"]["id_to"] &&
        trigger_when(stage_win()) &&
        time_remaining >= 75
)

//- Mission 2

achievement(
    title = "Tyrant Lizard", points = 10,
    description = "Complete T-Rex Carnage on normal or higher with full health",
    id = 72690, badge = "77803", published = "26/02/2019 01:26:00", modified = "07/03/2019 22:45:18",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["trex_carnage"]["id_from"] &&
        stage_id <= stage_ranges["trex_carnage"]["id_to"] &&
        trigger_when(stage_win()) &&
        difficulty >= difficulty_levels["normal"]["id"] &&
        health == 0x28
)

//- Mission 3

achievement(
    title = "One Man Army", points = 25,
    description = "Complete the Blockade with full health",
    id = 72693, badge = "77806", published = "26/02/2019 01:26:12", modified = "07/03/2019 22:45:43",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["blockade"]["id_from"] &&
        stage_id <= stage_ranges["blockade"]["id_to"] &&
        trigger_when(stage_win()) &&
        health == 0x28
)

//- Mission 4

achievement(
    title = "Unlimited Ammo", points = 10,
    description = "Complete High Ptera using only cattle prod and rifle",
    id = 72694, badge = "77807", published = "26/02/2019 01:26:15", modified = "28/03/2021 14:04:47",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["high_ptera"]["id_from"] &&
        stage_id <= stage_ranges["high_ptera"]["id_to"] &&
        trigger_when(stage_win()) &&
        once(
            prev(stage_id) != 0x13 &&
            stage_id == 0x13
        ) &&
        never(
            (p1_weapon != weapons["rifle"] && 
            p1_weapon != weapons["stun_gun"] && 
            p1_projectiles > 0) ||
            stage_id == 0x00 ||
            mission_status == mission_states["dead_health"] ||
            mission_status == mission_states["dead_time"] ||
            mission_status == mission_states["dead_stock"]
        )
)

//- Mission 6

achievement(
    title = "Savior", points = 5,
    description = "Complete Protect the Gallimimus on normal or harder without killing any Gallimimus (reset if fail)",
    id = 72688, badge = "77801", published = "26/02/2019 01:25:52", modified = "02/03/2019 04:54:42",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["protect_g"]["id_from"] &&
        stage_id <= stage_ranges["protect_g"]["id_to"] &&
        trigger_when(stage_win()) &&
        difficulty >= difficulty_levels["normal"]["id"] &&
        once(
            prev(stage_id) != 0x02 &&
            stage_id == 0x02
        ) &&
        never(
            dino_stock < prev(dino_stock) ||
            stage_id == 0x00 ||
            mission_status == mission_states["dead_health"] ||
            mission_status == mission_states["dead_time"] ||
            mission_status == mission_states["dead_stock"]
        )
)

//- Endgame 1

achievement(
    title = "Preserve Life", points = 25,
    description = "Reach Biosyn headquarters with at least 95 dinosaur stock remaining",
    id = 72692, badge = "77805", published = "26/02/2019 01:26:07", modified = "28/03/2021 14:04:39",
    trigger = 
        not_cheating() &&
        stage_id >= stage_ranges["destroy_hq"]["id_from"] &&
        stage_id <= stage_ranges["destroy_hq"]["id_to"] &&
        trigger_when(stage_win()) &&
        dino_stock >= 95
)

// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

lb_stages = ["e_radio", "e_incubators", "e_aux", "e_dropship", "e_spy", "e_medication"]

for diff in difficulty_levels {
    for stage in lb_stages {
        leaderboard(
            title = "Emergency - " + stage_ranges[stage]["name"] + " (" + difficulty_levels[diff]["name"] +")",
            description = "Beat '" + stage_ranges[stage]["name"] + "' with as much time remaining as possible",
            start  =    not_cheating() &&
                        stage_id >= stage_ranges[stage]["id_from"] &&
                        stage_id <= stage_ranges[stage]["id_to"] &&
                        stage_win() &&
                        difficulty == difficulty_levels[diff]["id"],
            cancel =    always_false(),
            submit =    always_true(),
            value =     measured(time_remaining),
            format = "VALUE",
            lower_is_better = false,
            id = 0
        ) 
    }
}

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

rp_stages = {}
for stage in stage_ranges {
    for s in range(stage_ranges[stage]["id_from"],stage_ranges[stage]["id_to"]) {
        if(stage_ranges[stage]["is_emergency"] == true ) {
            rp_stages[s] = "🚨 " + stage_ranges[stage]["name"]
        } else rp_stages[s] = stage_ranges[stage]["name"]
    }
}

rp_difficulty = {}
for diff in difficulty_levels {
    rp_difficulty[difficulty_levels[diff]["id"]] = difficulty_levels[diff]["name"]
}

rp_health = {
    0 : "⣀⣀⣀⣀",
    1 : "⣦⣀⣀⣀⣀",
    2 : "⣿⣦⣀⣀⣀",
    3 : "⣿⣿⣦⣀⣀",
    4 : "⣿⣿⣿⣦⣀",
    5 : "⣿⣿⣿⣿⣦"
}

emoji = "🦖"
emoji_title = "🏃🦖"
emoji_stock = "📈"
emoji_continue = "🧑"
emoji_cheat =  "🏃🦆"
emoji_clock = "🕒"

rich_presence_conditional_display(!not_cheating(), "{0} Cheats enabled, achievements disabled!", emoji_cheat)
rich_presence_conditional_display(mission_status == mission_states["dead_health"] , "{0} Mission Failed: You died", emoji_title)
rich_presence_conditional_display(mission_status == mission_states["dead_time"], "{0} Mission Failed: You ran out of time", emoji_title)
rich_presence_conditional_display(mission_status == mission_states["dead_stock"], "{0} Mission Failed: Stock level critical", emoji_title)
rich_presence_conditional_display(stage_id == 0 , "{0} Titlescreen", emoji_title)
rich_presence_conditional_display(stage_id == 0x72 , "{0} Loading..", emoji_title)

rich_presence_conditional_display(countdown_enabled(), "{0} {1} {2} {3}{4} | {5} {6}{7} {8}{9}",
    emoji,
    rich_presence_lookup("difficulty",difficulty,rp_difficulty,fallback="?"),
    rich_presence_lookup("hp",health_part,rp_health,fallback="-----"),
    emoji_continue,
    rich_presence_macro("Number",continues),
    rich_presence_lookup("stages",stage_id,rp_stages,fallback="?"),
    emoji_clock,
    rich_presence_macro("Number",time_remaining),
    emoji_stock,
    rich_presence_macro("Number",dino_stock)
)

rich_presence_display("{0} {1} {2} {3}{4} | {5} {6}{7}",
    emoji,
    rich_presence_lookup("difficulty",difficulty,rp_difficulty,fallback="?"),
    rich_presence_lookup("hp",health_part,rp_health,fallback="-----"),
    emoji_continue,
    rich_presence_macro("Number",continues),
    rich_presence_lookup("stages",stage_id,rp_stages,fallback="?"),
    emoji_stock,
    rich_presence_macro("Number",dino_stock)
)

// ----------------------------------------------------------------------------
// -- New
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// -- Demoted
// ----------------------------------------------------------------------------
