extends Button

var scene=load("res://1_move//Node2D_move.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Button_pressed():

	# create node
	var red_sq=scene.instantiate()

	# print name
	print("create node : name=",red_sq.name)

	
	# get button parent 　in other word get 'Main'
	var parent=get_parent()

	# add node to 'Main'
	parent.add_child(red_sq)

	