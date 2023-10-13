// Adventure Island II: Aliens in Paradise
// #ID = 4486

const_target = 10

achievement(
    "Only " + const_target,
    "Activate when exactly " + const_target + " are true",
    1,
    tally_of(range(0,24),const_target,s=>once(byte(s) <= 9)) &&
    never(tally_of(range(0,24),const_target+1,s=>once(byte(s) <= 9)))
)