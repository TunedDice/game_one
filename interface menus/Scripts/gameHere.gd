extends Node2D

@onready var pause_menu = $Camera2D/pause_menu
@onready var paused = false
@onready var options_menu_ingame = $Camera2D/options_menu_ingame


func _ready():
	pause_menu.hide()
	options_menu_ingame.hide()

func _process(delta):
	if Input.is_action_just_pressed("esc"): #outcomes for pressing esc, depends on if the options menu is visible
		if (options_menu_ingame.visible == true): #keeps game paused so we can go b/w pause and options menus
			options_menu_ingame.hide()
			pause_menu.show()
			
		elif (options_menu_ingame.visible == false): #unpauses so we can get back in game
			pauseMenu()
	
func pauseMenu():#may need to redo puasing mechanics (read somewhere that engine.time_scale isn't scalable '?')
	if paused: 
		pause_menu.hide()
		Engine.time_scale = 1
	else: 
		pause_menu.show()
		Engine.time_scale = 0
	
	paused = !paused
