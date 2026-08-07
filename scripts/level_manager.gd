extends Node

var current_level := 1
var total_levels := 50

func next_level():
    current_level += 1
    if current_level > total_levels:
        print("Game Completed!")
