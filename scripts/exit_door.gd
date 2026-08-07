extends StaticBody2D

var opened := false

func open_door():
    opened = true
    visible = false
    $CollisionShape2D.disabled = true

func _on_manager_door_opened():
    open_door()
