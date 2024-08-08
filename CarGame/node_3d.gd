extends CharacterBody3D


const SPEED = 5.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta):
	# Add the gravity.

	# Handle jump.


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_axis("ui_left", "ui_right",)
	var direction = (transform.basis * Vector3(input_dir, 0, 0)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		

	move_and_slide()


func _on_timer_timeout():
	pass # Replace with function body.
