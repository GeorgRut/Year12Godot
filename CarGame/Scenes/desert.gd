extends Node3D

var models
# Called when the node enters the scene tree for the first time.
func _ready():
	models = get_children()
	for model in models:
		model.visible = false
	models.pick_random().visible = true




@export var speed : float = 30

func _physics_process(delta: float) -> void:
	var move = speed * delta
	translate(transform.basis.z * move )
