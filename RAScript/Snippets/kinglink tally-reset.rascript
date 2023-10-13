// Adventure Island II: Aliens in Paradise
// #ID = 4486


_demo_mode = high4(0x023)
_score = byte(0x024)
_distance =byte(0x032)
_scoremultiplier = byte(0x035)
_dolph_y = byte (0x038)
_seagull_power = byte(0x03d)
_direction = byte(0x058)
_game_running = byte(0x079)

achievement(
    "dummy",
    "test",
    1,
    measured(
        tally(5,
            _score != prev(_score) && 
            __ornext (
                (prev(_scoremultiplier) - _scoremultiplier == 4) ||
                (prev(_scoremultiplier) - _scoremultiplier == 5)
            ) && 
            _dolph_y > 0x17
        )
    ) &&
    never(
        tally(2,
        _score != prev(_score) &&
        __ornext(
            (prev(_scoremultiplier) - _scoremultiplier == 4) ||
            (prev(_scoremultiplier) - _scoremultiplier == 5)
        ) && 
        _distance != prev(_distance) &&
        never(_dolph_y > 0x17)
    )) &&
    never(
        (prev(_scoremultiplier) == 0 &&
        _scoremultiplier > 0 &&
        _scoremultiplier < 4) ||
        _game_running != 1 ||
        _demo_mode != 0 ||
        _direction != prev(_direction) ||
        _seagull_power != 0
    )
)

