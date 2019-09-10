extends Spatial

# Declare member variables here. Examples:
# var a = 2
var move = Vector3()
var speed = 50
# Called when the node enters the scene tree for the first time.
#func _ready():

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		move.y += speed
	if Input.is_action_pressed("ui_down"):
		move.y += -speed	
	if Input.is_action_pressed("ui_right"):
		move.x += speed
	if Input.is_action_pressed("ui_left"):
		move.x += -speed
		
	self.translate(move * delta)
	move = Vector3(0,0,0)
