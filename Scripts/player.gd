extends CharacterBody2D

@export var max_health: int = 20
var current_health = max_health

@export var speed = 400


func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func update_health(damage: int):
	if (current_health - damage < 0):
		return 0
	else:
		return current_health - damage

func _physics_process(delta):
	get_input()
	move_and_slide()
