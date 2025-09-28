extends CharacterBody2D
var SPEED = 30

func _ready() -> void:
	return
	
func _physics_process(_delta: float) -> void:
		var direction
		direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
		velocity = direction * SPEED + get_gravity()
		move_and_slide()


func _on_finish_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Finish.tscn")




func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Beállítások.tscn")
	
