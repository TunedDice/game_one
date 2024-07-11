extends Resource 
class_name CardData


#defining the variables in card
@export var card_name: String 
@export var damage_amount: int
@export var element: String 
@export var durability: int
@export var cooldown: int
@export var discard: String 
@export var effects: Array


#constructor that passes in values and saves to itself
func _init(
	input_card_name: String, 
	input_damage_amount: int, 
	input_element: String, 
	input_durability: int, 
	input_cooldown: int, 
	input_discard: String,
	input_effects: Array
)-> void:
	
	#this is the saving part	
	self.card_name = input_card_name
	self.damage_amount = input_damage_amount
	self.element = input_element
	self.durability = input_durability
	self.cooldown = input_cooldown
	self.discard = input_discard
	self.effects = input_effects
	
	
func add_durability():
	pass

func subtract_durability():
	pass
