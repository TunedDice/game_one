extends Control

@onready var main = $"../.."

func _input(event): #sends user back to main menu
	pass

func _on_back_pressed():
	main.options_menu_ingame.hide()
