extends Node
class_name Player

var health: int = 20

func _init(health: int):
	self.health = health

func take_damage(damage: int):
	if (self.health - damage < 0):
		self.health = 0
	else:
		self.health = self.health - damage
	return self.health

func get_health():
	return self.health
