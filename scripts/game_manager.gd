extends Node

var coins := 0
var level := 1
var max_level := 50

func collect_coin():
    coins += 1

func complete_level():
    level += 1
    if level > max_level:
        print("Congratulations! You finished Exit Puzzle")
