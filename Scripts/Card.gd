extends Node2D

@export var card_name: String = "Card Name"
@export var damage_amount: int = 5
@export var element: String = "Fire"
@export var durability: int = 1
@export var cooldown: int = 3
@export var discard: String = "More damage"
@export var card_image: Node2D

@onready var durability_lbl: Label = $DurabilityDisplay/DurabilityLbl
@onready var name_lbl: Label = $CardName/NameLbl
@onready var damage_lbl: Label = $CardDamage
@onready var cooldown_timer = $Cooldown
@onready var Cards = preload("res://Scripts/cards.gd")
var isOnCooldown = false


func _ready():
	#set_card_values(card_name, damage_amount, element, durability, cooldown, discard)
	visible = false
	
func set_card_values(card_name: String, damage_amount: int, element: String, durability: int, cooldown: int, discard: String):
	var card = Cards.new(card_name, damage_amount, element, durability, cooldown, discard)
	durability_lbl.set_text(str(card.durability))
	name_lbl.set_text(card.card_name)
	damage_lbl.set_text(str(card.damage_amount))
	cooldown_timer.start(card.cooldown)
	
func get_card_damage():
	return 6
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_cooldown_timeout():
	print("time's up")
	isOnCooldown = false



func _on_button_pressed():
	if not isOnCooldown:
		isOnCooldown = true
		cooldown_timer.start(3)
		BattleScene.do_damage(3)
		BattleScene.get_player_health()
