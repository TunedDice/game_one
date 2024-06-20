extends Node2D

@onready var speed = 50
# Called when the node enters the scene tree for the first time.
func _ready():


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _phyics_process(delta):
	pass


func anything():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	var velocity = input_direction * speed
	
