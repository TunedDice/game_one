extends Control

func _input(event): #sends user back to main menu
	if Input.is_action_just_pressed("esc"):
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	
func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	

