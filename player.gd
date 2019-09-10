extends Spatial

onready var head = get_node("body/head")
onready var view = get_node("body/head/view")
onready var body = get_node("body")

var down = Vector3(0,-10,0)
var velocity = Vector3()

const cam_rotation_speed = 0.2

func get_player_rotation():
	return Vector3(view.get_rotation().x,head.get_rotation().y,body.get_rotation().z)

func _on_set_down(d: Spatial):
	down = d
	self.look_at(down.get_translation(),Vector3(0,1,0))

func _on_rotate_view(rot: Vector3):
	view.rotate_x(deg2rad(rot.x * cam_rotation_speed))
	head.rotate_y(deg2rad(rot.y * cam_rotation_speed))
	body.rotate_z(deg2rad(rot.z * cam_rotation_speed))
		
func _physics_process(delta):
	print(get_player_rotation())