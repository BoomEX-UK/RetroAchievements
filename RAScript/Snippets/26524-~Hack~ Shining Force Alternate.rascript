// ~Hack~ Shining Force Alternate
// #ID = 26524

battle_end = bit0(0x009c52)
ancient_ruins_start = bit2(0x009c55)

map_location = byte(0x009c00)
chapter_id = byte(0x009c01)

ap_mae = byte(0x009d48)
ap_maxine = byte(0x009ca8)
ap_diane = byte(0x009e88)
ap_erikin = byte(0x009ed8)
ap_alef = byte(0x009fc8)

achievement(
    "Warriros Code I [m]",
    "Win battle 1: Ancient Ruins without using AP",
    0,
    once( prev(ancient_ruins_start) < ancient_ruins_start ) &&
    never(
        map_location != 1 ||
        chapter_id != 1 ||
        ap_mae < prev(ap_mae) ||
        ap_maxine < prev(ap_maxine) ||
        ap_diane < prev(ap_diane) ||
        ap_erikin < prev(ap_erikin) ||
        ap_alef < prev(ap_alef)
    ) &&
    prev(battle_end) < battle_end
)
