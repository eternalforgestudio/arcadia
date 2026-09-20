extends Node2D



@onready var tens_digit: Sprite2D = $TensDigit
@onready var ones_digit: Sprite2D = $OnesDigit

func _process(_delta: float) -> void: 
	var score: int = clampi(GameManager.score, 0, 99)
	ones_digit.frame = score % 10
	tens_digit.frame = score / 10 
	
