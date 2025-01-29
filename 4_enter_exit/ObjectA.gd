extends Area2D
signal hit
signal exit

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed=400
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size=get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# create velocity
	var velocity=Vector2()

	# input to velocity
	if Input.is_action_just_pressed("ui_right"):
		velocity.x+=1

	if Input.is_action_just_pressed("ui_left"):
		velocity.x-=1

	if Input.is_action_just_pressed("ui_down"):
		velocity.y+=1

	if Input.is_action_just_pressed("ui_up"):
		velocity.y-=1

	# get velocity
	if velocity.length()>0:
		velocity=velocity.normalized()*speed

	# move
	position+=velocity*delta

	# set position
	position.x=clamp(position.x,0,screen_size.x)
	position.y=clamp(position.y,0,screen_size.y)

func _on_ObjectA_area_entered(area):
	emit_signal("hit")
	
func _on_ObjectA_area_exited(area):
	emit_signal("exit")	
