extends CharacterBody2D

@export var speed := 250.0
var mobile_direction := Vector2.ZERO

func _ready():
    var controls = get_tree().get_first_node_in_group("mobile_controls")
    if controls:
        controls.move_input.connect(set_mobile_direction)

func _physics_process(_delta):
    var keyboard_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    var direction = keyboard_direction
    
    if direction == Vector2.ZERO:
        direction = mobile_direction
    
    velocity = direction * speed
    move_and_slide()

func set_mobile_direction(value: Vector2):
    mobile_direction = value
