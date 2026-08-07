extends Node2D

var wall_positions = [
    Vector2(0,0), Vector2(64,0), Vector2(128,0),
    Vector2(0,64), Vector2(128,64),
    Vector2(0,128), Vector2(64,128), Vector2(128,128)
]

func create_walls():
    for pos in wall_positions:
        var wall = preload("res://scripts/wall.gd").new()
        wall.position = pos
        add_child(wall)
