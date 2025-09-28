extends TextureButton


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Beállítások.tscn")


func _on_backhungarymenu_pressed() -> void:
	get_tree().change_scene_to_file("res://Settingmenü.tscn")
