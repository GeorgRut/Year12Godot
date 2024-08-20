extends CharacterBody3D


const SPEED = 5.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

@onready var animation_player: AnimationPlayer = $Node3D/AnimationPlayer

func _physics_process(delta):
	# Add the gravity.

	# Handle jump.


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_axis("ui_left", "ui_right",)
	var direction = (transform.basis * Vector3(input_dir, 0, 0)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		# Check if input dir greater than 0 and if so, play the turn right animation
		if Input.is_action_pressed("ui_right"):
			animation_player.play("TurnRight")
		elif Input.is_action_pressed("ui_left"):
			animation_player.play("TurnLeft")

# Check if input dir less than 0 and if so, play the turn left animation


# Optional: Stop the animation if no input is detected


		
	else:
		velocity.x = move_toward(velocity.x, -5, SPEED)
		#play the straight animation
		

	move_and_slide()


func _on_timer_timeout():
	pass # Replace with function body.


func _on_area_3d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	pass # Replace with function body.


func _on_outofbounds_body_entered(body):
	pass # Replace with function body.
