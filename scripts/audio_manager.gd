extends Node

var music_enabled := true
var sound_enabled := true

func play_music(stream):
    if music_enabled:
        var player = AudioStreamPlayer.new()
        player.stream = stream
        add_child(player)
        player.play()

func toggle_music():
    music_enabled = !music_enabled
