extends StaticBody2D

@export var size := Vector2(64,64)

func _ready():
    var shape = RectangleShape2D.new()
    shape.size = size
    var collider = CollisionShape2D.new()
    collider.shape = shape
    add_child(collider)

func _draw():
    draw_rect(Rect2(-size/2, size), Color(0.2,0.2,0.2))
