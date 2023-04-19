// Super James Pond
// #ID = 1220
// Created by BoomEX


// ----------------------------------------------------------------------------
// -- Code Note Variables
// ----------------------------------------------------------------------------

// $005A: Paused (8-Bit)
//        0x00 = Paused
cPaused = byte(0x00005A)

// $0084: Loading Next Stage: (16-Bit)
//        0x00=No
cLoading = word(0x000084)

// $0086: Stage Number (16-Bit)
cStageNumber = word(0x000086)

// $0088: World Number? (16-Bit)
//        Fairly Inaccurate - Canot find a correlation between door and value
cWorldNumber = word(0x000088)

// $00CC: Next Stage To Load: (16-Bit)
//        When 0x000084 is non zero, the number here is the stage being loaded. Value is then moved to 0x000086
cNextStage = word(0x0000CC)

// $AD21: Cheat: All Doors Unlocked (16-Bit)
//        0x0000=No
cCheatAllDoors = word(0x00AD21)

// $AD23: Cheat: Infinite Lives (16-Bit)
//        0x0000=No
cCheatInfLives = word(0x00AD23)

// $B0E6: Player state: (8-Bit)
//        0x00=Falling
//        0x01=On Ground
//        0x02=Dodge
//        0x04=Hanging
//        0x05=Retracting
//        0x07=Dead
cPlayerState = word(0x00B0E6)

// $B11E: Invincibility Timer (16-Bit)
cInvincibleTime = word(0x00B11E)

// $B12E: Lives: (8-Bit)
//        0x01-0x04
cLives = byte(0x00B12E)

// $B130: Hitpoints: (8-Bit)
//        0x01-0x05
cHP = byte(0x00B130)

// $B158: Wings: (8-Bit)
//        0x00=No
cWings = byte(0x00B158)

// $B159: Swimming: (8-Bit)
//        0x00=No
cSwimming = byte(0x00B159)

// $B15D: In Car: (8-Bit)
//        0x00=No
cCar = byte(0x00B15D)

// $B15E: In Aeroplane: (8-Bit)
//        0x00=No
cPlane = byte(0x00B15E)

// $B15F: In Bathtub: (8-Bit)
//        0x00=No
cBath = byte(0x00B15F)

// $B166: Vehicle Control Style: (8-Bit)
//        0x01=Driving
//        0x02=Flying
cVehicleControl = byte(0x00B166)

// $B174: Horizontal Velocity: (24-bit signed?)
//        Negative=Left
//        Positive=Right
cHVelocity = tbyte(0x00B174)

// $B17E: Extension Length (16-Bit)
cExLength = word(0x00B17E)
function cExLengthRel() => cExLength/60

// $B1CA: Recent Collected Items: (40-Bit)
//        Order: 5,4,3,2,1
// 0x1c - Bowl of Soup
// 0x30 - TMNT T-Shirt
// 0x31 - Mickey Mouse T-Shirt
// 0x32 - Body Armour (Invincbility)
// 0x40 - 1-Up
// 0x42 - Rainbow

cItem5 = byte(0x00B1ca)
cItem4 = byte(0x00B1cb)
cItem3 = byte(0x00B1cc)
cItem2 = byte(0x00B1cd)
cItem1 = byte(0x00B1ce)

// $B12C: Continues (Upper4)
cContinues =  high4(0x00B12C)

// $B160: Umbrella Count (8-Bit)
// $b161: Umbrella Floating (8-Bit)
cUmbrellaCount = byte(0x00b160)
function isFloating() => byte(0x00b161) != 00

// $01144a: Stage 0x05 Kaizo Block 1 (8-bit)
// $01144e: Stage 0x05 Kaizo Block 2 (8-bit)
// $011452: Stage 0x05 Kaizo Block 3 (8-bit)
// $011456: Stage 0x05 Kaizo Block 4 (8-bit)
// $01145a: Stage 0x05 Kaizo Block 5 (8-bit)

c5KB1 = byte(0x01144a)
c5KB2 = byte(0x01144e)
c5KB3 = byte(0x011452)
c5KB4 = byte(0x011456)
c5KB5 = byte(0x01145a)

// $B1A2: Enemies Killed in Stage (16-bit)
cEnemiesKilled = word(0x00b1a2)

// $B0F2: Player Location X (16-bit)
cPlayerX = word(0x00b0f2)

// $B0F4: Player Location Y (16-bit)
cPlayerY = word(0x00b0f4)

// $B104: Level Respawn X (16-bit)
cRespawnX = word(0x00b104)

// $B106: Level Respawn Y (16-bit)
cRespawnY = word(0x00b106) 

// $B16F: Vertical Velocity (24-bit signed?)
cVelocity = tbyte(0x00b16f)


// ----------------------------------------------------------------------------
// -- Other Code Notes
// ----------------------------------------------------------------------------

// $A4EB: Start of Stage Item List [..]
// $AD5C: Stage Exit Count Array (656-Bits):
//        - Stage Exit counts follow, this stage is 0x00 (level select)
//        - Stage numbers are the offsets of the flag. I.e. Stage 0x3f has an exit count in position 0x3f.
//        - Stage counts increment upon touching an exit. If you go to a bonus level, come back and then clear the level, the exit count will be 0x02
// $B120: Score BCD (32-Bit)
//        0x12345678 = Decimal 12345678
// $B132: Animation Frame (16-Bit)
// $B134: Animation Counter (16-Bit)


// ----------------------------------------------------------------------------
// -- Useful Functions
// ----------------------------------------------------------------------------

function isLoading() => cLoading != 00
function isPaused() => cPaused == 00
function isCheating() => cCheatAllDoors != 00 || cCheatInfLives != 00
function isActiveGame() => cLives > 0 && cHP > 0
function bcdPair(addr) => low4(addr) + high4(addr) * 10
function scoreValue() {
    return bcdPair(0x00B120) +
    bcdPair(0x00B121) * 100 +
    bcdPair(0x00B122) * 10000 +
    bcdPair(0x00B123) * 1000000
}
function noVehicleOrAccessory() => cCar == 00 && cPlane == 00 && cBath == 00 && cWings == 0 && cSwimming ==0

function stageComplete( stage ){
    return !isCheating() && isActiveGame() && cStageNumber == stage && (cNextStage == 00 || cNextStage == 0x40) && isLoading()
}

// ----------------------------------------------------------------------------
// -- Stage End Achievements
// ----------------------------------------------------------------------------

stageEndCodes = {
   // 0x04: "Sports World", // [Manual Below]
    0x0d: "Teddy World",
    0x10: "Boss: Teddy",
    0x1a: "Sweet World World",
    0x20: "Industrial World",
    0x2b: "Boss: Car",
    0x36: "Bathtub World",
   // 0x48: "Board Game World", // [Manual Below]
    0x11: "Boss: Queen of Hearts",
    0x29: "Sky Castle World",
    0x4d: "Music World",
    0x12: "Boss: Ballerina",
    0x24: "Extra: Industrial World [m]",
    0x45: "Extra: Sweet World [m]",
    0x49: "Circus World",
    // 0x2e: "Boss: Evil Snowman" // [Manual Below]
}

stageEndPoints = {
    0x04: 5, // [Manual Below]
    0x0d: 5,
    0x10: 10,
    0x1a: 5,
    0x20: 5,
    0x2b: 10,
    0x36: 5, 
    0x48: 5, // [Manual Below]
    0x11: 10,
    0x29: 5,
    0x4d: 5,
    0x12: 10,
    0x24: 5,
    0x45: 5,
    0x49: 5,
    0x2e: 50 // [Manual Below]
}

achievementIDs = {
    0x04: 309537, // [Manual Below]
    0x0d: 309538,
    0x10: 309539,
    0x1a: 309548,
    0x20: 309541,
    0x2b: 309543,
    0x36: 309544, 
    0x48: 309546, // [Manual Below]
    0x11: 309534,
    0x29: 309542,
    0x4d: 309562,
    0x12: 309540,
    0x24: 309566,
    0x45: 309536,
    0x49: 309545,
    0x2e: 309565 // [Manual Below]
}

// 0x04 Multi Exit Sports World
achievement(
    id = 309537,
    title = "Complete Sports World", points = 5,
    description = "Complete stage 'Sports World' without using cheats",
    trigger = stageComplete(0x03) || stageComplete(0x04)
)

// 0x48 Multi Exit Board Game World
achievement(
    id = 309546,
    title = "Complete Board Game World", points = 5,
    description = "Complete stage 'Board Game' without using cheats",
    trigger = stageComplete(0x48) || stageComplete(0x4B)
)

// 0x2e Final Boss does't return to Overworld
achievement(
    id = 309565,
    title = "Complete Boss: Evil Snowman", points = 50,
    description = "Complete final Boss and save Christmas without using cheats",
    trigger = !isCheating() && isActiveGame() && cStageNumber == 0x2e && cNextStage == 0x50 && isLoading()
)

function stageAchievementBuilder( id, code, name, points ){
    achievement(
        id = id,
        title = "Complete " + name, points = points,
        description = "Complete stage '" + name + "' without using cheats",
        trigger = stageComplete(code)
    )
}

for k in stageEndCodes{
   stageAchievementBuilder( achievementIDs[k], k, stageEndCodes[k], stageEndPoints[k] ) 
}


// ----------------------------------------------------------------------------
// -- Cheating Achievements
// ----------------------------------------------------------------------------

achievement(
    id = 309527,
    title = "C.H.E.A.T. [m]", points = 5,
    description = "Collect Items in Order - C___, H_____, E____, A____, T__. (Disables other achievements until reset)",
    trigger = cItem5 == 22 && cItem4 == 100 && cItem3 == 99 && cItem2 == 33 && cItem1 == 93
)

achievement(
    id = 309528,
    title = "P.O.W.E.R. [m]", points = 5,
    description = "Collect Items in Order - P______, O__ ___, W____, E____, R_____.",
    trigger = byte(0x00B1CA) == 60 && byte(0x00B1CB) == 81 && byte(0x00B1CC) == 3 && byte(0x00B1CD) == 99 && 
              byte(0x00B1CE) == 53
)

achievement(
    id = 309529,
    title = "L.I.V.E.S. [m]", points = 5,
    description = "Collect Items in Order - L___, I__ _____, V_____, E____, S______. (Disables other achievements until reset)",
    trigger = byte(0x00B1CA) == 9 && byte(0x00B1CB) == 37 && byte(0x00B1CC) == 86 && byte(0x00B1CD) == 99 && 
              byte(0x00B1CE) == 11
)


// ----------------------------------------------------------------------------
// -- Collectible Achievements
// ----------------------------------------------------------------------------

function cmpItemCollected( itemID ){
    return prev(cItem1) != itemID && cItem1 == itemID
}

achievement(
    id = 309530,
    title = "Bad Taste", points = 1,
    description = "Drink the poisonous potion",
    trigger = isActiveGame() && cmpItemCollected(0x49)
)

achievement(
    id = 309547,
    title = "Body Armour", points = 5,
    description = "Collect the Body Armour item",
    trigger = isActiveGame() && cmpItemCollected(0x32)
)

achievement(
    id = 309531,
    title = "Leprechaun's Dream", points = 1,
    description = "Collect the most valuable item in the game",
    trigger = isActiveGame() && cmpItemCollected(0x41)
)

achievement(
    id = 309559,
    title = "CRTube", points = 1,
    description = "Collect the Retro Computer Screen Item",
    trigger = isActiveGame() && cmpItemCollected(0x52)
)

achievement(
    id = 309560,
    title = "PC 3.11", points = 1,
    description = "Collect the Retro PC Item",
    trigger = isActiveGame() && cmpItemCollected(0x53)
)

achievement(
    id = 309549,
    title = "3½ inches of floppy goodness", points = 1,
    description = "Collect the Floppy Disk Item",
    trigger = isActiveGame() && cmpItemCollected(0x54)
)

achievement(
    id = 309563,
    title = "Christmas is cancelled", points = 5,
    description = "Collect the Santa Item",
    trigger = isActiveGame() && cmpItemCollected(0x0a)
)

achievement(
    id = 309533,
    title = "The King of Christmas", points = 10,
    description = "Steal Santa's crowns from outside the Toy Factory without cheating",
    trigger = cStageNumber == 00 && !isCheating() && cItem1 == 0x3d && (cItem2 == 0x3d || cItem3 == 0x3d || cItem4 == 0x3d || cItem5 == 0x3d)
)

achievement(
    id = 309535,
    title = "Join the Fanclub", points = 5,
    description = "Collect a Mickey Mouse and a Teenage Mutant Turtles T-Shirt",
    trigger = tally(2,once(cmpItemCollected(0x30)),once(cmpItemCollected(0x31))) && never(!isActiveGame())
)

achievement(
    id = 309550,
    title = "Floaty-light", points = 10,
    description = "Finish a level with at least 1 unused Umbrella",
    trigger = once(cUmbrellaCount > 1) && never(cUmbrellaCount == 0) &&  trigger_when(cUmbrellaCount > 1 && isLoading())
)

achievement(
    id = 309555,
    title = "Jaws!", points = 10,
    description = "Collect 4 sets of Chattering Teeth in a row, on a single stage, without using cheats",
    trigger = !isCheating() && prev(cItem4) != 0x58 && cItem4 == 0x58 && cItem3 == 0x58 && cItem2 == 0x58 && cItem1 == 0x58
)

achievement(
    id = 309564,
    title = "Mary Pond-pins", points = 25,
    description = "Collect 15 items while floating using the Umbrella, without touching the ground or using cheats",
    trigger = !isCheating() && isFloating() && tally(15,scoreValue() != prev(scoreValue())) && never(!isFloating())
)


// ----------------------------------------------------------------------------
// -- Accessory Achievements
// ----------------------------------------------------------------------------

achievement(
    id = 308207,
    title = "Getting Over Exocoetidae", points = 1,
    description = "Fly using the Wings",
    trigger = isActiveGame() && !isCheating() && cWings != 0
)

achievement(
    id = 308208,
    title = "Just taking the Aston Martin out for a quick spin, Q", points = 1,
    description = "Start driving the Car",
    trigger = isActiveGame() && !isCheating() && cCar != 0
)

achievement(
    id = 308209,
    title = "Any higher, Mr. Pond, and my ears will pop.", points = 1,
    description = "Start flying the Aeroplane",
    trigger = isActiveGame() && !isCheating() && cPlane != 0
)

achievement(
    id = 308210,
    title = "Bubble 07", points = 1,
    description = "Float away in the Bath",
    trigger = isActiveGame() && !isCheating() && cBath != 0
)

// ----------------------------------------------------------------------------
// -- Points Based Achievements
// ----------------------------------------------------------------------------

achievement(
    id = 309552,
    title = "Just getting warmed up, James", points = 5,
    description = "Score 00700700 Points without using cheats",
    trigger = isActiveGame() && !isCheating() && scoreValue() >= 700700
)

achievement(
    id = 309553,
    title = "Shocking. Positively Shocking.", points = 25,
    description = "Score 2,500,000 Points without using cheats",
    trigger = isActiveGame() && !isCheating() && scoreValue() >= 2500000 
)

achievement(
    id = 309554,
    title = "Shaken, not stirred", points = 50,
    description = "Score 5,000,000 Points without using cheats",
    trigger = isActiveGame() && !isCheating() && scoreValue() >= 5000000
)

// ----------------------------------------------------------------------------
// -- Other Achievements
// ----------------------------------------------------------------------------

achievement(
    id = 309532,
    title = "Nothing Ventured, Nothing Gained", points = 1,
    description = "Take the quick exit from Stuffed Animal World",
    trigger = stageComplete( 0x01 )
)

// cExLengthRel() = pixel count / 60

function stretchMeasure()
{
    // Start
    start = once(cExLength > 0x0400)
    
    // Cancel
    cancel = never(cExLength == 0x0)
        
    // The goal
    goal = cExLength >= 0x07BC
    
    // submit, value, return
    submit = trigger_when(goal)
    //value = measured(goal)
    return start && cancel && submit //(submit || value)
}

achievement(
    id = 309551,
    title = "Stretch Armstrong", points = 10,
    description = "Stretch James Pond to over 33x his height!",
    trigger = stretchMeasure()
)

function measurekaizo() {
    return cStageNumber == 0x05 &&
    measured(tally(5,
        once(c5KB1==02),
        once(c5KB2==02),
        once(c5KB3==02),
        once(c5KB4==02),
        once(c5KB5==02)
    )) && never(cStageNumber != 0x05)
}

achievement(
    id = 309556,
    title = "Kaizo Surprizo [m]", points = 5,
    description = "Find the 5 Kaizo blocks at the start of Board Game World",
    trigger = isActiveGame() && measurekaizo()
)

achievement(
    id = 309558,
    title = "License to Kill", points = 25,
    description = "Kill 25 Enemies on a Single Stage without cheating.",
    trigger = isActiveGame() && !isCheating() && prev(cEnemiesKilled) < 25 && cEnemiesKilled == 25
)

achievement(
    id = 309561,
    title = "Peekaboo!", points = 5,
    description = "Find and use a Checkpoint",
    trigger = isActiveGame() && prev(cRespawnX) != cRespawnX && (cPlayerX != cRespawnX || cPlayerY != cRespawnY)
)

achievement(
    id = 309557,
    title = "Skydive", points = 10,
    description = "Fall for more than 3 seconds (No Umbrellas Allowed)",
    trigger = isActiveGame() && !isCheating() && tally(180, cPlayerState == 00 && !isFloating() && noVehicleOrAccessory()) && never(cPlayerState!=00 || cVelocity > 0xFF0000 || cVelocity == 0 || isPaused() || isLoading())
)

// ----------------------------------------------------------------------------
// -- Testing Area
// ----------------------------------------------------------------------------


// achievement(
//     title = "[TEST] BCD Score", points = 0,
//     description = "",
//     trigger = measured((low4(0x00B120) + high4(0x00B120) * 10 + low4(0x00B121) * 100 + high4(0x00B121) * 1000 +
//                low4(0x00B122) * 10000 + high4(0x00B122) * 100000 + low4(0x00B123) * 1000000 + high4(0x00B123) * 10000000
//                + 0) == 99999999)
// )


// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

leaderboard(
    id = 63356, title = "Hall of Fame",
    description = "A score based leaderboard for those who Saved the World (No Cheaters Please)",
    start  = !isCheating() &&
             (always_false() || (prev(word(0x000086)) != 80 && word(0x000086) == 80)),
    cancel = always_false(),
    submit = always_true(),
    value = measured(scoreValue()),
    format = "VALUE"
)

leaderboard(
    id = 63357, title = "Scoreboard",
    description = "A score based leaderboard for everyone (No Cheaters Please)",
    start  = !isCheating() &&
             ((prev(cPlayerState) != 7 && cPlayerState == 7 && cLives == 01) ||
              (prev(word(0x000086)) != 80 && word(0x000086) == 80)),
    cancel = always_false(),
    submit = always_true(),
    value = measured(scoreValue()),
    format = "VALUE"
)

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

LevelLookup = {
    // Overworld
    0x00: "Arctic Toy Factory",
    0x40: "Arctic Toy Factory Basement",
    // Door #01
    0x01: "Sports World-1",
    0x02: "Sports World-2",
    0x04: "Sports World-Bonus",
    0x03: "Sports World-3",
    // Door #02
    0x0c: "Teddy World-1",
    0x0e: "Teddy World-2",
    0x0d: "Teddy World-3",
    0x0f: "Teddy World-Bonus",
    // Door #03
    0x10: "Boss Fight! Giant Teddy",
    // Door #04
    0x13: "Sweet World-1",
    0x14: "Sweet World-Bonus",
    0x15: "Sweet World-2",
    0x16: "Sweet World-Water Bonus",
    0x17: "Sweet World-3",
    0x18: "Sweet World-4",
    0x19: "Sweet World-Bonus",
    0x1a: "Sweet World-5",
    // Door #05
    0x1c: "Industrial World-1",
    0x1b: "Industrial World-2",
    0x1e: "Industrial World-3",
    0x1f: "Industrial World-Bonus",
    0x1d: "Industrial World-4",
    0x21: "Industrial World-5",
    0x22: "Industrial World-Bonus (Oil)",
    0x23: "Industrial World-Bonus (Watches)",
    0x20: "Industrial World-6",
    // Door #06
    0x2b: "Boss Fight! Giant Car",
    // Door #07
    0x30: "Bathtub World-1",
    0x31: "Bathtub World-2",
    0x2f: "Bathtub World-Bonus",
    0x32: "Bathtub World-3",
    0x33: "Bathtub World-4",
    0x34: "Bathtub World-5",
    0x37: "Bathtub World-6",
    0x38: "Bathtub World-Bonus (Bath)",
    0x36: "Bathtub World-7",
    // Door #08
    0x05: "Board Games World-1",
    0x06: "Board Games World-Bonus (Umbrella)",
    0x07: "Board Games World-Bonus (Balls)",
    0x08: "Board Games World-2",
    0x09: "Board Games World-Bonus (Dominos)",
    0x0a: "Board Games World-3",
    0x0b: "Board Games World-4",
    0x48: "Board Games World-5",
    0x4b: "Board Games World-Bonus (Stack)",
    // Door #09
    0x11: "Boss Fight! Queen of Hearts",
    // Door #10
    0x25: "Sky Castle World-1",
    0x2a: "Sky Castle World-Bonus (Transport)",
    0x26: "Sky Castle World-2",
    0x27: "Sky Castle World-3",
    0x2d: "Sky Castle World-Bonus (Daytime Clouds)",
    0x2c: "Sky Castle World-Bonus (Evening Clouds)",
    0x28: "Sky Castle World-4",
    0x29: "Sky Castle World-5",
    // Door #11
    0x39: "Music World-1",
    0x3a: "Music World-2",
    0x3b: "Music World-Bonus (Groudhog)",
    0x3c: "Music World-3",
    0x3d: "Music World-4",
    0x3e: "Music World-5",
    0x3f: "Music World-6",
    0x4f: "Music World-Bonus (Pencils)",
    0x4e: "Music World-7",
    0x4d: "Music World-8",
    0x4c: "Music World-Bonus (Trumpet)",
    // Door #12
    0x12: "Boss Fight! The Ballerina",
    // Door #13
    0x24: "Industrial World-Extra",
    // Door #14
    0x42: "Sweet World-Extra 1",
    0x43: "Sweet World-Extra 2",
    0x44: "Sweet World-Extra 3",
    0x45: "Sweet World-Extra Bonus (Jelly)",
    // Door #15
    0x41: "Circus World-1",
    0x46: "Circus World-Bonus (Cannon)",
    0x49: "Circus World-2",
    0x4a: "Circus World-Bonus (Hanger)",
    // Door #16
    0x2e: "Boss: Evil Snowman",
    0x50: "The World Is Safe! 🎅",
}

HitpointsLookup = {
    1: "•----",
    2: "••---",
    3: "•••--",
    4: "••••-",
    5: "•••••",
}

InvincibleLookup = {
    0x0000: "",
}

PauseLookup = {
    0x00: "⏸️",
}

IconLookup = {
    0x0000: "🐟",
}

WingsLookup = {
    0: "",
}

SwimLookup = {
    0: "",
}

DPBLookup = {
    1: "🚗",
    2: "✈️",
    3: "🛁",
}

rich_presence_conditional_display(cLives == 0, "Title Screen 🔫🐟")

rich_presence_display("{0}{1}{2}{3}{4}{5}{6}{7} | 💯{8} | {9}",
    rich_presence_lookup("Pause", cPaused, PauseLookup, fallback=""),
    rich_presence_lookup("Invincible", cInvincibleTime, InvincibleLookup, fallback="✨"),
    rich_presence_lookup("Wings", cWings, WingsLookup, fallback="🪰"),
    rich_presence_lookup("Swim", cSwimming, SwimLookup, fallback="🫧"),
    rich_presence_lookup("DPB", cVehicleControl, DPBLookup, fallback=""),
    rich_presence_lookup("Icon", cCheatAllDoors + cCheatInfLives, IconLookup, fallback="🎣"),
    rich_presence_value("Number", cLives),
    rich_presence_lookup("Hitpoints", byte(0x00B130), HitpointsLookup, fallback="💀"),
    rich_presence_value("Number", scoreValue()),
    rich_presence_lookup("Level", word(0x000086), LevelLookup, fallback="Saving the Toy Factory")
)

