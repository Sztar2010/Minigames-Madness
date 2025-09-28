extends CharacterBody2D
const SPEED = 300

	
func _physics_process(_delta: float) -> void:
		velocity = Vector2(1.0,0.0) * SPEED + get_gravity()
		move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Gamemode.tscn")
