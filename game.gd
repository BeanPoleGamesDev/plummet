extends Spatial

signal rotate_view(rot)
signal set_down(down)

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	self.connect("rotate_view", $player, "_on_rotate_view")
	self.connect("set_down", $player, "_on_set_down")
	emit_signal("set_down", $target)

func _input(event):
	if event is InputEventMouseMotion:
		emit_signal("rotate_view", Vector3(-event.relative.y, -event.relative.x, 0))
	if event.is_action_pressed("ui_up") || event.is_action_pressed("ui_down") || event.is_action_pressed("ui_right") || event.is_action_pressed("ui_left"):
		print(event)
	if event.is_action_released("ui_end"):
		get_tree().quit()
	if event.is_action_released("ui_accept"):
		emit_signal("set_down", $target)
		print($player.location)