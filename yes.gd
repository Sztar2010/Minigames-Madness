extends Button


func _on_pressed() -> void:
	get_parent().get_parent().get_parent().get_node("CharacterBody2D").get_node("ColorRect").visible = true
	get_parent().get_parent().queue_free()
