// Mega Man Battle Network
// #ID = 575

id_first = 0x008020
id_last = 0x008038
function in_game() => byte(0x00f590) == 2

achievement(
    id=8647,
    title="Gotta Get'em All!",
    description="Complete your Chip Library",
    points=25,
    trigger=
        sum_of(range(id_first,id_last),s => prev(bitcount(s))) == 174 &&
   measured(sum_of(range(id_first,id_last),s => bitcount(s)) == 175,when=in_game())
)
