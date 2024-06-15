extends Node

signal add_friend(friend)

@onready var friend = load("res://scenes/friend.tscn")
@onready var player = $"../Player"
# Called when the node enters the scene tree for the first time.
func _ready():   
	var temp = friend.instantiate()
	print(player.position) 
	temp.position = Vector2(player.position.x - 20, player.position.y)
	temp.set_player(player)        
	add_child(temp)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_game_manager_add_friend(friend):
	pass # Replace with function body.
