extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var first_scene=preload("res://5_change_scene//first_scene_blue.tscn")
var second_scene=preload("res://5_change_scene//second_scene_green.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene_to(first_scene)

	
func _on_Button_to_second_pressed():
	get_tree().change_scene_to(second_scene)

