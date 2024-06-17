extends Node2D
#Make a generic card with all basic info
class_name Bcard

var damage_amount: int
var element: String
var card_name: String
var durability: int
var cooldown: int
var discard: bool
# this maybe be method instead var discard: int

# Constructor to initialize properties
func _init(damage_amount: int, element: String, card_name: String, durability: int, cooldown: int, discard: bool)-> void:
	self.damage_amount = damage_amount
	self.element = element
	self.card_name = card_name
	self.durability = durability
	self.cooldown = cooldown
	self.discard = discard
	
