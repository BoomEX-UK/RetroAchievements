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

pointer_tt_drift = tbyte(0x01ccabf0)
pointer_singlerace = tbyte(0x01cccce0)
wheel_offset = 0x0100001F

game_mode = byte(0x01017e58)
modes = {
    "mode_single": 0,
    "mode_tt": 1,
    "mode_drift": 2
}
pointers = {
    "mode_single": pointer_singlerace,
    "mode_tt": pointer_tt_drift,
    "mode_drift": pointer_tt_drift
}

lap_number = byte(0x01d0fe4c)

triggers = []
for mode in modes {
    // pointer for Single Race is different to the other 2
    gmcheck = game_mode == 0
    if( mode != "mode_single" ) gmcheck = game_mode > 0
    // Build the trigger
    tmptrigger = 
        // check null pointer
        never(gmcheck && pointers[mode] == 0) && 
        // enable trigger icon when passing the start line
        once(gmcheck && prev(lap_number)<lap_number) && 
        // lap count (1 to start, 1 to end)
        trigger_when(tally(2,gmcheck && prev(lap_number)<lap_number)) && 
        // Reset if off-road
        never(gmcheck && byte(pointers[mode]+wheel_offset) == 0) 
    // Add to stack of triggers
    array_push(triggers,tmptrigger)
}

achievement(
        id=0,
        title="[VOID] Clean Lap",
        description="Drive a clean lap in a time trial, drift challenge or single race",
        points=1,
        trigger= any_of(triggers, s => s)

)
