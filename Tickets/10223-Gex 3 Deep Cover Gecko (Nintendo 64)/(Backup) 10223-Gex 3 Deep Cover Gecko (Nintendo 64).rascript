// Gex 3: Deep Cover Gecko
// #ID = 10223

// Ticket 57403: Didn't trigger even though I finished the stage with way more than 3:00 remaining, the challenge is
//               viewed as active, but something's still not right. The many attempts there were to fix the logic might
//               have something to do with it.
//               RetroAchievements Hash: 6770DDEC84EB21A5E0D0F55DFD52A01A
//               Emulator: RetroArch (Mupen64Plus-Next)
//               Emulator Version: 1.14.0
achievement(
    title = "Abyssmal Performance", points = 10,
    description = "Complete The Abyssmal with at least 3m left.",
    id = 48883, badge = "49594", published = "28/05/2017 06:36:35", modified = "11/04/2023 22:54:04",
    trigger = unless(repeated(10801, byte(0x0A54F3) == 0x01 && byte(0x0A557A) == 0x13)) && byte(0x0A5578) == 0x19 && 
              bit7(0x0A55C5) != 0x01 && trigger_when(once(prev(word(0x0A54DC)) == 0x31)) && trigger_when(word(0x0A54DC)
               == 0x32) && unless(byte(0x0A54F0) == 0x90) && trigger_when(repeated(100, word(0x0A5488) == 0x1557)) && 
              trigger_when(byte(0x0A54EC) == 0x01) &&
              (always_false() || (never(byte(0x0A557A) != 0x13)))
)

// Ticket 57565: Achievement pops when getting near or collecting the final collectible but the timer is under 2m20s
//               remaining.
//               RetroAchievements Hash: 6770DDEC84EB21A5E0D0F55DFD52A01A
//               Emulator: RetroArch (Mupen64Plus-Next (2.4-Vulkan bc24153))
//               Emulator Version: 1.15.0
// Ticket 57470: The same problem as in this Achievement :
//               
//               https://retroachievements.org/achievement/48883
//               RetroAchievements Hash: 6770DDEC84EB21A5E0D0F55DFD52A01A
//               Emulator: RetroArch (Mupen64Plus-Next)
//               Emulator Version: 1.14.0
achievement(
    title = "Cheese Whiz", points = 10,
    description = "Complete Cheesy Rider with at least 2m20s left.",
    id = 48884, badge = "49596", published = "28/05/2017 06:36:38", modified = "11/04/2023 22:54:10",
    trigger = unless(repeated(8401, byte(0x0A54F3) == 0x01 && byte(0x0A557A) == 0x12)) && byte(0x0A5578) == 0x1A && 
              bit7(0x0A55C5) != 0x01 && trigger_when(once(prev(word(0x0A54DC)) == 0x31)) && trigger_when(word(0x0A54DC)
               == 0x32) && unless(byte(0x0A54F0) == 0x90) && trigger_when(repeated(100, word(0x0A5488) == 0x1557)) && 
              trigger_when(byte(0x0A54EC) == 0x01) &&
              (always_false() || (never(byte(0x0A557A) != 0x12)))
)
