extends Area2D

var activated := false
signal activated_changed

func activate():
    activated = true
    activated_changed.emit()
