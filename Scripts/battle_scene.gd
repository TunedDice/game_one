extends Node2D

@onready var card_scene: PackedScene = preload("res://Scenes/card.tscn")
@onready var spawn_point = $Spawn

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var card: Card = card_scene.instantiate()
	spawn_point.add_child(card)
	card.set_card_values(3, "cool card", "cool description")
	card.visible = true




func _on_button_2_pressed():
	var card: Card = card_scene.instantiate()
	spawn_point.add_child(card)
	card.set_card_values(5, "awesome card", "swag description")
	card.visible = true
