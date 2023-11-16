// Hatris
// #ID = 1731


rich_presence_display("hats up:{0} / hats down:{1}",
    rich_presence_macro("Number",byte(0x03a0)),
    rich_presence_macro("Number",byte(0x03a3)-byte(0x03a0))
)