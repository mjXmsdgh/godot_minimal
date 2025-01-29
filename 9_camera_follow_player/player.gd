extends CharacterBody2D
# プレイヤーの移動速度
var speed = 200

func _process(delta):
	var velocity = Vector2()
	
	# 矢印キーの入力を検出
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		
	# 移動速度を適用
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	# velocityをCharacterBody2Dに設定
	self.velocity = velocity  #  <- これが重要
	
	# move_and_slide() メソッドの呼び出し (引数なし)
	move_and_slide()
