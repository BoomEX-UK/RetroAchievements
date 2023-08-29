// Shaman King: Master of Spirits
// #ID = 527

// Ticket ID: 59706
//      Does not trigger if the associated cutscene is skipped.
//      RetroAchievements Hash: 1c92edbad07a372ee382d16cf624dc4b
//      Emulator: RetroArch (mGBA)
//      Emulator Version: 1.15.0
achievement(
    title = "The Future Wife", points = 10,
    description = "Anna and Manta...",
    id = 16845, badge = "179163", published = "06/11/2014 06:05:54", modified = "20/06/2021 17:25:06",
    trigger = byte(0x02E405) == 0xA0 && byte(0x02E409) == 0xA2 && byte(0x02EBA5) == 0x40 && bit2(0x002360) == 0x01 && 
              once(byte(0x02DCD4) == 0x68) && byte(0x02DCD4) == 0x72
)

// Ticket ID: 57590
//      Achievement didn't trigger upon watching the cutscene and receiving the upgrade. Closing and reopening the emulator caused the achievement to pop after loading the game without doing anything else.
//      RetroAchievements Hash: 1c92edbad07a372ee382d16cf624dc4b
//      Emulator: RetroArch (mGBA)
//      Emulator Version: 1.14.0
achievement(
    title = "Halo Bump to Crescent Wave", points = 10,
    description = "Get the Light Sword and Celestial Slash Upgrades",
    id = 16856, badge = "179174", published = "06/11/2014 06:08:42", modified = "20/06/2021 17:25:10",
    trigger = once(byte(0x002356) == 0x00) && byte(0x002356) == 0x01 && byte(0x02E405) == 0x08 && byte(0x02E409) == 0x0A
)

// Ticket ID: 55670
//      A little confused. I was playing Shaman King: Master of Spirits, and I died early on while fighting an enemy that was throwing things at me. I don't remember if I hit them as I died, but after the game over screen, I earned an achievement, "Billboard Painter" for defeating Kanta the Billboard Painter. Did I actually earn this achievement, or was it a glitch? Is this an achievement that requires me to die?
//      RetroAchievements Hash: 1c92edbad07a372ee382d16cf624dc4b
//      Emulator: RAVBA
//      Emulator Version: 1.0
achievement(
    title = "Billboard Painter", points = 5,
    description = "Get the Kanta Spirit",
    id = 16818, badge = "179138", published = "06/11/2014 05:57:08", modified = "20/06/2021 17:24:57",
    trigger = byte(0x02E405) == 0xC0 && byte(0x02E409) == 0xC2 && byte(0x02EBA5) == 0xB8 && bit6(0x00235D) == 0x01
)

// Ticket ID: 61314
//      Unlocked after dying to first boss (i played on hard difficulty if it change anything) and pressing start in the main menu.
//      RetroAchievements Hash: 1c92edbad07a372ee382d16cf624dc4b
//      Emulator: RetroArch (mGBA)
//Emulator Version: 1.15.0
achievement(
    title = "No More Boxes", points = 10,
    description = "Get the Tokageroh Spirit",
    id = 16829, badge = "179148", published = "06/11/2014 06:03:39", modified = "27/05/2023 04:37:03",
    trigger = byte(0x02E405) == 0xCC && byte(0x02E409) == 0xCE && byte(0x02EBA5) == 0xC0 && bit5(0x00235B) >
               prev(bit5(0x00235B))
)

// Ticket ID: 55789
//      I Get A Game Over In First Boss And I Return To The Title Screen I Press Start And The Achievement trigger
//      RetroAchievements Hash: 1c92edbad07a372ee382d16cf624dc4b
//      Emulator: RetroArch (mGBA)
//      Emulator Version: 1.12.0
achievement(
    title = "The Real Reward", points = 10,
    description = "5 Spirits...",
    id = 16834, badge = "179153", published = "06/11/2014 06:04:13", modified = "20/06/2021 17:25:02",
    trigger = bit1(0x00235C) == 0x01 && bit2(0x00235C) == 0x01 && bit0(0x00235C) == 0x01 && bit3(0x00235C) == 0x01 && 
              bit4(0x00235C) == 0x01 && never(byte(0x02EBA5) == 0x00) &&
              ((byte(0x02E405) == 0xFC && byte(0x02E409) == 0xFE && byte(0x02EBA5) == 0xA4) ||
               (byte(0x02E405) == 0x5C && byte(0x02E409) == 0x5E && byte(0x02EBA5) == 0xD8) ||
               (byte(0x02E405) == 0x14 && byte(0x02E409) == 0x16 && byte(0x02EBA5) == 0x70) ||
               (byte(0x02E405) == 0xCC && byte(0x02E409) == 0xCE && byte(0x02EBA5) == 0xC0))
)
