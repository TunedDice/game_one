extends CanvasLayer

@onready var pause_menu = $pause_menu
@onready var paused = false

func _ready():
	pause_menu.hide()

func _process(delta):
	if Input.is_action_just_pressed("esc"):
		pauseMenu()
		
func pauseMenu():
	if paused: 
		pause_menu.hide()
		Engine.time_scale = 1
	else: 
		pause_menu.show()
		Engine.time_scale = 0
	
	paused = !paused
