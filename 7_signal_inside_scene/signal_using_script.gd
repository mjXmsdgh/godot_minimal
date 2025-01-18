extends Button

signal my_signal

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	# signalを接続
	var target=$"../receive_script_signal"
	connect("my_signal",target._on_receive_signal)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:

	# signalを発信
	emit_signal("my_signal")
