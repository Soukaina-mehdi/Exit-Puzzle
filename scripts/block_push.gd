extends CharacterBody2D

@export var grid_size := 64

func push(direction: Vector2):
    var target = position + direction * grid_size
    if can_move(target):
        position = target
        return true
    return false

func can_move(_target):
    return true
