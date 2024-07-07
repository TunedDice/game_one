extends Control

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/start/level_menu.tscn")


func _on_options_pressed():
	get_tree().change_scene_to_file("res://Scenes/options/options_menu.tscn")


func _on_help_pressed():
	get_tree().change_scene_to_file("res://Scenes/help_menu.tscn")
	get_tree().change_scene_to_file("res://Scenes/start/help_menu.tscn")

func _on_exit_pressed():
	get_tree().quit()




