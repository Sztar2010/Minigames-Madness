extends "res://node_2d.gd"


func _on_texture_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://cooking.tscn")
