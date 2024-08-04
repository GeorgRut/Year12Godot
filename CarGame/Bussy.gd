extends Spatial 

# Speed of the bus
var speed = 5.0

# Direction of movement (1 for right, -1 for left)
var direction = 1

func _physics_process(delta):
	# Move the bus horizontally (along the X-axis)
	translate(Vector3(speed * delta * direction, 0, 0))
	
	# Check if the bus is reaching the edge of the road
	if position.x > 10:  # Adjust 10 to the maximum X-coordinate of your road
		direction = -1
	elif position.x < -10:  # Adjust -10 to the minimum X-coordinate of your road
		direction = 1
