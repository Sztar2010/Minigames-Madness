extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		body.speed += 300
		await get_tree().create_timer(3).timeout
		body.speed -= 300
