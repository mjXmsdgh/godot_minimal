extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text="enter"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	$Label.text="exit!"


func _on_visible_on_screen_notifier_2d_screen_entered() -> void:
	$Label.text="enter!"
