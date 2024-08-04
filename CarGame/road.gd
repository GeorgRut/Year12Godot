extends Node3D

var length = 60
var distance_moved = 0
var speed = 10

func _process(delta):
	var move = delta * speed
	translate(transform.basis.z * move )
	distance_moved += move
	if distance_moved >= 60:
		global_position = Vector3.ZERO
		distance_moved = 0
	print(global_position)
