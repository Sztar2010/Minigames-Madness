extends CharacterBody2D
const SPEED = 300

func _ready() -> void:
	return
	
func _physics_process(_delta: float) -> void:
		if (get_parent().get_child_count() == 4):
			get_tree().change_scene_to_file("res://Finish.tscn")
		print(get_parent().get_child_count())
		var direction
		direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
		velocity = direction * SPEED 
		move_and_slide()
