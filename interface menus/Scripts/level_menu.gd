extends Control

func _input(event): #sends user back to main menu
	if Input.is_action_just_pressed("esc"):
		get_tree().change_scene_to_file("res://Scenes/start/main_menu.tscn")

func _on_easy_pressed():
	easyMode()


func _on_medium_pressed():
	normalMode()


func _on_hard_pressed():
	hardMode()


func easyMode():
	#sets player card size to 7. enemies to 3(?)
	#do the easy mode settings slay
	get_tree().change_scene_to_file("res://Scenes/game_here.tscn")
	
func normalMode():
	#sets player card size to 5. enemies to 5(?)
	#do the normal mode settings slay
	get_tree().change_scene_to_file("res://Scenes/game_here.tscn")
	
func hardMode():
	#sets player card size to 3. enemies to 7(?)
	#do the hard mode settings slay
	get_tree().change_scene_to_file("res://Scenes/game_here.tscn")
	

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/start/main_menu.tscn")
