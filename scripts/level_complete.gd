extends CanvasLayer

func complete_level(stars):
    print("Level completed with ", stars, " stars")
    get_tree().change_scene_to_file("res://scenes/LevelSelect.tscn")
