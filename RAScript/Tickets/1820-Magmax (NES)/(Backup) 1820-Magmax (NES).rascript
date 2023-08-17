// Magmax
// #ID = 1820

// Ticket: 60893	
//      Triggered after first loop, but shouldn’t have triggered until completion of third loop. Achievement removed from my profile.
//      RetroAchievements Hash: acd1b9c97b312fe4ea6422a525c72dab
//      Emulator: RetroArch (Mesen)
//      Emulator Version: 1.15.0
achievement(
    title = "MEIGETSU !", points = 50,
    description = "Finish 3 Loops for MEIGETSU",
    id = 20533, badge = "20243", published = "28/01/2015 13:25:37", modified = "12/12/2021 18:24:45",
    trigger = byte(0x00000D) == 0x0A && byte(0x00000E) == 0x63 && byte(0x000000) >= 0x00 && byte(0x000000) <= 0x01 && 
              measured(byte(0x00000F) == 0x03)
)

// Ticket: 50828	
//      This triggered just by reaching the boss with the MagMax. It's possible the other one I reported triggered for that reason as well, and I only thought it was when I got hit because I happened to right when the achievement I got before that one finished displaying. It's... hard to explain, sorry, but basically: these "stage mastered" achievements likely just pop when you get to the boss with the MagMax.
//      RetroAchievements Hash: acd1b9c97b312fe4ea6422a525c72dab
//      Emulator: RetroArch (Mesen 0.9.9)
//      Emulator Version: 1.10.3
achievement(
    title = "Plains Stage 2 mastered (Above ground)", points = 10,
    description = "Beat the Babylon Dragon Ship with MagMax recomposed!",
    id = 20523, badge = "20238", published = "28/01/2015 12:50:16", modified = "12/12/2021 18:24:44",
    trigger = measured(byte(0x00000E) == 0x7F, when=byte(0x000000) == 0x00 && byte(0x00000D) == 0x0E && byte(0x000095)
               == 0x05)
)

// Ticket: 54304	
//      I reached the dragon in "fighter" form (i.e. no upgrades/one hit from defeat) and this achievement immediately triggered.
//      RetroAchievements Hash: acd1b9c97b312fe4ea6422a525c72dab
//      Emulator: RALibRetro (Mesen 0.9.9)
//      Emulator Version: 1.4
achievement(
    title = "Plains Stage 2 (Above ground)", points = 10,
    description = "Beat the Babylon Dragon Ship",
    id = 20521, badge = "20238", published = "28/01/2015 12:49:52", modified = "12/12/2021 18:24:49",
    trigger = measured(byte(0x00000E) == 0x7F, when=byte(0x000000) == 0x00 && byte(0x00000D) == 0x0E)
)

// Ticket: 50827	
//      This triggered when I got hit by the boss as the fully reconstructed MagMax, not when I beat the boss. I actually lost the MagMax.
//      RetroAchievements Hash: acd1b9c97b312fe4ea6422a525c72dab
//      Emulator: RetroArch (Mesen 0.9.9)
//      Emulator Version: 1.10.3
achievement(
    title = "Machine City Stage mastered (Above ground)", points = 10,
    description = "Beat the Babylon Dragon Ship with MagMax recomposed!",
    id = 20519, badge = "20240", published = "28/01/2015 12:49:26", modified = "12/12/2021 18:24:50",
    trigger = measured(byte(0x00000E) == 0xA4, when=byte(0x000000) == 0x00 && byte(0x00000D) == 0x0F && byte(0x000095)
               == 0x05)
)
