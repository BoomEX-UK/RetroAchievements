// Crash of the Titans
// #ID = 16382

main_pointer = tbyte(0x15582c)
second_layer = tbyte(main_pointer+0x000004)

gems_offsets = [
    0x5f,
    0x60,
    0x61,
    0x62
]

rich_presence_display("Gems: {0}, Gold Mask:{1}, Silver Mask:{2}, Bronze Mask:{3}",
    rich_presence_macro("Number",sum_of(gems_offsets,s=>bitcount(second_layer+s))),
    rich_presence_macro("Number",byte(second_layer+0x5e)),
    rich_presence_macro("Number",byte(second_layer+0x5c)),
    rich_presence_macro("Number",byte(second_layer+0x54))
)