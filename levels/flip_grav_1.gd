extends Area2D

func _on_body_entered(body):
	if body.is_in_group("player"):
		body.gravity *= -1
		body.jump_velocity *= -1
		body.get_node("Sprite2D").scale.y *= -1
		body.velocity.y = -1
