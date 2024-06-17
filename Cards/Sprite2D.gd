extends Sprite2D

var card1

func _ready():
	card1 = Bcard.new(10, "Fire", "Fireball", 3, 6, false) #damage_amount, element, card_name, durability, cooldown, discard
	$Labelname.text = card1.card_name #+ card1.element either use more labels or figure out spacing. IF I cchange a node name update $
	$Labelelement.text = card1.element
	$Labeldamage.text = "Damage: " + str(card1.damage_amount)
	$Labeldurability.text = "Durability: " + str(card1.durability)
	$Labelcooldown.text = "Cooldown: " + str(card1.cooldown)
	#$Labeldiscard.text = "Discard: " + str(card1.discard) this should be seperate maybe a highlight button on card
