extends CharacterBody2D

const SPEED = 80

@export var player: CharacterBody2D
@export var follow_dist: float  # Editable from the Inspector

func _physics_process(delta):
	velocity = position.direction_to(player.position - Vector2(follow_dist, Vector2.AXIS_Y)) * SPEED
	move_and_slide()
	pass

func set_player(player_body):    
	player = player_body
