extends Node

const SAVE_PATH = "user://exit_puzzle_save.json"

var unlocked_level := 1
var stars := {}

func save_game():
    var data = {
        "unlocked_level": unlocked_level,
        "stars": stars
    }
    var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
    file.store_string(JSON.stringify(data))

func load_game():
    if FileAccess.file_exists(SAVE_PATH):
        var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
        var data = JSON.parse_string(file.get_as_text())
        unlocked_level = data.get("unlocked_level", 1)
        stars = data.get("stars", {})
