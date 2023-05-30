// Killer Instinct Gold
// #ID = 10473
// Script by BoomEX
//
// My first set dealing with different game versions
// USA_REV0 hash = 8E33AD20C31FEB61D7230FAD28846C5C [U0]
// USA_REV1 hash = 4C9B419DC583C0DF4AB908ADF83BFC65 [U1] (Not Used)
// USA_REV2 hash = DD0A82FCC10397AFB37F12BB7F94E67A [U2]

// ----------------------------------------------------------------------------
// -- Versioning
// ----------------------------------------------------------------------------

// $0071f8: ALL-Dev Note: Version Identifier (8-Bit)

lVersions = {
    "UR0": 0x10,
    // "UR1": 0x50, // (Not Used)
    "UR2": 0x40
}
version = byte(0x71f8)

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

lDifficulty = {
    0: "V. Easy",
    1: "Easy",
    2: "Normal",
    3: "Hard",
    4: "Ex Hard",
    5: "Master",
}

lTraining = {
    0: "Easy",
    1: "Medium",
    2: "Hard"
}

lStage = {
    // UR0
    0x018E70: "🗺️Bridge",
    0x01414C: "🗺️Street",
    0x01864C: "🗺️Spinal Ship",
    0x015B64: "🗺️Stonehenge",
    0x0191D8: "🗺️Spaceship",
    0x013BA4: "🗺️Museum",
    0x016824: "🗺️Dojo",
    0x017064: "🗺️Castle",
    0x017A50: "🗺️Helipad",
    0x0183B4: "🗺️Jungle",
    0x019704: "🗺️Dungeon",
    0x019868: "🗺️Sky",
    // UR2 = UR0+0x50
    0x018EC0: "📍Bridge",
    0x01419C: "📍Street",
    0x01869C: "📍Spinal Ship",
    0x015BB4: "📍Stonehenge",
    0x019228: "📍Spaceship",
    0x013BF4: "📍Museum",
    0x016874: "📍Dojo",
    0x0170B4: "📍Castle",
    0x017AA0: "📍Helipad",
    0x018404: "📍Jungle",
    0x019754: "📍Dungeon",
    0x0198B8: "📍Sky",
}

lFighter = {
    0x00: "Jago",
    0x01: "TJ Combo",
    0x02: "Spinal",
    0x03: "Tusk",
    0x04: "Glacius",
    0x05: "Fulgore",
    0x06: "Kim Wu",
    0x07: "Sabrewulf",
    0x08: "Black Orchid",
    0x09: "Maya",
    0x0A: "Gargos",
}

lGameMode = {
    0: "Arcade",
    1: "Team",
    2: "Team Elimination",
    3: "Tournament",
    4: "Practice",
    5: "Training",
}

// ----------------------------------------------------------------------------
// -- Variables: Standard Options
// ----------------------------------------------------------------------------

vSetTimeLimit = { // Settings-Time Limit: (8-Bit) {0x00=On 0x01=Off}
    "UR0": byte(0x127cc8),
    "UR2": byte(0x127BB8)
}
vSetBlood = { // Settings-Blood: (8-Bit) {0x00=Off 0x01=Low 0x02=Medium 0x03=High}
    "UR0": byte(0x127cce),
    "UR2": byte(0x127BBE)
}
vSetThrowing = { // Settings-Throwing: (8-Bit) {0x00=On 0x01=Off}
    "UR0": byte(0x127ccf),
    "UR2": byte(0x127BBF)
}

vSetDifficulty = { // Settings-Difficulty: (8-Bit) {See Lookup}
    "UR0": byte(0x127cc2),
    "UR2": byte(0x127bb2)
}

vSetTrainingDifficulty = { // Training Difficulty: (8-Bit) {0x00=Easy 0x01=Medium 0x02=Hard}
    "UR0": byte(0x127cc1),
    "UR2": byte(0x127bb1)
}

// ----------------------------------------------------------------------------
// -- Variables: Special Options
// ----------------------------------------------------------------------------

vSetUnlockLevel = { // Game-Additional Options Unlock Level (8-Bit): {0x00=(Nothing) 0x01=Opt:L1 0x02=Opt:L1 0x03=Opt:L2 0x04=Opt:L3 0x05=Opt:L4+Diff:Master 0x06=Opt:L5+Speed:Ludicrous
    "UR0": byte(0x12834f),
    "UR2": byte(0x12823f)
} 

//-Level 1 Options

vSetThrowDamage = { // Settings-L1 Throw Damage: (8-Bit) {0x00=Norm 0x01=Low 0x02=None 0x03=High}
    "UR0": byte(0x127ccc),
    "UR2": byte(0x127bbc)
} 
vSetAerialCamera = { // Settings-L1 Aerial Camera: (8-Bit) {0x00=Off 0x01=On}
    "UR0": byte(0x127cd1),
    "UR2": byte(0x127bc1)
}
vSetInivisibleTag = { // Settings-L1 Invisible Tag: (8-Bit) {0x00=Off 0x01=On}
    "UR0": byte(0x127cd2),
    "UR2": byte(0x127bc2)
}
vSetEasyBreakers = { // Settings-L1 Easy Breakers: (8-Bit) {0x00=Off 0x01=On}
    "UR0": byte(0x127cd3),
    "UR2": byte(0x127bc3)
}

//-Level 2 Options

vSetPoweredFinishers = { // Settings-L2 Powered Finishers: (8-Bit) {0x00=Off 0x01=On}
    "UR0": byte(0x127cd5),
    "UR2": byte(0x127bc5)
}
vSetFullBreakers = { // Settings-L2 Full Breakers: (8-Bit) {0x00=Off 0x01=On}
    "UR0": byte(0x127cd6),
    "UR2": byte(0x127bc6)
}
vSetFullSuperBar = { // Settings-L2 Full Super Bar: (8-Bit) {0x00=Off 0x01=On}
    "UR0": byte(0x127cd7),
    "UR2": byte(0x127bc7)
}

//- Level 3 Options

vSetAutoDoubles = { // Settings-L3 Autodoubles: (8-Bit) {0x00=On 0x01=Off}
    "UR0": byte(0x127cd9),
    "UR2": byte(0x127bc9)
}
vSetFastFireballs = { // Settings-L3 Fast Fireballs: (8-Bit) {0x00=Off 0x01=On}
    "UR0": byte(0x127cda),
    "UR2": byte(0x127bca)
}
vSetMissiles = { // Settings-L3 Missiles: (8-Bit) {0x00=On 0x01=Off}
    "UR0": byte(0x127cdb),
    "UR2": byte(0x127bcb)
}

//- Level 4 Options

vSetCheapJuggles = { // Settings-L4 Cheap Juggles: (8-Bit) {0x00=Off 0x01=On}
    "UR0": byte(0x127cdc),
    "UR2": byte(0x127bcc)
}
vSetQuickOpeners = { // Settings-L4 Quick Openers: (8-Bit) {0x00=Off 0x01=On}
    "UR0": byte(0x127cdd),
    "UR2": byte(0x127bcd)
}
vSetKnockdown = { // Settings-L4 Knockdowns: (8-Bit) {0x00=On 0x01=Off}
    "UR0": byte(0x127cde),
    "UR2": byte(0x127bce)
}
vSetEasyUltimate = { // Settings-L4 Easy Ultimates: (8-Bit) {0x00=Off 0x01=On}
    "UR0": byte(0x127cdf),
    "UR2": byte(0x127bcf)
}

//- Level 5 Options

vSetBlocking = { // Settings-L5 Blocking: (8-Bit) {0x00=On 0x01=Off}
    "UR0": byte(0x127ce2),
    "UR2": byte(0x127bd2)
}

// Anti-Cheat Check
function usingSpecialSettings( ver ){
    return vSetThrowDamage[ver] + vSetEasyBreakers [ver]
    + vSetPoweredFinishers[ver] + vSetFullBreakers[ver] + vSetFullSuperBar[ver]
    + vSetAutoDoubles[ver] + vSetFastFireballs[ver] + vSetMissiles[ver]
    + vSetCheapJuggles[ver] + vSetQuickOpeners[ver] + vSetKnockdown[ver] + vSetEasyUltimate[ver]
    + vSetBlocking[ver] > 0
}

// ----------------------------------------------------------------------------
// -- Variables: Cheats
// ----------------------------------------------------------------------------

vGargosUnlocked = { // Cheat-Gargos Unlocked: (8-Bit) {0x00=No 0x01=Yes}
    "UR0": byte(0x127d3b),
    "UR2": byte(0x127c2b)
}

// ----------------------------------------------------------------------------
// -- Variables: Other
// ----------------------------------------------------------------------------

vGameState = { // Game State ID: (8-Bit)
    "UR0": byte(0x04814a),
    "UR2": byte(0x04802a)
}
gBootscreen = 0x11
gTitlescreen = 0x28
gCharacterSelect = 0x0d
gFightSummary = 0x2a
gCredits = 0x18
function onTitlescreenMenu( ver ) => vGameState[ver] == gTitlescreen
 
vGameSpeed = { // Game Speed (8-Bit)
    "UR0": byte(0x127cc3),
    "UR2": byte(0x127bb3)
}

vFightPerfect = { // Fight Over/Perfect (8-Bit)
    "UR0": byte(0x04a3fe),
    "UR2": byte(0x04a2f6)
}
function fightPerfect( ver ) => vFightPerfect[ver] == 0x01

vFightWinner = { // Game-Winner (8-Bit)
    "UR0": byte(0x04a3e0),
    "UR2": byte(0x04a2d8)
}

function inFight_alt( ver ){ // Not Used
    return vGameState[ver] != gBootscreen 
        && vGameState[ver] != gTitlescreen 
        && vGameState[ver] != gCharacterSelect 
        && vGameState[ver] != gFightSummary
}

vVictoryStyle = { // Fight Over/Victory Style (8-Bit)
    "UR0": byte(0x04a3ff),
    "UR2": byte(0x04a2f7)
}
function gVictoryUltra( ver ) => vVictoryStyle[ver] == 0x02
function gVictoryAwesome( ver ) => __ornext(vVictoryStyle[ver] == 0x04 || vVictoryStyle[ver] == 0x05)

vFightControl = { // Fight-Control Input (16-Bit)
    "UR0": word(0x1d8776),
    "UR2": word(0x1d8806)
}
function inFight( ver ) => vFightControl[ver] != 0x1814 // 0x1814=No Fight

vFightTimer = { // Fight-Game Timer (16-Bit BCD)
    "UR0": ((byte(0x1d5d51)*10) + byte(0x1d5d52)),
    "UR2": ((byte(0x1d5de1)*10) + byte(0x1d5de2))
}
function fightTimerRemaining(ver) => vFightTimer[ver]

function onSubscreenMenu(ver) => !onTitlescreenMenu(ver)

vStageID = { // Stage Pointer/ID: (24-Bit)
    "UR0": tbyte(0x04aeac),
    "UR2": tbyte(0x04ad9c)
}
function getStageName(ver) => StageLookup[vStageID[ver]]

vP1Character = { // P1 Character: (8-Bit)
    "UR0": byte(0x04ea9f),
    "UR2": byte(0x04e98f)
}
vP2Character = { // P2 Character: (8-Bit)
    "UR0": byte(0x04ea9e),
    "UR2": byte(0x04e98e)
}
function getCharacterName(ver, playerNum){
    if( playerNum == 1){
        return FighterLookup[vP1Character[ver]]
    } else return FighterLookup[vP2Character[ver]]
}

vGameMode = { // Game Mode (8-Bit)
    "UR0": byte(0x127d53),
    "UR2": byte(0x127c43)
}
function getGameModeName(ver) => GameModeLookup[vGameMode[ver]]

vFightDifficulty = { // Match Difficulty (8-Bit)
    "UR0": byte(0x1da002),
    "UR2": byte(0x1da092)
}
function getFightDifficultyName() => DifficultyLookup[vFightDifficulty[ver]]

vRuntime = { // Constant Run Timer: (32-Bit)
    "UR0": dword(0x00f69c),
    "UR2": dword(0x00f68c)
}

vFightType = { // Game Control: (8-Bit) {0x02=Player 0x03=Demo}
    "UR0": byte(0x04a404),
    "UR2": byte(0x04a2ff)
}
function isDemo(ver) => vFightType[ver] == 3
function isPlayer(ver) => vFightType[ver] == 2

vPauseMenu = { // Game Pause Menu: (8-Bit) {0x00=Off >0x00=Menu Open}
    "UR0": byte(0x04a40f),
    "UR2": byte(0x04a301)
}
function isPaused(ver) => vPauseMenu[ver]>0

vP1RoundHealth = { // Fight-P1 Health: (16-Bit) {0x7800=Full}
    "UR0": (word(0x1d3486)/ 0xFF),
    "UR2": (word(0x1d3516)/ 0xFF)
}
vP1HealthBankUsed = { // Fight-P1 Health Bank: (8-Bit) {0x00=First Bar 0x01=Second Bar}
    "UR0": byte(0x1d34bc),
    "UR2": byte(0x1d354c)
}
function p1TotalHealth(ver) => 0x78 + vP1RoundHealth[ver] - (0x78 * vP1HealthBankUsed[ver])

vP2RoundHealth = { // Fight-P2 Health: (16-Bit) {0x7800=Full}
    "UR0": (word(0x1d3586) / 0xFF),
    "UR2": (word(0x1d3616) / 0xFF)
}
vP2HealthBankUsed = { // Fight-P2 Health Bank: (8-Bit) {0x00=First Bar 0x01=Second Bar}
    "UR0": byte(0x1d35bc),
    "UR2": byte(0x1d364c)
}
function p2TotalHealth(ver) => 0x78 + vP2RoundHealth[ver] - (0x78 * vP2HealthBankUsed[ver])

vArcadeRound = { // Arcade-Tower Position: (8-Bit) {0x00=First Battle 0x0a=Final Position}
    "UR0": byte(0x128348),
    "UR2": byte(0x128238)
}

vFightStatus = { // Fight-Winner Decision (8-Bit) {0x00=Fight Ongoing 0x08=P2 Win 0x09=P1 Win 0x14=No Current Match (Title/Menu etc)}
    "UR0": byte(0x1d8775),
    "UR2": byte(0x1d8805)
}

function fightP1Win(ver) => prev(vFightStatus[ver]) == 0x00 && vFightStatus[ver] == 0x09
function fightP2Win(ver) => prev(vFightStatus[ver]) == 0x00 && vFightStatus[ver] == 0x08

vP1ComboLength = { // Fight-P1 Combo Length: (8-Bit)
    "UR0": byte(0x1d90e2),
    "UR2": byte(0x1d9172)
}
vP1ComboMessageTimeout = { // OSD-P1 Combo Message Timeout: (8-Bit)
    "UR0": byte(0x1d90e3),
    "UR2": byte(0x1d9173)
}
function p1ComboBreaker(ver) => vP1ComboLength[ver] == 0x63 && vP1ComboMessageTimeout[ver] == 1
function p1Combo(ver) => vP1ComboLength[ver] < 0x63 && vP1ComboMessageTimeout[ver] == 1

vStageKnockOff = { // Fight-Stage Knockoff (16-Bit)
    "UR0": word(0x1d876e),
    "UR2": word(0x1d87fe)
}
function knockOff(ver) => prev(vStageKnockOff[ver]) == 0x0000 && vStageKnockOff[ver] == 0x3972

vP1LastMove = { // Fight-P1 Last Move Used (8-Bit)
    "UR0": byte(0x1d32d1),
    "UR2": byte(0x1d3361)
}

vFightVictoryStyle = { // Fight-Victory Style (8-Bit)
    "UR0": byte(0x1d87db),
    "UR2": byte(0x1d886b)
}
function ultraCombo(ver) => vFightVictoryStyle[ver] == 0x02

vCurrentLevel = { // Training- Current Level (8-Bit) {0x00-0x04 Levels, 0x05=Results}
    "UR0": byte(0x1d9f7b),
    "UR2": byte(0x1da00b)
}

vCurrentRound = { // Training- Current Round (8-Bit)
    "UR0": byte(0x1d877e),
    "UR2": byte(0x1d880e)
}

vTotalRounds = { // Training-Number of Rounds to Complete Level (8-Bit)
    "UR0": byte(0x1d9f7f),
    "UR2": byte(0x1da00f)
}

vP1FinisherLevel = { // Fight-P1 # Finishers Used (8-Bit)
    "UR0": byte(0x1d32c4),
    "UR2": byte(0x1d3354)
}

vP1SpinalSkulls = { // P1 Spinal Skull Count (8-Bit)
    "UR0": byte(0x1d3520),
    "UR2": byte(0x1d35b0)
}

vP1Defeated = { // Team Battle: P1 Defeated Count (8-Bit)
    "UR0": byte(0x04a433),
    "UR2": byte(0x04a32b)
}

vP2Defeated = { // Team Battle: P2 Defeated Count (8-Bit)
    "UR0": byte(0x04a443),
    "UR2": byte(0x04a33b)
}

vP2TeamSize = { // Team Battle: P2 Team Size (8-Bit)
    "UR0": byte(0x04a442),
    "UR2": byte(0x04a33a)
}

vP1Fatals = { // Arcade-P1 Fatals
    "UR0": byte(0x12830b),
    "UR2": byte(0x1281fb)
}

vP1WinStreak = { // Arcade-P1 Win Streak
    "UR0": byte(0x128309),
    "UR2": byte(0x1281f9)
}

vFightClockFrames = { // Fight-Clock Frame Counter
    "UR0": byte(0x1d5d53),
    "UR2": byte(0x1d5de3)
}

vTrainingFailCount = { // Training-Fail Counter (8-bit)
    "UR0": byte(0x1d879f),
    "UR2": byte(0x1d882f)
}

vTrainingDemoMode = { // Training-Demo is Playing (8-Bit) {0x00=Player Move 0x01=Demo Move}
    "UR0": byte(0x1d877f),
    "UR2": byte(0x1d880f) 
}

vP1TeamSize = { // Team Battle-P1 Team Size (8-Bit)
    "UR0": byte(0x04a432),
    "UR2": byte(0x04A32A) 
}

vP2TeamSize = { // Team Battle-P2 Team Size (8-Bit)
    "UR0": byte(0x04a442),
    "UR2": byte(0x04a33a) 
}

vP1TeamDefeated = { // Team Battle-P1 Count of Defeated (8-Bit)
    "UR0": byte(0x04a433),
    "UR2": byte(0x04A32B) 
}

vP2TeamDefeated = { // Team Battle-P2 Count of Defeated (8-Bit)
    "UR0": byte(0x04a443),
    "UR2": byte(0x04a33b) 
}

// ----------------------------------------------------------------------------
// -- Achievements: Arcade Wins
// ----------------------------------------------------------------------------

lArcadeAnyWinTitle = {
 0x02: "Getting Warmed Up", // Normal
 0x04: "Pushing Limits", // Extra Hard
 0x05: "The Reign of Evil is Over", // Master
}

lArcadeAnyWinPoints = {
 0x02: 3, // Normal
 0x04: 10, // Extra Hard
 0x05: 25, // Master
}

lArcadeCharWinTitle = {
 0x00: "Alone, At Last",
 0x01: "He's Rich, He's Bad & He's Back",
 0x02: "Captain of The Dutchman",
 0x03: "Written into Legend",
 0x04: "Mission Accomplished",
 0x05: "Ultratech is Taking Over",
 0x06: "Guardian of the People",
 0x07: "The Madness of the Beast",
 0x08: "Reigning Champion",
 0x09: "Long live the Queen!",
 0x0a: "Eternal Hell"
}

// Conditions
function arcadeStageWin(ver){
    return isPlayer(ver) && !usingSpecialSettings(ver) && fightP1Win(ver) && vGameMode[ver] == 00
}

function arcadeStageLose(ver){
    return isPlayer(ver) && !usingSpecialSettings(ver) && fightP2Win(ver) && vGameMode[ver] == 00
}

function arcadeComplete(ver, difficultyID){
    return arcadeStageWin(ver) && trigger_when((vArcadeRound[ver] == 0x0a)) && vFightDifficulty[ver] >= difficultyID
}

function arcadeCompleteChar(ver, charID, difficultyID){
    return once(vP1Character[ver] == charID && vArcadeRound[ver] == 0x00 && inFight(ver)) && never(vP1Character[ver] != charID || onTitlescreenMenu(ver)) && arcadeComplete(ver,difficultyID) && vP1Character[ver] == charID
}

// Builders
function arcadeAnyWinBuilder (difficultyID){
    achievement(
        id = 0,
        title = lArcadeAnyWinTitle[difficultyID], points = lArcadeAnyWinPoints[difficultyID],
        description = "Beat the game on "+ lDifficulty[difficultyID] +" Difficulty or Higher (No Special Options)",
        trigger = (version == lVersions["UR0"] && arcadeComplete("UR0", difficultyID)) || (version == lVersions["UR2"] && arcadeComplete("UR2", difficultyID))
    ) 
}

function arcadeCharWinBuilder(charID, difficultyID){    
    achievement(
        id = 0,
        title = lArcadeCharWinTitle[charID], points = 5,
        description = "Playing Arcade with " + lFighter[charID] + ", Beat the Game on Hard Difficulty or Higher (No Special Options)",
        trigger = (version == lVersions["UR0"] && arcadeCompleteChar("UR0", charID, difficultyID)) || (version == lVersions["UR2"] && arcadeCompleteChar("UR2", charID, difficultyID))
    )
}

// Loops
for k in lFighter {
   arcadeCharWinBuilder(k, 0x03 ) 
}

for k in lDifficulty {
    if( k > 1 && k != 3 ) arcadeAnyWinBuilder(k)
}

// ----------------------------------------------------------------------------
// -- Achievements: Breakers
// ----------------------------------------------------------------------------

function breakerCountWin( ver, charID ){
    return
    measured(
        tally(3, p1ComboBreaker(ver)), 
        when=isPlayer(ver) && (vGameMode[ver] == 00) && (vFightDifficulty[ver] >= 2) && !usingSpecialSettings(ver) && vP1Character[ver] == charID
    )
    && never(!inFight(ver))
    && fightP1Win(ver)
}

function breakerWinBuilder( charID ){
    achievement(
        id = 0,
        title = "Breakers: " + lFighter[charID], points = 5,
        description = "Playing Arcade as "+ lFighter[charID] +", Perform 3x Combo Breakers in a Single Fight and Win (No Special Options, Difficulty: Normal+)",
        trigger = (version == lVersions["UR0"] && breakerCountWin("UR0", charID)) || (version == lVersions["UR2"] && breakerCountWin("UR2", charID))
    )
}

// Loops
for k in lFighter {
   if(k != 0x0a) breakerWinBuilder( k ) 
}

achievement(
    id = 0,
    title = "Broken Mechanics", points = 10,
    description = "Playing Arcade, Perform 5 Combo Breakers in a Single Fight and Win (No Special Options, Difficulty: Normal+)",
    trigger = (version == lVersions["UR0"] && measured(
        tally(5, p1ComboBreaker("UR0")), 
        when=isPlayer("UR0") && (vGameMode["UR0"] == 00) && (vFightDifficulty["UR0"] >= 2) && !usingSpecialSettings("UR0")
    )
    && never(!inFight("UR0"))
    && fightP1Win("UR0")) || 
    (version == lVersions["UR2"] && measured(
        tally(5, p1ComboBreaker("UR2")), 
        when=isPlayer("UR2") && (vGameMode["UR2"] == 00) && (vFightDifficulty["UR2"] >= 2) && !usingSpecialSettings("UR2")
    )
    && never(!inFight("UR2"))
    && fightP1Win("UR2"))
)

// ----------------------------------------------------------------------------
// -- Achievements: Knock-Off
// ----------------------------------------------------------------------------

lKnockOffStage = {
    0x00: 0x018EC0,
    0x01: 0x01419C,
    0x02: 0x01869C,
    0x03: 0x015BB4,
    0x04: 0x016874,
    0x05: 0x0170B4,
    0x06: 0x017AA0,
    0x07: 0x019754
}

function getlKnockoffStage( type, ID ){
    if( type == "UR0") return lKnockOffStage[ID]-0x50
    else return lKnockOffStage[ID]
}

lKnockOffCharacter = {
    0x00: 0x00,
    0x01: 0x01,
    0x02: 0x02,
    0x03: 0x03,
    0x04: 0x06,
    0x05: 0x07,
    0x06: 0x08,
    0x07: 0x0a
}

lKnockOffAchievementTitles = {
    0x00: "Troubled Waters",
    0x01: "Training Hard",
    0x02: "Walk the Plank",
    0x03: "The Secret of Stonehenge",
    0x04: "Dojo, Oh No!",
    0x05: "Bats in the Belfry",
    0x06: "Flying Lessons",
    0x07: "Lock and Key"
}

function knockOffWin( ver, charID, stageID ){
    return isPlayer(ver) && !usingSpecialSettings(ver) && vFightStatus[ver] == 0x09 && vGameMode[ver] == 00 && vFightDifficulty[ver] >= 2 && vStageID[ver] == stageID && vP1Character[ver] == charID && knockOff(ver)
}

function knockOffWinBuilder( arrID ){
    fighterName = lFighter[lKnockOffCharacter[arrID]]
    stageName = lStage[lKnockOffStage[arrID]]
    achievement(
        id = 0,
        title = lKnockOffAchievementTitles[arrID], points = 5,
        description = "Playing Arcade as "+fighterName+" on "+fighterName+"'s "+stageName+", Use Your Environment To Finish Your Opponent Off (No Special Options, Difficulty: Normal+)",
        trigger = (version == lVersions["UR0"] && knockOffWin("UR0",lKnockOffCharacter[arrID],getlKnockoffStage("UR0",arrID))) || (version == lVersions["UR2"] && knockOffWin("UR2",lKnockOffCharacter[arrID],getlKnockoffStage("UR2",arrID)))
    )
}

for k in lKnockOffCharacter {
    knockOffWinBuilder( k )
}

achievement(
    id = 0,
    title = "Sky-fall", points = 1,
    description = "Play a match on the hidden Sky level and launch your opponent off the edge",
    trigger =   (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vFightStatus["UR0"] == 0x09 && vStageID["UR0"] == 0x0198B8 && knockOff("UR0")) ||
                (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vFightStatus["UR2"] == 0x09 && vStageID["UR2"] == 0x0198B8 && knockOff("UR2"))
)

// ----------------------------------------------------------------------------
// -- Achievements: Combo Length
// ----------------------------------------------------------------------------

//          0x00-0x02=No Combo
//          0x03=Triple
//          0x04=Super
//          0x05=Hyper
//          0x06=Brutal
//          0x07=Master
//          0x08=Awesome
//          0x09=Blaster
//          0x0a=Monster
//          0x0b=King
//          0x0c-0x62=Killer (Max Combo Length is Decimal 98)
//          0x63=C-C-C-Combo Breaker

ComboNamesLookup = {
    0x00: "Super",
    0x01: "Hyper",
    0x02: "Brutal",
    0x03: "Master",
    0x04: "Awesome",
    0x05: "Blaster",
    0x06: "Monster",
    0x07: "King"
}

ComboLengthLookup = {
    0x00: 0x04,
    0x01: 0x05,
    0x02: 0x06,
    0x03: 0x07,
    0x04: 0x08,
    0x05: 0x09,
    0x06: 0x0a,
    0x07: 0x0b
}

ComboPointsLookup = {
    0x00: 1,
    0x01: 1,
    0x02: 1,
    0x03: 2,
    0x04: 2,
    0x05: 3,
    0x06: 3,
    0x07: 3
}

function p1ComboSuccess( ver, len ){
    return isPlayer(ver) && !usingSpecialSettings(ver) && inFight(ver) && vGameMode[ver] == 00 && p1Combo(ver) && vP1ComboLength[ver] == len
}

function comboLengthBuilder( len ){
    achievement(
        id = 0,
        title = ComboNamesLookup[len] + " Combo!", points = ComboPointsLookup[len],
        description = "Playing Arcade, Perform a Combo of "+ComboLengthLookup[len]+" Hits",
        trigger = ((version == lVersions["UR0"] && p1ComboSuccess("UR0",ComboLengthLookup[len])) || (version == lVersions["UR2"] && p1ComboSuccess("UR2",ComboLengthLookup[len])))
    )
}

for k in ComboLengthLookup {
    comboLengthBuilder(k)
}

achievement(
    id = 0,
    title = "Killer Combo!", points = 4,
    description = "Playing Arcade, Perform a Combo of 12 Hits or more",
    trigger = ((version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && inFight("UR0") && vGameMode["UR0"] == 00 && p1Combo("UR0") && vP1ComboLength["UR0"] >= 12 && !ultraCombo("UR0")) ||
    (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && inFight("UR2") && vGameMode["UR2"] == 00 && p1Combo("UR2") && vP1ComboLength["UR2"] >= 12 && !ultraCombo("UR2")))
)

// ----------------------------------------------------------------------------
// -- Achievements: Ultra Academy
// ----------------------------------------------------------------------------

function ultraWin( ver, charID ){
    return isPlayer(ver) && !usingSpecialSettings(ver) && vGameMode[ver] == 00 && vFightDifficulty[ver] >= 2 && vP1Character[ver] == charID && vGameState[ver] == gFightSummary && vFightWinner[ver] == 0x01 && gVictoryUltra(ver)
}

function ultraWinBuilder( charID ){
    achievement(
        id = 0,
        title = "Ultra Academy: " + lFighter[charID], points = 5,
        description = "Playing Arcade as "+ lFighter[charID] +", Finish your opponent with an Ultra Combo (No Special Options, Difficulty: Normal+)",
        trigger = (version == lVersions["UR0"] && ultraWin("UR0",charID)) || (version == lVersions["UR2"] && ultraWin("UR2",charID))
    )
}

// Loops
for k in lFighter {
   if(k != 0x0a) ultraWinBuilder( k ) 
}


// ----------------------------------------------------------------------------
// -- Achievements: Awesome Academy
// ----------------------------------------------------------------------------

function awesomeWin( ver, charID ){
    return isPlayer(ver) && !usingSpecialSettings(ver) && vGameMode[ver] == 00 && vFightDifficulty[ver] >= 2 && vP1Character[ver] == charID && vGameState[ver] == gFightSummary && vFightWinner[ver] == 0x01 && gVictoryAwesome(ver)
}

function awesomeWinBuilder( charID ){
    achievement(
        id = 0,
        title = "Awesome Academy: " + lFighter[charID], points = 5,
        description = "Playing Arcade as "+ lFighter[charID] +", Finish your opponent with a No Mercy / Ultimate Combo (No Special Options, Difficulty: Normal+)",
        trigger = (version == lVersions["UR0"] && awesomeWin("UR0",charID)) || (version == lVersions["UR2"] && awesomeWin("UR2",charID))
    )
}

// Loops
for k in lFighter {
   if(k != 0x0a) awesomeWinBuilder( k ) 
}

// ----------------------------------------------------------------------------
// -- Achievements: Training
// ----------------------------------------------------------------------------

lTrainingAddr = {
    "UR0": {
    00: 0x1d9fb3,
    01: 0x1d9fb2,
    02: 0x1d9fb1,
    03: 0x1d9fb0,
    04: 0x1d9fb7
    },
    "UR2": {
    00: 0x1da043,
    01: 0x1da042,
    02: 0x1da041,
    03: 0x1da040,
    04: 0x1da047
    }
}

lTrainingName = {
    00: "L1 Special Moves",
    01: "L2 Autodoubles",
    02: "L3 Combos",
    03: "L4 Counter Moves",
    04: "L5 Combo Breakers"
}

lTrainingPoints = {
    00: 5,
    01: 5,
    02: 5,
    03: 10,
    04: 10
}

function totalTrainingScore(ver) {
    vOut = 0
    for k in lTrainingAddr[ver] {
        vOut = vOut + byte(lTrainingAddr[ver][k])
    }
    return vOut
}

function trainingMode( ver, tRound ){
    return isPlayer(ver) && !usingSpecialSettings(ver) && vGameMode[ver] == 05 && vSetTrainingDifficulty[ver] >= 1
}

function trainingBuilder( lookupID ){
    achievement(
        id = 0,
        title = "Training: " + lTrainingName[lookupID], points = lTrainingPoints[lookupID],
        description = "Complete Training Level " + (lookupID+1) + " with Grade A (No Special Options, Difficulty: Standard+)",
        trigger = (version == lVersions["UR0"] && trainingMode("UR0",lookupID) && prev(byte(lTrainingAddr["UR0"][lookupID])) == 0x00 && byte(lTrainingAddr["UR0"][lookupID]) == 0x04) || 
        (version == lVersions["UR2"] && trainingMode("UR2",lookupID) && prev(byte(lTrainingAddr["UR2"][lookupID])) == 0x00 && byte(lTrainingAddr["UR2"][lookupID]) == 0x04)
    )
}

// Loops
for k in range(0,4) {
   trainingBuilder( k ) 
}

achievement(
    id = 0,
    title = "Studious Award", points = 5,
    description = "Complete The Full Training Schedule (No Special Options, Difficulty: Standard+)",
    trigger = (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameMode["UR0"] == 05 && vSetTrainingDifficulty["UR0"] >= 1 && prev(vCurrentLevel["UR0"]) == 0x04 && vCurrentLevel["UR0"] == 0x05) ||
    (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameMode["UR2"] == 05 && vSetTrainingDifficulty["UR2"] >= 1 && prev(vCurrentLevel["UR2"]) == 0x04 && vCurrentLevel["UR2"] == 0x05)
)

achievement(
    id = 0,
    title = "Training: Standard Grade A Award", points = 10,
    description = "Complete Standard Training with an Overall Grade of A or Better (No Special Options, Difficulty: Standard+)",
    trigger = (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameMode["UR0"] == 05 && vSetTrainingDifficulty["UR0"] >= 1 && vCurrentLevel["UR0"] == 0x05 && totalTrainingScore("UR0") >= 0x11)||
    (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameMode["UR2"] == 05 && vSetTrainingDifficulty["UR2"] >= 1 && vCurrentLevel["UR2"] == 0x05 && totalTrainingScore("UR2") >= 0x11)
)

achievement(
    id = 0,
    title = "Training: Standard Grand Master Award", points = 25,
    description = "Complete Standard Training with an Overall Grade of A or Better (No Special Options, Difficulty: Standard+)",
    trigger = (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameMode["UR0"] == 05 && vSetTrainingDifficulty["UR0"] >= 1 && vCurrentLevel["UR0"] == 0x05 && totalTrainingScore("UR0") == 0x14) ||
    (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameMode["UR2"] == 05 && vSetTrainingDifficulty["UR2"] >= 1 && vCurrentLevel["UR2"] == 0x05 && totalTrainingScore("UR2") == 0x14)
)

achievement(
    id = 0,
    title = "Training: Expert Grade A Award", points = 10,
    description = "Complete Standard Training with an Overall Grade of A or Better (No Special Options, Difficulty: Standard+)",
    trigger = (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameMode["UR0"] == 05 && vSetTrainingDifficulty["UR0"] == 2 && vCurrentLevel["UR0"] == 0x05 && totalTrainingScore("UR0") >= 0x11) ||
    (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameMode["UR2"] == 05 && vSetTrainingDifficulty["UR2"] == 2 && vCurrentLevel["UR2"] == 0x05 && totalTrainingScore("UR2") >= 0x11) 
)

achievement(
    id = 0,
    title = "Training: Expert Grand Master Award", points = 50,
    description = "Complete Standard Training with an Overall Grade of A or Better (No Special Options, Difficulty: Standard+)",
    trigger = (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameMode["UR0"] == 05 && vSetTrainingDifficulty["UR0"] == 2 && vCurrentLevel["UR0"] == 0x05 && totalTrainingScore("UR0") == 0x14) ||
    (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameMode["UR2"] == 05 && vSetTrainingDifficulty["UR2"] == 2 && vCurrentLevel["UR2"] == 0x05 && totalTrainingScore("UR2") == 0x14)
)

// ----------------------------------------------------------------------------
// -- Achievements: Other
// ----------------------------------------------------------------------------

achievement(
    id = 321223,
    title = "Untouchable", points = 10,
    description = "Playing Arcade, Finish a Fight with a Perfect Victory! (No Special Options, Difficulty: Normal+)",
    trigger = (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameState["UR0"] == gFightSummary && vFightWinner["UR0"] == 0x01 && fightPerfect("UR0")) ||
    (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameState["UR2"] == gFightSummary && vFightWinner["UR2"] == 0x01 && fightPerfect("UR2"))
)

achievement(
    id = 0,
    title = "Cold as Ice", points = 10,
    description = "Playing Arcade as Glacius on the Glacius' Spaceship defeat your opponent using the move 'Super Arctic Blast' (No Special Options, Difficulty: Normal+)",
    trigger = (version == lVersions["UR0"] && arcadeStageWin("UR0") &&  vFightDifficulty["UR0"] >= 2 && vP1LastMove["UR0"] == 0x08 && vP1Character["UR0"] == 0x04 && vStageID["UR0"] == 0x019228) ||
    (version == lVersions["UR2"] && arcadeStageWin("UR2") &&  vFightDifficulty["UR2"] >= 2 && vP1LastMove["UR2"] == 0x08 && vP1Character["UR2"] == 0x04 && vStageID["UR2"] == 0x019228)
)

// Anti-Cheat Check
function fullgoreSpecialSettings(ver){
    return vSetThrowDamage[ver] + vSetEasyBreakers[ver]
    + vSetPoweredFinishers[ver] + vSetFullBreakers[ver] + vSetFullSuperBar[ver]
    + vSetAutoDoubles[ver] + vSetFastFireballs[ver] + vSetMissiles[ver]
    + vSetCheapJuggles[ver] + vSetQuickOpeners[ver] + vSetKnockdown[ver] 
    + vSetEasyUltimate[ver] == 0 
    && vSetBlocking[ver] == 0x01
    && vSetBlood[ver] == 0x03
    && vSetUnlockLevel[ver] == 0x06 && vGameSpeed[ver] == 0x03
}

achievement(
    id = 0,
    title = "Full-Gore", points = 10,
    description = "Playing Arcade as Fulgore on Fulgore's Museum, win a fight with Blocking Off, Blood High and Speed Ludicrous (No Other Special Options, Difficulty: Normal+)",
    trigger = ((version == lVersions["UR0"] && fullgoreSpecialSettings("UR0") && isPlayer("UR0") && fightP1Win("UR0") && vGameMode["UR0"] == 00 &&  vFightDifficulty["UR0"] >= 2 && vP1Character["UR0"] == 0x05 && vStageID["UR0"] == 0x013BF4) ||
    (version == lVersions["UR2"] && fullgoreSpecialSettings("UR2") && isPlayer("UR2") && fightP1Win("UR2") && vGameMode["UR2"] == 00 &&  vFightDifficulty["UR2"] >= 2 && vP1Character["UR2"] == 0x05 && vStageID["UR2"] == 0x013BF4))
)

achievement(
    id = 0,
    title = "Me Tarzan, You Pain!", points = 10,
    description = "Playing Arcade as Maya on Maya's Jungle finish your opponent with the move 'Super Jungle Leap' (No Special Options, Difficulty: Normal+)",
    trigger = ((version == lVersions["UR0"] && arcadeStageWin("UR0") &&  vFightDifficulty["UR0"] >= 2 && vP1LastMove["UR0"] == 0x2a && vP1Character["UR0"] == 0x09 && vStageID["UR0"] == 0x018404) ||
    (version == lVersions["UR2"] && arcadeStageWin("UR2") &&  vFightDifficulty["UR2"] >= 2 && vP1LastMove["UR2"] == 0x2a && vP1Character["UR2"] == 0x09 && vStageID["UR2"] == 0x018404))
)

achievement(
    id = 0,
    title = "C-C-C-C-Combo Breaker", points = 1,
    description = "Playing Arcade as Combo on Combo's Street, Combo Break Another Combo's Combo (No Special Options, Difficulty: Normal+)",
    trigger =   (version == lVersions["UR0"] && isPlayer("UR0") && (vGameMode["UR0"] == 00) && (vFightDifficulty["UR0"] >= 2) && !usingSpecialSettings("UR0") && p1ComboBreaker("UR0") && vP1Character["UR0"] == 0x01 && vStageID["UR0"] == 0x01419C) ||
                (version == lVersions["UR2"] && isPlayer("UR2") && (vGameMode["UR2"] == 00) && (vFightDifficulty["UR2"] >= 2) && !usingSpecialSettings("UR2") && p1ComboBreaker("UR0") && vP1Character["UR0"] == 0x01 && vStageID["UR2"] == 0x01419C)
)

achievement(
    id = 321256,
    title = "Judge's Decision", points = 1,
    description = "Playing Arcade, Win a fight with a Time Out (No Special Options, Difficulty: Normal+)",
    trigger =   (version == lVersions["UR0"] && arcadeStageWin("UR0") &&  vFightDifficulty["UR0"] >= 2 && vFightTimer["UR0"] == 00) ||
                (version == lVersions["UR2"] && arcadeStageWin("UR2") &&  vFightDifficulty["UR2"] >= 2 && vFightTimer["UR2"] == 00)
)

achievement(
    id = 321251,
    title = "5th Finisher", points = 1,
    description = "Playing Arcade, Use your '5th Finisher' on your opponent (No Special Options, Difficulty: Normal+)",
    trigger =   (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameMode["UR0"] == 00 && vFightDifficulty["UR0"] >= 2 
                    && prev(vP1FinisherLevel["UR0"]) == 0x04 && vP1FinisherLevel["UR0"] == 0x05) ||
                (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameMode["UR2"] == 00 && vFightDifficulty["UR2"] >= 2 
                    && prev(vP1FinisherLevel["UR2"]) == 0x04 && vP1FinisherLevel["UR2"] == 0x05)
)

achievement(
    id = 321257,
    title = "Pieces of Six", points = 1,
    description = "Playing Arcade as Spinal, Max out your Skull Collection (No Special Options, Difficulty: Normal+)",
    trigger =   (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameMode["UR0"] == 00 && vFightDifficulty["UR0"] >= 2 
                    && prev(vP1SpinalSkulls["UR0"]) < 0x06 && vP1SpinalSkulls["UR0"] == 0x06) || 
                (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameMode["UR2"] == 00 && vFightDifficulty["UR2"] >= 2 
                    && prev(vP1SpinalSkulls["UR2"]) < 0x06 && vP1SpinalSkulls["UR2"] == 0x06)
)

achievement(
    id = 321255,
    title = "Humiliated", points = 1,
    description = "Playing Arcade, Lose the fight by being launched off the stage (No Special Options, Difficulty: Normal+)",
    trigger =   (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vFightStatus["UR0"] == 0x08 && vGameMode["UR0"] == 00 && vFightDifficulty["UR0"] >= 2 && knockOff("UR0")) ||
                (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vFightStatus["UR2"] == 0x08 && vGameMode["UR2"] == 00 && vFightDifficulty["UR2"] >= 2 && knockOff("UR2"))
)

achievement(
    id = 321254,
    title = "Have Mercy!", points = 1,
    description = "Playing Arcade, Lose the fight to a No Mercy / Ultimate Combo (No Special Options, Difficulty: Normal+)",
    trigger =   (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameMode["UR0"] == 00 && vFightDifficulty["UR0"] >= 2 && vGameState["UR0"] == gFightSummary && vFightWinner["UR0"] == 0x02 && gVictoryAwesome("UR0")) ||
                (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameMode["UR2"] == 00 && vFightDifficulty["UR2"] >= 2 && vGameState["UR2"] == gFightSummary && vFightWinner["UR2"] == 0x02 && gVictoryAwesome("UR2"))
)

achievement(
    id = 321250,
    title = "5-Up!", points = 10,
    description = "Win 5x Team Battle or more without losing a round (No Special Options, Difficulty: Normal+)",
    trigger =   (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameMode["UR0"] == 01 && vFightDifficulty["UR0"] >= 2 && vP2TeamSize["UR0"] >= 0x05 && vP1Defeated["UR0"] == 0 && vP2Defeated["UR0"] == vP2TeamSize["UR0"]) ||
                (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameMode["UR2"] == 01 && vFightDifficulty["UR2"] >= 2 && vP2TeamSize["UR2"] >= 0x05 && vP1Defeated["UR2"] == 0 && vP2Defeated["UR2"] == vP2TeamSize["UR2"]) 
)

achievement(
    id = 321253,
    title = "Fatal Instinct", points = 25,
    description = "Playing Arcade Mode, Beat the Game By Performing A 'Fatal' In Every Match (No Special Options, Difficulty: Standard+)",
    trigger =   (version == lVersions["UR0"] && awesomeWin("UR0", vP1Character["UR0"]) && (vArcadeRound["UR0"] == 0x0a) && vFightDifficulty["UR0"] >= 2 && vP1Fatals["UR0"] == 0x0a) ||
                (version == lVersions["UR2"] && awesomeWin("UR2", vP1Character["UR2"]) && (vArcadeRound["UR2"] == 0x0a) && vFightDifficulty["UR2"] >= 2 && vP1Fatals["UR2"] == 0x0a)
)

achievement(
    id = 321261,
    title = "Victory, No Question", points = 25,
    description = "Beat Arcade Mode without using a Continue (No Special Options, Difficulty: Normal+)",
    trigger =   (version == lVersions["UR0"] && arcadeStageWin("UR0") && (vArcadeRound["UR0"] == 0x0a) && vFightDifficulty["UR0"] >= 2 && vP1WinStreak["UR0"] == 0x0a) ||
                (version == lVersions["UR2"] && arcadeStageWin("UR2") && (vArcadeRound["UR2"] == 0x0a) && vFightDifficulty["UR2"] >= 2 && vP1WinStreak["UR2"] == 0x0a)
)

// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

// Arcade Clear Speed
for k in lDifficulty{
    leaderboard(
        title = "Arcade Rush - " + lDifficulty[k],
        description = "Beat arcade mode as fast as you can. You can do it! (No Special Options, Difficulty: "+lDifficulty[k]+")",
        start  =    (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameMode["UR0"] == 0x00 && vArcadeRound["UR0"] == 0x00 && vFightDifficulty["UR0"] == k && inFight("UR0")) ||
                    (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameMode["UR2"] == 0x00 && vArcadeRound["UR2"] == 0x00 && vFightDifficulty["UR2"] == k && inFight("UR2")),
        cancel =    (version == lVersions["UR0"] && __ornext(vGameState["UR0"] == gTitlescreen || prev(vArcadeRound["UR0"]) < vArcadeRound["UR0"])) ||
                    (version == lVersions["UR2"] && __ornext(vGameState["UR2"] == gTitlescreen || prev(vArcadeRound["UR2"]) < vArcadeRound["UR2"])),
        submit =    (version == lVersions["UR0"] && vArcadeRound["UR0"] == 0x0a) ||
                    (version == lVersions["UR2"] && vArcadeRound["UR2"] == 0x0a),
        value =     max_of(
                        measured(prev(vFightClockFrames["UR0"]) != vFightClockFrames["UR0"], when=version == lVersions["UR0"]), 
                        measured(prev(vFightClockFrames["UR2"]) != vFightClockFrames["UR2"], when=version == lVersions["UR2"])
                    ),
        format = "FRAMES",
        lower_is_better = true,
id = 0
    ) 
}

// Arcade Training Speed
for k in lTraining{
    leaderboard(
        title = "Training - " + lTraining[k],
        description = "Beat the full training roster as fast as you can. You can do it! (No Special Options, Difficulty: "+lTraining[k]+")",
        start  =    (version == lVersions["UR0"] && isPlayer("UR0") && !usingSpecialSettings("UR0") && vGameMode["UR0"] == 0x05 && vCurrentLevel["UR0"] == 00 && vCurrentRound["UR0"] == 00 && vTrainingFailCount["UR0"] == 0x08 && vSetTrainingDifficulty["UR0"] == k && inFight("UR0")) ||
                    (version == lVersions["UR2"] && isPlayer("UR2") && !usingSpecialSettings("UR2") && vGameMode["UR2"] == 0x05 && vCurrentLevel["UR2"] == 00 && vCurrentRound["UR2"] == 00 && vTrainingFailCount["UR2"] == 0x08 && vSetTrainingDifficulty["UR2"] == k && inFight("UR2")),
        cancel =    (version == lVersions["UR0"] && __ornext(vGameState["UR0"] == gTitlescreen)) || 
                    (version == lVersions["UR2"] && __ornext(vGameState["UR2"] == gTitlescreen)),
        submit =    (version == lVersions["UR0"] && vCurrentLevel["UR0"] == 0x05) ||
                    (version == lVersions["UR2"] && vCurrentLevel["UR0"] == 0x05),
        value =     max_of(
                        measured(prev(vFightClockFrames["UR0"]) != vFightClockFrames["UR0"],when=version == lVersions["UR0"] && vTrainingDemoMode["UR0"]==0),
                        measured(prev(vFightClockFrames["UR2"]) != vFightClockFrames["UR2"],when=version == lVersions["UR2"] && vTrainingDemoMode["UR2"]==0)
                    ),
        format = "FRAMES",
        lower_is_better = true,
        id = 0
    ) 
}

// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

HPBarRLookup = {
    1: "❤️█▒▒▒▒",
    2: "❤️█▒▒▒▒",
    3: "❤️█▒▒▒▒",
    4: "❤️█▒▒▒▒",
    5: "❤️█▒▒▒▒",
    6: "❤️█▒▒▒▒",
    7: "❤️█▒▒▒▒",
    8: "❤️█▒▒▒▒",
    9: "❤️█▒▒▒▒",
    10: "❤️█▒▒▒▒",
    11: "❤️█▒▒▒▒",
    12: "❤️█▒▒▒▒",
    13: "❤️█▒▒▒▒",
    14: "❤️█▒▒▒▒",
    15: "❤️█▒▒▒▒",
    16: "❤️█▒▒▒▒",
    17: "❤️█▒▒▒▒",
    18: "❤️█▒▒▒▒",
    19: "❤️█▒▒▒▒",
    20: "❤️█▒▒▒▒",
    21: "❤️█▒▒▒▒",
    22: "❤️█▒▒▒▒",
    23: "❤️█▒▒▒▒",
    24: "❤️█▒▒▒▒",
    25: "❤️██▒▒▒",
    26: "❤️██▒▒▒",
    27: "❤️██▒▒▒",
    28: "❤️██▒▒▒",
    29: "❤️██▒▒▒",
    30: "❤️██▒▒▒",
    31: "❤️██▒▒▒",
    32: "❤️██▒▒▒",
    33: "❤️██▒▒▒",
    34: "❤️██▒▒▒",
    35: "❤️██▒▒▒",
    36: "❤️██▒▒▒",
    37: "❤️██▒▒▒",
    38: "❤️██▒▒▒",
    39: "❤️██▒▒▒",
    40: "❤️██▒▒▒",
    41: "❤️██▒▒▒",
    42: "❤️██▒▒▒",
    43: "❤️██▒▒▒",
    44: "❤️██▒▒▒",
    45: "❤️██▒▒▒",
    46: "❤️██▒▒▒",
    47: "❤️██▒▒▒",
    48: "❤️██▒▒▒",
    49: "❤️███▒▒",
    50: "❤️███▒▒",
    51: "❤️███▒▒",
    52: "❤️███▒▒",
    53: "❤️███▒▒",
    54: "❤️███▒▒",
    55: "❤️███▒▒",
    56: "❤️███▒▒",
    57: "❤️███▒▒",
    58: "❤️███▒▒",
    59: "❤️███▒▒",
    60: "❤️███▒▒",
    61: "❤️███▒▒",
    62: "❤️███▒▒",
    63: "❤️███▒▒",
    64: "❤️███▒▒",
    65: "❤️███▒▒",
    66: "❤️███▒▒",
    67: "❤️███▒▒",
    68: "❤️███▒▒",
    69: "❤️███▒▒",
    70: "❤️███▒▒",
    71: "❤️███▒▒",
    72: "❤️███▒▒",
    73: "❤️████▒",
    74: "❤️████▒",
    75: "❤️████▒",
    76: "❤️████▒",
    77: "❤️████▒",
    78: "❤️████▒",
    79: "❤️████▒",
    80: "❤️████▒",
    81: "❤️████▒",
    82: "❤️████▒",
    83: "❤️████▒",
    84: "❤️████▒",
    85: "❤️████▒",
    86: "❤️████▒",
    87: "❤️████▒",
    88: "❤️████▒",
    89: "❤️████▒",
    90: "❤️████▒",
    91: "❤️████▒",
    92: "❤️████▒",
    93: "❤️████▒",
    94: "❤️████▒",
    95: "❤️████▒",
    96: "❤️████▒",
    97: "❤️█████",
    98: "❤️█████",
    99: "❤️█████",
    100: "❤️█████",
    101: "❤️█████",
    102: "❤️█████",
    103: "❤️█████",
    104: "❤️█████",
    105: "❤️█████",
    106: "❤️█████",
    107: "❤️█████",
    108: "❤️█████",
    109: "❤️█████",
    110: "❤️█████",
    111: "❤️█████",
    112: "❤️█████",
    113: "❤️█████",
    114: "❤️█████",
    115: "❤️█████",
    116: "❤️█████",
    117: "❤️█████",
    118: "❤️█████",
    119: "❤️█████",
    120: "❤️█████",
    121: "💚█▒▒▒▒",
    122: "💚█▒▒▒▒",
    123: "💚█▒▒▒▒",
    124: "💚█▒▒▒▒",
    125: "💚█▒▒▒▒",
    126: "💚█▒▒▒▒",
    127: "💚█▒▒▒▒",
    128: "💚█▒▒▒▒",
    129: "💚█▒▒▒▒",
    130: "💚█▒▒▒▒",
    131: "💚█▒▒▒▒",
    132: "💚█▒▒▒▒",
    133: "💚█▒▒▒▒",
    134: "💚█▒▒▒▒",
    135: "💚█▒▒▒▒",
    136: "💚█▒▒▒▒",
    137: "💚█▒▒▒▒",
    138: "💚█▒▒▒▒",
    139: "💚█▒▒▒▒",
    140: "💚█▒▒▒▒",
    141: "💚█▒▒▒▒",
    142: "💚█▒▒▒▒",
    143: "💚█▒▒▒▒",
    144: "💚█▒▒▒▒",
    145: "💚██▒▒▒",
    146: "💚██▒▒▒",
    147: "💚██▒▒▒",
    148: "💚██▒▒▒",
    149: "💚██▒▒▒",
    150: "💚██▒▒▒",
    151: "💚██▒▒▒",
    152: "💚██▒▒▒",
    153: "💚██▒▒▒",
    154: "💚██▒▒▒",
    155: "💚██▒▒▒",
    156: "💚██▒▒▒",
    157: "💚██▒▒▒",
    158: "💚██▒▒▒",
    159: "💚██▒▒▒",
    160: "💚██▒▒▒",
    161: "💚██▒▒▒",
    162: "💚██▒▒▒",
    163: "💚██▒▒▒",
    164: "💚██▒▒▒",
    165: "💚██▒▒▒",
    166: "💚██▒▒▒",
    167: "💚██▒▒▒",
    168: "💚██▒▒▒",
    169: "💚███▒▒",
    170: "💚███▒▒",
    171: "💚███▒▒",
    172: "💚███▒▒",
    173: "💚███▒▒",
    174: "💚███▒▒",
    175: "💚███▒▒",
    176: "💚███▒▒",
    177: "💚███▒▒",
    178: "💚███▒▒",
    179: "💚███▒▒",
    180: "💚███▒▒",
    181: "💚███▒▒",
    182: "💚███▒▒",
    183: "💚███▒▒",
    184: "💚███▒▒",
    185: "💚███▒▒",
    186: "💚███▒▒",
    187: "💚███▒▒",
    188: "💚███▒▒",
    189: "💚███▒▒",
    190: "💚███▒▒",
    191: "💚███▒▒",
    192: "💚███▒▒",
    193: "💚████▒",
    194: "💚████▒",
    195: "💚████▒",
    196: "💚████▒",
    197: "💚████▒",
    198: "💚████▒",
    199: "💚████▒",
    200: "💚████▒",
    201: "💚████▒",
    202: "💚████▒",
    203: "💚████▒",
    204: "💚████▒",
    205: "💚████▒",
    206: "💚████▒",
    207: "💚████▒",
    208: "💚████▒",
    209: "💚████▒",
    210: "💚████▒",
    211: "💚████▒",
    212: "💚████▒",
    213: "💚████▒",
    214: "💚████▒",
    215: "💚████▒",
    216: "💚████▒",
    217: "💚█████",
    218: "💚█████",
    219: "💚█████",
    220: "💚█████",
    221: "💚█████",
    222: "💚█████",
    223: "💚█████",
    224: "💚█████",
    225: "💚█████",
    226: "💚█████",
    227: "💚█████",
    228: "💚█████",
    229: "💚█████",
    230: "💚█████",
    231: "💚█████",
    232: "💚█████",
    233: "💚█████",
    234: "💚█████",
    235: "💚█████",
    236: "💚█████",
    237: "💚█████",
    238: "💚█████",
    239: "💚█████",
    240: "💚█████",
}

HPBarLLookup = {
    1: "▒▒▒▒█❤️",
    2: "▒▒▒▒█❤️",
    3: "▒▒▒▒█❤️",
    4: "▒▒▒▒█❤️",
    5: "▒▒▒▒█❤️",
    6: "▒▒▒▒█❤️",
    7: "▒▒▒▒█❤️",
    8: "▒▒▒▒█❤️",
    9: "▒▒▒▒█❤️",
    10: "▒▒▒▒█❤️",
    11: "▒▒▒▒█❤️",
    12: "▒▒▒▒█❤️",
    13: "▒▒▒▒█❤️",
    14: "▒▒▒▒█❤️",
    15: "▒▒▒▒█❤️",
    16: "▒▒▒▒█❤️",
    17: "▒▒▒▒█❤️",
    18: "▒▒▒▒█❤️",
    19: "▒▒▒▒█❤️",
    20: "▒▒▒▒█❤️",
    21: "▒▒▒▒█❤️",
    22: "▒▒▒▒█❤️",
    23: "▒▒▒▒█❤️",
    24: "▒▒▒▒█❤️",
    25: "▒▒▒██❤️",
    26: "▒▒▒██❤️",
    27: "▒▒▒██❤️",
    28: "▒▒▒██❤️",
    29: "▒▒▒██❤️",
    30: "▒▒▒██❤️",
    31: "▒▒▒██❤️",
    32: "▒▒▒██❤️",
    33: "▒▒▒██❤️",
    34: "▒▒▒██❤️",
    35: "▒▒▒██❤️",
    36: "▒▒▒██❤️",
    37: "▒▒▒██❤️",
    38: "▒▒▒██❤️",
    39: "▒▒▒██❤️",
    40: "▒▒▒██❤️",
    41: "▒▒▒██❤️",
    42: "▒▒▒██❤️",
    43: "▒▒▒██❤️",
    44: "▒▒▒██❤️",
    45: "▒▒▒██❤️",
    46: "▒▒▒██❤️",
    47: "▒▒▒██❤️",
    48: "▒▒▒██❤️",
    49: "▒▒███❤️",
    50: "▒▒███❤️",
    51: "▒▒███❤️",
    52: "▒▒███❤️",
    53: "▒▒███❤️",
    54: "▒▒███❤️",
    55: "▒▒███❤️",
    56: "▒▒███❤️",
    57: "▒▒███❤️",
    58: "▒▒███❤️",
    59: "▒▒███❤️",
    60: "▒▒███❤️",
    61: "▒▒███❤️",
    62: "▒▒███❤️",
    63: "▒▒███❤️",
    64: "▒▒███❤️",
    65: "▒▒███❤️",
    66: "▒▒███❤️",
    67: "▒▒███❤️",
    68: "▒▒███❤️",
    69: "▒▒███❤️",
    70: "▒▒███❤️",
    71: "▒▒███❤️",
    72: "▒▒███❤️",
    73: "▒████❤️",
    74: "▒████❤️",
    75: "▒████❤️",
    76: "▒████❤️",
    77: "▒████❤️",
    78: "▒████❤️",
    79: "▒████❤️",
    80: "▒████❤️",
    81: "▒████❤️",
    82: "▒████❤️",
    83: "▒████❤️",
    84: "▒████❤️",
    85: "▒████❤️",
    86: "▒████❤️",
    87: "▒████❤️",
    88: "▒████❤️",
    89: "▒████❤️",
    90: "▒████❤️",
    91: "▒████❤️",
    92: "▒████❤️",
    93: "▒████❤️",
    94: "▒████❤️",
    95: "▒████❤️",
    96: "▒████❤️",
    97: "█████❤️",
    98: "█████❤️",
    99: "█████❤️",
    100: "█████❤️",
    101: "█████❤️",
    102: "█████❤️",
    103: "█████❤️",
    104: "█████❤️",
    105: "█████❤️",
    106: "█████❤️",
    107: "█████❤️",
    108: "█████❤️",
    109: "█████❤️",
    110: "█████❤️",
    111: "█████❤️",
    112: "█████❤️",
    113: "█████❤️",
    114: "█████❤️",
    115: "█████❤️",
    116: "█████❤️",
    117: "█████❤️",
    118: "█████❤️",
    119: "█████❤️",
    120: "█████❤️",
    121: "▒▒▒▒█💚",
    122: "▒▒▒▒█💚",
    123: "▒▒▒▒█💚",
    124: "▒▒▒▒█💚",
    125: "▒▒▒▒█💚",
    126: "▒▒▒▒█💚",
    127: "▒▒▒▒█💚",
    128: "▒▒▒▒█💚",
    129: "▒▒▒▒█💚",
    130: "▒▒▒▒█💚",
    131: "▒▒▒▒█💚",
    132: "▒▒▒▒█💚",
    133: "▒▒▒▒█💚",
    134: "▒▒▒▒█💚",
    135: "▒▒▒▒█💚",
    136: "▒▒▒▒█💚",
    137: "▒▒▒▒█💚",
    138: "▒▒▒▒█💚",
    139: "▒▒▒▒█💚",
    140: "▒▒▒▒█💚",
    141: "▒▒▒▒█💚",
    142: "▒▒▒▒█💚",
    143: "▒▒▒▒█💚",
    144: "▒▒▒▒█💚",
    145: "▒▒▒██💚",
    146: "▒▒▒██💚",
    147: "▒▒▒██💚",
    148: "▒▒▒██💚",
    149: "▒▒▒██💚",
    150: "▒▒▒██💚",
    151: "▒▒▒██💚",
    152: "▒▒▒██💚",
    153: "▒▒▒██💚",
    154: "▒▒▒██💚",
    155: "▒▒▒██💚",
    156: "▒▒▒██💚",
    157: "▒▒▒██💚",
    158: "▒▒▒██💚",
    159: "▒▒▒██💚",
    160: "▒▒▒██💚",
    161: "▒▒▒██💚",
    162: "▒▒▒██💚",
    163: "▒▒▒██💚",
    164: "▒▒▒██💚",
    165: "▒▒▒██💚",
    166: "▒▒▒██💚",
    167: "▒▒▒██💚",
    168: "▒▒▒██💚",
    169: "▒▒███💚",
    170: "▒▒███💚",
    171: "▒▒███💚",
    172: "▒▒███💚",
    173: "▒▒███💚",
    174: "▒▒███💚",
    175: "▒▒███💚",
    176: "▒▒███💚",
    177: "▒▒███💚",
    178: "▒▒███💚",
    179: "▒▒███💚",
    180: "▒▒███💚",
    181: "▒▒███💚",
    182: "▒▒███💚",
    183: "▒▒███💚",
    184: "▒▒███💚",
    185: "▒▒███💚",
    186: "▒▒███💚",
    187: "▒▒███💚",
    188: "▒▒███💚",
    189: "▒▒███💚",
    190: "▒▒███💚",
    191: "▒▒███💚",
    192: "▒▒███💚",
    193: "▒████💚",
    194: "▒████💚",
    195: "▒████💚",
    196: "▒████💚",
    197: "▒████💚",
    198: "▒████💚",
    199: "▒████💚",
    200: "▒████💚",
    201: "▒████💚",
    202: "▒████💚",
    203: "▒████💚",
    204: "▒████💚",
    205: "▒████💚",
    206: "▒████💚",
    207: "▒████💚",
    208: "▒████💚",
    209: "▒████💚",
    210: "▒████💚",
    211: "▒████💚",
    212: "▒████💚",
    213: "▒████💚",
    214: "▒████💚",
    215: "▒████💚",
    216: "▒████💚",
    217: "█████💚",
    218: "█████💚",
    219: "█████💚",
    220: "█████💚",
    221: "█████💚",
    222: "█████💚",
    223: "█████💚",
    224: "█████💚",
    225: "█████💚",
    226: "█████💚",
    227: "█████💚",
    228: "█████💚",
    229: "█████💚",
    230: "█████💚",
    231: "█████💚",
    232: "█████💚",
    233: "█████💚",
    234: "█████💚",
    235: "█████💚",
    236: "█████💚",
    237: "█████💚",
    238: "█████💚",
    239: "█████💚",
    240: "█████💚",
}



RoundNumLookup = {
    0: "R1 ",
    1: "R2 ",
    2: "R3 ",
    3: "R4 ",
    4: "R5 ",
    5: "R6 ",
    6: "R7 ",
    7: "R8 ",
    8: "R9 ",
    9: "R10 ",
    10: "R11 ",
    11: "R12 ",
    12: "R13 ",
}

PausedLookup = {
    0: "",
}

TeamNumLookup = {
    0x0100: "0 ",
    0x0101: "1 ",
    0x0102: "2 ",
    0x0103: "3 ",
    0x0104: "4 ",
    0x0105: "5 ",
    0x0106: "6 ",
    0x0107: "7 ",
    0x0108: "8 ",
    0x0109: "9 ",
    0x010a: "10 ",
    0x010b: "11 ",
    0x010c: "12 ",
}

TrainingPhaseLookup = {
    0x01: "☯•••",
    0x02: "☯•••",
    0x03: "☯☯••",
    0x04: "☯☯••",
    0x05: "☯☯☯•",
    0x06: "☯☯☯•",
    0x07: "☯☯☯☯",
    0x08: "☯☯☯☯"
}

for k in lVersions {
    rich_presence_conditional_display(version == lVersions[k] && vGameState[k] == gFightSummary && vFightWinner[k] == 0x01, "{0} ({1}) {2}| Victory!",
        rich_presence_lookup("GameMode", vGameMode[k], lGameMode),
        rich_presence_lookup("Difficulty", vSetDifficulty[k], lDifficulty),
        rich_presence_lookup("RoundNum", (vGameMode[k] * 0xFF + vArcadeRound[k]), RoundNumLookup, fallback="")
    )
    
    rich_presence_conditional_display(version == lVersions[k] && vGameState[k] == gFightSummary && vFightWinner[k] == 0x02, "{0} ({1}) {2}| 💀 Continue?",
        rich_presence_lookup("GameMode", vGameMode[k], lGameMode),
        rich_presence_lookup("Difficulty", vSetDifficulty[k], lDifficulty),
        rich_presence_lookup("RoundNum", (vGameMode[k] * 0xFF + vArcadeRound[k]), RoundNumLookup, fallback="")
    )  
    
    rich_presence_conditional_display(version == lVersions[k] && vGameState[k] == gBootscreen, "🔥 Loading Screen..")
    rich_presence_conditional_display(version == lVersions[k] && vGameState[k] == gTitlescreen, "🔥 Main Menu")
    rich_presence_conditional_display(version == lVersions[k] && vGameState[k] == gCharacterSelect, "🔥 Getting Ready to Play {0} Mode",
        rich_presence_lookup("GameMode", vGameMode[k], lGameMode)
    )
    
    rich_presence_conditional_display(version == lVersions[k] && inFight(k) && isDemo(k), "🍿 Demo: {0} vs {1}",
        rich_presence_lookup("Fighter", vP1Character[k], lFighter),
        rich_presence_lookup("Fighter", vP2Character[k], lFighter)
    )

    rich_presence_conditional_display(version == lVersions[k] && vGameMode[k] == 0x05, "{0}{1} {3} | {4} {5} of {6} ({2}) {7}",
        rich_presence_lookup("Paused", vPauseMenu[k], PausedLookup, fallback="⏸️ "),
        rich_presence_lookup("GameMode", vGameMode[k], lGameMode),
        rich_presence_lookup("TrainingDifficulty", vSetTrainingDifficulty[k], lTraining),
        rich_presence_lookup("Fighter", vP1Character[k], lFighter),
        rich_presence_lookup("TrainingName", vCurrentLevel[k], lTrainingName),
        rich_presence_macro("Number",vCurrentRound[k]+1),
        rich_presence_macro("Number",vTotalRounds[k]),
        rich_presence_lookup("TrainingPhase", vTrainingFailCount[k], TrainingPhaseLookup, fallback="••••")
    )

    rich_presence_conditional_display(version == lVersions[k] , "{0}{1} ({2}) {3}| {4} {5} {6}v {7}{8} {9} | {10}",
        rich_presence_lookup("Paused", vPauseMenu[k], PausedLookup, fallback="⏸️ "),
        rich_presence_lookup("GameMode", vGameMode[k], lGameMode),
        rich_presence_lookup("Difficulty", vSetDifficulty[k], lDifficulty),
        rich_presence_lookup("RoundNum", (vGameMode[k] * 0x100 + vArcadeRound[k]), RoundNumLookup, fallback=""),
        rich_presence_lookup("Fighter", vP1Character[k], lFighter),
        rich_presence_lookup("HPBarL", p1TotalHealth(k), HPBarLLookup, fallback="▒▒▒▒▒❤"),
        rich_presence_lookup("TeamNum", (vGameMode[k] * 0xFF + vP1TeamSize[k] + 0x00 - vP1TeamDefeated[k]), TeamNumLookup, fallback=""),
        rich_presence_lookup("TeamNum", (vGameMode[k] * 0xFF + vP1TeamSize[k] + 0x00 - vP1TeamDefeated[k]), TeamNumLookup, fallback=""),
        rich_presence_lookup("HPBarR", p2TotalHealth(k), HPBarRLookup, fallback="❤▒▒▒▒▒"),
        rich_presence_lookup("Fighter", vP2Character[k], lFighter),
        rich_presence_lookup("Stage", vStageID[k], lStage, fallback="Unkown")
    )


}

rich_presence_display("Killer Instinct Gold Version not Recognised ({0})",
    rich_presence_macro("Number",version)
)