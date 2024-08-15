extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


@export var speed : float = 30

func _physics_process(delta: float) -> void:
	var move = speed * delta
	translate(transform.basis.z * move )
