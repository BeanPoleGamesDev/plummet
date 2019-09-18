extends Area

func break()->void:
	pass

func _on_obstacle_area_entered(area: Area)->void:
	self.break()
