extends Control

signal joystick_input(direction)

@export var radius := 80.0
var pressed := false
var center := Vector2.ZERO

func _ready():
    center = position

func _gui_input(event):
    if event is InputEventScreenTouch:
        pressed = event.pressed
        if not pressed:
            joystick_input.emit(Vector2.ZERO)
    
    if event is InputEventScreenDrag and pressed:
        var offset = event.position - center
        if offset.length() > radius:
            offset = offset.normalized() * radius
        joystick_input.emit(offset.normalized())
