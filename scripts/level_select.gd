extends Control

func _ready():
    $Level1.pressed.connect(func(): load_level(1))
    $Level2.pressed.connect(func(): load_level(2))
    $Level3.pressed.connect(func(): load_level(3))

func load_level(number):
    get_tree().change_scene_to_file("res://levels/level_0" + str(number) + ".tscn")
