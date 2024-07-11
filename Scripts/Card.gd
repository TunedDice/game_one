extends Node2D


#random number generator
var rng = RandomNumberGenerator.new()


#this sets up the sprites/nodes
@export var card_image: Node2D
@onready var durability_lbl: Label = $DurabilityDisplay/DurabilityLbl
@onready var name_lbl: Label = $CardName/NameLbl
@onready var damage_lbl: Label = $CardDamage
@onready var effects_lbl: Label = $CardEffect
@onready var card_data_template = preload("res://Scripts/card_data.gd")


#godot expects this (think so??)
func _ready():
	visible = false
	
	
#loads the card info onto the card
#only needs to load type and name (both strings) to get all info
func load_card(card_name: String, card_type: String): 
	var filepath = "res://Data/Cards/{file_type}cards.json".format({"file_type":card_type})
	#this is the database
	var content = JSON.parse_string(FileAccess.open(filepath, FileAccess.READ).get_as_text())
	#this pulls from the durability range thanks to our random generator above
	var min_durability = content[card_name]["durability"][0]
	var max_durability = content[card_name]["durability"][1]
	var generated_durability = rng.randi_range(min_durability, max_durability)
	
	
	#calling card data
	var this_card_data = card_data_template.new(
		card_name, 
		content[card_name]["damage"], 
		card_type, 
		generated_durability, 
		content[card_name]["cooldown"], 
		content[card_name]["discard"],
		content[card_name]["effects"]
		)
	
	#this actually attaches text to card labels
	durability_lbl.set_text(str(this_card_data.durability))
	name_lbl.set_text(this_card_data.card_name)
	damage_lbl.set_text(str(this_card_data.damage_amount))
	
	
	#prints out effects to card
	var effects_lbl_string = ""
	#loops through the effects
	for inner_string in this_card_data.effects:
		effects_lbl_string += inner_string + "\n"
	effects_lbl.text = effects_lbl_string.trim_suffix("\n")
		
	
#called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

