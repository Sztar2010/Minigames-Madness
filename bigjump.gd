extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		body.jump_force -= 400
		await get_tree().create_timer(3).timeout
		body.jump_force += 400
 
