// Gran Turismo: The Real Driving Simulator
// #ID = 15626

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