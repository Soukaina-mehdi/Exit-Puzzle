extends CharacterBody2D

@export var pushable := true

func push(direction: Vector2):
    if pushable:
        position += direction * 64
