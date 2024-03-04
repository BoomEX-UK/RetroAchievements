// Crash of the Titans
// #ID = 16382

main_pointer = tbyte(tbyte(0x15582c) + 0x04)
gem_offset_1 = 0x61
gem_offset_2 = 0x62
gem_offset_3 = 0x63


upgrade_pointer = tbyte(0x155824)
cheat_offset = 0x0c

ascii_stage = dword(0x2183a1)
stage_cortex_lair = 0x614c7974
loading_flag = byte(0x14281c)

stage_collectibles = {
    stage_cortex_lair : {
        "c" : bit4(main_pointer + gem_offset_3),
        "g1" : bit0(main_pointer + gem_offset_1),
        "g2" : bit1(main_pointer + gem_offset_1),
        "g3" : bit2(main_pointer + gem_offset_1),
        "g4" : bit3(main_pointer + gem_offset_1)
    }
}

achievement(
    id=372772,
    title="[VOID][TEST] A single glaze and you'll go Crystal CRAZZZZYYYY",
    description="Collect all gems and Crystal in Cortex's Lair",
    points=0,
    trigger = 
        sum_of(
            stage_collectibles[stage_cortex_lair],c=>prev(stage_collectibles[stage_cortex_lair][c])
        ) == 4 && 
        measured(
            sum_of(
                stage_collectibles[stage_cortex_lair],c=>stage_collectibles[stage_cortex_lair][c]
            ) == 5, 
            when=ascii_stage == stage_cortex_lair && loading_flag == 0
        ) &&
        disable_when(once(byte(upgrade_pointer + cheat_offset) != 0),until=prev(ascii_stage) != ascii_stage)
)