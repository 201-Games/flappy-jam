extends Node

@onready var pipe_easy = [load("res://scenes/pipe-easy.tscn"), 10, -50]
@onready var pipe_medium = [load("res://scenes/pipe-medium.tscn"), 10, -60]
@onready var pipe_hard = [load("res://scenes/pipe-hard.tscn"), 10, -70]
@onready var start_position = $StartPosition
@onready var timer = $Timer

func instatiate_new_pipe(pipe, min_height, max_height):
	var new_pipe = pipe.instantiate()
	new_pipe.position.x  = start_position.position.x
	new_pipe.position.y = randi_range(min_height, max_height)
	add_child(new_pipe)

func _on_timer_timeout():
	instatiate_new_pipe(pipe_hard[0], pipe_hard[1], pipe_hard[2])
