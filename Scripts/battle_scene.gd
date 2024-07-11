extends Node2D

#obtaining the card data for the battle
@onready var card_scene = preload("res://Scenes/card.tscn")
@onready var spawn_point = $Spawn


#gdscript wants this?
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


#this is just a sample card
func _on_button_pressed():
	var card = card_scene.instantiate()
	spawn_point.add_child(card)
	card.load_card("Scorch Ray", "fire")
	card.visible = true

#this is also just a sample card
func _on_button_2_pressed():
	var card = card_scene.instantiate()
	spawn_point.add_child(card)
	card.load_card("Smog", "fire")
	card.visible = true
