extends TextureButton




func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://SettingsHUn.tscn")


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Gamemode.tscn")
