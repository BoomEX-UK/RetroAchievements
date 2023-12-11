// First Samurai
// #ID = 913

score = bcd(tbyte(0x00007b))
kill_count = byte(0x0000be)
movement = byte(0x000093)

first_addr = 0x000400
total_addr = 15
last_addr = first_addr + (total_addr * 0x18)

weaponid_addr = 0x00007a
weapon_cooldown = byte(0x0000a4)

function weap_knife() => bit2(weaponid_addr) == 1
function weap_axe() => bit1(weaponid_addr) == 1

moves = {
    "a1_standing_throw" : 0x03,
    "a2_crouching_throw" : 0x04,
    "a3_jumping_throw" : 0x05,
    "b1_standing_throw_b" : 0x10,
    "b2_crouching_throw_b" : 0x11,
    "b3_jumping_throw_b" : 0x12,
}

sword_moves = {
    "1_standing": 0x13,
    "2_crouching": 0x14,
    "3_jumping": 0x15,
    "4_upward": 0x16
}

triggers = []
for addr in range(first_addr,last_addr,0x18) {
    tline = prev(kill_count) != kill_count && prev(byte(addr)) == 0x02 && byte(addr) == 0x00
    array_push(triggers,tline)
}

for mv in moves {
    tline = prev(kill_count) != kill_count && movement == moves[mv] && weap_knife() && weapon_cooldown < 2
    array_push(triggers,tline)
}

achievement(
    "knife stuffs (A)",
    "Kill things with the knife 25 times",
    1,
    measured(tally(25,triggers)) &&
    never(!weap_knife())
)

triggers_axe = []
for addr in range(first_addr,last_addr,0x18) {
    aline = prev(kill_count) != kill_count && byte(addr) == 0x01
    array_push(triggers_axe,aline)
}

//achievement(
//    "axe stuffs",
//    "Kill things with the axe 25 times",
//    1,
//    measured(tally(25,any_of(triggers_axe,s=>s))) &&
    // never(!weap_axe())
//    unless(any_of(sword_moves,s=>movement==sword_moves[s]),until=movement==00)
//)