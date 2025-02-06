extends Node2D
var speed=800 #move speed

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# create velocity
	var velocity=Vector2()

	# input to velocity
	#if Input.is_action_just_pressed("ui_right"):
	if Input.is_action_pressed("ui_right"):
		velocity.x+=1

	if Input.is_action_pressed("ui_left"):
		velocity.x-=1

	if Input.is_action_pressed("ui_down"):
		velocity.y+=1

	if Input.is_action_pressed("ui_up"):
		velocity.y-=1

	# get velocity
	if velocity.length()>0:
		velocity=velocity.normalized()*speed

	# move
	position+=velocity*delta
