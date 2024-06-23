extends Area2D

var char_name : String = "blue_slime"
var lvl : int = 1

func _ready():
	pass
	

func _on_body_entered(body):
	if body.is_in_group("player"):
		event_handler.emit_signal("battle_started", char_name , lvl)
