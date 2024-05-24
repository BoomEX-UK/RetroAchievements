// Star Ocean: Blue Sphere
// #ID = 5228

toal_achs=1
total_lines=4000

for n in range(1,toal_achs){

    cond = always_true()
    l = 0
    for i in range(1,total_lines) {
        cond=cond && byte(i) == 1
        l=l+1
    }
    
    achievement(
        id=0,
        title="No Pause ",
        description="this contains " + l + " lines",
        points=0,
        trigger=cond
    )
    
}

for n in range(1,toal_achs){

    cond = always_true()
    l = 0
    for i in range(1,total_lines) {
        cond=cond && byte(i) == 1
        l=l+1
    }
    
    achievement(
        id=0,
        title="Pause ",
        description="this contains " + l + " lines",
        points=0,
        trigger=cond
    )
    
}
