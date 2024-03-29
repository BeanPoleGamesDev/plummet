extends Spatial

onready var view = get_node("view")

var down : Vector3
var velocity : Vector3
export var fall_speed: = 20
export var move_speed: = 40
var current_rotation : Vector3

export var cam_rotation_speed = 0.1
const cam_limit = Vector2(85,85)
	
func _on_set_down(d: Spatial):
	down = d.get_translation()
	self.look_at(down,Vector3(0,1,0))

func _on_rotate_view(rot: Vector3):
	var added_rotation : Vector3
	var r : Vector3
	current_rotation = view.get_rotation_degrees()
	added_rotation = rot * cam_rotation_speed
	r.x = clamp(current_rotation.x + added_rotation.x, -cam_limit.x, cam_limit.x) 
	r.y = clamp(current_rotation.y + added_rotation.y, -cam_limit.y, cam_limit.y) 
	view.set_rotation_degrees(r)
	
func _physics_process(delta):
	velocity.y = move_speed * view.get_rotation().x
	velocity.x = move_speed * -view.get_rotation().y
	velocity.z = -fall_speed 
	self.translate_object_local(velocity * delta)
	
func _on_object_collision(area: Area):
	pass

func kill()->void:
	print("player died")
	get_tree().reload_current_scene()

func _on_hurt_box_area_entered(area: Area)->void:
	self.kill()

func _on_goal_box_area_entered(area: Area)->void:
	print("point!")
