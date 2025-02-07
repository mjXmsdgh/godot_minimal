extends CanvasLayer

var score:int=0
@onready var score_label:=$ScoreLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_score(new_score: int) -> void:
	score=new_score
	score_label.text="Score: "+str(score)
