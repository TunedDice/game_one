extends Control

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/level_menu.tscn")


func _on_options_pressed():
	get_tree().change_scene_to_file("res://Scenes/options_menu.tscn")


func _on_help_pressed():
	get_tree().change_scene_to_file("res://Scenes/help_menu.tscn")


func _on_exit_pressed():
	get_tree().quit()




