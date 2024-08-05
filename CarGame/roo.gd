extends Area3D

@export var speed : float = 1.0

func _physics_process(delta: float) -> void:
	translate(Vector3(0, 0, -speed * delta))
