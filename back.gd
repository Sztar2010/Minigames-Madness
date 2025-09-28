extends TextureButton


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://menü.tscn")


func _on_languagechange_pressed() -> void:
	get_tree().change_scene_to_file("res://SettingsHUn.tscn")
