extends Area3D

@export var speed : float = 30

func _physics_process(delta: float) -> void:
	var move = speed * delta
	translate(transform.basis.z * move )
