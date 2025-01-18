extends Node2D

var scene=load("res://1_move//Node2D_move.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var red_sq=scene.instantiate()

	add_child(red_sq)

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
