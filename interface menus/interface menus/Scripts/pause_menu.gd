extends Control

@onready var main = $"../../.."
@onready var options = $MarginContainer/VBoxContainer/Options


func _on_resume_pressed():
	main.pauseMenu()


func _on_options_pressed():
	main.options_menu_ingame.show()


func _on_help_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().change_scene_to_file("res://Scenes/start/main_menu.tscn")
	
	
