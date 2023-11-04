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

achievement(
    "speed-check",
    top_speed_kmph+" kmph / " + top_speed_mph + " mph (" +mph_diff+ " diff)",
    1,
    (
        is_slot1() &&
        measured(tally(600,
            speed_1 - (is_kmph_1()*mph_diff) >= top_speed_mph
        ), format="percent") &&
        never(is_slot1() && speed_1 - (is_kmph_1()*mph_diff) < top_speed_mph)
    ) || (
        is_slot2() && 
        measured(tally(600,
            speed_2 - (is_kmph_2()*mph_diff) >= top_speed_mph
        ), format="percent") &&
        never(!is_slot1() && speed_2 - (is_kmph_2()*mph_diff) < top_speed_mph)
    )
)