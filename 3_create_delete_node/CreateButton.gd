extends Button

var scene=load("res://1_move//Node2D_move.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Button_pressed():

	# create node
	var red_sq=scene.instantiate()

	# print name
	print("create node : name=",red_sq.name)
	
	# get button parent 　in other word get 'Main'
	var parent=get_parent()

	# add node to 'Main'
	parent.add_child(red_sq)
