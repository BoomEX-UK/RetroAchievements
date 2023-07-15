// Beetlejuice
// #ID = 3679
// Script by BoomEX
//
// USA hash = f6c1715b8b93356b8b8ad27f5574dc96

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

vSystemOverlay      = word(0xcac7) // System-Loaded Screen Overlay Panel (16-Bit)
overlay_boot        = 0x0000
overlay_nLogo       = 0x017b
overlay_tm          = 0x01b9
overlay_titlescreen = 0x01c2

vPlayerX    = tbyte(0xc900) // System-Player X (24-Bit)
vPlayerY    = tbyte(0xc903) // System-Player Y (24-Bit)

state_boot      = (vSystemOverlay == overlay_boot || vSystemOverlay == overlay_nLogo || vSystemOverlay == overlay_tm)
state_title     = (vSystemOverlay == overlay_titlescreen || (vPlayerX + vPlayerY) == 0)
state_ingame    = (vSystemOverlay != overlay_boot && vSystemOverlay != overlay_nLogo && vSystemOverlay != overlay_tm 
                    && vSystemOverlay != overlay_titlescreen && (vPlayerX + vPlayerY) > 0)

vLives  = byte(0xcaf9) // Game-Lives (8-Bit)
vHP     = byte(0xc90c) // System-Health (8-Bit)
vStage   = byte(0xcacd) // Game-Stage ID (8-Bit)
vFrameCounter = byte(0xc93b) // System-Frame Counter (8-Bit)
vPaused = byte(0xcac5) // Game-Paused (Bits)

vCheatProgress = byte(0xcca1) // System-Titlescreen Cheat Code Input Level (8-Bit)
function playerCheated() => vCheatProgress == 0x06

//-Minigame Types
mg_none = 0
mg_level = 1
mg_bonus = 2
mg_levelAndBonus = 3
mg_area = 4
mg_areaAndBonus = 5

//-Constant Locations
overworld_house = 0x00
overworld_attic = 0x0e
overworld_graveyard_house   = 0x14
overworld_graveyard_street  = 0x16
overworld_graveyard_hills   = 0x18

vPairsGameID = byte(0xcaf4) // System-Pairs Game Identifier (8-Bit)
vSlideGameHearts = byte(0xcaf8) // Game-Slide Minigame Hearts (8-Bit)
vSlideGameStatus = byte(0xc909) // System-Slide Bonus Minigame State (8-Bit)
vFunnyFaceProgress = word(0xce04) // Game-Funny Faces Progress Bar (16-Bit)
vBonusGameTimer = byte(0xcb43) // Game-Level Timer (8-Bit BCD)
vBonusGameFrameCounter = byte(0xcb42) // Game-Level Timer Ticker (8-Bit)
vDripPipeProgress = word(0xcb01) // Dripping Pipe Bar Progress (16-Bit)
vGameBoilerProgress = byte(0xcaf8) // Game-Boiler Room Game Phase (8-Bit)
vOddSpookOut1UpX = tbyte(0xcd00)
vOddSpookOut1UpY = tbyte(0xcd03)
vOddSpookOutHit = byte(0xc94d)
vSpotTheSpook1UpY = tbyte(0xcb03)
vSpotTheSpookResult = byte(0xc0ed)
vHouseStaircaseState = byte(0xca0d) // Game-House Staircase State (8-Bit)
vFunnyFaceGrossRating = byte(0xcb73) // Game-Funny Faces Gross Rating (8-Bit BCD)
vFunnyFaceSelection = byte(0xc909) // System-Funny Faces Selection Number (8-Bit)
vFirstGargoyleStatueID = byte(0xcc08)

// ----------------------------------------------------------------------------
// -- Stage Objects
// ----------------------------------------------------------------------------


//- A1 House

tmparea = 0x01

obj_area_house = {
    "id": overworld_house,
    "name": "House",
    "desc": "Exploring the House",
    "areaID": tmparea,
    "mgType": mg_areaAndBonus,
    "mgAreaTitle"    : "The Key to the Attic",
    "mgAreaDesc"     : "Climb into the attic",
    "mgAreaPoints"   : 5,
    "mgAreaWinCon"   : (prev(vStage) == overworld_house && vStage == 0x0e),
    "mgBonusTitle"  : "Running Amok",
    "mgBonusDesc"   : "Run from the ground floor of the house to the top floor without falling on the stairs, taking damage or entering a door",
    "mgBonusPoints" : 10,
    "mgBonusWinCon" : (
        once(vStage == overworld_house && vPlayerX < 0x005000 && vPlayerX > 0x001000 && vPlayerY == 0x01EFFF) && 
        never(prev(vLives) > vLives || prev(vHP) > vHP || vStage != overworld_house || vHouseStaircaseState != 0) && 
        trigger_when(vPlayerY <= 0x003F00)
    )

}

tmpid = 0x02 
obj_area_mg_house_laundry = {    
    "id": tmpid,
    "name": "Laundry Room",
    "desc": "Minigame - Laundry Room",
    "areaID": tmparea,
    "mgType": mg_levelAndBonus,
    "mgTitle": "Wash Away Your Sins",
    "mgPoints": 1,
    "winCon": (prev(vStage) == tmpid && vStage == overworld_house),
    "mgBonusTitle"  : "Domestic Bliss",
    "mgBonusDesc"   : "Beat the laundry room area without taking damage",
    "mgBonusPoints" : 5,
    "mgBonusWinCon" : (once(prev(vStage) == overworld_house && vStage == tmpid) && never(prev(vLives) > vLives || prev(vHP) > vHP) && prev(vStage) == tmpid && trigger_when(vStage == overworld_house))
}

tmpid = 0x04
obj_area_mg_house_kitchen = {
    "id": tmpid,
    "name": "Kitchen",
    "desc": "Minigame - Kitchen",
    "areaID": tmparea,
    "mgType": mg_levelAndBonus,
    "mgTitle": "A Hand in the Kitchen",
    "mgPoints": 1,
    "winCon": (prev(vStage) == tmpid && vStage == overworld_house),
    "mgBonusTitle"  : "Chef’s Kiss",
    "mgBonusDesc"   : "Beat the kitchen area without taking damage",
    "mgBonusPoints" : 5,
    "mgBonusWinCon" : (once(prev(vStage) == overworld_house && vStage == tmpid) && never(prev(vLives) > vLives || prev(vHP) > vHP) && prev(vStage) == tmpid && trigger_when(vStage == overworld_house))
}

tmpid = 0x06
obj_area_mg_house_livingroom = {
    "id": tmpid,
    "name": "Living Room",
    "desc": "Minigame - Living Room",
    "areaID": tmparea,
    "mgType": mg_levelAndBonus,
    "mgTitle": "No Time for TV",
    "mgPoints": 1,
    "winCon": (prev(vStage) == tmpid && vStage == overworld_house),
    "mgBonusTitle"  : "Room for the Living",
    "mgBonusDesc"   : "Beat the living room area without taking damage",
    "mgBonusPoints" : 5,
    "mgBonusWinCon" : (once(prev(vStage) == overworld_house && vStage == tmpid) && never(prev(vLives) > vLives || prev(vHP) > vHP) && prev(vStage) == tmpid && trigger_when(vStage == overworld_house))
}

tmpid = 0x08
obj_area_mg_house_funnyface = {
    "id": tmpid,
    "name": "Funny Face Contest",
    "desc": "Minigame - Funny Face Contest",
    "areaID": tmparea,
    "mgType": mg_levelAndBonus,
    "mgTitle": "Freaky Faces",
    "mgPoints": 1,
    "winCon": (prev(vStage) == tmpid && vStage == overworld_house),
    "mgBonusTitle"  : "Flawed Beauty",
    "mgBonusDesc"   : "Win the Funny Faces contest without missing a move",
    "mgBonusPoints" : 5,
    "mgBonusWinCon" : (once(vStage == tmpid && vFunnyFaceProgress == 0) && never( prev(vFunnyFaceProgress) > 0 && prev(vFunnyFaceProgress) < vFunnyFaceProgress) && prev(vStage) == tmpid && trigger_when(vStage == overworld_house))
}

tmpid = 0x0a
obj_area_mg_house_bathroom = {
    "id": tmpid,
    "name": "Bathroom",
    "desc": "Minigame - Bathroom",
    "areaID": tmparea,
    "mgType": mg_levelAndBonus,
    "mgTitle": "Personal Hygene",
    "mgPoints": 1,
    "winCon": (prev(vStage) == tmpid && vStage == overworld_house),
    "mgBonusTitle"  : "Undead Plumber",
    "mgBonusDesc"   : "Beat the bathroom area in under 30 Seconds",
    "mgBonusPoints" : 5,
    "mgBonusWinCon" : (once(vStage == tmpid && vBonusGameTimer == 0x60) && never(vBonusGameTimer < 0x30) && prev(vStage) == tmpid && trigger_when(vStage == overworld_house))
}

tmpid = 0x0c
obj_area_mg_house_boiler = {
    "id": tmpid,
    "name": "Boiler Room",
    "desc": "Minigame - Boiler Room",
    "areaID": tmparea,
    "mgType": mg_levelAndBonus,
    "mgTitle": "Drip Drip",
    "mgPoints": 2,
    "winCon": (prev(vStage) == tmpid && vStage == overworld_house),
    "mgBonusTitle"  : "Poltergushed",
    "mgBonusDesc"   : "Beat the boiler room area without catching a possessed drip or taking damage",
    "mgBonusPoints" : 10,
    "mgBonusWinCon" : (once(vDripPipeProgress == 0 && vStage == tmpid) && never(prev(vLives) > vLives || prev(vHP) > vHP || (prev(vDripPipeProgress) > vDripPipeProgress && vGameBoilerProgress == 0)) && prev(vStage) == tmpid && trigger_when(vStage == overworld_house))
}

//- A2 Attic

tmparea = 0x02
obj_area_attic = {
    "id": overworld_attic,
    "name": "Attic",
    "desc": "Exploring Attic",
    "areaID": tmparea,
    "mgType": mg_area,
    "mgAreaTitle"   : "Up, Up and Away",
    "mgAreaDesc"    : "Escape the house",
    "mgAreaPoints"  : 5,
    "mgAreaWinCon"  : (prev(vStage) == overworld_attic && vStage == 0x14)
}

tmpid = 0x10
obj_area_mg_attic_oddspook = {
    "id": tmpid,
    "name": "Odd-Spook-Out",
    "desc": "Minigame - Odd-Spook-Out",
    "areaID": tmparea,
    "mgType": mg_levelAndBonus,
    "mgTitle": "1-Up: Odd-Spook-Out",
    "mgPoints": 3,
    "winCon": (vStage == tmpid && vOddSpookOut1UpY >= 0x3200 && vOddSpookOut1UpY <= 0x5000),
    "mgBonusTitle"  : "Identity Parade",
    "mgBonusDesc"   : "Beat the Odd-Spook-Out bonus stage without making a mistake",
    "mgBonusPoints" : 5,
    "mgBonusWinCon" : (
            once(prev(vStage) == overworld_attic && vStage == tmpid) && 
            never(vOddSpookOut1UpY < 0x1e00 && vOddSpookOut1UpX > 0 && vOddSpookOutHit == 0x30) && 
            (vStage == tmpid && trigger_when(vOddSpookOut1UpY >= 0x3200 && vOddSpookOut1UpY <= 0x5000))
    )
}

tmpid = 0x12
obj_area_mg_attic_spotspook = {
    "id": tmpid,
    "name": "Spot-The-Spook",
    "desc": "Minigame - Spot-The-Spook",
    "areaID": tmparea,
    "mgType": mg_levelAndBonus,
    "mgTitle": "1-Up: Spot-The-Spook",
    "mgPoints": 5,
    "winCon": (vStage == tmpid && vSpotTheSpook1UpY >= 0x3200 && vSpotTheSpook1UpY <= 0x5000),
    "mgBonusTitle"  : "20/20 Vision",
    "mgBonusDesc"   : "Beat Spot-the-Spook bonus stage without making a mistake",
    "mgBonusPoints" : 10,
    "mgBonusWinCon" : (
            once(prev(vStage) == overworld_attic && vStage == tmpid) && 
            never(vSpotTheSpookResult == 0x40 || vSpotTheSpookResult == 0x50) && 
            (vStage == tmpid && trigger_when(vSpotTheSpook1UpY >= 0x3200 && vSpotTheSpook1UpY <= 0x5000))
    )
}

//- A3 Graveyard

obj_area_graveyard_house = {
    "id": overworld_graveyard_house,
    "name": "Graveyard",
    "desc": "Outside the House",
    "areaID": 3,
    "mgType": mg_area,
    "mgAreaTitle"   : "Digging a Grave",
    "mgAreaDesc"    : "Enter the mines under the graveyard",
    "mgAreaPoints"  : 5,
    "mgAreaWinCon"  : (prev(vStage) == overworld_graveyard_house && vStage == 0x1c)
}

obj_area_graveyard_street = {
    "id": overworld_graveyard_street,
    "name": "Graveyard",
    "desc": "Crossing the Street",
    "areaID": 3,
    "mgType": mg_none,
}

obj_area_graveyard_hills = {
    "id": overworld_graveyard_hills,
    "name": "Graveyard",
    "desc": "Climbing the Hills",
    "areaID": 3,
    "mgType": mg_none,
}

obj_area_mg_graveyard_pairsa = {
    "id": 0x1a,
    "name": "First Pairs",
    "desc": "Playing the First Pairs Game",
    "areaID": 3,
    "mgType": mg_levelAndBonus,
    "mgTitle": "Pairs: Round 1",
    "mgPoints": 3,
    "winCon": (vStage == 0x1a && vPairsGameID == 0 && vLives > prev(vLives)),
    "mgBonusTitle"  : "Two’s Company",
    "mgBonusDesc"   : "Beat the pairs game round 1 in under 70 seconds",
    "mgBonusPoints" : 10,
    "mgBonusWinCon" : (once(vStage == 0x1a && vBonusGameTimer == 0x99) && never(vBonusGameTimer < 0x29) && (vStage == 0x1a && vPairsGameID == 0 && trigger_when(vLives > prev(vLives))))   
}

obj_area_mg_graveyard_pairsb = {
    "id": 0x1b,
    "name": "Second Pairs",
    "desc": "Playing the Second Pairs Game",
    "areaID": 3,
    "mgType": mg_levelAndBonus,
    "mgTitle": "Pairs: Round 2",
    "mgPoints": 5,
    "winCon": (vStage == 0x1a && vPairsGameID == 1 && vLives > prev(vLives)),
    "mgBonusTitle"  : "What a Pair!",
    "mgBonusDesc"   : "Beat the pairs game round 2 in under 70 seconds",
    "mgBonusPoints" : 10,
    "mgBonusWinCon" : (once(vStage == 0x1a && vBonusGameTimer == 0x79) && never(vBonusGameTimer < 0x09) && (vStage == 0x1a && vPairsGameID == 1 && trigger_when(vLives > prev(vLives))))   

}

//-A4 Under the Graveyard

obj_area_underground_cart1 = {
    "id": 0x1c,
    "name": "Under the Graveyard",
    "desc": "Discovering the Minecart",
    "areaID": 4,
    "mgType": mg_none,
}

obj_area_underground_platforming = {
    "id": 0x1e,
    "name": "Under the Graveyard",
    "desc": "Platforming Underground",
    "areaID": 4,
    "mgType": mg_none,
}

obj_area_underground_cart2a = {
    "id": 0x20,
    "name": "Under the Graveyard",
    "desc": "Heading Deeper Underground",
    "areaID": 4,
    "mgType": mg_none,
}

obj_area_underground_cart2b = {
    "id": 0x22,
    "name": "Under the Graveyard",
    "desc": "Holding on Tight to the Minecart",
    "areaID": 4,
    "mgType": mg_area,
    "mgAreaTitle"   : "Hell in a Minecart",
    "mgAreaDesc"    : "Successfully cross the mine cart tracks",
    "mgAreaPoints"  : 10,
    "mgAreaWinCon"  : (prev(vStage) == 0x22 && vStage == 0x28)
}

obj_area_mg_underground_slidingpuzzle = {
    "id": 0x22,
    "name": "Sliding Puzzle",
    "desc": "Minigame - Sliding Puzzle",
    "areaID": 4,
    "mgType": mg_bonus,
    "mgBonusTitle"  : "A Picture of Perfection",
    "mgBonusDesc"   : "Beat the face slide bonus with at least 2 hearts remaining",
    "mgBonusPoints" : 10,
    "mgBonusWinCon" : (vStage == 0x22 && vSlideGameHearts >= 2 && prev(vSlideGameStatus) == 0x0a && trigger_when(vSlideGameStatus == 0x00))
}

//-A5 Netherworld

obj_area_netherworld_1 = {
    "id": 0x28,
    "name": "Netherworld",
    "desc": "Snaking Through the Netherwold",
    "areaID": 5,
    "mgType": mg_none,
}

obj_area_netherworld_2 = {
    "id": 0x2a,
    "name": "Netherworld",
    "desc": "Pixel Perfect Platforming in the Netherworld",
    "areaID": 5,
    "mgType": mg_area,
    "mgAreaTitle"   : "So This Is Hell…",
    "mgAreaDesc"    : "Survive your journey through the Netherworld",
    "mgAreaPoints"  : 10,
    "mgAreaWinCon"  : (prev(vStage) == 0x2a && vStage == 0x2c)
}

//-A6 Final Boss

obj_area_final_boss = {
    "id": 0x2c,
    "name": "Final Boss",
    "desc": "Saving the World from a Big-Head Threat!",
    "areaID": 6,
    "mgType": mg_areaAndBonus,
    "mgAreaTitle"   : "He’s Armless When He’s Legless",
    "mgAreaDesc"    : "Defeat the Demon Lord of the Netherworld",
    "mgAreaPoints"  : 25,
    "mgAreaWinCon"  : (prev(vStage) == 0x2c && vStage == 0x30),
    "mgBonusTitle"  : "Ghostbusters!",
    "mgBonusDesc"   : "Defeat the Demon Lord of the Netherworld with at least 3 lives remaining",
    "mgBonusPoints" : 50,
    "mgBonusWinCon" : (prev(vStage) == 0x2c && vStage == 0x30 && vLives >= 3),

}

obj_area_the_end = {
    "id": 0x30,
    "name": "BJ's Used Autos",
    "desc": "Setting Up BJ's Used Autos 🚗",
    "areaID": 6,
    "mgType": mg_none
}

//- Bonus Achievements Only

obj_bonus_catJuice = {
    "id": 0xF0,
    "areaID": -1,
    "mgType": mg_bonus,
    "mgBonusTitle"  : "Cat-Juice",
    "mgBonusDesc"   : "Collect a total of 9 lives",
    "mgBonusPoints" : 25,
    "mgBonusWinCon" : (prev(vLives) > 0 && prev(vLives) < 9 && vLives >= 9),
}

obj_bonus_piranhaStreet = {
    "id": 0xF1,
    "areaID": -1,
    "mgType": mg_bonus,
    "mgBonusTitle"  : "The Floor Is Lava",
    "mgBonusDesc"   : "Cross piranha street without dying",
    "mgBonusPoints" : 2,
    "mgBonusWinCon" : (
        vPlayerY > 0x010000 && vStage == 0x16 && never(vStage != 0x16 || prev(vLives) > vLives) && (
            (once(vPlayerX < 0x022000) && trigger_when(vPlayerX > 0x03F100)) ||
            (once(vPlayerX > 0x03F100) && trigger_when(vPlayerX < 0x022000))
        )
    )
}

obj_bonus_grossRating = {
    "id": 0xF2,
    "areaID": -1,
    "mgType": mg_bonus,
    "mgBonusTitle"  : "Rudiculus Maximus",
    "mgBonusDesc"   : "Start with the maximum gross rating (100)!",
    "mgBonusPoints" : 10,
    "mgBonusWinCon" : (
        vStage == 0x08 && vFunnyFaceGrossRating == 00 && 
        prev(vFunnyFaceSelection) == 0x04 && vFunnyFaceSelection == 0x05
    )
}

vGargoyleSolved = byte(0xcc08) == 0x7a
for x in range(1,16){
    vGargoyleSolved = vGargoyleSolved || byte(0xcc08 + (x*0x100)) == 0x7a
}

obj_bonus_solveDemonPuzzleRush = {
    "id": 0xF3,
    "areaID": -1,
    "mgType": mg_bonus,
    "mgBonusTitle"  : "Podium Position",
    "mgBonusDesc"   : "Solve the gargoyle statue puzzle in less than 3mins 30sec (Mini game time not counted)",
    "mgBonusPoints" : 25,
    "mgBonusWinCon" : (
        once(vStage == 0x14 && prev(vFirstGargoyleStatueID) != 0x56 && vFirstGargoyleStatueID == 0x56) &&
        trigger_when(__ornext(vGargoyleSolved)) &&
        never(vStage != 0x14 && vStage != 0x16 && vStage != 0x18 && vStage != 0x1a) &&
        never(tally(12600,(prev(vFrameCounter) != vFrameCounter) && vStage != 0x1a))
    )
}


// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

lSystemOverlay = {
    overlay_boot:           "Beetlejuice!",
    overlay_nLogo:          "Beetlejuice, Beetlejuice!",
    overlay_tm:             "Beetlejuice, Beetlejuice, Beetlejuice!",
    overlay_titlescreen:    "Beetlejuice, Beetlejuice, Beetlejuice! 🪲👻"
}

lHP = {
    0: "-----",
    1: "•----",
    2: "••---",
    3: "•••--",
    4: "••••-",
    5: "•••••",
}

lPaused = {
    1: "⏸️ "
}

lCheater = {
    6: "👻"
}

lAllObjects = [
    obj_area_house,
    obj_area_mg_house_laundry,
    obj_area_mg_house_kitchen,
    obj_area_mg_house_livingroom,
    obj_area_mg_house_funnyface,
    obj_area_mg_house_bathroom,
    obj_area_mg_house_boiler,
    obj_area_attic,
    obj_area_mg_attic_oddspook,
    obj_area_mg_attic_spotspook,
    obj_area_graveyard_house,
    obj_area_graveyard_street,
    obj_area_graveyard_hills,
    obj_area_mg_graveyard_pairsa,
    obj_area_mg_graveyard_pairsb,
    obj_area_underground_cart1,
    obj_area_underground_platforming,
    obj_area_underground_cart2a,
    obj_area_underground_cart2b,
    obj_area_mg_underground_slidingpuzzle,
    obj_area_netherworld_1,
    obj_area_netherworld_2,
    obj_area_final_boss,
    obj_area_the_end,
    obj_bonus_catJuice,
    obj_bonus_piranhaStreet,
    obj_bonus_grossRating,
    obj_bonus_solveDemonPuzzleRush
]

//-Dynamic Lookups
lAreaName = {}
lAreaNumber = {}
lMgSurvive = {}
lMgBonus = {}
lMgArea = {}

for k in lAllObjects {
    if( k["areaID"] != -1 ) lAreaName[k["id"]] = k["desc"]
    if( k["areaID"] != -1 ) lAreaNumber[k["id"]] = ("A"+k["areaID"])
    if( k["mgType"] == mg_level || k["mgType"] == mg_levelAndBonus) lMgSurvive[k["id"]] = k
    if( k["mgType"] == mg_area || k["mgType"] == mg_areaAndBonus) lMgArea[k["id"]] = k
    if( k["mgType"] == mg_bonus || k["mgType"] == mg_levelAndBonus || k["mgType"] == mg_areaAndBonus) lMgBonus[k["id"]] = k
}

// ----------------------------------------------------------------------------
// -- Story & Mini-Game Achievements
// ----------------------------------------------------------------------------

function levelMGBuilder( mg ){
    achievement(
        id = 0,
        title = mg["mgTitle"], points = mg["mgPoints"],
        description = "Beat the "+mg["name"]+" Minigame (No Level Skip)",
        trigger = state_ingame && !playerCheated() && mg["winCon"]
    )
}

function bonusMGBuilder( mg ){
    achievement(
        id = 0,
        title = mg["mgBonusTitle"], points = mg["mgBonusPoints"],
        description =mg["mgBonusDesc"] + " (No Level Skip)",
        trigger = state_ingame && !playerCheated() && mg["mgBonusWinCon"]
    )
}

function areaMGBuilder( mg ){
    achievement(
        id = 0,
        title = mg["mgAreaTitle"], points = mg["mgAreaPoints"],
        description =mg["mgAreaDesc"] + " (No Level Skip)",
        trigger = state_ingame && !playerCheated() && mg["mgAreaWinCon"]
    )
}


for v in lMgSurvive{
    levelMGBuilder(lMgSurvive[v])
}

for v in lMgBonus{
    bonusMGBuilder(lMgBonus[v])
}

for v in lMgArea{
    areaMGBuilder(lMgArea[v])
}

// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

leaderboard(
    title       = "Podium Position Leaderboard",
    description = "How Fast Can You Solve the Gargoyle Statue Puzzle in The Graveyard?",
    start       = state_ingame && !playerCheated() && vStage == 0x14 &&
                prev(vFirstGargoyleStatueID) != 0x56 && vFirstGargoyleStatueID == 0x56,
    cancel      = __ornext(!state_ingame) && vStage != 0x1a && prior(vStage) != 0x1a,
    submit      = __ornext(vGargoyleSolved),
    value       = measured(prev(vFrameCounter) != vFrameCounter, when=vStage != 0x1a),
    format      = "FRAMES",
    lower_is_better = true,
    id = 71166
) 

leaderboard(
    title       = "Undead Plumber Leaderboard",
    description = "How fast can you fix the pipes in the Bathroom?",
    start       = state_ingame && !playerCheated() && vStage == 0x0a && vBonusGameTimer == 0x60 && vBonusGameFrameCounter != prev(vBonusGameFrameCounter),
    cancel      = __ornext((vStage != 0x0a && vStage != 0x00) || (!state_ingame)),
    submit      = prev(vStage) == 0x0a && vStage == 0x00,
    value       = measured((60-bcd(vBonusGameTimer))*60 + (vBonusGameFrameCounter*2)),
    format      = "FRAMES",
    lower_is_better = true,
    id = 71163
) 

leaderboard(
    title       = "Pairs Game #1 Leaderboard",
    description = "How fast can you win the first Pairs game?",
    start       = state_ingame && !playerCheated() && vStage == 0x1a && prev(vStage) ==0x16,
    cancel      = (vStage != 0x1a && vStage != 0x16 && vBonusGameTimer == 0x00 && vBonusGameFrameCounter == 0x1d) || __ornext(!state_ingame && vBonusGameTimer != 0x99),
    submit      = prev(vStage) == 0x1a && vStage == 0x16 && vBonusGameTimer > 0x00,
    value       = measured((99-bcd(vBonusGameTimer))*60 + (vBonusGameFrameCounter*2)),
    format      = "FRAMES",
    lower_is_better = true,
    id = 71164
) 

leaderboard(
    title       = "Pairs Game #2 Leaderboard",
    description = "How fast can you win the second Pairs game?",
    start       = state_ingame && !playerCheated() && vStage == 0x1a && prev(vStage) == 0x18,
    cancel      = (vStage != 0x1a && vStage != 0x18 && vBonusGameTimer == 0x00 && vBonusGameFrameCounter == 0x1d) || __ornext(!state_ingame && vBonusGameTimer != 0x79),
    submit      = prev(vStage) == 0x1a && vStage == 0x18 && vBonusGameTimer > 0x00,
    value       = measured((79-bcd(vBonusGameTimer))*60 + (vBonusGameFrameCounter*2)),
    format      = "FRAMES",
    lower_is_better = true,
    id = 71165
) 

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

rich_presence_conditional_display(state_ingame, "{4}{5}{0} {1} | {2}: {3}",
    rich_presence_macro("Number",vLives),
    rich_presence_lookup("lHP", vHP, lHP),
    rich_presence_lookup("lAreaNumber", vStage, lAreaNumber, fallback="S?"),
    rich_presence_lookup("lArea", vStage, lAreaName, fallback="Uknown!"),
    rich_presence_lookup("lPaused",vPaused,lPaused,fallback=""),
    rich_presence_lookup("lCheater",vCheatProgress,lCheater,fallback="🪲")
)

rich_presence_display("{0}",
    rich_presence_lookup("lSystemOverlay", vSystemOverlay, lSystemOverlay, fallback="Meeting Lydia")
)



