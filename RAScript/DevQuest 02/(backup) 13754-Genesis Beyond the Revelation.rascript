// Genesis: Beyond the Revelation
// #ID = 13754

function battle_flag() => byte(0x000FC2)
function state_flag() => byte(0x001B4F)
function store_flag() => byte(0x004698)
function store_flag() => byte(0x004699)
function class() => byte(0x01092E)
function str_8_bit_decimal() => dword(0x010930)
function exp_16_bit_decimal_be() => byte(0x010934)
function exp_16_bit_decimal_be() => word(0x010934)
function hp_16_bit_decimal_be() => byte(0x010936)
function hp_16_bit_decimal_be() => word_be(0x010936)
function bcd_gold() => low4(0x010938)
function bcd_gold() => high4(0x010938)
function bcd_gold() => byte(0x010938)
function bcd_gold() => word(0x010938)
function bcd_gold() => word_be(0x010938)
function armor_00_06() => byte(0x01093E)
function armor_00_06() => word(0x01093E)
function equipped_weapons_w1_ub_w2_lb() => byte(0x01093F)
function x_pos() => byte(0x010948)
function y_pos() => byte(0x010949)
function room_related() => byte(0x01094A)
function ruins_item_flag() => bit7(0x01094C)
function appearance() => byte(0x01094F)
function flag() => byte(0x010993)
function flag() => bit0(0x010994)
function flag() => bit1(0x010994)
function flag() => bit2(0x010994)
function flag() => byte(0x010B4A)
function flag() => byte(0x010B62)
function flag() => byte(0x010C62)
function room_related() => byte(0x010D28)

achievement(
    title = "100 Merchants", points = 10,
    description = "Reach the first Level",
    id = 70377, badge = "75152", published = "24/01/2019 21:13:26", modified = "15/07/2019 07:08:29",
    trigger = once(exp_16_bit_decimal_be() == 0x00) && exp_16_bit_decimal_be() == 0x01
)

achievement(
    title = "100 Mohicans", points = 10,
    description = "Reach Level 2",
    id = 70378, badge = "75153", published = "24/01/2019 21:13:33", modified = "15/07/2019 07:08:35",
    trigger = once(exp_16_bit_decimal_be() == 0x01) && exp_16_bit_decimal_be() == 0x02
)

achievement(
    title = "100 Combat Suits", points = 10,
    description = "Reach Level 3",
    id = 70379, badge = "75200", published = "24/01/2019 21:13:40", modified = "15/07/2019 07:08:41",
    trigger = once(exp_16_bit_decimal_be() == 0x02) && exp_16_bit_decimal_be() == 0x03
)

achievement(
    title = "100 Powered Armors", points = 10,
    description = "Reach Level 4",
    id = 70380, badge = "75201", published = "24/01/2019 21:13:48", modified = "15/07/2019 07:08:47",
    trigger = once(exp_16_bit_decimal_be() == 0x03) && exp_16_bit_decimal_be() == 0x04
)

achievement(
    title = "50 Destroid Armors", points = 10,
    description = "Reach Level 5",
    id = 70381, badge = "75202", published = "24/01/2019 21:13:55", modified = "15/07/2019 07:08:52",
    trigger = once(exp_16_bit_decimal_be() == 0x04) && exp_16_bit_decimal_be() == 0x05
)

achievement(
    title = "100 Battle Tanks", points = 10,
    description = "Reach Level 6",
    id = 70382, badge = "75203", published = "24/01/2019 21:14:01", modified = "15/07/2019 07:08:58",
    trigger = once(exp_16_bit_decimal_be() == 0x05) && exp_16_bit_decimal_be() == 0x06
)

achievement(
    title = "35 Siloam-Whites", points = 10,
    description = "Reach Level 7",
    id = 70383, badge = "75204", published = "24/01/2019 21:14:09", modified = "15/07/2019 07:09:05",
    trigger = once(exp_16_bit_decimal_be() == 0x06) && exp_16_bit_decimal_be() == 0x07
)

achievement(
    title = "40 Siloam-Reds", points = 10,
    description = "Reach Level 8",
    id = 70384, badge = "75205", published = "24/01/2019 21:14:15", modified = "15/07/2019 07:09:10",
    trigger = once(exp_16_bit_decimal_be() == 0x07) && exp_16_bit_decimal_be() == 0x08
)

achievement(
    title = "45 Siloam-Blacks", points = 10,
    description = "Reach Level 9",
    id = 70385, badge = "75206", published = "24/01/2019 21:14:22", modified = "15/07/2019 07:09:18",
    trigger = once(exp_16_bit_decimal_be() == 0x08) && exp_16_bit_decimal_be() == 0x09
)

achievement(
    title = "50 Siloam-Blues", points = 10,
    description = "Reach Level 10",
    id = 70386, badge = "75207", published = "24/01/2019 21:14:28", modified = "05/02/2019 15:21:43",
    trigger = once(exp_16_bit_decimal_be() == 0x09) && exp_16_bit_decimal_be() == 0x10
)

achievement(
    title = "Stretch at the Limits", points = 25,
    description = "Reach Level 15",
    id = 70410, badge = "75248", published = "24/01/2019 21:17:16", modified = "15/07/2019 07:09:24",
    trigger = once(exp_16_bit_decimal_be() == 0x14) && exp_16_bit_decimal_be() == 0x15
)

achievement(
    title = "Grinding Fanatic", points = 25,
    description = "Reach Level 20",
    id = 70411, badge = "75248", published = "24/01/2019 21:17:23", modified = "15/07/2019 07:09:30",
    trigger = once(exp_16_bit_decimal_be() == 0x19) && exp_16_bit_decimal_be() == 0x20
)

achievement(
    title = "Plucked from the Realm of Madmen", points = 25,
    description = "Reach Level 25",
    id = 70412, badge = "75248", published = "24/01/2019 21:17:34", modified = "15/07/2019 07:09:36",
    trigger = once(exp_16_bit_decimal_be() == 0x24) && exp_16_bit_decimal_be() == 0x25
)

achievement(
    title = "Limits of a Knight", points = 10,
    description = "Raise all your Stats to Max",
    id = 70405, badge = "75245", published = "24/01/2019 21:16:40", modified = "15/07/2019 07:09:42",
    trigger = str_8_bit_decimal() == 0x25755050 && str_8_bit_decimal() != prev(str_8_bit_decimal()) && class() == 0x00
)

achievement(
    title = "Limits of a Ninja", points = 10,
    description = "Raise all your Stats to Max",
    id = 70406, badge = "75246", published = "24/01/2019 21:16:47", modified = "15/07/2019 07:09:49",
    trigger = str_8_bit_decimal() == 0x25505075 && str_8_bit_decimal() != prev(str_8_bit_decimal()) && class() == 0x01
)

achievement(
    title = "Limits of an Esper", points = 10,
    description = "Raise all your Stats to Max",
    id = 70407, badge = "00128", published = "24/01/2019 21:16:53", modified = "15/07/2019 07:09:58",
    trigger = str_8_bit_decimal() == 0x75505025 && str_8_bit_decimal() != prev(str_8_bit_decimal()) && class() == 0x02
)

achievement(
    title = "Limits of a Healer", points = 10,
    description = "Raise all your Stats to Max",
    id = 70408, badge = "00156", published = "24/01/2019 21:17:00", modified = "15/07/2019 07:10:04",
    trigger = str_8_bit_decimal() == 0x75752525 && str_8_bit_decimal() != prev(str_8_bit_decimal()) && class() == 0x03
)

achievement(
    title = "Beyond the Limits of Man", points = 25,
    description = "Raise all your Stats to Maximum Possible",
    id = 70409, badge = "75247", published = "24/01/2019 21:17:07", modified = "15/07/2019 07:10:10",
    trigger = str_8_bit_decimal() == 0x99999999 && str_8_bit_decimal() != prev(str_8_bit_decimal()) && class() == 0x04
)

achievement(
    title = "Loaded like a Merchant", points = 5,
    description = "Equip the best weapons available to this form",
    id = 70392, badge = "75225", published = "24/01/2019 21:15:12", modified = "15/07/2019 07:10:16",
    trigger = armor_00_06() == 0x00 && appearance() == armor_00_06() && once(low4(0x01093F) == 0x0F)
)

achievement(
    title = "Max of the Mohicans", points = 5,
    description = "Equip the best weapons available to the Protector",
    id = 70393, badge = "75226", published = "24/01/2019 21:15:17", modified = "15/07/2019 07:10:24",
    trigger = armor_00_06() == 0x1101 && appearance() == armor_00_06() && once(equipped_weapons_w1_ub_w2_lb() !=
               prev(equipped_weapons_w1_ub_w2_lb()))
)

achievement(
    title = "Clone Combat", points = 10,
    description = "Equip the best weapons available to the Combat Suit",
    id = 70394, badge = "75227", published = "24/01/2019 21:15:23", modified = "15/07/2019 07:10:33",
    trigger = armor_00_06() == 0x2202 && appearance() == armor_00_06() && once(equipped_weapons_w1_ub_w2_lb() !=
               prev(equipped_weapons_w1_ub_w2_lb()))
)

achievement(
    title = "Maximum Power", points = 10,
    description = "Equip the best weapons available to the Powered Armor",
    id = 70395, badge = "75228", published = "24/01/2019 21:15:30", modified = "15/07/2019 07:10:41",
    trigger = armor_00_06() == 0x3303 && appearance() == armor_00_06() && once(equipped_weapons_w1_ub_w2_lb() !=
               prev(equipped_weapons_w1_ub_w2_lb()))
)

achievement(
    title = "Turrefic Tanker", points = 10,
    description = "Equip the best weapons available to the Battle Tank",
    id = 70396, badge = "75229", published = "24/01/2019 21:15:36", modified = "15/07/2019 07:10:46",
    trigger = armor_00_06() == 0x4404 && appearance() == armor_00_06() && once(equipped_weapons_w1_ub_w2_lb() !=
               prev(equipped_weapons_w1_ub_w2_lb()))
)

achievement(
    title = "Destroid Destroyer", points = 25,
    description = "Equip the best weapons available to the Destroid Armor",
    id = 70397, badge = "75230", published = "24/01/2019 21:15:44", modified = "15/07/2019 07:10:52",
    trigger = armor_00_06() == 0x5505 && appearance() == armor_00_06() && once(equipped_weapons_w1_ub_w2_lb() !=
               prev(equipped_weapons_w1_ub_w2_lb()))
)

achievement(
    title = "Mechacidal Psycholizer", points = 25,
    description = "Equip the best weapons available to the Bio-Psycholizer",
    id = 70398, badge = "75231", published = "24/01/2019 21:15:51", modified = "15/07/2019 07:10:59",
    trigger = armor_00_06() == 0x6706 && appearance() == armor_00_06() && once(equipped_weapons_w1_ub_w2_lb() !=
               prev(equipped_weapons_w1_ub_w2_lb()))
)

achievement(
    title = "Man and Machine", points = 10,
    description = "Give up your humanity for the greater good",
    id = 70404, badge = "00130", published = "24/01/2019 21:16:34", modified = "15/07/2019 07:11:11",
    trigger = class() == 0x04 && once(class() != prev(class())) && once(bcd_gold() >= 0x05) && 
              bcd_gold() < 0x05 && exp_16_bit_decimal_be() == 0x00
)

achievement(
    title = "Do No Harm", points = 10,
    description = "Get to the Church in Thyatira without killing the Clerics",
    id = 70435, badge = "75509", published = "24/01/2019 23:48:35", modified = "15/07/2019 07:11:19",
    trigger = byte(0x0103F8) == 0x47 && byte(0x0103FC) == 0x47 && byte(0x010400) == 0x47 && byte(0x010404) == 0x47 && 
              byte(0x010408) == 0x47 && byte(0x01040C) == 0x47 && byte(0x010410) == 0x47 && byte(0x010414) == 0x47 && 
              byte(0x010418) == 0x47 && x_pos() == 0x0C && y_pos() == x_pos() && room_related() ==
               0x40 && room_related() == 0x07
)

achievement(
    title = "Unexpected Pathway", points = 10,
    description = "Make it into Jerusalem (Middle)",
    id = 70413, badge = "75225", published = "24/01/2019 21:17:52", modified = "15/07/2019 07:11:26",
    trigger = once(room_related() == 0x0C) && room_related() == 0x05 && y_pos() == 0x24 && x_pos() ==
               y_pos()
)

achievement(
    title = "Unbar the Gates", points = 10,
    description = "Open the path to the Center of Jerusalem",
    id = 70414, badge = "75277", published = "24/01/2019 21:17:59", modified = "23/11/2022 13:32:05",
    trigger = byte(0x010972) == 0xFF && prev(byte(0x010972)) == 0x01 && x_pos() == 0x06 && y_pos() == 0x26
)

achievement(
    title = "Enemy's Legacy", points = 10,
    description = "Acquire the Dimension Distorter",
    id = 70388, badge = "75243", published = "24/01/2019 21:14:42", modified = "15/07/2019 07:12:05",
    trigger = flag() == 0x02 && ruins_item_flag() == 0x01 && once(ruins_item_flag() == 0x00)
)

achievement(
    title = "Enemy's Boon", points = 10,
    description = "Acquire the Magnetron Blaster",
    id = 70387, badge = "75242", published = "24/01/2019 21:14:34", modified = "15/07/2019 07:12:11",
    trigger = flag() == 0x01 && byte(0x01097F) == 0x01 && once(byte(0x01097F) == 0x00)
)

achievement(
    title = "It's a secret I", points = 5,
    description = "Discover the Doorway to the End",
    id = 70390, badge = "00105", published = "24/01/2019 21:14:55", modified = "15/07/2019 07:12:17",
    trigger = flag() == 0x00 && once(flag() == 0x01) && unless(state_flag() != 0x18)
)

achievement(
    title = "It's a secret II", points = 10,
    description = "Be rewarded by the fruits of your efforts",
    id = 70389, badge = "00105", published = "24/01/2019 21:14:48", modified = "15/07/2019 07:12:23",
    trigger = flag() == 0x00 && once(flag() == 0x01) && unless(state_flag() != 0x18)
)

achievement(
    title = "It's a secret III", points = 10,
    description = "Looking for a golden opportunity",
    id = 70391, badge = "00105", published = "24/01/2019 21:15:06", modified = "15/07/2019 07:12:30",
    trigger = flag() == 0x00 && once(flag() == 0x01) && unless(state_flag() != 0x18)
)

achievement(
    title = "Chump Change", points = 5,
    description = "Have 1500 Gold",
    id = 70415, badge = "75276", published = "24/01/2019 21:18:09", modified = "19/11/2022 02:59:26",
    trigger = bcd(bcd_gold()) >= 0x5DC && bcd_gold() > prev(bcd_gold()) && prev(bcd_gold()) >
               0x02
)

achievement(
    title = "Earning Potential", points = 10,
    description = "Have 3000 Gold",
    id = 70416, badge = "75276", published = "24/01/2019 21:18:15", modified = "19/11/2022 02:59:26",
    trigger = bcd(bcd_gold()) >= 0xBB8 && bcd_gold() > prev(bcd_gold()) && prev(bcd_gold()) >
               0x02
)

achievement(
    title = "Modest Savings", points = 10,
    description = "Have 6000 Gold",
    id = 70417, badge = "75276", published = "24/01/2019 21:18:20", modified = "22/11/2022 20:27:41",
    trigger = bcd_gold() > prev(bcd_gold()) && prev(bcd_gold()) > 0x02 && bcd(bcd_gold()) >=
               0x1770
)

achievement(
    title = "Full Purse", points = 25,
    description = "Have 9999 Gold",
    id = 70418, badge = "75276", published = "24/01/2019 21:18:26", modified = "15/07/2019 07:12:56",
    trigger = bcd_gold() == 0x99 && once(bcd_gold() > prev(bcd_gold())) && byte(0x010939) == 0x99
)

achievement(
    title = "Lifeline Credit I (500-999)", points = 5,
    description = "Get your life Above 500 using normal means",
    id = 70419, badge = "05400", published = "24/01/2019 21:18:32", modified = "15/07/2019 07:13:02",
    trigger = unless(flag() == 0x00) && hp_16_bit_decimal_be() >= 0x05 && hp_16_bit_decimal_be() < 0x10 && hp_16_bit_decimal_be() >
               prev(hp_16_bit_decimal_be())
)

achievement(
    title = "Lifeline Credit II (1000)", points = 10,
    description = "Get your life Above 1000 using normal means",
    id = 70420, badge = "05400", published = "24/01/2019 21:18:38", modified = "15/07/2019 07:13:10",
    trigger = unless(flag() == 0x00) && hp_16_bit_decimal_be() >= 0x10 && hp_16_bit_decimal_be() < 0x20 && hp_16_bit_decimal_be() >
               prev(hp_16_bit_decimal_be())
)

achievement(
    title = "Lifeline Credit III (2000)", points = 10,
    description = "Get your life Above 2000 using normal means",
    id = 70421, badge = "05400", published = "24/01/2019 21:18:43", modified = "15/07/2019 07:13:16",
    trigger = unless(flag() == 0x00) && hp_16_bit_decimal_be() >= 0x20 && hp_16_bit_decimal_be() < 0x30 && hp_16_bit_decimal_be() >
               prev(hp_16_bit_decimal_be())
)

achievement(
    title = "Lifeline Credit IV (3000)", points = 10,
    description = "Get your life Above 3000 using normal means",
    id = 70422, badge = "05400", published = "24/01/2019 21:18:49", modified = "15/07/2019 07:13:21",
    trigger = unless(flag() == 0x00) && hp_16_bit_decimal_be() >= 0x30 && hp_16_bit_decimal_be() < 0x45 && hp_16_bit_decimal_be() >
               prev(hp_16_bit_decimal_be())
)

achievement(
    title = "Lifeline Credit V (4500)", points = 10,
    description = "Get your life Above 4500 using normal means",
    id = 70423, badge = "05400", published = "24/01/2019 21:18:57", modified = "15/07/2019 07:13:28",
    trigger = unless(flag() == 0x00) && hp_16_bit_decimal_be() >= 0x45 && hp_16_bit_decimal_be() < 0x60 && hp_16_bit_decimal_be() >
               prev(hp_16_bit_decimal_be())
)

achievement(
    title = "Lifeline Credit VI (6000)", points = 10,
    description = "Get your life Above 6000 using normal means",
    id = 70424, badge = "05400", published = "24/01/2019 21:19:04", modified = "15/07/2019 07:13:34",
    trigger = unless(flag() == 0x00) && hp_16_bit_decimal_be() >= 0x60 && hp_16_bit_decimal_be() < 0x80 && hp_16_bit_decimal_be() >
               prev(hp_16_bit_decimal_be())
)

achievement(
    title = "Lifeline Credit VII (8000)", points = 10,
    description = "Get your life Above 8000 using normal means",
    id = 70425, badge = "05400", published = "24/01/2019 21:19:12", modified = "05/02/2019 15:18:33",
    trigger = unless(flag() == 0x00) && hp_16_bit_decimal_be() >= 0x80 && hp_16_bit_decimal_be() < 0x99 && hp_16_bit_decimal_be() >
               prev(hp_16_bit_decimal_be())
)

achievement(
    title = "Lifeline Credit VII (9999)", points = 25,
    description = "Get your life to 9999 using normal means",
    id = 70426, badge = "05400", published = "24/01/2019 21:19:17", modified = "23/11/2022 10:43:03",
    trigger = flag() == 0x01 && hp_16_bit_decimal_be() > prev(hp_16_bit_decimal_be()) && x_pos() != 0x0E && 
              y_pos() != 0x14 && hp_16_bit_decimal_be() == 0x9999
)

achievement(
    title = "Defeat 50 Merchants", points = 10,
    description = "In one Session",
    id = 70427, badge = "75152", published = "24/01/2019 21:19:23", modified = "22/11/2022 21:22:42",
    trigger = measured(repeated(50, bit0(0x010935) != prev(bit0(0x010935)))) && unless(battle_flag() != 0x08)
)

achievement(
    title = "Defeat 50 Mohicans", points = 10,
    description = "In one Session",
    id = 70428, badge = "75153", published = "24/01/2019 21:19:29", modified = "22/11/2022 21:22:43",
    trigger = measured(repeated(50, low4(0x010935) != prev(low4(0x010935)))) && unless(battle_flag() != 0x0A)
)

achievement(
    title = "Defeat 50 Combat Suits", points = 10,
    description = "In one Session",
    id = 70429, badge = "75200", published = "24/01/2019 21:19:36", modified = "22/11/2022 21:22:44",
    trigger = measured(repeated(50, low4(0x010935) != prev(low4(0x010935)))) && unless(battle_flag() != 0x02)
)

achievement(
    title = "Defeat 45 Powered Armors", points = 10,
    description = "In one Session",
    id = 70430, badge = "75201", published = "24/01/2019 21:19:42", modified = "22/11/2022 21:22:45",
    trigger = measured(repeated(45, low4(0x010935) != prev(low4(0x010935)))) && unless(battle_flag() != 0x03)
)

achievement(
    title = "Defeat 40 Battle Tanks", points = 10,
    description = "In one Session",
    id = 70431, badge = "75203", published = "24/01/2019 21:19:47", modified = "22/11/2022 21:22:46",
    trigger = measured(repeated(40, low4(0x010935) != prev(low4(0x010935)))) && unless(battle_flag() != 0x04)
)

achievement(
    title = "Defeat 30 Destroid Armors", points = 25,
    description = "In one Session",
    id = 70432, badge = "75202", published = "24/01/2019 21:19:55", modified = "22/11/2022 21:22:47",
    trigger = measured(repeated(30, bit4(0x010935) != prev(bit4(0x010935)))) && unless(battle_flag() != 0x05)
)

achievement(
    title = "Defeat 25 Siloam-Whites", points = 10,
    description = "In one Session",
    id = 70433, badge = "75204", published = "24/01/2019 21:20:01", modified = "22/11/2022 21:22:47",
    trigger = measured(repeated(25, high4(0x010935) != prev(high4(0x010935)))) && unless(battle_flag() != 0x0B)
)

achievement(
    title = "Defeat 20 Siloam-Reds", points = 10,
    description = "In one Session",
    id = 70434, badge = "75205", published = "24/01/2019 21:20:08", modified = "22/11/2022 21:22:48",
    trigger = measured(repeated(25, high4(0x010935) != prev(high4(0x010935)))) && unless(battle_flag() != 0x0C)
)

achievement(
    title = "Sell it Slight", points = 5,
    description = "Sell 25 Items in One Session",
    id = 70458, badge = "75513", published = "25/01/2019 00:51:34", modified = "22/11/2022 21:56:46",
    trigger = measured(repeated(25, (store_flag() == 0x45 || store_flag() == 0x4D) && byte(0x010939) >
               prev(byte(0x010939))))
)

achievement(
    title = "Quick Delivery", points = 10,
    description = "Sell 50 Items in One Session",
    id = 70459, badge = "75513", published = "25/01/2019 00:51:41", modified = "22/11/2022 21:56:46",
    trigger = measured(repeated(50, (store_flag() == 0x45 || store_flag() == 0x4D) && byte(0x010939) >
               prev(byte(0x010939))))
)

achievement(
    title = "Sell and Close", points = 10,
    description = "Sell 75 Items in One Session",
    id = 70460, badge = "75513", published = "25/01/2019 00:51:48", modified = "22/11/2022 21:56:47",
    trigger = measured(repeated(75, (store_flag() == 0x45 || store_flag() == 0x4D) && byte(0x010939) >
               prev(byte(0x010939))))
)

achievement(
    title = "Minor Warehouser", points = 25,
    description = "Sell 100 Items in One Session",
    id = 70461, badge = "75513", published = "25/01/2019 00:51:58", modified = "22/11/2022 21:56:47",
    trigger = measured(repeated(100, (store_flag() == 0x45 || store_flag() == 0x4D) && byte(0x010939) >
               prev(byte(0x010939))))
)

achievement(
    title = "Selling Green", points = 5,
    description = "Sell 20 Big Ticket Items in One Session",
    id = 70462, badge = "75513", published = "25/01/2019 00:52:05", modified = "22/11/2022 21:56:48",
    trigger = measured(repeated(20, (store_flag() == 0x45 || store_flag() == 0x4D) && bcd_gold() >
               prev(bcd_gold())))
)

achievement(
    title = "Shake that Move", points = 10,
    description = "Sell 40 Big Ticket Items in One Session",
    id = 70463, badge = "75513", published = "25/01/2019 00:52:14", modified = "22/11/2022 21:56:49",
    trigger = measured(repeated(40, (store_flag() == 0x45 || store_flag() == 0x4D) && bcd_gold() >
               prev(bcd_gold())))
)

achievement(
    title = "Goods Bringer", points = 10,
    description = "Sell 60 Big Ticket Items in One Session",
    id = 70464, badge = "75513", published = "25/01/2019 00:52:22", modified = "22/11/2022 21:56:49",
    trigger = measured(repeated(60, (store_flag() == 0x45 || store_flag() == 0x4D) && bcd_gold() >
               prev(bcd_gold())))
)

achievement(
    title = "Major Warehouser", points = 25,
    description = "Sell 85 Big Ticket Items in One Session",
    id = 70465, badge = "75513", published = "25/01/2019 00:52:28", modified = "22/11/2022 21:56:50",
    trigger = measured(repeated(85, (store_flag() == 0x45 || store_flag() == 0x4D) && bcd_gold() >
               prev(bcd_gold())))
)

achievement(
    title = "The end of ???????", points = 10,
    description = "Clear the Game",
    id = 70399, badge = "75241", published = "24/01/2019 21:15:57", modified = "15/07/2019 07:15:30",
    trigger = byte(0x01097F) == 0x00 && once(byte(0x01097F) == 0x01) && once(flag() == 0x0D) && 
              once(flag() == 0x62) && never(y_pos() != 0x03) && flag() == 0x10 && flag()
               == 0x00
)

achievement(
    title = "Victory for the Surefooted", points = 5,
    description = "Clear the Game Under 10000 Steps",
    id = 70402, badge = "75241", published = "24/01/2019 21:16:15", modified = "15/07/2019 07:15:39",
    trigger = byte(0x01097F) == 0x00 && once(byte(0x01097F) == 0x01) && once(flag() == 0x0D) && 
              once(flag() == 0x62) && never(y_pos() != 0x03) && flag() == 0x10 && flag()
               == 0x00 && byte(0x01093B) < 0x01
)

achievement(
    title = "Victory in Midstep", points = 10,
    description = "Clear the Game Under 5000 Steps",
    id = 70401, badge = "75241", published = "24/01/2019 21:16:10", modified = "15/07/2019 07:15:46",
    trigger = byte(0x01097F) == 0x00 && once(byte(0x01097F) == 0x01) && once(flag() == 0x0D) && 
              once(flag() == 0x62) && never(y_pos() != 0x03) && flag() == 0x10 && flag()
               == 0x00 && byte(0x01093C) < 0x50
)

achievement(
    title = "Victory for the Swift", points = 25,
    description = "Clear the Game under 3000 Steps",
    id = 70400, badge = "75241", published = "24/01/2019 21:16:03", modified = "15/07/2019 07:15:52",
    trigger = byte(0x01097F) == 0x00 && once(byte(0x01097F) == 0x01) && once(flag() == 0x0D) && 
              once(flag() == 0x62) && never(y_pos() != 0x03) && flag() == 0x10 && flag()
               == 0x00 && byte(0x01093C) < 0x30
)

achievement(
    title = "No Need but Victory", points = 50,
    description = "Clear the Game under 2000 Steps and 200 Xp",
    id = 70403, badge = "75241", published = "24/01/2019 21:16:25", modified = "15/07/2019 07:15:59",
    trigger = byte(0x01097F) == 0x00 && once(byte(0x01097F) == 0x01) && once(flag() == 0x0D) && 
              once(flag() == 0x62) && never(y_pos() != 0x03) && flag() == 0x10 && flag()
               == 0x00 && byte(0x01093C) < 0x20 && exp_16_bit_decimal_be() < 0x02
)
