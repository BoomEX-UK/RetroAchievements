// Adventure Time: Hey Ice King! Why'd You Steal Our Garbage?!!
// #ID = 16621

stats = {
    "3_hearts" : byte(0x0deb40),
    "2_hearts" : byte(0x0dea98),
    "1_hearts" : byte(0x0de9f0),
    "3_attack" : byte(0x0deb41),
    "2_attack" : byte(0x0dea99),
    "1_attack" : byte(0x0de9f1),
    "3_speed" : byte(0x0deb42),
    "2_speed" : byte(0x0dea9a),
    "1_speed" : byte(0x0de9f2),
}

achievement(
    id=0,
    title="[boom] We're Dustomancy!",
    description="demo",
    points=0,
    trigger=
        dword(0x0deba4) != 0 &&
        tbyte(0x0f40cd) != 0 &&
        sum_of(stats,s=>stats[s]) > sum_of(stats,s=>prev(stats[s]))
)