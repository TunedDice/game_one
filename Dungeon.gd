extends Node

@export var mapWidth = 10
@export var mapHeight = 10

@export var minRoomSize = 5
@export var maxRoomSize = 5

func _ready():
	Dungeongen.generate(self, mapWidth, mapHeight, minRoomSize, maxRoomSize) #calls the autoloaded script and seems better than global

#testing button
func _on_button_pressed():
	Dungeongen.generate(self, mapWidth, mapHeight, minRoomSize, maxRoomSize)
