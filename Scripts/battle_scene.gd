extends Node2D

@onready var card_scene = preload("res://Scenes/card.tscn")
@onready var spawn_point = $Spawn

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var card = card_scene.instantiate()
	spawn_point.add_child(card)
	card.set_card_values("cool card", 5, "water", 3, 9, "discard ability")
	card.visible = true




func _on_button_2_pressed():
	var card = card_scene.instantiate()
	spawn_point.add_child(card)
	card.set_card_values("awesome card", 8, "water", 1, 2, "discard damage")
	card.visible = true
