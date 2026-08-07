extends CanvasLayer

var direction := Vector2.ZERO

signal move_input(value)

func _on_up_pressed():
    move_input.emit(Vector2.UP)

func _on_down_pressed():
    move_input.emit(Vector2.DOWN)

func _on_left_pressed():
    move_input.emit(Vector2.LEFT)

func _on_right_pressed():
    move_input.emit(Vector2.RIGHT)

func _on_release():
    move_input.emit(Vector2.ZERO)
