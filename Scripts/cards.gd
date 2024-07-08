extends Node
class_name Cards

var card_name: String
var damage_amount: int
var element: String
var durability: int
var cooldown: int
var discard: String




func _init(card_name: String, damage_amount: int, element: String, durability: int, cooldown: int, discard: String)-> void:
		self.card_name = card_name
		self.damage_amount = damage_amount
		self.element = element
		self.durability = durability
		self.cooldown = cooldown
		self.discard = discard

func get_damage():
	return self.damage_amount
