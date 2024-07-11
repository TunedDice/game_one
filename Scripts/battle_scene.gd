extends Node2D

@onready var card_scene = preload("res://Scenes/card.tscn")
@onready var spawn_point = $Spawn
@onready var spawn_point2 = $Spawn2
@onready var player = $Player/CharacterBody2D
@onready var p_health = $PlayerHealth
var player_object


func _ready():
	player_object = preload("res://Scripts/player_battle.gd").new(40)
	add_child(player_object)
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func get_player_health():
	var health = str(player_object.get_health())
	print(health)
	#p_health.set_text(health)

func do_damage(damage: int):
	player_object.take_damage(damage)


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

