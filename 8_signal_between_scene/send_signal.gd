extends Node2D

signal my_signal(int,String)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	# signalを接続
	#var target=get_node("/root/SignalBetweenScene/receive_signal")
	var target=$"../receive_signal"
	connect("my_signal",target._on_my_signal)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	
	# signalを発信
	emit_signal("my_signal",11,"Hello")
	
	print("emit")
	


func _on_button_change_scene_pressed() -> void:
	pass # Replace with function body.
