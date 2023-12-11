// Gran Turismo: The Real Driving Simulator
// #ID = 15626

// ach 1

dm_First    = 0x01027bb8
dm_Last     = 0x01027ee0
track_id = dword(0x01017e40)

triggers = []
for rng in range(0x01027bb8,0x01027ee0,8) {
    array_push(triggers,rng)
}

achievement(
    "Driving Master (math)",
    "Another way to do it..",
    1,
    track_id != -1 && track_id != 0 &&
    sum_of(range(dm_First,dm_Last,8),i => prev(dword(i))) != 0 &&
    sum_of(range(dm_First,dm_Last,8),i => dword(i)) == 0
)


//--------------------------------------------------
// You Are a Speed Racer [Void]
//--------------------------------------------------

top_speed_kmph = 400
top_speed_mph = 248
//top_speed_kmph = 160
//top_speed_mph = 100
mph_diff = top_speed_kmph - top_speed_mph

function is_slot1() => byte(0x01d26fd0) == 0x03
function is_slot2() => byte(0x01d26d38) == 0x03

function is_kmph_1() => byte(0x01d26fe5)
speed_1 = float(0x01d26fe0)

function is_kmph_2() => byte(0x01d26d4d)
speed_2 = float(0x01d26d48)

function unpause() => byte(0x01d73894) == 0
function ontrack() => tbyte(0x00ce2e0d) > 0

achievement(
    id=354576,
    title="[VOID] You Are a Speed Racer",
    description=top_speed_kmph+" kmph / " + top_speed_mph + " mph (" +mph_diff+ " diff)",
    points=1,
    trigger=(
        is_slot1() &&
        measured(tally(600,
            unpause() && ontrack()&&
            speed_1 - (is_kmph_1()*mph_diff) >= top_speed_mph
        ), format="percent") &&
        never(is_slot1() && speed_1 - (is_kmph_1()*mph_diff) < top_speed_mph)
    ) || (
        is_slot2() && 
        measured(tally(600,
            unpause() && ontrack() &&
            speed_2 - (is_kmph_2()*mph_diff) >= top_speed_mph
        ), format="percent") &&
        never(is_slot2() && speed_2 - (is_kmph_2()*mph_diff) < top_speed_mph)
    )
)




//--------------------------------------------------
// Clean Lap Racer [Void]
//--------------------------------------------------

// Unused ------
// pointer_singlerace = tbyte(0x01cccce0)
// modes = {
//     "mode_single": 0,
//     "mode_tt": 1,
//     "mode_drift": 2
// }

// Wheels ------
wheel_pointers = {
    "front-left" : tbyte(0x01cca528),
    "front-right" : tbyte(0x01cca718),
    "back-left" : tbyte(0x01ccaa00),
    "back-right" : tbyte(0x01ccabf0)
}
grounding_offset = 0x0100001F

// Game Info ------
game_mode = byte(0x01017e58)
lap_number = byte(0x01d0fe4c)
gmcheck = game_mode == 1

achievement(
        id=0,
        title="[VOID] Clean Lap",
        description="Drive a clean lap in a time trial",
        points=1,
        trigger=
            never(gmcheck && wheel_pointers["front-left"] == 0) &&
            once(gmcheck && prev(lap_number)<lap_number) && 
            trigger_when(tally(2,gmcheck && prev(lap_number)<lap_number)) && 
            never(gmcheck &&
                all_of(wheel_pointers,s=>byte(wheel_pointers[s]+grounding_offset)==0)
            )
)

//--------------------------------------------------
// Rich Presence
//--------------------------------------------------

CarLookup = {
    0x001b: "Fiat 500 F '65",
    0x0028: "Chevrolet Corvette GRAND SPORT '96",
    0x002d: "Dodge Viper GTS-R Race Car '00",
    0x0035: "VolksWagen Golf GTI",
    0x003b: "Ford Ka",
    0x005b: "Viper GTS-R Team Oreca Race Car '00",
    0x0073: "Nissan R390 GT 1 Race Car",
    0x008a: "Honda TAKATA DOME NSX '03",
    0x008e: "Honda LOCTITE MUGEN NSX",
    0x00a1: "Nissan XANAVI NISMO GT-R",
    0x00b3: "VolksWagen Fusca",
    0x00d9: "Ford Focus Rally Car",
    0x0128: "Mazda 787B",
    0x0130: "Mitsubishi STARION 4WD Rally Car '84",
    0x013c: "Ford GT40 Race Car",
    0x0156: "TVR Cerbera Speed 12",
    0x0169: "BMW M3 GTR Race Car",
    0x016a: "AMG Mercedes 190 E Touring Car '92",
    0x016d: "Alfa Romeo 155 2.5 V6 TI '93",
    0x016e: "Mazda Carol 360 Deluxe '62",
    0x0182: "BMW V12 LMR Race Car",
    0x0184: "AMG Mercedes CLK-GTR Race Car",
    0x0189: "Lancia STRATOS Rally Car '77",
    0x018f: "Ford GT '05",
    0x019d: "Nissan 350Z Concept LM Race Car",
    0x01bf: "Mitsubishi Lancer Evolution VI Rally Car '99",
    0x01e1: "NISMO GT-R LM",
    0x01e5: "Nissan PENNZOIL Nismo GT-R '99",
    0x01e8: "Chrysler PT Cruiser",
    0x021f: "Jaguar XJ220 '92",
    0x023a: "Dodge Viper SRT10 '03",
    0x023b: "Eagle Talon Esi",
    0x0242: "Peugeot 205 Turbo 16 Rally Car '85",
    0x02c6: "Nissan MOTUL PITWORK Z",
    0x02e2: "Toyota Minolta",
    0x02e4: "Toyota 7 Race Car",
    0x02e8: "Toyota GT-One",
    0x0294: "Honda Gathers Drider CIVIC Race Car '98",
    0x0297: "Mini Marcos GT",
    0x0299: "Plymouth Super Bird",
    0x029f: "Alfa Romeo Spider 1600 Duetto '66",
    0x02f4: "Dodge Viper GTS '99",
    0x0311: "TVR Griffith 500 '94",
    0x0312: "Volkswagen Karmann Ghia",
    0x0328: "Suzuki Escudo",
    0x034b: "Toyota SUPRA 3.0GT Turbo A",
    0x0355: "Gillet Vertigo Race Car",
    0x03a7: "Citroën 2CV Type A '54",
    0x03a8: "Subaru 360 '58",
    0x03b0: "Bentley Speed 8 Race Car '03",
    0x03ba: "Nissan R92CP Race Car '92",
    0x03b9: "Audi R8 Race Car '01",
    0x03bc: "Mercedes-Benz SLR McLaren '03",
    0x03c3: "Clio Renault Sport V6 Phase 2 '03",
    0x03ca: "Mazda éfini RX-7 Type RS",
    0x03d0: "Lutecia Renault Sport V6 Phase 2 '03",
    0x0401: "Mitsubishi 3000GT VR-4",
    0x0403: "DMC DeLorean S2 '04",
    0x0416: "Polyphony Digital Formula Gran Turismo",
    0x0420: "Ford GT (No Stripe) '05",
    0x042b: "Jaguar XJR-9 LM Race Car '88",
    0x042d: "Chaparral 2J  Race Car",
    0x045d: "Audi R8 Race Car '05",
    0x059a: "Ferrari F2007",
    0x05c9: "Lamborghini Countach 25th Anniv '88",
    0x05d3: "Enzo Ferrari '02",
    0x05d4: "Bugatti Veyron 16.4 '09",
}

TrackLookup = {
    0x0009: "in Tokyo R246",
    0x000a: "in Costa di Amalfi",
    0x000b: "in Grand Canyon",
    0x000c: "in Grand Valley Speedway",
    0x000d: "in High Speed Ring",
    0x000f: "in Côte d'Azur",
    0x0011: "in Twing Ring Motegi",
    0x0012: "in New York",
    0x0013: "in Nürburgring",
    0x0014: "in Chamonix",
    0x0016: "in Opera Paris",
    0x001a: "in Suzuka Circuit",
    0x001b: "in Tsukuba Circuit",
    0x0018: "in Circuit de la Sarthe 2005",
    0x0019: "in Seattle Circuit",
    0x001f: "in El Capitan",
    0x0026: "in Apricot Hill Raceway",
    0x0027: "in Autumn Ring Raceway",
    0x0028: "in Deep Forest Raceway",
    0x002a: "in Ice Arena",
    0x002b: "in Infineon Raceway - Sports Car Course",
    0x002c: "in Laguna Seca",
    0x002e: "in Tahiti Maze",
    0x002f: "in Swiss Alps",
    0x0031: "in Citta di Aria",
    0x0033: "in Trial Mountain",
    0x0036: "in Beginner Course",
    0x003d: "in Seoul Central",
    0x0040: "in Midfield Raceway",
    0x0088: "in Test Course",
    0x00b1: "in Autumn Ring Mini",
}

DifficultyLookup = {
    0x00: "Rank D",
    0x01: "Rank C",
    0x02: "Rank B",
    0x03: "Rank A",
    0x04: "Rank S",
}

//p1 0x01d537e8
//p2 0x01d53b38

rich_presence_conditional_display(word(0x1017E48) == 0x00 && byte(0x1D1161C) == 0x01 && byte(tbyte(0x01d537e8)+0x01000007) == 0x65, " Running a Single Race {0} | {1} | 🏎️: {2}",
    rich_presence_lookup("Track", word(0x1017E40), TrackLookup),
    rich_presence_lookup("Difficulty", byte(0x1017E70), DifficultyLookup),
    rich_presence_lookup("Car", word(tbyte(0x01d537e8)+0x01000038), CarLookup,fallback="? Unknown Car")
)

rich_presence_conditional_display(word(0x1017E48) == 0x00 && byte(0x1D1161C) == 0x01, " Running a Single Race {0} | {1} | 🏎️: {2}",
    rich_presence_lookup("Track", word(0x1017E40), TrackLookup),
    rich_presence_lookup("Difficulty", byte(0x1017E70), DifficultyLookup),
    rich_presence_lookup("Car", word(tbyte(0x01d53b38)+0x01000038), CarLookup,fallback="? Unknown Car")
)

rich_presence_conditional_display(word(0x1017E48) == 0x01 && byte(0x1D1161C) == 0x01 && byte(tbyte(0x01d537e8)+0x01000007) == 0x65, " Running a Time Trial {0} | 🏎️: {1}",
    rich_presence_lookup("Track", word(0x1017E40), TrackLookup),
    rich_presence_lookup("Car", word(tbyte(0x01d537e8)+0x01000038), CarLookup,fallback="? Unknown Car")
)

rich_presence_conditional_display(word(0x1017E48) == 0x01 && byte(0x1D1161C) == 0x01, " Running a Time Trial {0} | 🏎️: {1}",
    rich_presence_lookup("Track", word(0x1017E40), TrackLookup),
    rich_presence_lookup("Car", word(tbyte(0x01d53b38)+0x01000038), CarLookup,fallback="? Unknown Car")
)

rich_presence_conditional_display(word(0x1017E48) == 0x02 && byte(0x1D1161C) == 0x01 && byte(tbyte(0x01d537e8)+0x01000007) == 0x65, " Running a Drift Trial {0} | 🏎️: {1}",
    rich_presence_lookup("Track", word(0x1017E40), TrackLookup),
    rich_presence_lookup("Car", word(tbyte(0x01d537e8)+0x01000038), CarLookup,fallback="? Unknown Car")
)

rich_presence_conditional_display(word(0x1017E48) == 0x02 && byte(0x1D1161C) == 0x01, " Running a Drift Trial {0} | 🏎️: {1}",
    rich_presence_lookup("Track", word(0x1017E40), TrackLookup),
    rich_presence_lookup("Car", word(tbyte(0x01d53b38)+0x01000038), CarLookup,fallback="? Unknown Car")
)

rich_presence_display("Main menu | 💰: {0}",
    rich_presence_value("Credits",dword(0x1017400),"VALUE")
)

