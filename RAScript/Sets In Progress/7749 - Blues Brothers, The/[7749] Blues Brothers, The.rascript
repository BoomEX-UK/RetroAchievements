// Blues Brothers, The
// #ID = 7749
// By BoomEX

// $00008A: Player select
//          01 = Joliet Jake | 02 = Elwood | 03 = both
function playerSelect() => byte(0x00008A)

// $0001F4: Timelimit
function timelimit() => byte(0x0001F4)

// $000297: Elwood muscle?
//          6d = true
function elwoodMuscle() => byte(0x000297)

// $00062E: Level
//          Starts at 00
// $0009B0: Timelimit (writable)
// $0011C0: Joliet Jake muscle?
//          ff = true
//          fe when taken a second time?

// $0011C1: Joliet Jake Muscle?
//          f9 = true
function jolietJakeMuscle() => byte(0x0011C1)

// $0011C2: Elwood muscle?
//          ff = true
function elwoodMuscle() => byte(0x0011C2)

// $0011C3: Elwood muscle?
//          f9 = true
function elwoodMuscle() => byte(0x0011C3)

// $001480: Joliet Jake Hearts (small container)
function jolietJakeHeartsSmallContainer() => byte(0x001480)

// $001481: Joliet Jake Hearts

// $001482: Elwood Hearts (small container)
function elwoodHeartsSmallContainer() => byte(0x001482)

// $001483: Elwood Hearts
// $00151A: 16bit
//          Joliet Jake's records
function bit() => word(0x00151A)

// $00151C: 16bit
//          Elwood's Records
function bit() => word(0x00151C)

// $001782: 16bit
//          Joliet Jake lives
function bit() => word(0x001782)

// $001784: 16bit
//          Elwood Lives
function bit() => word(0x001784)

// $0017AF: Jake Type
//          02 = Normal
//          04 = muscle | 08 = invic
function jakeType() => byte(0x0017AF)

// $0017B1: Elwood type
//          02 = Muscles!
//          08 = Invinc!
function elwoodType() => byte(0x0017B1)

// $0017F0: 16bit
//          Joliet Jake Invinc time
//          3c = 0
function bit() => word(0x0017F0)

// $00181C: Jake invinc?
//          1e = true
function jakeInvinc() => byte(0x00181C)

// $010120: Also level
function alsoLevel() => byte(0x010120)

// $016000: Continues?
function continues() => byte(0x016000)

achievement(
    title = "Stage   12 left or right ?", points = 5,
    description = "Stage   12",
    id = 118330, badge = "125936", published = "18/07/2020 00:35:44", modified = "18/07/2020 00:35:44",
    trigger = byte(0x00062E) == 0x0C
)

achievement(
    title = "Stage   20 climb climb ", points = 5,
    description = "Stage   20",
    id = 118338, badge = "125944", published = "18/07/2020 00:36:25", modified = "18/07/2020 00:36:25",
    trigger = byte(0x00062E) == 0x13
)

achievement(
    title = "Stage   19 wall shock smash", points = 5,
    description = "Stage   19",
    id = 118337, badge = "125943", published = "18/07/2020 00:36:20", modified = "18/07/2020 00:36:20",
    trigger = byte(0x00062E) == 0x12
)

achievement(
    title = "Stage    18 Ho no! dogs  again ?", points = 5,
    description = "Stage  18",
    id = 118336, badge = "125942", published = "18/07/2020 00:36:16", modified = "18/07/2020 00:36:16",
    trigger = byte(0x00062E) == 0x11
)

achievement(
    title = "Stage    17 jump is hole", points = 5,
    description = "Stage   17",
    id = 118335, badge = "125941", published = "18/07/2020 00:36:12", modified = "18/07/2020 00:36:12",
    trigger = byte(0x00062E) == 0x10
)

achievement(
    title = "Stage    16 Iron worm", points = 5,
    description = "Stage   16",
    id = 118334, badge = "125940", published = "18/07/2020 00:36:06", modified = "18/07/2020 00:36:06",
    trigger = byte(0x00062E) == 0x0F
)

achievement(
    title = "Stage    15 jump jump ", points = 5,
    description = "Stage   15",
    id = 118333, badge = "125939", published = "18/07/2020 00:35:59", modified = "18/07/2020 00:35:59",
    trigger = byte(0x00062E) == 0x0E
)

achievement(
    title = "Stage   14 jump shoker", points = 5,
    description = "Stage   14",
    id = 118332, badge = "125938", published = "18/07/2020 00:35:54", modified = "18/07/2020 00:35:54",
    trigger = byte(0x00062E) == 0x0D
)

achievement(
    title = "Stage    13 flying dragon ?", points = 5,
    description = "Stage   13",
    id = 118331, badge = "125937", published = "18/07/2020 00:35:50", modified = "18/07/2020 00:35:50",
    trigger = byte(0x00062E) == 0x0C
)

achievement(
    title = "Stage   21 Ual very shocks", points = 5,
    description = "Stage   21",
    id = 118339, badge = "125945", published = "18/07/2020 00:36:29", modified = "18/07/2020 00:36:29",
    trigger = byte(0x00062E) == 0x14
)

achievement(
    title = "Stage   11 wall smash", points = 5,
    description = "Stage   11",
    id = 118329, badge = "125935", published = "18/07/2020 00:35:38", modified = "18/07/2020 00:35:38",
    trigger = byte(0x00062E) == 0x0A
)

achievement(
    title = "Stage   10 grabs dog ?", points = 5,
    description = "Stage   10",
    id = 118328, badge = "125934", published = "18/07/2020 00:35:35", modified = "18/07/2020 00:35:35",
    trigger = byte(0x00062E) == 0x09
)

achievement(
    title = "Stage   9 very short phase", points = 5,
    description = "Stage   9",
    id = 118327, badge = "125933", published = "18/07/2020 00:35:31", modified = "18/07/2020 00:35:31",
    trigger = byte(0x00062E) == 0x08
)

achievement(
    title = "Stage   8 ball of thorns", points = 5,
    description = "Stage   8",
    id = 118326, badge = "125932", published = "18/07/2020 00:35:26", modified = "18/07/2020 00:35:26",
    trigger = byte(0x00062E) == 0x07
)

achievement(
    title = "Stage   7 up to shock", points = 5,
    description = "Stage   7",
    id = 118325, badge = "125931", published = "18/07/2020 00:35:23", modified = "18/07/2020 00:35:23",
    trigger = byte(0x00062E) == 0x06
)

achievement(
    title = "Stage  6 chain box", points = 5,
    description = "Stage   6",
    id = 118324, badge = "125930", published = "18/07/2020 00:35:18", modified = "18/07/2020 00:35:18",
    trigger = byte(0x00062E) == 0x05
)

achievement(
    title = "Stage   5 hearts thee", points = 5,
    description = "Stage  5",
    id = 118323, badge = "125929", published = "18/07/2020 00:35:11", modified = "18/07/2020 00:35:11",
    trigger = byte(0x00062E) == 0x04
)

achievement(
    title = "Stage   4 very traps", points = 10,
    description = "Stage   4 obter 130 discs com joliet  jack",
    id = 118322, badge = "125928", published = "18/07/2020 00:35:03", modified = "18/07/2020 00:35:03",
    trigger = byte(0x00062E) == 0x03 && byte(0x00151A) == 0x82
)

achievement(
    title = "Stage   30 deadly springs", points = 10,
    description = "Stage   30",
    id = 118348, badge = "125955", published = "18/07/2020 00:37:08", modified = "18/07/2020 00:37:08",
    trigger = byte(0x00062E) == 0x1E
)

achievement(
    title = "Time limite just a second", points = 5,
    description = "Finish any phase left 1 second or less",
    id = 118356, badge = "125959", published = "18/07/2020 00:37:49", modified = "18/07/2020 00:37:49",
    trigger = byte(0x0009B0) == 0x01
)

achievement(
    title = "200 x discs prince of disks", points = 5,
    description = "have a total of 200 discs playing with joliet jack",
    id = 118355, badge = "125959", published = "18/07/2020 00:37:44", modified = "18/07/2020 00:37:44",
    trigger = byte(0x00151A) == 0xC8
)

achievement(
    title = "Final stage iron chicken ?", points = 10,
    description = "Final stage",
    id = 118354, badge = "125959", published = "18/07/2020 00:37:39", modified = "18/07/2020 00:37:39",
    trigger = byte(0x00062E) == 0x22
)

achievement(
    title = "Stage  33 No is the end", points = 10,
    description = "Stage  33",
    id = 118353, badge = "125958", published = "18/07/2020 00:37:34", modified = "18/07/2020 00:37:34",
    trigger = byte(0x00062E) == 0x21
)

achievement(
    title = "Stage   32 where's the record player?", points = 10,
    description = "Stage   32",
    id = 118352, badge = "125957", published = "18/07/2020 00:37:27", modified = "18/07/2020 00:37:27",
    trigger = byte(0x00062E) == 0x20
)

achievement(
    title = "M-U-S-C-L-E-R", points = 5,
    description = "Muscler Power",
    id = 118351, badge = "125960", published = "18/07/2020 00:37:21", modified = "18/07/2020 00:37:21",
    trigger = byte(0x0011C0) == 0xFF
)

achievement(
    title = "WELCOME BLUES BROTHERS", points = 5,
    description = "NEW ADVENTURE no death",
    id = 118350, badge = "125925", published = "18/07/2020 00:37:17", modified = "18/07/2020 00:37:17",
    trigger = byte(0x00062E) == 0x00
)

achievement(
    title = "Stage   31 crazy shape", points = 10,
    description = "Stage   31",
    id = 118349, badge = "125956", published = "18/07/2020 00:37:13", modified = "18/07/2020 00:37:13",
    trigger = byte(0x00062E) == 0x1F
)

achievement(
    title = "Stage  3 other full hearts ?", points = 5,
    description = "Reach phase 3 with full hearts",
    id = 118321, badge = "125927", published = "18/07/2020 00:34:59", modified = "18/07/2020 00:34:59",
    trigger = byte(0x00062E) == 0x02 && bit1(0x001481) == 0x07 && byte(0x001483) == 0x00
)

achievement(
    title = "Stage  29 Raiden is shoker ?", points = 10,
    description = "Stage 29",
    id = 118347, badge = "125954", published = "18/07/2020 00:37:03", modified = "18/07/2020 00:37:03",
    trigger = byte(0x00062E) == 0x1D
)

achievement(
    title = "Stage   28  another short phase?", points = 10,
    description = "Stage   28",
    id = 118346, badge = "125953", published = "18/07/2020 00:36:59", modified = "18/07/2020 00:36:59",
    trigger = byte(0x00062E) == 0x1C
)

achievement(
    title = "Stage   27 crazy cars", points = 10,
    description = "Stage   27",
    id = 118345, badge = "125951", published = "18/07/2020 00:36:55", modified = "18/07/2020 00:36:55",
    trigger = byte(0x00062E) == 0x1B
)

achievement(
    title = "Stage   26 spiked plants", points = 10,
    description = "Stage  26",
    id = 118344, badge = "125950", published = "18/07/2020 00:36:51", modified = "18/07/2020 00:36:51",
    trigger = byte(0x00062E) == 0x1A
)

achievement(
    title = "Stage   25 supreme iron ball", points = 10,
    description = "Stage   25",
    id = 118343, badge = "125949", published = "18/07/2020 00:36:46", modified = "18/07/2020 00:36:46",
    trigger = byte(0x00062E) == 0x19
)

achievement(
    title = "Stage   24 very very traps", points = 10,
    description = "Stage   24",
    id = 118342, badge = "125948", published = "18/07/2020 00:36:42", modified = "18/07/2020 00:36:42",
    trigger = byte(0x00062E) == 0x17
)

achievement(
    title = "Stage   23 flying dragon again ?", points = 5,
    description = "Stage   23 ",
    id = 118341, badge = "125947", published = "18/07/2020 00:36:37", modified = "18/07/2020 00:36:37",
    trigger = byte(0x00062E) == 0x16
)

achievement(
    title = "Stage   22 very very shocke", points = 5,
    description = "Stage   22",
    id = 118340, badge = "125946", published = "18/07/2020 00:36:33", modified = "18/07/2020 00:36:33",
    trigger = byte(0x00062E) == 0x15
)

achievement(
    title = "Stage   11", points = 5,
    description = "Stage   11",
    id = 115182, badge = "125935", published = "23/06/2020 04:02:22", modified = "23/06/2020 04:02:22",
    trigger = byte(0x00062E) == 0x0A
)

achievement(
    title = "Stage   19", points = 5,
    description = "Stage   19",
    id = 115190, badge = "125943", published = "23/06/2020 04:03:04", modified = "23/06/2020 04:03:04",
    trigger = byte(0x00062E) == 0x12
)

achievement(
    title = "Stage    18", points = 5,
    description = "Stage  18",
    id = 115189, badge = "125942", published = "23/06/2020 04:02:57", modified = "23/06/2020 04:02:57",
    trigger = byte(0x00062E) == 0x11
)

achievement(
    title = "Stage    17", points = 5,
    description = "Stage   17",
    id = 115188, badge = "125941", published = "23/06/2020 04:02:53", modified = "23/06/2020 04:02:53",
    trigger = byte(0x00062E) == 0x10
)

achievement(
    title = "Stage    16", points = 5,
    description = "Stage   16",
    id = 115187, badge = "125940", published = "23/06/2020 04:02:49", modified = "23/06/2020 04:02:49",
    trigger = byte(0x00062E) == 0x0F
)

achievement(
    title = "Stage    15", points = 5,
    description = "Stage   15",
    id = 115186, badge = "125939", published = "23/06/2020 04:02:43", modified = "23/06/2020 04:02:43",
    trigger = byte(0x00062E) == 0x0E
)

achievement(
    title = "Stage   14", points = 5,
    description = "Stage   14",
    id = 115185, badge = "125938", published = "23/06/2020 04:02:37", modified = "23/06/2020 04:02:37",
    trigger = byte(0x00062E) == 0x0D
)

achievement(
    title = "Stage    13", points = 5,
    description = "Stage   13",
    id = 115184, badge = "125937", published = "23/06/2020 04:02:31", modified = "23/06/2020 04:02:31",
    trigger = byte(0x00062E) == 0x0C
)

achievement(
    title = "Stage   12", points = 5,
    description = "Stage   12",
    id = 115183, badge = "125936", published = "23/06/2020 04:02:27", modified = "23/06/2020 04:02:27",
    trigger = byte(0x00062E) == 0x0C
)

achievement(
    title = "Stage   20", points = 5,
    description = "Stage   20",
    id = 115191, badge = "125944", published = "23/06/2020 04:03:11", modified = "23/06/2020 04:03:11",
    trigger = byte(0x00062E) == 0x13
)

achievement(
    title = "Stage   10", points = 5,
    description = "Stage   10",
    id = 115181, badge = "125934", published = "23/06/2020 04:02:18", modified = "23/06/2020 04:02:18",
    trigger = byte(0x00062E) == 0x09
)

achievement(
    title = "Stage   9", points = 5,
    description = "Stage   9",
    id = 115180, badge = "125933", published = "23/06/2020 04:02:14", modified = "23/06/2020 04:02:14",
    trigger = byte(0x00062E) == 0x08
)

achievement(
    title = "Stage   8", points = 5,
    description = "Stage   8",
    id = 115179, badge = "125932", published = "23/06/2020 04:02:10", modified = "23/06/2020 04:02:10",
    trigger = byte(0x00062E) == 0x07
)

achievement(
    title = "Stage   7", points = 5,
    description = "Stage   7",
    id = 115178, badge = "125931", published = "23/06/2020 04:02:04", modified = "23/06/2020 04:02:04",
    trigger = byte(0x00062E) == 0x06
)

achievement(
    title = "Stage  6", points = 5,
    description = "Stage   6",
    id = 115177, badge = "125930", published = "23/06/2020 04:01:59", modified = "23/06/2020 04:01:59",
    trigger = byte(0x00062E) == 0x05
)

achievement(
    title = "Stage   5", points = 5,
    description = "Stage  5",
    id = 115176, badge = "125929", published = "23/06/2020 04:01:55", modified = "23/06/2020 04:01:55",
    trigger = byte(0x00062E) == 0x04
)

achievement(
    title = "Stage   4", points = 5,
    description = "Stage   4",
    id = 115175, badge = "125928", published = "23/06/2020 04:01:44", modified = "23/06/2020 04:01:44",
    trigger = byte(0x00062E) == 0x03
)

achievement(
    title = "Stage  3", points = 5,
    description = "Stage   3",
    id = 115174, badge = "125927", published = "23/06/2020 04:01:40", modified = "23/06/2020 04:01:40",
    trigger = byte(0x00062E) == 0x02
)

achievement(
    title = "Stage  29", points = 10,
    description = "Stage 29",
    id = 115200, badge = "125954", published = "23/06/2020 04:04:00", modified = "23/06/2020 04:04:00",
    trigger = byte(0x00062E) == 0x1D
)

achievement(
    title = "Stage   2 full hearts", points = 5,
    description = "Reach phase 2 with full hearts",
    id = 118320, badge = "125926", published = "18/07/2020 00:34:54", modified = "18/07/2020 00:34:54",
    trigger = byte(0x00062E) == 0x01 && byte(0x001481) == 0x07 && byte(0x001483) == 0x07
)

achievement(
    title = "M-U-S-C-L-E-R", points = 5,
    description = "Muscler Power",
    id = 115207, badge = "125960", published = "23/06/2020 04:04:43", modified = "23/06/2020 04:04:43",
    trigger = byte(0x0011C0) == 0xFF
)

achievement(
    title = "WELCOME BLUES BROTHERS", points = 5,
    description = "NEW ADVENTURE",
    id = 115206, badge = "125925", published = "23/06/2020 04:04:37", modified = "23/06/2020 04:04:37",
    trigger = byte(0x00062E) == 0x00
)

achievement(
    title = "Final stage", points = 10,
    description = "Final stage",
    id = 115205, badge = "125959", published = "23/06/2020 04:04:31", modified = "23/06/2020 04:04:31",
    trigger = byte(0x00062E) == 0x22
)

achievement(
    title = "Stage  33", points = 10,
    description = "Stage  33",
    id = 115204, badge = "125958", published = "23/06/2020 04:04:25", modified = "23/06/2020 04:04:25",
    trigger = byte(0x00062E) == 0x21
)

achievement(
    title = "Stage   32", points = 10,
    description = "Stage   32",
    id = 115203, badge = "125957", published = "23/06/2020 04:04:18", modified = "23/06/2020 04:04:18",
    trigger = byte(0x00062E) == 0x20
)

achievement(
    title = "Stage   31", points = 10,
    description = "Stage   31",
    id = 115202, badge = "125956", published = "23/06/2020 04:04:13", modified = "23/06/2020 04:04:13",
    trigger = byte(0x00062E) == 0x1F
)

achievement(
    title = "Stage   30", points = 10,
    description = "Stage   30",
    id = 115201, badge = "125955", published = "23/06/2020 04:04:04", modified = "23/06/2020 04:04:04",
    trigger = byte(0x00062E) == 0x1E
)

achievement(
    title = "Stage   2", points = 5,
    description = "Stage  2",
    id = 115173, badge = "125926", published = "23/06/2020 04:01:34", modified = "23/06/2020 04:01:34",
    trigger = byte(0x00062E) == 0x01
)

achievement(
    title = "Stage   28", points = 10,
    description = "Stage   28",
    id = 115199, badge = "125953", published = "23/06/2020 04:03:54", modified = "23/06/2020 04:03:54",
    trigger = byte(0x00062E) == 0x1C
)

achievement(
    title = "Stage   27", points = 10,
    description = "Stage   27",
    id = 115198, badge = "125951", published = "23/06/2020 04:03:50", modified = "23/06/2020 04:03:50",
    trigger = byte(0x00062E) == 0x1B
)

achievement(
    title = "Stage   26", points = 10,
    description = "Stage  26",
    id = 115197, badge = "125950", published = "23/06/2020 04:03:46", modified = "23/06/2020 04:03:46",
    trigger = byte(0x00062E) == 0x1A
)

achievement(
    title = "Stage   25", points = 10,
    description = "Stage   25",
    id = 115196, badge = "125949", published = "23/06/2020 04:03:39", modified = "23/06/2020 04:03:39",
    trigger = byte(0x00062E) == 0x19
)

achievement(
    title = "Stage   24", points = 10,
    description = "Stage   24",
    id = 115195, badge = "125948", published = "23/06/2020 04:03:34", modified = "23/06/2020 04:03:34",
    trigger = byte(0x00062E) == 0x17
)

achievement(
    title = "Stage   23", points = 5,
    description = "Stage   23",
    id = 115194, badge = "125947", published = "23/06/2020 04:03:29", modified = "23/06/2020 04:03:29",
    trigger = byte(0x00062E) == 0x16
)

achievement(
    title = "Stage   22", points = 5,
    description = "Stage   22",
    id = 115193, badge = "125946", published = "23/06/2020 04:03:24", modified = "23/06/2020 04:03:24",
    trigger = byte(0x00062E) == 0x15
)

achievement(
    title = "Stage   21", points = 5,
    description = "Stage   21",
    id = 115192, badge = "125945", published = "23/06/2020 04:03:17", modified = "23/06/2020 04:03:17",
    trigger = byte(0x00062E) == 0x14
)
