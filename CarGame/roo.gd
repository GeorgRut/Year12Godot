extends Area3D

@export var speed : float = 30

func _physics_process(delta: float) -> void:
	var move = speed * delta
	translate(transform.basis.z * move )


func _on_body_entered(body: Node3D) -> void:
	if body.name == "BUS":
		reset_scene()

func reset_scene():
	# You can use get_tree().reload_current_scene() to reset the current scene
	get_tree().reload_current_scene()
