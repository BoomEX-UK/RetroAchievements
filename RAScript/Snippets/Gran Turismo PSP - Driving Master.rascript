// Gran Turismo: The Real Driving Simulator
// #ID = 15626

// ach 1

dm_First    = 0x01027bb8
dm_Last     = 0x01027ee0
track_id = dword(0x01017e40)

triggers = []
for rng in range(0x01027bb8,0x01027ee0,8) {
    array_push(triggers,rng)
}

achievement(
    "Driving Master (math)",
    "Another way to do it..",
    1,
    track_id != -1 && track_id != 0 &&
    sum_of(range(dm_First,dm_Last,8),i => prev(dword(i))) != 0 &&
    sum_of(range(dm_First,dm_Last,8),i => dword(i)) == 0
)


//--------------------------------------------------
// You Are a Speed Racer [Void]
//--------------------------------------------------

top_speed_kmph = 400
top_speed_mph = 248
//top_speed_kmph = 160
//top_speed_mph = 100
mph_diff = top_speed_kmph - top_speed_mph

function is_slot1() => byte(0x01d26fd0) == 0x03
function is_slot2() => byte(0x01d26d38) == 0x03

function is_kmph_1() => byte(0x01d26fe5)
speed_1 = float(0x01d26fe0)

function is_kmph_2() => byte(0x01d26d4d)
speed_2 = float(0x01d26d48)

function unpause() => byte(0x01d73894) == 0
function ontrack() => tbyte(0x00ce2e0d) > 0

achievement(
    id=354576,
    title="[VOID] You Are a Speed Racer",
    description=top_speed_kmph+" kmph / " + top_speed_mph + " mph (" +mph_diff+ " diff)",
    points=1,
    trigger=(
        is_slot1() &&
        measured(tally(600,
            unpause() && ontrack()&&
            speed_1 - (is_kmph_1()*mph_diff) >= top_speed_mph
        ), format="percent") &&
        never(is_slot1() && speed_1 - (is_kmph_1()*mph_diff) < top_speed_mph)
    ) || (
        is_slot2() && 
        measured(tally(600,
            unpause() && ontrack() &&
            speed_2 - (is_kmph_2()*mph_diff) >= top_speed_mph
        ), format="percent") &&
        never(is_slot2() && speed_2 - (is_kmph_2()*mph_diff) < top_speed_mph)
    )
)




//--------------------------------------------------
// Clean Lap Racer [Void]
//--------------------------------------------------

// Unused ------
// pointer_singlerace = tbyte(0x01cccce0)
// modes = {
//     "mode_single": 0,
//     "mode_tt": 1,
//     "mode_drift": 2
// }

// Wheels ------
wheel_pointers = {
    "front-left" : tbyte(0x01cca528),
    "front-right" : tbyte(0x01cca718),
    "back-left" : tbyte(0x01ccaa00),
    "back-right" : tbyte(0x01ccabf0)
}
grounding_offset = 0x0100001F

// Game Info ------
game_mode = byte(0x01017e58)
lap_number = byte(0x01d0fe4c)
gmcheck = game_mode == 1

achievement(
        id=0,
        title="[VOID] Clean Lap",
        description="Drive a clean lap in a time trial",
        points=1,
        trigger=
            never(gmcheck && wheel_pointers["front-left"] == 0) &&
            once(gmcheck && prev(lap_number)<lap_number) && 
            trigger_when(tally(2,gmcheck && prev(lap_number)<lap_number)) && 
            never(gmcheck &&
                all_of(wheel_pointers,s=>byte(wheel_pointers[s]+grounding_offset)==0)
            )
)
