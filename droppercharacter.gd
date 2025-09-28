extends CharacterBody2D

# Sebességek beállítása
@export var speed: float = 200.0
@export var jump_force: float = -400.0
@export var gravity: float = 900.0
var startpos : Vector2
var boost_timer = 0

func _physics_process(delta: float) -> void:
	# gravitáció hozzáadása
	if not is_on_floor():
		velocity.y += gravity * delta

	# vízszintes mozgás (balra-jobbra)
	var direction := Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.x = direction * speed

	# ugrás
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jump_force
	

	# mozgás alkalmazása
	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	position = startpos
	return	


func _on_respawndropper_body_entered(body: Node2D) -> void:
	position = startpos
	return



func _on_sacrifice_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Runsacrifice.tscn")
	
