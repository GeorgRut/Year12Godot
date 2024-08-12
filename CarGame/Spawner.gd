extends Node3D

@export var OBJECT : PackedScene
@export var random_gap : float
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var new_roo = OBJECT.instantiate()
	add_sibling(new_roo)
	new_roo.global_position = global_position
	new_roo.global_position.x += randi_range(-random_gap,random_gap) #add a random position to the roos on the road
