extends Area3D

# This function is called when something enters the Area3D
func _on_area_shape_entered(area_id: int, area: Area3D, local_shape: int, shape: int):
	# Assuming 'Bus' is the name of your bus scene or object
	if area.name == "BUS":
		reset_scene()

# Function to reset the scene
func reset_scene():
	# You can use get_tree().reload_current_scene() to reset the current scene
	get_tree().reload_current_scene()


func _on_body_entered(body):
	if body.name == "BUS":
		reset_scene()
