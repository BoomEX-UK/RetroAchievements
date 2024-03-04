// ReBoot
// #ID = 19792

// The game has multiple endings. The only way to get the best ending is to mend all the Tears in the levels without letting any of them explode.
// Letting Tears explode in 1-5 levels triggers the Bad Ending.
// Letting them explode in more than 5 triggers the Ugly Ending.
// Each level is only counted once.
// All are 32-bit flags for the purposes of mapping.
// As far as level ending cutscenes are concerned, 
// it checks the status for the rest of the Sector 
// at the end of said sector. 

// There is no ending cutscene in Level 2, 
// so failure in Level 2 means a bad cutscene in Level 3's ending, and so on.

// $2 Good Ending
// $1 Bad Ending
// $0 Uncleared

EndingState_Lv1 = dword(0x045ee0)
EndingState_Lv2 = dword(0x045ee4)
EndingState_Lv3 = dword(0x045ee8)
EndingState_Lv4 = dword(0x045eec)
EndingState_Lv5 = dword(0x045ef0)
EndingState_Lv6 = dword(0x045ef4)
EndingState_Lv7 = dword(0x045ef8)
EndingState_Lv8 = dword(0x045efc)
EndingState_Lv9 = dword(0x045f00)
EndingState_Lv10 = dword(0x045f04)
EndingState_Lv11 = dword(0x045f08)
EndingState_Lv12 = dword(0x045f0c)
EndingState_Lv13 = dword(0x045f10)
EndingState_Lv14 = dword(0x045f14)
EndingState_Lv15 = dword(0x045f18)
EndingState_Lv16 = dword(0x045f1c)
EndingState_Lv17 = dword(0x045f20)
EndingState_Lv18 = dword(0x045f24)
EndingState_Lv19 = dword(0x045f28)

EndGood = 0x2
EndBad = 0x1
    
EndingState_Baudway = [
    EndingState_Lv1, EndingState_Lv2, EndingState_Lv3
]

EndingState_CitE = [
    EndingState_Lv4, EndingState_Lv5, EndingState_Lv6
]
 
EndingState_BevHills = [
    EndingState_Lv7, EndingState_Lv8, EndingState_Lv9, EndingState_Lv10
]
 
EndingState_Kits = [
    EndingState_Lv11, EndingState_Lv12
]

EndingState_FPP = [
    EndingState_Lv13, EndingState_Lv14
]

EndingState_GPrime = [
    EndingState_Lv15, EndingState_Lv16, EndingState_Lv17, EndingState_Lv18
]
 
EndingState_Final = [
    EndingState_Lv1, EndingState_Lv2, EndingState_Lv3, EndingState_Lv4, EndingState_Lv5, 
    EndingState_Lv6, EndingState_Lv7, EndingState_Lv8, EndingState_Lv9, EndingState_Lv10,
    EndingState_Lv11, EndingState_Lv12, EndingState_Lv13, EndingState_Lv14, EndingState_Lv15,
    EndingState_Lv16, EndingState_Lv17, EndingState_Lv18, EndingState_Lv19
    
]

achievement(
    title = "[TEST] Good Ending",
    description = "Good Ending",
    points = 10,
    trigger =
        never(sum_of(EndingState_Final,ending=>prev(ending)) != sum_of(EndingState_Final,ending=>ending)) &&
        tally_of(EndingState_Final,19,ending=>once(ending == EndGood)) &&
        none_of(EndingState_Final,ending=>ending==0)
)

achievement(
    title = "[TEST] Bad Ending",
    description = "Bad Ending",
    points = 10,
    trigger =
        never(sum_of(EndingState_Final,ending=>prev(ending)) != sum_of(EndingState_Final,ending=>ending)) &&
        tally_of(EndingState_Final,14,ending=>once(ending == EndGood)) &&
        never(tally_of(EndingState_Final,19,ending=>once(ending == EndGood))) &&
        none_of(EndingState_Final,ending=>ending==0)
)

achievement(
    title = "[TEST] Ugly Ending",
    description = "Ugly Ending",
    points = 10,
    trigger =
        never(sum_of(EndingState_Final,ending=>prev(ending)) != sum_of(EndingState_Final,ending=>ending)) &&
        tally_of(EndingState_Final,6,ending=>once(ending != EndGood)) &&
        none_of(EndingState_Final,ending=>ending==0)
)