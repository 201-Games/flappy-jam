extends CharacterBody2D


const JUMP_VELOCITY = -220.0

var jump_click_required = 1
var jump_click = 0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta): 
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		jump_click += 1
		
		if(jump_click == jump_click_required):
			jump_click = 0
			velocity.y = JUMP_VELOCITY
	
	var is_colliding = move_and_slide()
	
	if(is_colliding):
		get_tree().reload_current_scene()
		print(is_colliding)
