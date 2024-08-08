extends Node3D

const ROO = preload("res://roo.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var new_roo = ROO.instantiate()
	add_sibling(new_roo)
	new_roo.global_position = global_position
	new_roo.global_position.x += randi_range(-5,5) #add a random position to the roos on the road
