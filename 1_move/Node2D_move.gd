extends Node2D

var speed=400 #move speed(ピクセル/sec)
var screen_size:Vector2      #screen size


# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size=get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	# create velocity
	var velocity:Vector2=Vector2()

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
