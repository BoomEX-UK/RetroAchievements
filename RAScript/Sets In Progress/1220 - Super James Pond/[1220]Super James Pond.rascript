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

// $B174: Horizontal Velocity: (16-Bit Signed)
//        Negative=Left
//        Positive=Right
cHVelocity = word(0x00B174)

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
cUmbrellaCount = byte(0x00b160)


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
function scoreValue() {
    return low4(0x00B120) + high4(0x00B120) * 10 + low4(0x00B121) * 100 + high4(0x00B121) * 1000 +
        low4(0x00B122) * 10000 + high4(0x00B122) * 100000 + low4(0x00B123) * 1000000 + high4(0x00B123) * 10000000
}

function stageComplete( stage ){
    return !isCheating() && isActiveGame() && cStageNumber == stage && (cNextStage == 00 || cNextStage == 0x40) && isLoading()
}

// ----------------------------------------------------------------------------
// -- Stage End Achievements
// ----------------------------------------------------------------------------

stageEndCodes = {
   // 0x04: "Sports World",
    0x0d: "Teddy World",
    0x10: "Boss: Teddy",
    0x1a: "Sweet World World",
    0x20: "Industrial World",
    0x2b: "Boss: Car",
    0x36: "Bathtub World",
    0x48: "Board Game World",
    0x11: "Boss: Queen of Hearts",
    0x29: "Sky Castle World",
    0x4f: "Creative World",
    0x12: "Boss: Ballerina",
    0x24: "Bonus: Industrial World",
    0x45: "Bonus Sweet World",
    0x41: "Circus World"
}

stageEndPoints = {
    0x04: 5,
    0x0d: 5,
    0x10: 10,
    0x1a: 5,
    0x20: 5,
    0x2b: 10,
    0x36: 5,
    0x48: 5,
    0x11: 10,
    0x29: 5,
    0x4f: 5,
    0x12: 10,
    0x24: 5,
    0x45: 5,
    0x41: 5   
}

// Multi Exit Sports World
achievement(
    title = "Complete Sports World", points = 5,
    description = "Complete stage 'Sports World' without using cheats",
    trigger = stageComplete(0x03) || stageComplete(0x04)
)

function stageAchievementBuilder( code, name, points ){
    achievement(
        title = "Complete " + name, points = points,
        description = "Complete stage '" + name + "' without using cheats",
        trigger = stageComplete(code)
    )
}

for k in stageEndCodes{
   stageAchievementBuilder( k, stageEndCodes[k], stageEndPoints[k] ) 
}


// ----------------------------------------------------------------------------
// -- Cheating Achievements
// ----------------------------------------------------------------------------

achievement(
    title = "C.H.E.A.T. [m]", points = 5,
    description = "Collect Items in Order - C___, H_____, E____, A____, T__. (Disables other achievements until reset)",
    trigger = cItem5 == 22 && cItem4 == 100 && cItem3 == 99 && cItem2 == 33 && cItem1 == 93
)

achievement(
    title = "P.O.W.E.R. [m]", points = 5,
    description = "Collect Items in Order - P______, O__ ___, W____, E____, R_____.",
    trigger = byte(0x00B1CA) == 60 && byte(0x00B1CB) == 81 && byte(0x00B1CC) == 3 && byte(0x00B1CD) == 99 && 
              byte(0x00B1CE) == 53
)

achievement(
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
    title = "Bad Taste", points = 1,
    description = "Drink the poisonous potion",
    trigger = cmpItemCollected(0x49)
)

achievement(
    title = "Body Armour", points = 1,
    description = "Collect the Body Armour item",
    trigger = cmpItemCollected(0x32)
)

achievement(
    title = "Leprechaun's Dream", points = 1,
    description = "Collect the most valuable item in the game",
    trigger = cmpItemCollected(0x41)
)

achievement(
    title = "CRT", points = 1,
    description = "Collect the Retro Computer Screen",
    trigger = cmpItemCollected(0x52)
)

achievement(
    title = "3½ inches of floppy goodness", points = 1,
    description = "Collect the Floppy Disk",
    trigger = cmpItemCollected(0x54)
)

achievement(
    title = "The King of Christmas", points = 10,
    description = "Steal all of Stanta's crowns from outide the Toy Factory",
    trigger = cStageNumber == 00 && cItem5 == 1 && cItem4 == 1 && cItem3 == 1 && cItem2 == 1 && cItem1 == 1
)

achievement(
    title = "Join the Fanclub", points = 10,
    description = "Collect a Micket Mouse and a Teenage Mutant Turtles T-Shirt",
    trigger = tally(2,once(cmpItemCollected(0x30)),once(cmpItemCollected(0x31)))
)

function brollyCounter()
{
    // Start
    start = once(cUmbrellaCount == 1)
    
    // Cancel
    cancel = never(cUmbrellaCount == 0)
        
    // The goal
    goal = cUmbrellaCount == 5
    
    // Trigger when the player reaches the goal
    submit = trigger_when(goal)
        
    // Measure how close the player is to the goal
    value = measured(goal)
    
    return start && cancel && (submit || value)
}

achievement(
    id = 0,
    title = "Floaty-light", points = 10,
    description = "Have 5 Umbrellas stored up",
    trigger = brollyCounter()
)

achievement(
    title = "Jaws!", points = 10,
    description = "Collect 4 sets of Chattering Teeth in a row, on a single stage, without using cheats",
    trigger = !isCheating() && prev(cItem4) != 0x58 && cItem4 == 0x58 && cItem3 == 0x58 && cItem3 == 0x58 && cItem3 == 0x58
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
    id = 0,
    title = "Just getting warmed up, James", points = 1,
    description = "Score 00700700 Points without using cheats",
    trigger = isActiveGame() && !isCheating() && scoreValue() >= 700700
)

achievement(
    id = 0,
    title = "Shocking. Positively Shocking.", points = 10,
    description = "Score 2,500,000 Points without using cheats",
    trigger = isActiveGame() && !isCheating() && scoreValue() >= 2500000
)

achievement(
    id = 0,
    title = "Shaken, not stirred", points = 25,
    description = "Score 5,000,000 Points without using cheats",
    trigger = isActiveGame() && !isCheating() && scoreValue() >= 5000000
)

// ----------------------------------------------------------------------------
// -- Other Achievements
// ----------------------------------------------------------------------------

achievement(
    title = "Nothing Ventured, Nothing Gained", points = 1,
    description = "Take the quick exit from Stuffed Animal World",
    trigger = stageComplete( 0x01 )
)

// cExLengthRel() = pixel count / 60

function stretchMeasure()
{
    // Start
    start = once(cExLength > 0x0100)
    
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
    id = 0,
    title = "Stretch Armstrong", points = 10,
    description = "Stretch James Pond to over 33x his height!",
    trigger = stretchMeasure()
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
    id = 111000016, title = "Hall of Fame",
    description = "A score based leaderboard for those who Saved the World (No Cheaters Please)",
    start  = !isCheating() &&
             (always_false() || (prev(word(0x000086)) != 80 && word(0x000086) == 80)),
    cancel = always_false(),
    submit = always_true(),
    value = measured(scoreValue()),
    format = "VALUE"
)

leaderboard(
    id = 111000018, title = "Scoreboard",
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
    0x06: "Board Games World-Bonus",
    0x07: "Board Games World-Bonus 2",
    0x08: "Board Games World-2",
    0x0a: "Board Games World-3",
    0x0b: "Board Games World-4",
    0x48: "Board Games World-5",
    // Door #09
    0x11: "Boss Fight! Queen of Hearts",
    // Door #10
    0x25: "Sky Castle World-1",
    0x2a: "Sky Castle World-Bonus",
    0x26: "Sky Castle World-2",
    0x27: "Sky Castle World-3",
    0x2d: "Sky Castle World-Bonus 2",
    0x2c: "Sky Castle World-Bonus 3",
    0x28: "Sky Castle World-4",
    0x29: "Sky Castle World-5",
    // Door #11
    0x39: "Creative World-1",
    0x3a: "Creative World-2",
    0x3b: "Creative World-Bonus",
    0x3c: "Creative World-3",
    0x3d: "Creative World-4",
    0x3e: "Creative World-5",
    0x3f: "Creative World-6",
    0x4c: "Creative World-Bonus 2",
    0x4e: "Creative World-7",
    0x4d: "Creative World-8",
    0x4f: "Creative World-Bonus",
    // Door #12
    0x12: "Boss Fight! The Ballerina",
    // Door #13
    0x24: "Industrial World-Extra",
    // Door #14
    0x42: "Sweet World-Extra 1",
    0x43: "Sweet World-Extra 2",
    0x44: "Sweet World-Extra 3",
    0x45: "Sweet World-Extra Bonus",
    // Door #15
    0x41: "Circus World-1",
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
    rich_presence_value("Number", (low4(0x00B120) + high4(0x00B120) * 10 + low4(0x00B121) * 100 + high4(0x00B121) * 1000 +
                                 low4(0x00B122) * 10000 + high4(0x00B122) * 100000 + low4(0x00B123) * 1000000 +
                                 high4(0x00B123) * 10000000 + 0)),
    rich_presence_lookup("Level", word(0x000086), LevelLookup, fallback="Saving the Toy Factory")
)

