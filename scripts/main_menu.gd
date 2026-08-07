extends Control

func _ready():
    $PlayButton.pressed.connect(start_game)
    $QuitButton.pressed.connect(quit_game)

func start_game():
    get_tree().change_scene_to_file("res://scenes/LevelSelect.tscn")

func quit_game():
    get_tree().quit()
