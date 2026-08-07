extends Node2D

var player = Vector2(100,100)
var key = Vector2(400,300)
var door = Vector2(700,500)
var speed = 200
var has_key = false

func _ready():
    queue_redraw()

func _process(delta):
    var dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    player += dir * speed * delta
    if player.distance_to(key) < 30:
        has_key = true
    if has_key and player.distance_to(door) < 40:
        print("You Win!")
    queue_redraw()

func _draw():
    draw_circle(player, 20, Color.BLUE)
    draw_circle(key, 15, Color.YELLOW)
    draw_rect(Rect2(door - Vector2(25,25), Vector2(50,50)), Color.GREEN)
