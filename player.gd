extends Spatial

# Declare member variables here. Examples:
var down = Vector3(0,-10,0)
const cam_rotation_speed = 0.2

func _on_set_down(d: Spatial):
	down = d

func _process(delta):
	self.look_at(down.get_translation(),Vector3(0,1,0))
		
func _on_rotate_view(rot: Vector3):
	$body/head/view.rotate_x(deg2rad(rot.x * cam_rotation_speed))
	$body/head.rotate_y(deg2rad(rot.y * cam_rotation_speed))
		