// Killer Instinct Gold
// #ID = 10473
// Script by BoomEX
// -- Quick Reference
// 8-Bit = byte()
// 16-Bit = word()
// 24-Bit = tbyte()
// 32-Bit = dword()

// ----------------------------------------------------------------------------
// -- Variables: Standard Options
// ----------------------------------------------------------------------------
// $127BB8: Settings-Time Limit: (8-Bit) {0x00=On 0x01=Off}
// $127BBE: Settings-Blood: (8-Bit) {0x00=Off 0x01=Low 0x02=Medium 0x03=High}
// $127BBF: Settings-Throwing: (8-Bit) {0x00=On 0x01=Off}
// $127bb2: Settings-Difficulty: (8-Bit) {See Lookup}
// $127bb1: Training Difficulty: (8-Bit) {0x00=Easy 0x01=Medium 0x02=Hard}
cSetTimeLimit = byte(0x127BB8)
cSetBlood = byte(0x127BBE)
cSetThrowing = byte(0x127BBF)

DifficultyLookup = {
    0: "V. Easy",
    1: "Easy",
    2: "Normal",
    3: "Hard",
    4: "Ex Hard",
    5: "Master",
}

TrainingLookup = {
    0: "Easy",
    1: "Medium",
    2: "Hard"
}

cSetDifficulty = byte(0x127bb2)
cSetTrainingDifficulty = byte(0x127bb1)

// ----------------------------------------------------------------------------
// -- Variables: Special Options
// ----------------------------------------------------------------------------
// $12823F: Game-Additional Options Unlock Level (8-Bit): {0x00=(Nothing) 0x01=Opt:L1 0x02=Opt:L1 0x03=Opt:L2 0x04=Opt:L3 0x05=Opt:L4+Diff:Master 0x06=Opt:L5+Speed:Ludicrous
cSetUnlockLevel = byte(0x12823F)

// $127BBC: Settings-L1 Throw Damage: (8-Bit) {0x00=Norm 0x01=Low 0x02=None 0x03=High}
// $127BC1: Settings-L1 Aerial Camera: (8-Bit) {0x00=Off 0x01=On}
// $127BC2: Settings-L1 Invisible Tag: (8-Bit) {0x00=Off 0x01=On}
// $127BC3: Settings-L1 Easy Breakers: (8-Bit) {0x00=Off 0x01=On}
cSetThrowDamage = byte(0x127BBC)
cSetAerialCamera = byte(0x127BC1)
cSetInivisibleTag = byte(0x127BC2)
cSetEasyBreakers = byte(0x127BC3)

// $127BC5: Settings-L2 Powered Finishers: (8-Bit) {0x00=Off 0x01=On}
// $127BC6: Settings-L2 Full Breakers: (8-Bit) {0x00=Off 0x01=On}
// $127BC7: Settings-L2 Full Super Bar: (8-Bit) {0x00=Off 0x01=On}
cSetPoweredFinishers = byte(0x127BC5)
cSetFullBreakers = byte(0x127BC6)
cSetFullSuperBar = byte(0x127BC7)

// $127BC9: Settings-L3 Autodoubles: (8-Bit) {0x00=On 0x01=Off}
// $127BCA: Settings-L3 Fast Fireballs: (8-Bit) {0x00=Off 0x01=On}
// $127BCB: Settings-L3 Missiles: (8-Bit) {0x00=On 0x01=Off}
cSetAutoDoubles = byte(0x127BC9)
cSetFastFireballs = byte(0x127BCA)
cSetMissiles = byte(0x127BCB)

// $127BCC: Settings-L4 Cheap Juggles: (8-Bit) {0x00=Off 0x01=On}
// $127BCD: Settings-L4 Quick Openers: (8-Bit) {0x00=Off 0x01=On}
// $127BCE: Settings-L4 Knockdowns: (8-Bit) {0x00=On 0x01=Off}
// $127BCF: Settings-L4 Easy Ultimates: (8-Bit) {0x00=Off 0x01=On}
cSetCheapJuggles = byte(0x127BCC)
cSetQuickOpeners = byte(0x127BCD)
cSetKnockdown = byte(0x127BCE)
cSetEasyUltimate = byte(0x127BCF)

// $127BD2: Settings-L5 Blocking: (8-Bit) {0x00=On 0x01=Off}
cSetBlocking = byte(0x127BD2)

// Anti-Cheat Check
function usingSpecialSettings(){
    return cSetThrowDamage + cSetEasyBreakers 
    + cSetPoweredFinishers + cSetFullBreakers + cSetFullSuperBar
    + cSetAutoDoubles + cSetFastFireballs + cSetMissiles
    + cSetCheapJuggles + cSetQuickOpeners + cSetKnockdown + cSetEasyUltimate
    + cSetBlocking > 0
}

// ----------------------------------------------------------------------------
// -- Variables: Cheats
// ----------------------------------------------------------------------------
// $127C2B: Cheat-Gargos Unlocked: (8-Bit) {0x00=No 0x01=Yes}
cGargosUnlocked = byte(0x127C2B)

// ----------------------------------------------------------------------------
// -- Variables: Other
// ----------------------------------------------------------------------------

// $16b04c: Titlescreen Menu Check: (24-Bit)
//  0x000000=Titlescreen Menu Inactive
//  0x7f8e89=Titlescreen Menu Active
cTitleScreenMenu = tbyte(0x16b04c)
function onTitlescreenMenu() => cTitleScreenMenu == 0x7f8e89

// $127bb3: Game Speed (8-Bit)
cGameSpeed = byte(0x127bb3)

// $04802a Game State ID: (8-Bit)
cGameState = byte(0x04802a)
gBootscreen = 0x11
gTitlescreen = 0x28
gCharacterSelect = 0x0d
gFightSummary = 0x2a
gCredits = 0x18

// $04a2f6: Fight Over/Perfect (8-Bit)
function gFightPerfect() => byte(0x04a2f6) == 0x01

// $04a2d8: Game-Winner (8-Bit)
gFightWinner = byte(0x04a2d8)

function inFight_alt(){
    return cGameState != gBootscreen 
        && cGameState != gTitlescreen 
        && cGameState != gCharacterSelect 
        && cGameState != gFightSummary
}

// $04a2f7: Fight Over/Victory Style (8-Bit)
gVictoryStyle = byte(0x04a2f7)
function gVictoryUltra() => gVictoryStyle == 0x02
function gVictoryAwesome() => __ornext(gVictoryStyle == 0x04 || gVictoryStyle == 0x05)

// $1D8806: Fight-Control Input (16-Bit)
//          0x0000=Fight Ongoing, Controls Enabled
//          0x0001=Fight Over, P2 Disabled
//          0x0100=Fight Over, P1 Disabled
//          0x0101=Fight Over, Both Players Disabled
//          0x1814=No Fight
cFightControl = word(0x1D8806)
function inFight() => cFightControl != 0x1814

// $1D5DE1: Fight-Game Timer (16-Bit BCD)
//          0x0909=99s On the Clock
//          0x1105=Not in Game
cFightTimer = word(0x1D5DE1)
function fightTimerRemaining() => (byte(0x1D5DE1)*10) + byte(0x1D5DE2)

function onSubscreenMenu() => !onTitlescreenMenu()

// $04AD9C: Stage Pointer/ID: (24-Bit)
StageLookup = {
    0x018EC0: "Bridge",
    0x01419C: "Street",
    0x01869C: "Spinal Ship",
    0x015BB4: "Stonehenge",
    0x019228: "Spaceship",
    0x013BF4: "Museum",
    0x016874: "Dojo",
    0x0170B4: "Castle",
    0x017AA0: "Helipad",
    0x018404: "Jungle",
    0x019754: "Dungeon",
    0x0198B8: "Sky",
}
cStageID = tbyte(0x04AD9C)
function getStageName() => StageLookup[cStageID]

// $04E98F: P1 Character: (8-Bit)
// $04E98E: P2 Character: (8-Bit)
FighterLookup = {
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
cP1Character = byte(0x04E98F)
cP2Character = byte(0x04E98E)
function getCharacterName(playerNum){
    if( playerNum == 1){
        return FighterLookup[cP1Character]
    } else return FighterLookup[cP2Character]
}

// $127C43: Game Mode (8-Bit)
GameModeLookup = {
    0: "Arcade",
    1: "Team",
    2: "Team Elimination",
    3: "Tournament",
    4: "Practice",
    5: "Training",
}
cGameMode = byte(0x127C43)
function getGameModeName() => GameModeLookup[cGameMode]

// $1da092: Match Difficulty (8-Bit)
cFightDifficulty = byte(0x1da092)
function getFightDifficultyName() => DifficultyLookup[cFightDifficulty]

// $00F68C: Constant Run Timer: (32-Bit)
cRuntime = dword(0x00F68C)

// $04A2FF: Game Control: (8-Bit) {0x02=Player 0x03=Demo}
cFightType = byte(0x04A2FF)
function isDemo() => cFightType == 3
function isPlayer() => cFightType == 2

// $04A301: Game Pause Menu: (8-Bit) {0x00=Off >0x00=Menu Open}
cPauseMenu = byte(0x04A301)
function isPaused() => cPauseMenu>0

// $1D3516: Fight-P1 Health: (16-Bit) {0x7800=Full}
// $1D354C: Fight-P1 Health Bank: (8-Bit) {0x00=First Bar 0x01=Second Bar}
cP1RoundHealth = word(0x1D3516) / 0xFF // Ignore Fractions
cP1HealthBankUsed = byte(0x1D354C)
function cP1TotalHealth() => 0x78 + cP1RoundHealth - (0x78 * cP1HealthBankUsed)

// $1D3616: Fight-P2 Health: (16-Bit) {0x7800=Full}
// $1D364C: Fight-P2 Health Bank: (8-Bit) {0x00=First Bar 0x01=Second Bar}
cP2RoundHealth = word(0x1D3616) / 0xFF // Ignore Fractions
cP2HealthBankUsed = byte(0x1D364C)
function cP2TotalHealth() => 0x78 + cP2RoundHealth - (0x78 * cP2HealthBankUsed)

// $128238: Arcade-Tower Position: (8-Bit) {0x00=First Battle 0x0a=Final Position}
cArcadeRound = byte(0x128238)

// $1D8805: Fight-Winner Decision (8-Bit) {0x00=Fight Ongoing 0x08=P2 Win 0x09=P1 Win 0x14=No Current Match (Title/Menu etc)}
cFightStatus = byte(0x1D8805)
function fightP1Win() => prev(cFightStatus) == 0x00 && cFightStatus == 0x09
function fightP2Win() => prev(cFightStatus) == 0x00 && cFightStatus == 0x08

// $1D9172: Fight-P1 Combo Length: (8-Bit)
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
// $1D9173: OSD-P1 Combo Message Timeout: (8-Bit)
//          0x00=No On Screen Message
//          0x9F=New Combo Message, counts down to Zero
cP1ComboLength = byte(0x1D9172)
cP1ComboMessageTimeout = byte(0x1D9173)
function cP1ComboBreaker() => cP1ComboLength == 0x63 && cP1ComboMessageTimeout == 1
function cP1Combo() => cP1ComboLength < 0x63 && cP1ComboMessageTimeout == 1

// $1D87FE: Fight-Stage Knockoff (16-Bit)
//          0x0000=Normal Fighting Phase
//          0x3972=Kock-Off Activated
cStageKnockOff = word(0x1D87FE)
function knockOff() => prev(cStageKnockOff) == 0x0000 && cStageKnockOff == 0x3972

// $1D3361: Fight-P1 Last Move Used (8-Bit)
//          Value changes to match 0x1d3343 however does not return to zero after move animation is over. This value will remain until the next move is used (or match over)
//          0x00=No move used (start of match)
//          0x06=Run Towards
//          Glacius-
//          0x08=Super Arctic Blast
//          0x09=Icy Grip
//          0x27=Liquidize
//          Maya-
//          0x0a=Mantis
//          0x32=Savage Blades
//          0x2f=Flip Kick
//          0x27=Cobra Bite
//          0x30=Jungle Leap
//          0x2d=Savage Leap
//          0x2a=Super Jungle Leap
//          0x37=Super Mantis
//          Spinal-
//          0x17=Skull Scraper
//          0x18=Grim Reaper (Super)
//          0x36=Power Devour
//          0x3a=Searing Skull
//          0x41=SkeleSkewer
//          0x43=Soul Drain
//          0x45=Flame Blade
//          0x46=SkeleSkewer (Finisher)
//          0x47=Skeleport
//          0x48=All Skulls Summon
//          0x4a=Tranform Out (Back to Spinal)
//          0x53=One Skull Summon
//          0x55=Super Searing Skull (Super)
//          0x58=Stunning Skill (Super)
//          0x78=Skull Crush (No Mercy)
//          0x7b=Ultimate (Lightning)
//          Jago-
//          0x57=Long Dragon (No Mercy)
cP1LastMove = byte(0x1D3361)

// $1d886b: Fight-Victory Style (8-Bit)
cFightVictoryStyle = byte(0x1d886b)
function ultraCombo() => cFightVictoryStyle == 0x02

// ----------------------------------------------------------------------------
// -- Additional Code Notes
// ----------------------------------------------------------------------------

// $04A328: Team Battle-P1 Data: Pt1/4 (32-Bit)
//          Byte1: Character 2
//          Byte2: Character 1
//          Byte3: Team Size
//          Byte4: Count of Defeated
// $04A32C: Team Battle-P1 Data: Pt2/4 (32-Bit)
//          Byte1: Character 6
//          Byte2: Character 5
//          Byte3: Character 4
//          Byte4: Character 3
// $04A330: Team Battle-P1 Data: Pt3/4 (32-Bit)
//          Byte1: Character 10
//          Byte2: Character 9
//          Byte3: Character 8
//          Byte4: Character 7
// $04A334: Team Battle-P1 Data: Pt4/4 (32-Bit)
//          Byte1: 0x00
//          Byte2: 0x00
//          Byte3: 0x00
//          Byte4: Character 11
// $04A338: Team Battle-P2 Data: Pt1/4 (32-Bit)
//          Byte1: Character 2
//          Byte2: Character 1
//          Byte3: Team Size
//          Byte4: Count of Defeated
// $04A33C: Team Battle-P2 Data: Pt2/4 (32-Bit)
//          Byte1: Character 6
//          Byte2: Character 5
//          Byte3: Character 4
//          Byte4: Character 3
// $04A340: Team Battle-P2 Data: Pt3/4 (32-Bit)
//          Byte1: Character 10
//          Byte2: Character 9
//          Byte3: Character 8
//          Byte4: Character 7
// $04A344: Team Battle-P2 Data: Pt4/4 (32-Bit)
//          Byte1: 0x00
//          Byte2: 0x00
//          Byte3: 0x00
//          Byte4: Character 11

// $1281F9: Arcade-P1 Win Streak: (8-Bit)
// $1281FB: Arcade-P1 Fatals: (8-Bit)
// $12820B: Arcade-P1 Max Combo: (8-Bit)
// $12821E: Arcade-P1 Max Damage: (8-Bit)
// $1D32B4: Dev Note: Fight & Training Data
//          0x1d32b4-0x1da0bf (27.5kb)
// $1D32C6: Fight-P1 Special Bar: (8-Bit)
//          0x00=Empty
//          0xc0=Max
// $1D3321: Fight-P1 Using Special Move (8-Bit)
//          0x00=No Special Move Active
//          0x01=Special Move Active
// $1D3343: Fight-P1 Current Move (8-Bit)
//          Value is Non Zero whilst move animation is playing. Returns to 0x00 after move animation completes.
//          For move Values see 0x1d3361
// $1D3354: Fight-P1 # Finishers Used (8-Bit)
//          0x00=None Used
//          0x04=Enables 5th Finisher
//          0x05=Max (5th Finisher Used)
// $1D3359: Fight-P1 D-Pad Direction (8-Bit)
//          0x00=Not Pressing
//          0x01=Up
//          0x02=Up-Right
//          0x03=Right
//          0x04=Down-Right
//          0x05=Down
//          0x06=Down-Left
//          0x07=Left
//          0x08=Up-Left
// $1D33C6: Fight-P2 Special Bar: (8-Bit)
//          0xc0=Max
// $1D3421: Fight-P2 Using Special Move (8-Bit)
//          0x00=No Special Move Active
//          0x01=Special Move Active
// $1D3443: Fight-P2 Current Move (8-Bit)
//          Value is Non Zero whilet move animation is playing. Returns to 0x00 after move animation completes
//          0x00=No Move Active
//          For move Values see 0x1d3361
// $1D3445: Training-Wooden Dummy State (8-Bit)
//          0x00=Whole
//          0x01=Broken
// $1D3447: Training-Opponent Type (8-Bit)
//          0x00=Fighter
//          0x01=Wooden Dummy
// $1D3449: Training-Wooden Dummy X-Coord (24-Bit)
//          X Co-ordinate, Zero being far left of screen
// $1D3461: Fight-P2 Last Move Used (8-Bit)
//          Value changes to match 0x1d3343 however does not return to zero after move animation is over. This value will remain until the match has finished
//          0x00=No move used (start of match)
//          For move Values see 0x1d3361
// $1D350C: Fight-P1 Jump/Gravity?: (32-Bit)
//          16-Bit 1: Current?
//          16-Bit 2: Max?
// $1D3510: Fight-P1 Attack Flags: (32-Bit)
//          2x 16-Bit
//          0x00FF=Not Attacking
//          0x0000=Attacking/Miss
//          0x003F=Attacking/Hit
// $1D3565: Fight-P1 # of projectiles on the screen (8-Bit)
//          Number increases as they are created and decreases as they are destroyed.
//          0x00=None
// $1D3566: Fight-P1 iframes: (16-Bit)
//          0x0000=Player can be hit
//          >0x0200=Player Invincible
// $1D35B0: Fight-P1 # of Spinal Skulls (8-Bit)
//          0x00=No Skulls
//          0x06=Max Skulls
// $1D5DE3: Fight-Clock Frame Counter
// $1D8802: Fight-Stage Knockoff Camera Focus (8-Bit)
//          0x00=P1
//          0x01=P2
// $1D8803: Fight-P1 Falling Through Stage (8-Bit)
//          0x00=Player on Ground
//          0x01=Player Falling
// $1D8806: Fight-Control Input Disabled (16-Bit)
//          0x0000=Fight Ongoing, Controls Enabled
//          0x0001=Fight Over, P2 Disabled
//          0x0100=Fight Over, P1 Disabled
//          0x0101=Fight Over, Both Players Disabled
//          0x1814=No Fight
// $1D8808: Training-Countdown Timer to next phase (16-Bit)
//          When reaching Zero the next phase plays:
//          - When watching a Demo and this reaches Zero the demo ends and it's the players turn.
//          - When taking your turn and this reaches Zero, Pass/Fail is displayed
// $1D880B: OSD-Training HUD (8-Bits)
//          0x00=Hidden (Not Training)
//          0x01=Visible (Training)
//          0x81=Visible (Training)
//          0x14=Not Training (In Menu/Options etc)
// $1D880E: Training-Current Training Round (8-Bit)
//          0x00=First Round
//          0x01=Second Round
//          0x02=Third Round
//          Note: Upon Clearing a round, this number jumps to the next round before it's loaded. If this number jumps to Zero it means the entire level is cleared. This value pairs up with 0x1da00b
// $1D880F: Training-Demo is Playing (8-Bit)
//          0x00=Player Move
//          0x01=Demo Move
// $1D881A: OSD-Training Move Display (8-Bit)
//          0x00=Hidden
//          0x01=Move line 1 visible
//          0x02=Move line 1-2 visible
//          0x03=Move line 1-3 visible
//          0x04=Move line 1-4 visible
//          0x40=All lines visible (Player attmpet)
// $1D882E: OSD-Training-Pass/Fail Flag (8-Bit)
//          0x00=Fail
//          0x01=Pass-CPU Phase
//          0x02=Pass-Player Phase
//          Note: Displays Pass/Fail message but does not affect match outcome
// $1D882F: Training-Fail Counter (8-bit)
//          0x08=CPU First Demo
//          0x07=Player First Attempt (Grade A)
//          0x06=CPU Second Demo (1 Fail)
//          0x05=Player Second Attempt (Grade B)
//          0x04=CPU Third Demo (2 Fail)
//          0x03=Player Third Attempt (Grade C)
//          0x02=CPU Fourth Demo (3 Fail)
//          0x01=Player Fourth Attempt (Grade D)
//          0x00=Will stay at Zero after 4 Fails, until the next Phase of Training (No Grade)
// $1D883B: OSD-Training Freeze Countdown (8-Bit)
//          0x00=Countdown Running
//          0x01=Countdown Stopped
//          Note: Visual effect, does not change countdown
// $1D9170: Fight-P2 Combo Length: (8-Bit)
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
// $1D9171: OSD-P2 Combo Message Timeout: (8-Bit)
//          0x00=No On Screen Message
//          0x9F=New Combo Message, counts down to Zero
// $1D9180: Fight-P2 Combo % Damage (8-Bit)
// $1D9182: Fight-P1 Combo % Damage (8-Bit)
// $1D91B3: Fight-Round Reset Counter: (8-Bit)
//          Note: Activated at intro or after full bar loss.When greater than 0 the players separate and "Ready" is displayed
// $1D9F7B: Fight-P1 Input Buffer (520-Bits):
//          First byte counts the number of concurrent inputs
//          All following bytes are the button presses (not always sequential)
// $1DA00B: Training-Current Level
//          0x00=L1 Special Moves
//          0x01=L2 Autodoubles
//          0x02=L3 Combos
//          0x03=L4 Counter Moves
//          0x04=L5 Combo Breakers
//          0x05=Results Screen
// $1DA00F: Training-Number of Rounds to Complete Level (8-Bit)
// $1DA013: OSD-Training Move Sequence Complete (8-Bit)
//          0x00=No moves complete
//          0x01=1 Move Complete
//          0x02=2 Moves Complete
//          0x03=3 Moves Complete
//          0x04=4 Moves Complete
//          0x05=5 Moves Complete
//          Note: On CPU Turn lines become visible. On Player Turn lines become green
// $1DA03B: Training-Difficulty (8-Bit)
//          0x00=Standard (Normal)
//          0x01=Beginner (Easy)
//          0x02=Expert (Hard)
// $1DA03D: Training-Focused Training Menu Selection (8-Bit)
//          0x00=Exercise 1
//          0x01=Exercise 2
//          0x02=Exercise 3
//          0x03=Exercise 4
//          0x04=Exercise 5
//          0x05=Exit
// $1DA03F: Training-Focused Training Flag (8-Bit)
//          0x00=Training
//          0x01=Focused Training
// $1DA040: Training-Level Results (32-Bit)
//          Byte1=L4 Result
//          Byte2=L3 Result
//          Byte3=L2 Result
//          Byte4=L1 Result
//          --- Other Memory
//          0x1da047=L5 Result
//          -- Individual Results
//          0x00=Ungraded
//          0x01=Grade D
//          0x02=Grade B
//          0x03=Grade C
//          0x04=Grade A
//          -- Total Points Awards
//          d20=Grand Master
//          d19=A+
//          d18=A
//          d17=A-
//          d16=B+
//          d15=B
//          d14-13=B-
//          d12-11=C+
//          d10=C
//          d9-8=C-
//          d7=D+
//          d6=D
//          d5-0=Ungraded
// $1DA044: Training-Results Screen Show Timer (8-Bit)
//          Counts up from 0x00 to 0x0f
//          0x0f=Return to Title Screen
// $1DA047: Training-L5 Result
//          See Notes: 0x1da040
// $1DA04A: Fight-P1 Button Press Flags A (8-Bit)
// $1DA04B: Fight-P1 Button Press Flags B (8-Bit)
// $2C8A88: Player Music Select (P2 Secret Button Combo): (8-Bit)
//          0x00=No Selection (Random)
//          0x01=Jago
//          0x02=Combo
//          0x03=Spinal
//          0x04=Tusk
//          0x05=Glacius
//          0x06=Fulgore
//          0x07=Kim
//          0x08=Sabrewulf
//          0x09=Orchid
//          0x0a=Maya
//          0x0b=Gargos
//          0x0c=Sky
//          0x0d=Bridge
//          0x0e=Street
//          0x0f=Spinal Ship
//          0x10=Stonehenge
//          0x11=Spaceship
//          0x12=Museum
//          0x13=Dojo
//          0x14=Castle
//          0x15=Helipad
//          0x16=Jungle
//          0x17=Dungeon
//          0x18=Sky
// $2C8A89: Player Stage Select (P1 Secret Button Combo): (8-Bit)
//          0x00=No Selection (Random)
//          0x01=Bridge
//          0x02=Street
//          0x03=Spinal Ship
//          0x04=Stonehenge
//          0x05=Spaceship
//          0x06=Museum
//          0x07=Dojo
//          0x08=Castle
//          0x09=Helipad
//          0x0a=Jungle
//          0x0b=Dungeon
//          0x0c=Sky
// $2D3598: "Continue" Countdown: (16-Bit)
//          0x70 = 1 Second
// $2D35A9: OSD-"Continue" Countdown ASCII Character: (8-Bit)
//          Value 0x2d3598 / 0x70
//          Heartbeat sound every time number changes

// ----------------------------------------------------------------------------
// -- Achievements: Arcade Wins
// ----------------------------------------------------------------------------

arcadeAnyWinTitleLookup = {
 0x02: "Getting Warmed Up", // Normal
 0x04: "Pushing Limits", // Extra Hard
 0x05: "The Reign of Evil is Over", // Master
}

arcadeAnyWinPointsLookup = {
 0x02: 3, // Normal
 0x04: 10, // Extra Hard
 0x05: 25, // Master
}

arcadeCharWinTitleLookup = {
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
function arcadeStageWin(){
    return isPlayer() && !usingSpecialSettings() && fightP1Win() && cGameMode == 00
}

function arcadeStageLose(){
    return isPlayer() && !usingSpecialSettings() && fightP2Win() && cGameMode == 00
}

function arcadeComplete(difficultyID){
    return arcadeStageWin() && trigger_when((cArcadeRound == 0x0a)) && cFightDifficulty >= difficultyID
}

function arcadeCompleteChar(charID, difficultyID){
    return once(cP1Character == charID && cArcadeRound == 0x00 && inFight()) && never(cP1Character != charID || onTitlescreenMenu()) && arcadeComplete(difficultyID) && cP1Character == charID
}

// Builders
function arcadeAnyWinBuilder (difficultyID){
    achievement(
        id = 0,
        title = arcadeAnyWinTitleLookup[difficultyID], points = arcadeAnyWinPointsLookup[difficultyID],
        description = "Beat the game on "+ DifficultyLookup[difficultyID] +" Difficulty or Higher (No Special Options)",
        trigger = arcadeComplete(difficultyID)
    ) 
}

function arcadeCharWinBuilder( charID, difficultyID ){    
    achievement(
        id = 0,
        title = arcadeCharWinTitleLookup[charID], points = 5,
        description = "Playing Arcade with " + FighterLookup[charID] + ", Beat the Game on Hard Difficulty or Higher (No Special Options)",
        trigger = arcadeCompleteChar(charID, difficultyID)
    )
}

// Loops
for k in FighterLookup {
   arcadeCharWinBuilder( k, 0x03 ) 
}
for k in DifficultyLookup {
    if( k > 1 && k != 3 ) arcadeAnyWinBuilder(k)
}

// ----------------------------------------------------------------------------
// -- Achievements: Breakers
// ----------------------------------------------------------------------------

function breakerCountWin( charID ){
    return
    measured(
        tally(3, cP1ComboBreaker()), 
        when=isPlayer() && (cGameMode == 00) && (cFightDifficulty >= 2) && !usingSpecialSettings() && cP1Character == charID
    )
    && never(!inFight())
    && fightP1Win()
}

function breakerWinBuilder( charID ){
    achievement(
        id = 0,
        title = "Breakers: " + FighterLookup[charID], points = 5,
        description = "Playing Arcade as "+ FighterLookup[charID] +", Perform 3x Combo Breakers in a Single Fight and Win (No Special Options, Difficulty: Normal+)",
        trigger = breakerCountWin(charID)
    )
}

// Loops
for k in FighterLookup {
   if(k != 0x0a) breakerWinBuilder( k ) 
}

achievement(
    id = 0,
    title = "Broken Mechanics", points = 10,
    description = "Playing Arcade, Perform 5 Combo Breakers in a Single Fight and Win (No Special Options, Difficulty: Normal+)",
    trigger = measured(
        tally(5, cP1ComboBreaker()), 
        when=isPlayer() && (cGameMode == 00) && (cFightDifficulty >= 2) && !usingSpecialSettings()
    )
    && never(!inFight())
    && fightP1Win()
)

// ----------------------------------------------------------------------------
// -- Achievements: Knock-Off
// ----------------------------------------------------------------------------

// $04E98F: P1 Character: (8-Bit)
// $04E98E: P2 Character: (8-Bit)
FighterLookup = {
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

KnockOffStageLookup = {
    0x00: 0x018EC0,
    0x01: 0x01419C,
    0x02: 0x01869C,
    0x03: 0x015BB4,
    0x04: 0x016874,
    0x05: 0x0170B4,
    0x06: 0x017AA0,
    0x07: 0x019754
}

KnockOffCharacterLookup = {
    0x00: 0x00,
    0x01: 0x01,
    0x02: 0x02,
    0x03: 0x03,
    0x04: 0x06,
    0x05: 0x07,
    0x06: 0x08,
    0x07: 0x0a
}

KnockOffAchievementTitles = {
    0x00: "Troubled Waters",
    0x01: "Training Hard",
    0x02: "Walk the Plank",
    0x03: "The Secret of Stonehenge",
    0x04: "Dojo, Oh No!",
    0x05: "Bats in the Belfry",
    0x06: "Flying Lessons",
    0x07: "Lock and Key"
}

function knockOffWin( charID, stageID ){
    return isPlayer() && !usingSpecialSettings() && cFightStatus == 0x09 && cGameMode == 00 && cFightDifficulty >= 2 && cStageID == stageID && cP1Character == charID && knockOff()
}

function knockOffWinBuilder( arrID ){
    fighterName = FighterLookup[KnockOffCharacterLookup[arrID]]
    stageName = StageLookup[KnockOffStageLookup[arrID]]
    achievement(
        id = 0,
        title = KnockOffAchievementTitles[arrID], points = 5,
        description = "Playing Arcade as "+fighterName+" on "+fighterName+"'s "+stageName+", Use Your Environment To Finish Your Opponent Off (No Special Options, Difficulty: Normal+)",
        trigger = knockOffWin(KnockOffCharacterLookup[arrID],KnockOffStageLookup[arrID])
    )
}

for k in KnockOffCharacterLookup {
    knockOffWinBuilder( k )
}

achievement(
    id = 0,
    title = "Sky-fall", points = 1,
    description = "Play a match on the hidden Sky level and launch your opponent off the edge",
    trigger = isPlayer() && !usingSpecialSettings() && cFightStatus == 0x09 && cStageID == 0x0198B8 && knockOff()
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

function p1ComboSuccess( len ){
    return isPlayer() && !usingSpecialSettings() && inFight() && cGameMode == 00 && cP1Combo() && cP1ComboLength == len
}

function comboLengthBuilder( len ){
    achievement(
        id = 0,
        title = ComboNamesLookup[len] + " Combo!", points = ComboPointsLookup[len],
        description = "Playing Arcade, Perform a Combo of "+ComboLengthLookup[len]+" Hits",
        trigger = p1ComboSuccess(ComboLengthLookup[len])
    )
}

for k in ComboLengthLookup {
    comboLengthBuilder(k)
}

achievement(
    id = 0,
    title = "Killer Combo!", points = 4,
    description = "Playing Arcade, Perform a Combo of 12 Hits or more",
    trigger = isPlayer() && !usingSpecialSettings() && inFight() && cGameMode == 00 && cP1Combo() && cP1ComboLength >= 12 && !ultraCombo()
)

// ----------------------------------------------------------------------------
// -- Achievements: Ultra Academy
// ----------------------------------------------------------------------------

function ultraWin( charID ){
    return isPlayer() && !usingSpecialSettings() && cGameMode == 00 && cFightDifficulty >= 2 && cP1Character == charID && cGameState == gFightSummary && gFightWinner == 0x01 && gVictoryUltra()
}

function ultraWinBuilder( charID ){
    achievement(
        id = 0,
        title = "Ultra Academy: " + FighterLookup[charID], points = 5,
        description = "Playing Arcade as "+ FighterLookup[charID] +", Finish your opponent with an Ultra Combo (No Special Options, Difficulty: Normal+)",
        trigger = ultraWin(charID)
    )
}

// Loops
for k in FighterLookup {
   if(k != 0x0a) ultraWinBuilder( k ) 
}


// ----------------------------------------------------------------------------
// -- Achievements: Awesome Academy
// ----------------------------------------------------------------------------

function awesomeWin( charID ){
    return isPlayer() && !usingSpecialSettings() && cGameMode == 00 && cFightDifficulty >= 2 && cP1Character == charID && cGameState == gFightSummary && gFightWinner == 0x01 && gVictoryAwesome()
}

function awesomeWinBuilder( charID ){
    achievement(
        id = 0,
        title = "Awesome Academy: " + FighterLookup[charID], points = 5,
        description = "Playing Arcade as "+ FighterLookup[charID] +", Finish your opponent with a No Mercy / Ultimate Combo (No Special Options, Difficulty: Normal+)",
        trigger = awesomeWin(charID)
    )
}

// Loops
for k in FighterLookup {
   if(k != 0x0a) awesomeWinBuilder( k ) 
}

// ----------------------------------------------------------------------------
// -- Achievements: Training
// ----------------------------------------------------------------------------

// $1da00b: Training- Current Level (8-Bit) {0x00-0x04 Levels, 0x05=Results}
// $1d880e: Training- Current Round (8-Bit)
// $1da00f: Training- Total Rounds (8-Bit)
tCurrentLevel = byte(0x1da00b)
tCurrentRound = byte(0x1d880e)
tTotalRounds = byte(0x1da00f)

TrainingAddrLookup = {
    00: 0x1da043,
    01: 0x1da042,
    02: 0x1da041,
    03: 0x1da040,
    04: 0x1da047
}

TrainingNameLookup = {
    00: "L1 Special Moves",
    01: "L2 Autodoubles",
    02: "L3 Combos",
    03: "L4 Counter Moves",
    04: "L5 Combo Breakers"
}

TrainingPointsLookup = {
    00: 5,
    01: 5,
    02: 5,
    03: 10,
    04: 10
}

function totalTrainingScore() {
    vOut = 0
    for k in TrainingAddrLookup {
        vOut = vOut + byte(TrainingAddrLookup[k])
    }
    return vOut
}

function trainingMode( tRound ){
    return isPlayer() && !usingSpecialSettings() && cGameMode == 05 && cSetTrainingDifficulty >= 1
}

function trainingBuilder( lookupID ){
    achievement(
        id = 0,
        title = "Training: " + TrainingNameLookup[lookupID], points = TrainingPointsLookup[lookupID],
        description = "Complete Training Level " + (lookupID+1) + " with Grade A (No Special Options, Difficulty: Standard+)",
        trigger = trainingMode(lookupID) && prev(byte(TrainingAddrLookup[lookupID])) == 0x00 && byte(TrainingAddrLookup[lookupID]) == 0x04
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
    trigger = isPlayer() && !usingSpecialSettings() && cGameMode == 05 && cSetTrainingDifficulty >= 1 && prev(tCurrentLevel) == 0x04 && tCurrentLevel == 0x05
)

achievement(
    id = 0,
    title = "Training: Standard Grade A Award", points = 5,
    description = "Complete Standard Training with an Overall Grade of A or Better (No Special Options, Difficulty: Standard+)",
    trigger = isPlayer() && !usingSpecialSettings() && cGameMode == 05 && cSetTrainingDifficulty >= 1 && tCurrentLevel == 0x05 && totalTrainingScore() >= 0x11
)

achievement(
    id = 0,
    title = "Training: Standard Grand Master Award", points = 5,
    description = "Complete Standard Training with an Overall Grade of A or Better (No Special Options, Difficulty: Standard+)",
    trigger = isPlayer() && !usingSpecialSettings() && cGameMode == 05 && cSetTrainingDifficulty >= 1 && tCurrentLevel == 0x05 && totalTrainingScore() == 0x14
)

achievement(
    id = 0,
    title = "Training: Expert Grade A Award", points = 5,
    description = "Complete Standard Training with an Overall Grade of A or Better (No Special Options, Difficulty: Standard+)",
    trigger = isPlayer() && !usingSpecialSettings() && cGameMode == 05 && cSetTrainingDifficulty == 2 && tCurrentLevel == 0x05 && totalTrainingScore() >= 0x11
)

achievement(
    id = 0,
    title = "Training: Expert Grand Master Award", points = 5,
    description = "Complete Standard Training with an Overall Grade of A or Better (No Special Options, Difficulty: Standard+)",
    trigger = isPlayer() && !usingSpecialSettings() && cGameMode == 05 && cSetTrainingDifficulty == 2 && tCurrentLevel == 0x05 && totalTrainingScore() == 0x14
)

// ----------------------------------------------------------------------------
// -- Achievements: Other
// ----------------------------------------------------------------------------

achievement(
    id = 321223,
    title = "Untouchable", points = 10,
    description = "Playing Arcade, Finish a Fight with a Perfect Victory! (No Special Options, Difficulty: Normal+)",
    trigger = isPlayer() && !usingSpecialSettings() && cGameState == gFightSummary && gFightWinner == 0x01 && gFightPerfect()
)

achievement(
    id = 0,
    title = "Cold as Ice", points = 10,
    description = "Playing Arcade as Glacius on the Glacius' Spaceship defeat your opponent using the move 'Super Arctic Blast' (No Special Options, Difficulty: Normal+)",
    trigger = arcadeStageWin() &&  cFightDifficulty >= 2 && cP1LastMove == 0x08 && cP1Character == 0x04 && cStageID == 0x019228
)

// Anti-Cheat Check
function fullgoreSpecialSettings(){
    return cSetThrowDamage + cSetEasyBreakers 
    + cSetPoweredFinishers + cSetFullBreakers + cSetFullSuperBar
    + cSetAutoDoubles + cSetFastFireballs + cSetMissiles
    + cSetCheapJuggles + cSetQuickOpeners + cSetKnockdown 
    + cSetEasyUltimate == 0 
    && cSetBlocking == 0x01
    && cSetBlood == 0x03
    && cSetUnlockLevel == 0x06 && cGameSpeed == 0x03
}

achievement(
    id = 0,
    title = "Full-Gore", points = 10,
    description = "Playing Arcade as Fulgore on Fulgore's Museum, win a fight with Blocking Off, Blood High and Speed Ludicrous (No Other Special Options, Difficulty: Normal+)",
    trigger = fullgoreSpecialSettings() && isPlayer() && fightP1Win() && cGameMode == 00 &&  cFightDifficulty >= 2 && cP1Character == 0x05 && cStageID == 0x013BF4
)

achievement(
    id = 0,
    title = "Me Tarzan, You Pain!", points = 10,
    description = "Playing Arcade as Maya on Maya's Jungle finish your opponent with the move 'Super Jungle Leap' (No Special Options, Difficulty: Normal+)",
    trigger = arcadeStageWin() &&  cFightDifficulty >= 2 && cP1LastMove == 0x2a && cP1Character == 0x09 && cStageID == 0x018404
)

achievement(
    id = 0,
    title = "C-C-C-C-Combo Breaker", points = 1,
    description = "Playing Arcade as Combo on Combo's Street, Combo Break Another Combo's Combo (No Special Options, Difficulty: Normal+)",
    trigger = isPlayer() && (cGameMode == 00) && (cFightDifficulty >= 2) && !usingSpecialSettings() && cP1ComboBreaker() && cP1Character == 0x01 && cStageID == 0x01419C
)

// $1d5de1: Game Time Remaining (16-Bit BCD)
cTimeRemaining = bcd(word(0x1d5de1))

achievement(
    id = 321256,
    title = "Judge's Decision", points = 1,
    description = "Playing Arcade, Win a fight with a Time Out (No Special Options, Difficulty: Normal+)",
    trigger = arcadeStageWin() &&  cFightDifficulty >= 2 && cTimeRemaining == 00
)

// $1d3354: Fight-P1 # Finishers Used (8-Bit)
cP1FinisherLevel = byte(0x1d3354)

achievement(
    id = 321251,
    title = "5th Finisher", points = 1,
    description = "Playing Arcade, Use your '5th Finisher' on your opponent (No Special Options, Difficulty: Normal+)",
    trigger = isPlayer() && !usingSpecialSettings() && cGameMode == 00 && cFightDifficulty >= 2 
        && prev(cP1FinisherLevel) == 0x04 && cP1FinisherLevel == 0x05
)

// $1d35b0: P1 Spinal Skull Count (8-Bit)
cP1SpinalSkulls = byte(0x1d35b0)

achievement(
    id = 321257,
    title = "Pieces of Six", points = 1,
    description = "Playing Arcade as Spinal, Max out your Skull Collection (No Special Options, Difficulty: Normal+)",
    trigger = isPlayer() && !usingSpecialSettings() && cGameMode == 00 && cFightDifficulty >= 2 
        && prev(cP1SpinalSkulls) < 0x06 && cP1SpinalSkulls == 0x06
)

achievement(
    id = 321255,
    title = "Humiliated", points = 1,
    description = "Playing Arcade, Lose the fight by being launched off the stage (No Special Options, Difficulty: Normal+)",
    trigger = isPlayer() && !usingSpecialSettings() && cFightStatus == 0x08 && cGameMode == 00 && cFightDifficulty >= 2 && knockOff()
)

achievement(
    id = 321254,
    title = "Have Mercy!", points = 1,
    description = "Playing Arcade, Lose the fight to a No Mercy / Ultimate Combo (No Special Options, Difficulty: Normal+)",
    trigger = isPlayer() && !usingSpecialSettings() && cGameMode == 00 && cFightDifficulty >= 2 && cGameState == gFightSummary && gFightWinner == 0x02 && gVictoryAwesome()
)

// $04a32b: Team Battle: P1 Defeated Count (8-Bit)
cP1Defeated = byte(0x04a32b)
cP2Defeated = byte(0x04a33b)
CP2TeamSize = byte(0x04a33a)

achievement(
    id = 321250,
    title = "5-Up!", points = 10,
    description = "Win 5x Team Battle or more without losing a round (No Special Options, Difficulty: Normal+)",
    trigger = isPlayer() && !usingSpecialSettings() && cGameMode == 01 && cFightDifficulty >= 2 && CP2TeamSize >= 0x05 && cP1Defeated == 0 && cP2Defeated == CP2TeamSize
)

// $1281fb: Arcade-P1 Fatals
cP1Fatals = byte(0x1281fb)

achievement(
    id = 321253,
    title = "Fatal Instinct", points = 25,
    description = "Playing Arcade Mode, Beat the Game By Performing A 'Fatal' In Every Match (No Special Options, Difficulty: Standard+)",
    trigger = awesomeWin(cP1Character) && (cArcadeRound == 0x0a) && cFightDifficulty >= 2 && cP1Fatals == 0x0a
)

// $1281f9: Arcade-P1 Win Streak
cP1WinStreak = byte(0x1281f9)

achievement(
    id = 321261,
    title = "Victory, No Question", points = 25,
    description = "Beat Arcade Mode without using a Continue (No Special Options, Difficulty: Normal+)",
    trigger = arcadeStageWin() && (cArcadeRound == 0x0a) && cFightDifficulty >= 2 && cP1WinStreak == 0x0a
)

// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

// Arcade Leaderboards
for k in DifficultyLookup{
    leaderboard(
        title = "Arcade Rush - " + DifficultyLookup[k],
        description = "Beat arcade mode as fast as you can. You can do it! (No Special Options, Difficulty: "+DifficultyLookup[k]+")",
        start  = isPlayer() && !usingSpecialSettings() && cGameMode == 0x00 && cArcadeRound == 0x00 && cFightDifficulty == k && inFight(),
        cancel = __ornext(cGameState == gTitlescreen || prev(cArcadeRound) < cArcadeRound),
        submit = cArcadeRound == 0x0a,
        value = measured(
            prev(byte(0x1D5DE3)) != byte(0x1D5DE3)
            ),
        format = "FRAMES",
        lower_is_better = true,
        id = 0
    ) 
}

// Arcade Training
for k in TrainingLookup{
    leaderboard(
        title = "Training - " + TrainingLookup[k],
        description = "Beat the full training roster as fast as you can. You can do it! (No Special Options, Difficulty: "+TrainingLookup[k]+")",
        start  = isPlayer() && !usingSpecialSettings() && cGameMode == 0x05 && tCurrentLevel == 00 && tCurrentRound == 00 && byte(0x1d882f) == 0x08 && cSetTrainingDifficulty == k && inFight(),
        cancel = __ornext(cGameState == gTitlescreen),
        submit = tCurrentLevel == 0x05,
        value = 
            prev(byte(0x1D5DE3)) != byte(0x1D5DE3) && disable_when(
            byte(0x1d880f) != 0, until=byte(0x1d880f)==0),
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

rich_presence_conditional_display(cGameState == gFightSummary && gFightWinner == 0x01, "{0} ({1}) {2}| Victory!",
    rich_presence_lookup("GameMode", cGameMode, GameModeLookup),
    rich_presence_lookup("Difficulty", cSetDifficulty, DifficultyLookup),
    rich_presence_lookup("RoundNum", (cGameMode * 0xFF + cArcadeRound), RoundNumLookup, fallback="")
)

rich_presence_conditional_display(cGameState == gFightSummary && gFightWinner == 0x02, "{0} ({1}) {2}| 💀 Continue?",
    rich_presence_lookup("GameMode", cGameMode, GameModeLookup),
    rich_presence_lookup("Difficulty", cSetDifficulty, DifficultyLookup),
    rich_presence_lookup("RoundNum", (cGameMode * 0xFF + cArcadeRound), RoundNumLookup, fallback="")
)

rich_presence_conditional_display(cGameState == gBootscreen, "🔥 Loading Screen..")
rich_presence_conditional_display(cGameState == gTitlescreen, "🔥 Main Menu")
rich_presence_conditional_display(cGameState == gCharacterSelect, "🔥 Getting Ready to Play {0} Mode",
    rich_presence_lookup("GameMode", cGameMode, GameModeLookup)
)

rich_presence_conditional_display(inFight() && isDemo(), "🍿 Demo: {0} vs {1}",
    rich_presence_lookup("Fighter", cP1Character, FighterLookup),
    rich_presence_lookup("Fighter", cP2Character, FighterLookup)
)

rich_presence_conditional_display(cGameMode == 0x05, "{0}{1} {3} | {4} {5} of {6} ({2}) {7}",
    rich_presence_lookup("Paused", cPauseMenu, PausedLookup, fallback="⏸️ "),
    rich_presence_lookup("GameMode", cGameMode, GameModeLookup),
    rich_presence_lookup("TrainingDifficulty", cSetTrainingDifficulty, TrainingLookup),
    rich_presence_lookup("Fighter", cP1Character, FighterLookup),
    rich_presence_lookup("TrainingName", tCurrentLevel, TrainingNameLookup),
    rich_presence_macro("Number",tCurrentRound+1),
    rich_presence_macro("Number",tTotalRounds),
    rich_presence_lookup("TrainingPhase", byte(0x1d882f), TrainingPhaseLookup, fallback="••••")
)

rich_presence_display("{0}{1} ({2}) {3}| {4} {5} {6}v {7}{8} {9} | 📍{10}",
    rich_presence_lookup("Paused", cPauseMenu, PausedLookup, fallback="⏸️ "),
    rich_presence_lookup("GameMode", cGameMode, GameModeLookup),
    rich_presence_lookup("Difficulty", cSetDifficulty, DifficultyLookup),
    rich_presence_lookup("RoundNum", (cGameMode * 0x100 + cArcadeRound), RoundNumLookup, fallback=""),
    rich_presence_lookup("Fighter", cP1Character, FighterLookup),
    rich_presence_lookup("HPBarL", cP1TotalHealth(), HPBarLLookup, fallback="▒▒▒▒▒❤"),
    rich_presence_lookup("TeamNum", (cGameMode * 0xFF + byte(0x04A32A) + 0x00 - byte(0x04A32B)), TeamNumLookup, fallback=""),
    rich_presence_lookup("TeamNum", (cGameMode * 0xFF + byte(0x04A33A) + 0x00 - byte(0x04A33B)), TeamNumLookup, fallback=""),
    rich_presence_lookup("HPBarR", cP2TotalHealth(), HPBarRLookup, fallback="❤▒▒▒▒▒"),
    rich_presence_lookup("Fighter", cP2Character, FighterLookup),
    rich_presence_lookup("Stage", tbyte(0x04AD9C), StageLookup, fallback="Unkown")
)



