// ~Unlicensed~ Super 3D Noah's Ark
// #ID = 3805

achievement(
    title = "Burt the Bear", points = 25,
    description = "Defeat Burt the Bear and win the game!",
    id = 40997, badge = "42101", published = "10/10/2016 18:48:22", modified = "10/10/2016 19:03:21",
    trigger = byte(0x00FEB3) == 0x1E && byte(0x00FEFF) >= 0x00
)

achievement(
    title = "Getting an upgrade", points = 5,
    description = "Get the large feed launcher",
    id = 40998, badge = "42106", published = "10/10/2016 18:48:32", modified = "10/10/2016 19:03:49",
    trigger = byte(0x00FECD) == 0x01
)

achievement(
    title = "Super Feeder 5000!", points = 5,
    description = "Get the Super Feeder 5000.",
    id = 40999, badge = "42105", published = "10/10/2016 18:48:36", modified = "10/10/2016 19:03:52",
    trigger = byte(0x00FECF) == 0x01
)

achievement(
    title = "Watermelon Feeder", points = 10,
    description = "Get the Watermelon Feeder",
    id = 41000, badge = "42108", published = "10/10/2016 18:48:39", modified = "27/09/2019 04:11:01",
    trigger = byte(0x00FED1) == 0x01
)

achievement(
    title = "Cantaloupe Feeder", points = 10,
    description = "Get the Cantaloupe Feeder",
    id = 41001, badge = "42107", published = "10/10/2016 18:48:43", modified = "10/10/2016 19:03:58",
    trigger = byte(0x00FED3) == 0x01
)

achievement(
    title = "Does this get me treasure?", points = 5,
    description = "Find a gold key",
    id = 41003, badge = "42110", published = "10/10/2016 18:49:03", modified = "11/10/2016 01:25:43",
    trigger = byte(0x00FECB) == 0x01
)

achievement(
    title = "Now I can go anywhere", points = 10,
    description = "Have both sets of keys.",
    id = 41004, badge = "42111", published = "10/10/2016 18:49:08", modified = "10/10/2016 19:04:09",
    trigger = byte(0x00FECB) == 0x03
)

achievement(
    title = "MOW!", points = 25,
    description = "Get 9 lives.",
    id = 41006, badge = "42115", published = "10/10/2016 18:49:21", modified = "11/10/2016 01:09:24",
    trigger = byte(0x00FEBF) == 0x0A
)

achievement(
    title = "Stock Piling ", points = 5,
    description = "Hold 99 at one time",
    id = 41007, badge = "42103", published = "10/10/2016 18:49:28", modified = "02/07/2019 17:26:30",
    trigger = byte(0x00FEC3) == 0x63
)

achievement(
    title = "Storing for winter", points = 10,
    description = "Carry 199 feed",
    id = 41008, badge = "42104", published = "10/10/2016 18:49:32", modified = "02/07/2019 17:26:18",
    trigger = byte(0x00FEC3) == 0xC7
)

achievement(
    title = "Feeding Time!", points = 25,
    description = "Put 50 animals to sleep in a single level.",
    id = 41010, badge = "42102", published = "10/10/2016 18:49:40", modified = "02/07/2019 17:26:32",
    trigger = byte(0x00FEE3) == 0x32
)

achievement(
    title = "It's a secret", points = 10,
    description = "Find a secret passage.",
    id = 41012, badge = "42112", published = "10/10/2016 18:49:59", modified = "10/10/2016 19:04:36",
    trigger = byte(0x00FEDF) == 0x01
)

achievement(
    title = "Carrying A Heavier Load", points = 10,
    description = "Pick up a napsack.",
    id = 41013, badge = "42116", published = "10/10/2016 18:50:02", modified = "10/10/2016 19:04:38",
    trigger = byte(0x00FEC5) == 0xC7
)
