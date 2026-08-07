extends Node

func _ready():
    get_viewport().content_scale_mode = Window.CONTENT_SCALE_MODE_CANVAS_ITEMS
    get_viewport().content_scale_aspect = Window.CONTENT_SCALE_ASPECT_EXPAND

    var window = get_window()
    window.min_size = Vector2i(480, 800)

func adapt_ui():
    var size = get_viewport().get_visible_rect().size
    var scale_factor = min(size.x / 800.0, size.y / 600.0)
    return scale_factor
