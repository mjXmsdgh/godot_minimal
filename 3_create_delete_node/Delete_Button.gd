extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Delete_Button_pressed():

	# get 'Main' node
	var parent_node=get_parent()

	# get 'Main' node's children node
	var children_array=parent_node.get_children()

	for item in children_array:

		var temp_class_name=item.get_class()

		# if class is not button,then delete node

		if temp_class_name.find("Button")<0:
			print("delete node : name=",item.name)
			item.queue_free()
			
