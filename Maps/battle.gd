extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	$background.visible = false
	event_handler.connect("battle_started", self.init)
	pass

func init(char_name, lvl):
	visible = true
	$AnimationPlayer.play("fade_in")
	get_tree().paused = true
	$background/Panel/Label.text = "A wild %s lvl %s appears" %[char_name, lvl]
	pass


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "fade_in":
		$AnimationPlayer.play("fade_out")
		$background.visible = true
		$background/Panel/fight_buton.grab_focus()
	pass # Replace with function body.




func _on_run_button_pressed():
	get_tree().paused = false
	visible = false
	$background.visible = false
	
	
	pass # Replace with function body.


func _on_fight_buton_pressed():
	$background/Panel/Label.text = "You can't battle"
	pass # Replace with function body.
