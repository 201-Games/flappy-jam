extends CharacterBody2D

func _on_area_2d_body_entered(body):
	print("hello player")
	queue_free()
	pass # Replace with function body.
