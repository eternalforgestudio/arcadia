extends Node

var score: int = 0
var high_score: int = 0
var has_scored: bool = false
var hoop_speed_scale: float = 1.0  # Store speed scale globally

func reset_game() -> void:
	score = 0
	hoop_speed_scale = 2.0
