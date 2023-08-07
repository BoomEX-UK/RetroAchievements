// Snake's Revenge
// #ID = 1959

achievement(
    title = "Big Boss", points = 5,
    description = "Defeat Big Boss second form.",
    id = 52244, badge = "72244", published = "02/09/2017 20:15:47", modified = "18/11/2018 12:21:55",
    trigger = never(byte(0x000054) != 0x08) && once(byte(0x0000AC) == 0x6F) && byte(0x0000AC) == 0xEF && repeated(2,
               byte(0x0000AC) > prev(byte(0x0000AC)))
)

achievement(
    title = "Stealth Operation [No Alert]", points = 5,
    description = "Reach the Ultra-Sheik Assault Unit without Alert.",
    id = 52261, badge = "72269", published = "02/09/2017 20:21:28", modified = "18/11/2018 12:22:39",
    trigger = never(byte(0x00005B) > 0x01) && unless(byte(0x0000AC) > 0x00) && unless(byte(0x000054) > 0x01) && 
              once(byte(0x000055) == 0x00) && once(byte(0x00005F) == 0x00) && byte(0x000055) == 0x10 && byte(0x00005F)
               == 0x0F && once(word(0x000000) == 0xC462) && once(word(0x000002) == 0xC489)
)

achievement(
    title = "A Snake on a Ship [No Alert]", points = 5,
    description = "Place C4 in the Ammo Room of the Ship without Alert.",
    id = 52262, badge = "72270", published = "02/09/2017 20:21:46", modified = "18/11/2018 12:22:41",
    trigger = never(byte(0x00005B) > 0x01) && unless(byte(0x0000AC) > 0x03) && unless(byte(0x000040) == 0x02) && 
              unless(byte(0x000054) > 0x02) && once(byte(0x000055) == 0x00) && once(byte(0x00005F) == 0x06) && 
              byte(0x000055) == 0x18 && byte(0x00005F) == 0x03 && once(word(0x000000) == 0xC462) && once(word(0x000002)
               == 0xC489) && byte(0x000041) == 0x04
)

achievement(
    title = "Camp Sidescrolling Challenge", points = 5,
    description = "Beat one of the two Sidescrolling parts in Camp without Alert.",
    id = 52267, badge = "72272", published = "02/09/2017 20:23:39", modified = "18/11/2018 12:22:48",
    trigger = never(byte(0x000054) < 0x02) && never(byte(0x000054) > 0x03) && never(byte(0x00005B) > 0x01) &&
              ((once(byte(0x000040) == 0x02) && once(byte(0x000055) == 0x0A) && once(byte(0x00005F) == 0x18) && 
                once(byte(0x000055) == 0x26) && once(byte(0x00005F) == 0x1A) && once(byte(0x000055) == 0x01) && 
                once(byte(0x000055) == 0x02) && once(byte(0x000055) == 0x03) && once(byte(0x000055) == 0x04) && 
                once(byte(0x000055) == 0x05) && once(byte(0x000055) == 0x06) && once(byte(0x000055) == 0x07) && 
                once(byte(0x000055) == 0x08) && once(byte(0x000055) == 0x09) && once(byte(0x000055) == 0x0A) && 
                byte(0x000040) == 0x00) ||
               (once(byte(0x000040) == 0x02) && once(byte(0x000055) == 0x29) && once(byte(0x00005F) == 0x09) && 
                once(byte(0x000055) == 0x26) && once(byte(0x00005F) == 0x1A) && once(byte(0x000055) == 0x01) && 
                once(byte(0x000055) == 0x02) && once(byte(0x000055) == 0x03) && once(byte(0x000055) == 0x04) && 
                once(byte(0x000055) == 0x05) && once(byte(0x000055) == 0x06) && once(byte(0x000055) == 0x07) && 
                once(byte(0x000055) == 0x08) && once(byte(0x000055) == 0x09) && once(byte(0x000055) == 0x0A) && 
                byte(0x000040) == 0x00) ||
               (once(byte(0x000040) == 0x02) && once(byte(0x000055) == 0x12) && once(byte(0x00005F) == 0x17) && 
                once(byte(0x000055) == 0x25) && once(byte(0x00005F) == 0x14) && once(byte(0x000055) == 0x00) && 
                once(byte(0x000055) == 0x01) && once(byte(0x000055) == 0x02) && once(byte(0x000055) == 0x03) && 
                once(byte(0x000055) == 0x04) && once(byte(0x000055) == 0x05) && once(byte(0x000055) == 0x06) && 
                once(byte(0x000055) == 0x07) && once(byte(0x000055) == 0x08) && byte(0x000040) == 0x00) ||
               (once(byte(0x000040) == 0x02) && once(byte(0x000055) == 0x28) && once(byte(0x00005F) == 0x03) && 
                once(byte(0x000055) == 0x25) && once(byte(0x00005F) == 0x14) && once(byte(0x000055) == 0x00) && 
                once(byte(0x000055) == 0x01) && once(byte(0x000055) == 0x02) && once(byte(0x000055) == 0x03) && 
                once(byte(0x000055) == 0x04) && once(byte(0x000055) == 0x05) && once(byte(0x000055) == 0x06) && 
                once(byte(0x000055) == 0x07) && once(byte(0x000055) == 0x08) && byte(0x000040) == 0x00))
)

achievement(
    title = "Snake's Revenge [No Alert]", points = 10,
    description = "Reach Big Boss without Alert. [Top Down Only. Clear Alert before progression]",
    id = 52265, badge = "72275", published = "02/09/2017 20:22:59", modified = "18/11/2018 12:22:46",
    trigger = never(byte(0x00005B) > 0x01) && unless(byte(0x0000AC) > 0x2F) && unless(byte(0x000040) == 0x02) && 
              unless(byte(0x000054) > 0x08) && once(byte(0x000055) == 0x00) && once(byte(0x00005F) == 0x03) && 
              byte(0x000055) == 0x34 && byte(0x00005F) == 0x07 && unless(byte(0x000055) == 0x08) && 
              unless(byte(0x000055) == 0x23) && unless(byte(0x000055) == 0x26) && byte(0x000088) == 0xFF && 
              once(word(0x000000) == 0xC462) && once(word(0x000002) == 0xC489) && unless(byte(0x00005B) == 0x09)
)

achievement(
    title = "A Snake on a Ship [Expert]", points = 5,
    description = "Escape the Ship with Flare Gun. No Pistol, Machine Gun, Claymore.",
    id = 52219, badge = "72261", published = "02/09/2017 20:05:28", modified = "21/04/2023 09:59:05",
    trigger = byte(0x0006C5) > 0x00 && byte(0x000054) == 0x02 && byte(0x000055) == 0x17 && byte(0x0000AC) == 0x03 && 
              once(word(0x000000) == 0xC462) && once(word(0x000002) == 0xC489) && once(byte(0x0000AC) == 0x01) &&
              ((never((prev(low4(0x0006C1)) * 0x64 + prev(high4(0x0006C0)) * 0x0A + prev(low4(0x0006C0)) -
                 low4(0x0006C1) * 0x64 - high4(0x0006C0) * 0x0A - low4(0x0006C0)) == 0x01)) ||
               (never((prev(low4(0x0006C3)) * 0x64 + prev(high4(0x0006C2)) * 0x0A + prev(low4(0x0006C2)) -
                 low4(0x0006C3) * 0x64 - high4(0x0006C2) * 0x0A - low4(0x0006C2)) == 0x01)) ||
               (never((prev(high4(0x0006CA)) * 0x0A + prev(low4(0x0006CA)) - high4(0x0006CA) * 0x0A - low4(0x0006CA)) ==
                 0x01)))
)

achievement(
    title = "Spy Train [One Life]", points = 5,
    description = "Finish the Train without dying.",
    id = 52229, badge = "72255", published = "02/09/2017 20:10:12", modified = "18/11/2018 12:22:16",
    trigger = never(byte(0x00004A) == 0x03) && byte(0x000054) == 0x04 && byte(0x000055) == 0x10 && byte(0x0000AC) ==
               0x07 && once(word(0x000000) == 0xC462) && once(word(0x000002) == 0xC489) && once(byte(0x0000AC) == 0x03)
)

achievement(
    title = "Three in a Row", points = 3,
    description = "Hit Metal Gear 2 with Missiles three times in a row without missing.",
    id = 52258, badge = "72284", published = "02/09/2017 20:20:02", modified = "18/11/2018 12:23:01",
    trigger = never(byte(0x000054) != 0x0A) &&
              ((unless(byte(0x000402) != 0x83) && repeated(3, byte(0x0005D1) != prev(byte(0x0005D1))) && 
                never(byte(0x000470) < 0x76) && never(byte(0x000470) > 0x80) && never(byte(0x000486) < 0x40) && 
                never(byte(0x000486) > 0x54)) ||
               (unless(byte(0x000402) != 0x83) && repeated(3, byte(0x0005D1) != prev(byte(0x0005D1))) && 
                never(byte(0x000470) < 0x76) && never(byte(0x000470) > 0x80) && never(byte(0x000486) < 0x40) && 
                never(byte(0x000486) > 0x54)))
)

achievement(
    title = "Trust No One", points = 10,
    description = "Defeat the Imposter without eating Food and take his Power Armor.",
    id = 52248, badge = "72248", published = "02/09/2017 20:16:55", modified = "18/11/2018 12:22:02",
    trigger = byte(0x000054) == 0x04 && byte(0x000055) == 0x16 && once(byte(0x000055) == 0x0B) && never(byte(0x0006CD) <
               prev(byte(0x0006CD))) && byte(0x0000AC) == 0x07 && byte(0x0000AC) > prev(byte(0x0000AC))
)

achievement(
    title = "No One leaves the Screen", points = 10,
    description = "Destroy the Nagmachon Tank without him leaving the screen after first Mine.",
    id = 52249, badge = "72249", published = "02/09/2017 20:17:05", modified = "18/11/2018 12:22:05",
    trigger = byte(0x000054) == 0x06 && never(byte(0x0005A0) != prev(byte(0x0005A0))) && once(byte(0x0005CD) == 0xA2) && 
              byte(0x0000AC) == 0x0F && byte(0x0000AC) > prev(byte(0x0000AC))
)
