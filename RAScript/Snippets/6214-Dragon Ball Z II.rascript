// Gran Turismo: The Real Driving Simulator
// #ID = 15626

screen_id = word(0x5a4)
chapter_num = byte(0x00c2)
player_id = byte(0x0200)
enemy_hp = word(0x0330)
enemy_id = byte(0x032e)
const_fight = 0x95c0

triggers = []
for addr in [0x1b,0x0e,0x18] {
    tallyno = 1
    if addr == 0x1b tallyno = 2
    tmptrig = tally(tallyno,screen_id == const_fight &&
        chapter_num == 0x06 &&
        player_id == 0x01 &&
        prev(enemy_hp) > 0 &&
        enemy_id == addr &&
        enemy_hp == 0)
    array_push(triggers,tmptrig)
}

achievement(
    title="S.O.S.",
    description="Helping dreadlocke12",
    points=1,
    trigger=tally(4,triggers)
)