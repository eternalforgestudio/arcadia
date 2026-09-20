extends AnimationPlayer  

# Keep track of the last score level where speed was increased
var last_speed_milestone: int = 0

func _ready() -> void:
	speed_scale = GameManager.hoop_speed_scale


func _process(_delta: float) -> void:
	# Check if the score reached a new multiple of 5 (and isn't 0)
	var current_score: int = GameManager.score
	
	if current_score > 0 and current_score % 5 == 0:
		var target_speed: float = pow(1.0 / 0.9, current_score / 5)
		
		if GameManager.hoop_speed_scale != target_speed:
			GameManager.hoop_speed_scale = target_speed
			speed_scale = target_speed
			print("Persisted Speed Scale: ", speed_scale)
