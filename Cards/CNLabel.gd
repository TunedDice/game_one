extends Label

func _ready():
	var parent = get_parent()  
	var card1 = parent.card1   
	text = card1.card_name     
