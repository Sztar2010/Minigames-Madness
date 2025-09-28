extends Area2D


func _on_body_entered(body: Node2D) -> void:if body.name == "CharacterBody2D":  # vagy body.is_in_group("player")
		body.position = Vector2(-127, -949)  # az új hely
