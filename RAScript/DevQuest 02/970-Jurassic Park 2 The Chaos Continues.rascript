// Jurassic Park 2: The Chaos Continues
// #ID = 970

const_mode_none = 0x00
const_mode_raptor_attack = 0x01

stage_id_old = byte(0x000002)
stage_id = byte(0x000003)
stages = {
    "titlescreen" : {
        "id" : 0x00,
        "mode": const_mode_none,
        "stage": 0
    },
    "ra1" : {
        "id" : 0x38,
        "mode": const_mode_raptor_attack,
        "stage": 1
    },
    "ra2" : {
        "id" : 0x39,
        "mode": const_mode_raptor_attack,
        "stage": 2
    },
    "ra3" : {
        "id" : 0x3a,
        "mode": const_mode_raptor_attack,
        "stage": 3
    },
    "ra4" : {
        "id" : 0x3b,
        "mode": const_mode_raptor_attack,
        "stage": 4
    },
    "ra5" : {
        "id" : 0x3c,
        "mode": const_mode_raptor_attack,
        "stage": 5
    },
    "ra6" : {
        "id" : 0x3d,
        "mode": const_mode_raptor_attack,
        "stage": 6
    },
    "ra7" : {
        "id" : 0x3e,
        "mode": const_mode_raptor_attack,
        "stage": 7
    },
    "ra8" : {
        "id" : 0x3f,
        "mode": const_mode_raptor_attack,
        "stage": 8
    }
}
function on_titlescreen() => stage_id == stages["titlescreen"]

mission_status = word(0x00a9eb)
mission_states = {
    "loading"       : 0xFFFF,
    "playing"       : 0x0000,
    "dead_health"   : 0x0001,
    "dead_time"     : 0x0002,
    "dead_stock"    : 0x0003,
    "win"           : 0x0004
}

difficulty = byte(0x00ffc2)
difficulty_levels = {
    "easy": 0x00,
    "normal": 0x01,
    "hard": 0x02
}

// ----------------------------------------------------------------------------
// -- Original
// ----------------------------------------------------------------------------

achievement(
    title = "Biosyns End?", points = 25,
    description = "Complete the Biosyn HQ mission (hard)",
    id = 72686, badge = "77799", published = "26/02/2019 01:25:45", modified = "07/03/2019 22:45:02",
    trigger =   stage_id_old == 0x0C &&
                byte(0x00FFC2) == 0x02 &&
                byte(0x00A9A0) == 0x01 &&
                byte(0x00A9A7) == 0x00 && 
                byte(0x00B009) == 0xA2 &&
                once(byte(0x00B033) >= 0x01) &&
                never(stage_id_old != 0x0C)
)

achievement(
    title = "Higher Ptera", points = 10,
    description = "Complete the High Ptera mission (hard)",
    id = 72677, badge = "77790", published = "26/02/2019 01:25:14", modified = "02/03/2019 04:53:33",
    trigger = stage_id_old == 0x03 && word(0x00E15A) == 0x7A22 && unless(word(0x00E14A) == 0x3222) && byte(0x00FFC2)
               == 0x02 && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "Pinpoint and Obliterate", points = 10,
    description = "Complete the Seek and Destroy mission (hard)",
    id = 72678, badge = "77791", published = "26/02/2019 01:25:17", modified = "17/08/2020 02:57:07",
    trigger = prev(stage_id_old_old_old_old) == 0x04 && stage_id > prev(stage_id) && stage_id != 0x05 && 
              byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "They're Flocking This Way", points = 10,
    description = "Complete the Protect The Gallimimus mission (hard)",
    id = 72679, badge = "77792", published = "26/02/2019 01:25:21", modified = "02/03/2019 04:53:56",
    trigger = stage_id_old == 0x05 && byte(0x00E15B) == 0x35 && byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00
)

achievement(
    title = "That's Not Henry Wu", points = 10,
    description = "Complete the scientist emergency mission (hard)",
    id = 72680, badge = "77793", published = "26/02/2019 01:25:25", modified = "02/03/2019 04:54:01",
    trigger = stage_id_old == 0x09 && byte(0x00E15B) == 0x3F && byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00
)

achievement(
    title = "Life Finds A Way", points = 10,
    description = "Complete the incubators emergency mission (hard)",
    id = 72681, badge = "77794", published = "26/02/2019 01:25:28", modified = "02/03/2019 04:54:07",
    trigger = stage_id_old == 0x06 && byte(0x00E15B) == 0x34 && byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00
)

achievement(
    title = "I Think We're Back In Business", points = 10,
    description = "Complete the main power emergency mission (hard)",
    id = 72682, badge = "77795", published = "26/02/2019 01:25:32", modified = "02/03/2019 04:54:11",
    trigger = stage_id_old == 0x07 && byte(0x00E15B) == 0x3F && byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00
)

achievement(
    title = "Beer Run", points = 10,
    description = "Complete the supplies emergency mission (hard)",
    id = 72683, badge = "77796", published = "26/02/2019 01:25:35", modified = "02/03/2019 04:54:15",
    trigger = stage_id_old == 0x08 && byte(0x00E15B) == 0x43 && byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00
)

achievement(
    title = "We've Got Dodgson Here", points = 10,
    description = "Complete the spy emergency mission (hard)",
    id = 72684, badge = "77797", published = "26/02/2019 01:25:38", modified = "02/03/2019 04:54:19",
    trigger = stage_id_old == 0x0A && byte(0x00E15B) == 0x35 && byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00
)

achievement(
    title = "Clever Girl", points = 10,
    description = "Complete the scout emergency mission (hard)",
    id = 72685, badge = "77798", published = "26/02/2019 01:25:42", modified = "07/03/2019 22:44:53",
    trigger = stage_id_old == 0x0B && byte(0x00E15B) == 0x3A && byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00 && once(byte(0x00B033) >= 0x01) && never(stage_id_old != 0x0B)
)

achievement(
    title = "Barricade", points = 10,
    description = "Complete the Blockade mission (hard)",
    id = 72676, badge = "77789", published = "26/02/2019 01:25:11", modified = "02/03/2019 04:53:29",
    trigger = stage_id_old == 0x02 && byte(0x00E15B) == 0x43 && byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00
)

achievement(
    title = "Fallen Kingdom", points = 10,
    description = "Complete the bomb disarming emergency mission (hard)",
    id = 72687, badge = "77800", published = "26/02/2019 01:25:49", modified = "28/03/2021 14:04:07",
    trigger = stage_id_old == 0x0D && byte(0x00E15B) == 0x3F && byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00
)

achievement(
    title = "Savior", points = 5,
    description = "Complete Protect the Gallimimus on normal or harder without killing any Gallimimus (reset if fail)",
    id = 72688, badge = "77801", published = "26/02/2019 01:25:52", modified = "02/03/2019 04:54:42",
    trigger = stage_id_old == 0x05 && byte(0x00E15B) == 0x35 && byte(0x00FFC2) > 0x00 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00 &&
              ((unless(once(prev(byte(0x000008)) > byte(0x000008)))) ||
               (always_false() && never(prev(stage_id_old_old) != stage_id)))
)

achievement(
    title = "P.E.T.D.", points = 25,
    description = "Complete Raptor Attack on normal or higher without firing your weapon",
    id = 72689, badge = "77802", published = "26/02/2019 01:25:56", modified = "28/03/2021 14:04:14",
    trigger = stage_id_old == 0x00 && byte(0x00E15B) == 0x3A && byte(0x00FFC2) > 0x00 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00 &&
              ((unless(once(byte(0x00B033) > 0x00))) ||
               (never(prev(stage_id_old_old) != stage_id) && never(byte(0x00E15B) == 0x36) && always_false()))
)

achievement(
    title = "Tyrant Lizard", points = 10,
    description = "Complete T-Rex Carnage on normal or higher with full health (normal or higher)",
    id = 72690, badge = "77803", published = "26/02/2019 01:26:00", modified = "07/03/2019 22:45:18",
    trigger = stage_id_old == 0x01 && byte(0x00B009) == 0xA2 && byte(0x00FFC2) > 0x00 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00 && byte(0x00B032) == 0x28 && once(byte(0x00B033) >= 0x01) && never(byte(0x00B032)
               == 0x00) && never(stage_id_old != 0x01)
)

achievement(
    title = "For Science!", points = 25,
    description = "Rescue the InGen scientist with at least 75 seconds left (first emergency mission)",
    id = 72691, badge = "77804", published = "26/02/2019 01:26:03", modified = "28/03/2021 14:04:27",
    trigger = stage_id_old == 0x09 && byte(0x00E15B) == 0x3F && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00 &&
              ((unless(once(byte(0x00000A) < 0x4B))) ||
               (never(prev(stage_id_old_old) != stage_id) && always_false()))
)

achievement(
    title = "Preserve Life", points = 25,
    description = "Reach Biosyn headquarters with at least 95 dinosaur stock remaining",
    id = 72692, badge = "77805", published = "26/02/2019 01:26:07", modified = "28/03/2021 14:04:39",
    trigger = stage_id_old == 0x0C && byte(0x000008) > 0x5E && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "One Man Army", points = 25,
    description = "Complete the Blockade with full health",
    id = 72693, badge = "77806", published = "26/02/2019 01:26:12", modified = "07/03/2019 22:45:43",
    trigger = stage_id_old == 0x02 && byte(0x00B009) == 0xA2 && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00 && 
              byte(0x00B032) == 0x28 && once(byte(0x00B033) >= 0x01) && never(byte(0x00B032) == 0x00) && 
              never(stage_id_old != 0x02)
)

achievement(
    title = "Unlimited Ammo", points = 10,
    description = "Complete High Ptera using only cattle prod and rifle",
    id = 72694, badge = "77807", published = "26/02/2019 01:26:15", modified = "28/03/2021 14:04:47",
    trigger = stage_id_old == 0x03 && byte(0x00A9B0) >= 0xC8 && byte(0x00A9B2) >= 0x14 && byte(0x00A9B8) >= 0x14 && 
              byte(0x00A9B6) >= 0xC8 && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00 && byte(0x00B009) == 0xA2 && 
              once(byte(0x00B033) >= 0x01) && never(byte(0x00B032) == 0x00) && never(stage_id_old != 0x03)
)

achievement(
    title = "Recover the Supplies", points = 5,
    description = "Complete the supplies emergency mission (any difficulty)",
    id = 72667, badge = "77780", published = "26/02/2019 01:24:38", modified = "02/03/2019 04:52:47",
    trigger = stage_id_old == 0x08 && byte(0x00E15B) == 0x43 && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "T-Rex Carnage", points = 5,
    description = "Complete the T-Rex Carnage mission (any difficulty)",
    id = 72659, badge = "77735", published = "26/02/2019 01:24:07", modified = "02/03/2019 04:52:06",
    trigger = stage_id_old == 0x01 && byte(0x00E15B) == 0x41 && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "Blockade", points = 5,
    description = "Complete the Blockade mission (any difficulty)",
    id = 72660, badge = "77736", published = "26/02/2019 01:24:10", modified = "02/03/2019 04:52:13",
    trigger = stage_id_old == 0x02 && byte(0x00E15B) == 0x43 && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "High Ptera", points = 5,
    description = "Complete the High Ptera mission (any difficulty)",
    id = 72661, badge = "77737", published = "26/02/2019 01:24:14", modified = "02/03/2019 04:52:22",
    trigger = stage_id_old == 0x03 && word(0x00E15A) == 0x7A22 && unless(word(0x00E14A) == 0x3222) && byte(0x00A9A0)
               == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "Seek and Destroy", points = 5,
    description = "Complete the Seek and Destroy mission (any difficulty)",
    id = 72662, badge = "77739", published = "26/02/2019 01:24:18", modified = "17/08/2020 02:53:32",
    trigger = prev(stage_id_old_old_old_old) == 0x04 && stage_id > prev(stage_id) && stage_id != 0x05 && 
              byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "Protect The Gallimimus", points = 5,
    description = "Complete the Protect The Gallimimus mission (any difficulty)",
    id = 72663, badge = "77740", published = "26/02/2019 01:24:22", modified = "02/03/2019 04:52:31",
    trigger = stage_id_old == 0x05 && byte(0x00E15B) == 0x35 && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "Rescue the Scientist", points = 5,
    description = "Complete the scientist emergency mission (any difficulty)",
    id = 72664, badge = "77777", published = "26/02/2019 01:24:26", modified = "02/03/2019 04:52:34",
    trigger = stage_id_old == 0x09 && byte(0x00E15B) == 0x3F && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "Power the Incubators", points = 5,
    description = "Complete the incubators emergency mission (any difficulty)",
    id = 72665, badge = "77778", published = "26/02/2019 01:24:30", modified = "02/03/2019 04:52:38",
    trigger = stage_id_old == 0x06 && byte(0x00E15B) == 0x34 && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "Reactivate Main Power", points = 5,
    description = "Complete the main power emergency mission (any difficulty)",
    id = 72666, badge = "77779", published = "26/02/2019 01:24:33", modified = "02/03/2019 04:52:42",
    trigger = stage_id_old == 0x07 && byte(0x00E15B) == 0x3F && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "Track Down the Spy", points = 5,
    description = "Complete the spy emergency mission (any difficulty)",
    id = 72668, badge = "77781", published = "26/02/2019 01:24:42", modified = "02/03/2019 04:52:51",
    trigger = stage_id_old == 0x0A && byte(0x00E15B) == 0x35 && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "Rescue the Scout", points = 5,
    description = "Complete the scout emergency mission (any difficulty)",
    id = 72669, badge = "77782", published = "26/02/2019 01:24:45", modified = "07/03/2019 22:44:26",
    trigger = stage_id_old == 0x0B && byte(0x00E15B) == 0x3A && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00 && 
              once(byte(0x00B033) >= 0x01) && never(stage_id_old != 0x0B)
)

achievement(
    title = "Destroy Biosyn Headquarters", points = 10,
    description = "Complete the Biosyn HQ mission (any difficulty)",
    id = 72670, badge = "77783", published = "26/02/2019 01:24:49", modified = "07/03/2019 22:44:40",
    trigger = stage_id_old == 0x0C && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00 && byte(0x00B009) == 0xA2 && 
              once(byte(0x00B033) >= 0x01) && never(stage_id_old != 0x0C)
)

achievement(
    title = "Disarm the Bombs", points = 5,
    description = "Complete the bomb disarming emergency mission (any difficulty)",
    id = 72671, badge = "77784", published = "26/02/2019 01:24:52", modified = "02/03/2019 04:53:07",
    trigger = stage_id_old == 0x0D && byte(0x00E15B) == 0x3F && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00
)

achievement(
    title = "Evacuate", points = 25,
    description = "Destroy the T-Rex and evacuate the island (normal + only)",
    id = 72672, badge = "77785", published = "26/02/2019 01:24:56", modified = "28/03/2021 14:03:49",
    trigger = prev(stage_id_old) == 0x0E && byte(0x00FFC2) > 0x00 && byte(0x00A9A0) == 0x01 && byte(0x00A9A7) == 0x00 &&
              ((stage_id_old == 0x0F) ||
               (stage_id_old == 0x10))
)

achievement(
    title = "Get to the Choppa", points = 25,
    description = "Escape Biosyns attack chopper (hard only)",
    id = 72673, badge = "77907", published = "26/02/2019 01:24:59", modified = "28/03/2021 14:03:56",
    trigger = prev(stage_id_old) == 0x0F && stage_id == 0x10 && byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00
)



achievement(
    title = "T-Rex Massacre", points = 10,
    description = "Complete the T-Rex Carnage mission (hard)",
    id = 72675, badge = "77788", published = "26/02/2019 01:25:07", modified = "02/03/2019 04:53:24",
    trigger = stage_id_old == 0x01 && byte(0x00E15B) == 0x41 && byte(0x00FFC2) == 0x02 && byte(0x00A9A0) == 0x01 && 
              byte(0x00A9A7) == 0x00
)

// ----------------------------------------------------------------------------
// -- Revised
// ----------------------------------------------------------------------------

achievement(
    title = "Raptor Attack", points = 5,
    description = "Complete the Raptor Attack mission (any difficulty)",
    id = 72658, badge = "77734", published = "26/02/2019 01:24:02", modified = "02/03/2019 04:52:01",
    trigger =
        stage_id == stages["ra8"]["id"] &&
        prev(mission_status) == mission_states["playing"] &&
        mission_status == mission_states["win"]
)

achievement(
    title = "Raptor Assault", points = 10,
    description = "Complete the Raptor Attack mission (hard)",
    id = 72674, badge = "77787", published = "26/02/2019 01:25:02", modified = "02/03/2019 04:53:20",
    trigger = 
        stage_id == stages["ra8"]["id"] &&
        prev(mission_status) == mission_states["playing"] &&
        mission_status == mission_states["win"] &&
        difficulty == difficulty_levels["hard"]
)

// ----------------------------------------------------------------------------
// -- New
// ----------------------------------------------------------------------------



// ----------------------------------------------------------------------------
// -- Demoted
// ----------------------------------------------------------------------------

