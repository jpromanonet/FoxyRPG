extends KinematicBody2D

var velocity = Vector2.ZERO

func _physics_process(delta):
	# Move to the right
	if Input.is_action_pressed("ui_right"):
		velocity.x = 4
	# Move to the left
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -4
	# Move up
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -4
	# Move down
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 4
	# Stop sprite when stop pressing
	else:
		velocity.x = 0
		velocity.y = 0
		
	move_and_collide(velocity)
