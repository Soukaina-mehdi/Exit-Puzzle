extends Node2D

var locked := true

func unlock():
    locked = false
    print("Door opened")

func can_exit(has_key: bool):
    return has_key and not locked
