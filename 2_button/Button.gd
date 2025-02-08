extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Button_button_up():
	set_text("click me!")

func _on_Button_button_down():
	set_text("pressed")
