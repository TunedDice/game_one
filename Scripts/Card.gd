class_name Card extends Node2D

@export var card_name: String = "Card Name"
@export var card_description: String = "Card Description"
@export var card_uses: int = 1
@export var card_image: Node2D

@onready var uses_lbl: Label = $DurabilityDisplay/DurabilityLbl
@onready var name_lbl: Label = $CardName/NameLbl
@onready var description_lbl: Label = $CardDescription


func _ready():
	set_card_values(card_uses, card_name, card_description)
	visible = false
	
func set_card_values(_uses: int, _name: String, _description: String):
	card_name = _name
	card_description = _description
	card_uses = _uses
	
	
	uses_lbl.set_text(str(_uses))
	name_lbl.set_text(_name)
	description_lbl.set_text(_description)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

