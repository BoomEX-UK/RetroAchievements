// Track & Field
// #ID = 2045

// ----------------------------------------------------------------------------
// -- Global Lookups
// ----------------------------------------------------------------------------

states = {
    "title_intro" : 0x00,
    "title_menu" : 0x01,
    "demo" : 0x02,
    "event_select" : 0x03,
    "loading_event" : 0x04,
    "playing" : 0x05,
    "game_over" : 0x06
}

event_names = {
    "A" : {
        0x00 : "100m Dash",
        0x01 : "Long Jump",
        0x02 : "110m Hurdles",
        0x03 : "Javelin Throw"
    },
    "B" : {
        0x00 : "Skeet Shooting",
        0x01 : "Triple Jump",
        0x02 : "Archery",
        0x03 : "High Jump"
    }
}

// ----------------------------------------------------------------------------
// -- Global Variables
// ----------------------------------------------------------------------------

state_id = byte(0x0000)
group_a_substate = byte(0x0001)
group_b_substate = byte(0x005c)
pause_flag = byte(0x0059)
play_select = byte(0x000f)
dash_speed = word(0x0094)
function paused() => pause_flag == 1

function score_groupa() => byte(0x174a) +
    byte(0x174b)*10 +
    byte(0x174c)*100 +
    byte(0x174d)*1000 +
    byte(0x174e)*10000 +
    byte(0x174f)*100000

function score_groupb() => low4(0x174a) +
    high4(0x174a)*10 +
    low4(0x174b)*100 + 
    high4(0x174b)*1000 +
    low4(0x174c)*10000 + 
    high4(0x174c)*100000

event_id = byte(0x005e)
event_id_a = (byte(0x005c) * 255) + event_id
event_id_b = (byte(0x0001) * 255) + event_id
loop_count = byte(0x005f)

// Group A Scoring

function group_a_score_best() => byte(0x0720) +
    byte(0x0721)*10+
    byte(0x0722)*100+
    byte(0x0723)*1000
    
function group_a_cpu_best() => byte(0x0730) +
    byte(0x0731)*10+
    byte(0x0732)*100+
    byte(0x0733)*1000
    
    
// Group B Scoring

function group_b_score_best() => low4(0x079c) +
    high4(0x079c)*10 +
    low4(0x079d)*100 + 
    high4(0x079d)*1000 +
    low4(0x079e)*10000 + 
    high4(0x079e)*100000
    
function group_b_score_1() => low4(0x0790) +
    high4(0x0790)*10 +
    low4(0x0791)*100 + 
    high4(0x0791)*1000 +
    low4(0x0792)*10000 + 
    high4(0x0792)*100000
    
function group_b_score_2() => low4(0x0794) +
    high4(0x0794)*10 +
    low4(0x0795)*100 + 
    high4(0x0795)*1000 +
    low4(0x0796)*10000 + 
    high4(0x0796)*100000
    
function group_b_score_3() => low4(0x0798) +
    high4(0x0798)*10 +
    low4(0x0799)*100 + 
    high4(0x0799)*1000 +
    low4(0x079a)*10000 + 
    high4(0x079a)*100000
    
function arrow_score() => low4(0x009d) +
    high4(0x009d)*10 +
    low4(0x009e)*100 + 
    high4(0x009e)*1000

// ----------------------------------------------------------------------------
// -- Progression Achievements
// ---------------------------------------------------------------------------

events = {
    "A" : {
        "id"            : event_id_a,
        "dash"          : 0x00,
        "long_jump"     : 0x01,
        "hurdles"       : 0x02,
        "javelin"       : 0x03,
        
    },
    "B" : {
        "id"            : event_id_b,
        "skeet"         : 0x00,
        "triple_jump"   : 0x01,
        "archery"       : 0x02,
        "high_jump"     : 0x03
    }
}

function event_switch_check(from,to){
    trigger_in = always_false()
    trigger_out = always_false()
    for cat in events {
        for ev in events[cat] {
            if (ev == from) {
                trigger_in = prev(events[cat]["id"]) == events[cat][ev]
            }
            if (ev == to) {
                trigger_out = events[cat]["id"] == events[cat][ev]
            }
        }
    }
    return trigger_in && trigger_out
}

ach_cycle = {
    "dash" : event_switch_check("dash","long_jump"),
    "long_jump" : event_switch_check("long_jump","hurdles"),
    "hurdles" : event_switch_check("hurdles","javelin"),
    "javelin" : event_switch_check("javelin","skeet"),
    "skeet" : event_switch_check("skeet","triple_jump"),
    "triple_jump" : event_switch_check("triple_jump","archery"),
    "archery" : event_switch_check("archery","high_jump"),
    "high_jump" : event_switch_check("high_jump","dash")
}

legacy_progression = {
    1: { 
        "title_a" : "First Timer",
        "title_b" : "Roadrunner",
        "description" : "Beat the 100-Meter Dash",
        "points_a" : 1,
        "points_b" : 3,
        "id_a" : 371669,
        "id_b" : 0,
        "badge_a" : "0",
        "badge_b" : "0",
        "trigger" : ach_cycle["dash"]
    },
    2: { 
        "title_a" : "Jumpy",
        "title_b" : "Soaring",
        "description" : "Beat the Long Jump",
        "points_a" : 1,
        "points_b" : 3,
        "id_a" : 371670,
        "id_b" : 0,
        "badge_a" : "0",
        "badge_b" : "0",
        "trigger" : ach_cycle["long_jump"]
    },
    3: { 
        "title_a" : "Leaper",
        "title_b" : "Frogger",
        "description" : "Beat the 110-Meter Hurdles",
        "points_a" : 1,
        "points_b" : 3,
        "id_a" : 371671,
        "id_b" : 0,
        "badge_a" : "0",
        "badge_b" : "0",
        "trigger" : ach_cycle["hurdles"]
    },
    4: { 
        "title_a" : "Right Through the Chest...",
        "title_b" : "One in the Eye...",
        "description" : "Beat the Javelin Event",
        "points_a" : 2,
        "points_b" : 5,
        "id_a" : 371672,
        "id_b" : 0,
        "badge_a" : "0",
        "badge_b" : "0",
        "trigger" : ach_cycle["javelin"]
    },
    5: { 
        "title_a" : "Holt!",
        "title_b" : "Who Goes There?",
        "description" : "Beat the Skeet Shooting Event",
        "points_a" : 3,
        "points_b" : 5,
        "id_a" : 371673,
        "id_b" : 0,
        "badge_a" : "0",
        "badge_b" : "0",
        "trigger" : ach_cycle["skeet"]
    },
    6: { 
        "title_a" : "Jumpy, Jumpy, Jumpy!",
        "title_b" : "Up, Up and Away!",
        "description" : "Beat the Triple Jump Event",
        "points_a" : 2,
        "points_b" : 5,
        "id_a" : 371674,
        "id_b" : 0,
        "badge_a" : "0",
        "badge_b" : "0",
        "trigger" : ach_cycle["triple_jump"]
    },
    7: { 
        "title_a" : "Bullseye!",
        "title_b" : "Shooting Barebow",
        "description" : "Beat the Archery Event",
        "points_a" : 2,
        "points_b" : 5,
        "id_a" : 371675,
        "id_b" : 0,
        "badge_a" : "0",
        "badge_b" : "0",
        "trigger" : ach_cycle["archery"]
    },
    8: { 
        "title_a" : "Higher",
        "title_b" : "Fosbury Flop",
        "description" : "Beat the High Jump Event",
        "points_a" : 2,
        "points_b" : 5,
        "id_a" : 371676,
        "id_b" : 0,
        "badge_a" : "0",
        "badge_b" : "0",
        "trigger" : ach_cycle["high_jump"]
    }    
}

for ach in legacy_progression {
    stub = legacy_progression[ach]
    achievement(
        title = stub["title_a"],
        description = stub["description"] + " (Any Mode)",
        points = stub["points_a"],
        id = stub["id_a"], 
        badge = stub["badge_a"],
        trigger = 
            prev(state_id) != states["loading_event"] && 
            state_id == states["playing"] &&
            stub["trigger"]
    )
}

for ach in legacy_progression {
    stub = legacy_progression[ach]
    achievement(
        title = stub["title_b"],
        description = stub["description"] + " (Mode B)",
        points = stub["points_b"],
        id = stub["id_b"], 
        badge = stub["badge_b"],
        trigger = 
            prev(state_id) != states["loading_event"] && 
            state_id == states["playing"] &&
            stub["trigger"] &&
            loop_count >= 3
    )
}

function cycle_trigger(num){
    return all_of(ach_cycle, s => tally(num,ach_cycle[s]))
}

achievement(
    title = "Victory Lap",
    description = "Qualify for 8 events in a row (Any Mode)",
    points = 10,
    id = 0, 
    badge = "0",
    trigger = 
        prev(state_id) != states["loading_event"] && 
        state_id == states["playing"] &&
        cycle_trigger(1) &&
        never(state_id != states["playing"])
)

achievement(
    title = "Showboating",
    description = "Qualify for 16 events in a row (Any Mode)",
    points = 25,
    id = 0, 
    badge = "0",
    trigger = 
        prev(state_id) != states["loading_event"] && 
        state_id == states["playing"] &&
        cycle_trigger(2) &&
        never(state_id != states["playing"])
)

achievement(
    title = "World Champion",
    description = "Qualify for 8 events in a row (Mode B)",
    points = 10,
    id = 0, 
    badge = "0",
    trigger = 
        prev(state_id) != states["loading_event"] && 
        state_id == states["playing"] &&
        cycle_trigger(1) &&
        never(state_id != states["playing"]) &&
        loop_count >= 3
)

// ----------------------------------------------------------------------------
// -- Challenge Achievements
// ----------------------------------------------------------------------------

// Event           Mode A   Mode B   Round 5  R.Max 9  W.Rec    Best Is
// 100m Dash       14.00s   12.00s   11.25s   09.50s   09.93s   Low
// Long Jump       05.50m   07.50m   08.25m   10.00m   08.90m   High
// Hurdles         15.50s   13.50s   12.93s   11.00s   12.93s   Low
// Javelin         65.00m   80.00m   90.00m   110.00m  99.72m   High
// Skeet Shooting  2,400p   3,200p   3,600p   4,400p   4,300p   High
// Triple Jump     13.00m   16.00m   17.00m   19.00m   17.89m   High
// Archery         2,500p   2,900p   3,100p   3,500p   3,500p   High
// High Jump       02.26m   02.32m   02.36m   02.44m   02.36m   High

wr_achievements = {
    "A":{
        1 : {
            "event" : events["A"]["dash"],
            "target" : "9sec 93",
            "trigger" : (prev(group_a_score_best()) < group_a_score_best() && group_a_score_best() < 0993),
            "points" : 5,
            "badge" : "0",
            "id" : 371677
        },
        2 : {
            "event" : events["A"]["long_jump"],
            "target" : "8m 90",
            "trigger" : (prev(group_a_score_best()) < group_a_score_best() && group_a_score_best() > 0890),
            "points" : 5,
            "badge" : "0",
            "id" : 371678
        },
        3 : {
            "event" : events["A"]["hurdles"],
            "target" : "12sec 93",
            "trigger" : (prev(group_a_score_best()) < group_a_score_best() && group_a_score_best() < 1293),
            "points" : 5,
            "badge" : "0",
            "id" : 371679
        },
        4 : {
            "event" : events["A"]["javelin"],
            "target" : "99m 72",
            "trigger" : (prev(group_a_score_best()) != group_a_score_best() && group_a_score_best() > 9972),
            "points" : 10,
            "badge" : "0",
            "id" : 371680
        }
    },
    "B": {
        1 : {
            "event" : events["B"]["skeet"],
            "target" : "4300p",
            "trigger" : (prev(group_b_score_best()) < group_b_score_best() && group_b_score_best()> 4300),
            "points" : 10,
            "badge" : "0",
            "id" : 371681
        },
        2 : {
            "event" : events["B"]["triple_jump"],
            "target" : "17m 89",
            "trigger" : (prev(group_b_score_best()) < group_b_score_best() && group_b_score_best()> 1789),
            "points" : 5,
            "badge" : "0",
            "id" : 371682
        },
        3 : {
            "event" : events["B"]["archery"],
            "target" : "3500p",
            "trigger" : (prev(group_b_score_best()) < group_b_score_best() && group_b_score_best()> 3500),
            "points" : 10,
            "badge" : "0",
            "id" : 371683
        },
        4 : {
            "event" : events["B"]["high_jump"],
            "target" : "2m 36",
            "trigger" : (prev(group_b_score_best()) < group_b_score_best() && group_b_score_best()> 0236),
            "points" : 50,
            "badge" : "0",
            "id" : 371684
        }
    }
}

for group in ["A","B"]{
    for ach in wr_achievements[group] {
        stub = wr_achievements[group][ach]
        achievement(
            title = "World Record: " + event_names[group][stub["event"]],
            description = "Achieve the World Record for the " + event_names[group][stub["event"]] + " event by beating " + stub["target"] + " (Any Mode)",
            points = stub["points"],
            id = stub["id"], 
            badge = stub["badge"],
            trigger = 
                state_id == states["playing"] &&
                events[group]["id"] == stub["event"] &&
                stub["trigger"]
        )
    }
}

ud_achievements = {
    "A":{
        1 : {
            "event" : events["A"]["dash"],
            "target" : "9sec 50",
            "trigger" : (prev(group_a_score_best()) < group_a_score_best() && group_a_score_best() < 0950),
            "points" : 5,
            "badge" : "417898",
            "id" : 371687
        },
        2 : {
            "event" : events["A"]["long_jump"],
            "target" : "10m 00",
            "trigger" : (prev(group_a_score_best()) < group_a_score_best() && group_a_score_best() > 1000),
            "points" : 5,
            "badge" : "417899",
            "id" : 371688
        },
        3 : {
            "event" : events["A"]["hurdles"],
            "target" : "11sec 00",
            "trigger" : (prev(group_a_score_best()) < group_a_score_best() && group_a_score_best() < 1100),
            "points" : 5,
            "badge" : "417900",
            "id" : 371689
        },
        4 : {
            "event" : events["A"]["javelin"],
            "target" : "110m 00",
            "trigger" : (prev(group_a_score_best()) != group_a_score_best() && group_a_score_best() > 11000),
            "points" : 10,
            "badge" : "417901",
            "id" : 371690
        }
    },
    "B": {
        1 : {
            "event" : events["B"]["skeet"],
            "target" : "4400p",
            "trigger" : (prev(group_b_score_best()) < group_b_score_best() && group_b_score_best()> 4400),
            "points" : 10,
            "badge" : "417902",
            "id" : 371691
        },
        2 : {
            "event" : events["B"]["triple_jump"],
            "target" : "19m 00",
            "trigger" : (prev(group_b_score_best()) < group_b_score_best() && group_b_score_best()> 1900),
            "points" : 5,
            "badge" : "417903",
            "id" : 371692
        }
    }
}

for group in ["A","B"]{
    for ach in ud_achievements[group] {
        stub = ud_achievements[group][ach]
        achievement(
            title = "Undeniable: " + event_names[group][stub["event"]],
            description = "Smash all records for the " + event_names[group][stub["event"]] + " event by beating " + stub["target"] + " (Any Mode)",
            points = stub["points"],
            id = stub["id"], 
            badge = stub["badge"],
            trigger = 
                state_id == states["playing"] &&
                events[group]["id"] == stub["event"] &&
                stub["trigger"]
        )
    }
}

// ----------------------------------------------------------------------------
// -- Bonus Achievements
// ----------------------------------------------------------------------------

achievement(
    title = "Bonus: Over 1000", points = 2,
    description = "Reach speed of 1000 in the 100m Dash (Any Mode)",
    id = 371685, badge = "417886", published = "25/06/2015 02:28:43", modified = "26/06/2015 05:47:22",
    trigger = 
        state_id == states["playing"] &&
        events["A"]["id"] == events["A"]["dash"] &&
        dash_speed > prev(dash_speed) && 
        dash_speed >= 1000
)

achievement(
    title = "Bonus: Top Speed", points = 4,
    description = "Reach speed of 1500 in the 100m Dash (Any Mode)",
    id = 371686, badge = "417887", published = "25/06/2015 02:28:46", modified = "17/06/2020 19:18:27",
    trigger =
    state_id == states["playing"] &&
        events["A"]["id"] == events["A"]["dash"] &&
        dash_speed > prev(dash_speed) && 
        dash_speed >= 1500
)

achievement(
    title = "Bonus: Piggy Bank",
    description = "Get a Surprise visit from the Pig on the 100m Dash (Any Mode)",
    points = 10,
    id = 0, 
    badge = "0",
    trigger = 
        state_id == states["playing"] &&
        events["A"]["id"] == events["A"]["dash"] &&
        never(group_a_substate != 0x96) &&
        tally(90,group_a_substate == 0x96 && !paused())
)

achievement(
    title = "Bonus: Wake Up Mr Mole",
    description = "Get a Surprise visit from the Mole on the Long Jump (Any Mode)",
    points = 10,
    id = 0, 
    badge = "0",
    trigger = 
        state_id == states["playing"] &&
        events["A"]["id"] == events["A"]["long_jump"] &&
        never(group_a_substate != 0x94) &&
        tally(90,group_a_substate == 0x94 && !paused())
)

achievement(
    title = "Bonus: Piggy Bank Returns",
    description = "Get a Surprise visit from the Pig on the 110m Hurdles (Any Mode)",
    points = 10,
    id = 0, 
    badge = "0",
    trigger = 
        state_id == states["playing"] &&
        events["A"]["id"] == events["A"]["hurdles"] &&
        never(group_a_substate != 0x96) &&
        tally(90,group_a_substate == 0x96 && !paused())
)

achievement(
    title = "Bonus: U.F.Oh-no..",
    description = "Get a Surprise visit from the UFO on the Javelin (Any Mode)",
    points = 2,
    id = 0, 
    badge = "0",
    trigger = 
        state_id == states["playing"] &&
        events["A"]["id"] == events["A"]["javelin"] &&
        never(group_a_substate != 0x87) &&
        tally(90,byte(0x00e9) == 0x01 && !paused())
)

achievement(
    title = "Bonus: Is It A Bird?",
    description = "Shoot The Blue Clay Disk in Skeet Shooting (Any Mode)",
    points = 2,
    id = 0, 
    badge = "0",
    trigger = 
        state_id == states["playing"] &&
        events["B"]["id"] == events["B"]["skeet"] &&
        (
            group_b_score_1() - prev(group_b_score_1()) == 500 ||
            group_b_score_2() - prev(group_b_score_2()) == 500 ||
            group_b_score_3() - prev(group_b_score_3()) == 500
        )
)

achievement(
    title = "Bonus: Is It A Plane?",
    description = "Shoot The Red Clay Disk in Skeet Shooting (Any Mode)",
    points = 5,
    id = 0, 
    badge = "0",
    trigger = 
        state_id == states["playing"] &&
        events["B"]["id"] == events["B"]["skeet"] &&
        (
            group_b_score_1() - prev(group_b_score_1()) == 1000 ||
            group_b_score_2() - prev(group_b_score_2()) == 1000 ||
            group_b_score_3() - prev(group_b_score_3()) == 1000
        )
)

achievement(
    title = "Bonus: No .. It's That Damn U.F.O Again!",
    description = "Shoot the UFO in Skeet Shooting (Any Mode)",
    points = 10,
    id = 0, 
    badge = "0",
    trigger = 
        state_id == states["playing"] &&
        events["B"]["id"] == events["B"]["skeet"] &&
        (
            group_b_score_1() - prev(group_b_score_1()) == 3000 ||
            group_b_score_2() - prev(group_b_score_2()) == 3000 ||
            group_b_score_3() - prev(group_b_score_3()) == 3000
        )
)

achievement(
    title = "Bonus: I Was Right The First Time .. It's A Bird!",
    description = "Shoot the Bird in Skeet Shooting (Any Mode)",
    points = 25,
    id = 0, 
    badge = "0",
    trigger = 
        state_id == states["playing"] &&
        events["B"]["id"] == events["B"]["skeet"] &&
        (
            group_b_score_1() - prev(group_b_score_1()) == 5000 ||
            group_b_score_2() - prev(group_b_score_2()) == 5000 ||
            group_b_score_3() - prev(group_b_score_3()) == 5000
        )
)

achievement(
    title = "Bonus: One Small Step",
    description = "Get a Surprise visit from the Astronut on the Triple-Jump (Any Mode)",
    points = 50,
    id = 0, 
    badge = "0",
    trigger = 
        state_id == states["playing"] &&
        events["B"]["id"] == events["B"]["triple_jump"] &&
        never(group_b_substate != 0x92) &&
        tally(90,group_b_substate == 0x92 && !paused())
)

achievement(
    title = "Bonus: William's Cat",
    description = "Shoot the apple on the cat's head in Archery (Any Mode)",
    points = 25,
    id = 0, 
    badge = "0",
    trigger = 
        state_id == states["playing"] &&
        events["B"]["id"] == events["B"]["archery"] &&
        prev(arrow_score()) < arrow_score() &&
        arrow_score() == 1000
)

achievement(
    title = "Bonus: One Giant Leap",
    description = "Get a Surprise visit from the Astronut on the High-Jump (Any Mode)",
    points = 5,
    id = 0, 
    badge = "0",
    trigger = 
        state_id == states["playing"] &&
        events["B"]["id"] == events["B"]["high_jump"] &&
        never(group_b_substate != 0x92) &&
        tally(90,group_b_substate == 0x92 && !paused())
)

// ----------------------------------------------------------------------------
// -- Leaderboards
// ----------------------------------------------------------------------------

rp_event_names_a = {}
rp_event_names_b = {}
for cat in event_names {
    for ev in event_names[cat]{
        if(cat == "A") rp_event_names_a[ev] = event_names[cat][ev]
        else rp_event_names_b[ev] = event_names[cat][ev]
    }
}

names_a_trig = []
for nam in rp_event_names_a{
    array_push(names_a_trig,event_id_a ==nam)
}

names_b_trig = []
for nam in rp_event_names_b{
    array_push(names_b_trig,event_id_b ==nam)
}

leaderboard(
    title = "Highest Score",
    description = "Get the highest score possible in 1P mode",
    start  =    prev(state_id) == states["playing"] && state_id == states["game_over"] && __ornext(play_select == 0 || play_select == 1),
    cancel =    always_false(),
    submit =    always_true(),
    value =     max_of(
                    measured(score_groupa(),when=any_of(names_a_trig,s => s)),
                    measured(score_groupb(),when=any_of(names_b_trig,s => s))
                ),
    format = "SCORE",
    lower_is_better = false,
    id = 0
)

leaderboard(
    title = "Highest Rotation",
    description = "Keep winning to increase your rotation!",
    start  =    prev(state_id) == states["playing"] && state_id == states["game_over"] && __ornext(play_select == 0 || play_select == 1),
    cancel =    always_false(),
    submit =    always_true(),
    value =     measured(loop_count+1),
    format = "VALUE",
    lower_is_better = false,
    id = 0
)

ev_pile_a = {
    1: {
        "id" : 0x00,
        "name" : event_names["A"][0x00],
        "var" : "dash",
        "lib" : true
    },
    2: {
        "id" : 0x01,
        "name" : event_names["A"][0x01],
        "var" : "long_jump",
        "lib" : false
    },
    3: {
        "id" : 0x02,
        "name" : event_names["A"][0x02],
        "var" : "hurdles",
        "lib" : true
    },
    4: {
        "id" : 0x03,
        "name" : event_names["A"][0x03],
        "var" : "javelin",
        "lib" : false
    }
}

ev_pile_b = {
    1: {
        "id" : 0x00,
        "name" : event_names["B"][0x00],
        "var" : "skeet",
        "lib" : false
    },
    2: {
        "id" : 0x01,
        "name" : event_names["B"][0x01],
        "var" : "triple_jump",
        "lib" : false
    },
    3: {
        "id" : 0x02,
        "name" : event_names["B"][0x02],
        "var" : "archery",
        "lib" : false
    },
    4: {
        "id" : 0x03,
        "name" : event_names["B"][0x03],
        "var" : "high_jump",
        "lib" : false
    }
}

for ev in ev_pile_a {
    leaderboard(
        title = "Personal Best - " + ev_pile_a[ev]["name"],
        description ="",
        start  =    prev(state_id) == states["playing"] && ach_cycle[ev_pile_a[ev]["var"]] && __ornext(play_select == 0 || play_select == 1),
        cancel =    always_false(),
        submit =    always_true(),
        value =     measured(group_a_score_best()),
        format = "VALUE",
        lower_is_better = ev_pile_a[ev]["lib"],
        id = 0
    )
}

for ev in ev_pile_b {
    leaderboard(
        title = "Personal Best - " + ev_pile_b[ev]["name"],
        description ="",
        start  =    prev(state_id) == states["playing"] && ach_cycle[ev_pile_b[ev]["var"]] && __ornext(play_select == 0 || play_select == 1),
        cancel =    always_false(),
        submit =    always_true(),
        value =     measured(group_b_score_best()),
        format = "VALUE",
        lower_is_better = ev_pile_b[ev]["lib"],
        id = 0
    )
}


// ----------------------------------------------------------------------------
// -- Rich Presence
// ----------------------------------------------------------------------------

rp_demoid = {
    0x00 : "100-Meter Dash",
    0x02 : "110-Meter Hurdles"
}

emoji = "🏃"
emoji_score = "💯"

rich_presence_conditional_display(state_id == states["title_intro"] || state_id == states["title_menu"], "{0} Getting Ready to Play",
    emoji
)

rich_presence_conditional_display(state_id == states["demo"], "{0} Watching a Demo of {1}",
    emoji,
    rich_presence_lookup("rp_demoID",event_id,rp_demoid,fallback="Something?")
)

rich_presence_conditional_display(state_id == states["event_select"], "{0} Selecting an Event",
    emoji
)



rich_presence_conditional_display(any_of(names_a_trig,s => s) && state_id == states["playing"], "{0} {1} Best: {5} | {2}{3} R{4}",
    emoji,
    rich_presence_lookup("event_names_a",event_id,rp_event_names_a,"An Event"),
    emoji_score,
    rich_presence_macro("Score",score_groupa()), //rich_presence_macro("Number",p1_score())
    rich_presence_macro("Number",loop_count+1),
    rich_presence_macro("Number",group_a_score_best())
)

rich_presence_conditional_display(state_id == states["playing"], "{0} {1} Best: {5} | {2}{3} R{4}",
    emoji,
    rich_presence_lookup("event_names_b",event_id,rp_event_names_b,"An Event"),
    emoji_score,
    rich_presence_macro("Score",score_groupb()), //rich_presence_macro("Number",p1_score())
    rich_presence_macro("Number",loop_count+1),
    rich_presence_macro("Number",group_b_score_best())
)

rich_presence_display("{0} Warming Up",
    emoji
)