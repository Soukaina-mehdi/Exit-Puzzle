extends Node

func calculate_stars(time_left, moves):
    if time_left > 60 and moves < 20:
        return 3
    elif time_left > 30:
        return 2
    return 1
