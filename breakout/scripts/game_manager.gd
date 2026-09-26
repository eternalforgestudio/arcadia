extends Node

var score = 0 # player's score
var level = 1 #player's current level

# add points to score (called from elsewhere)
func addPoints(points):
	score += points
func _process(delta: float) -> void:
	if get_tree().current_scene:
		if get_tree().current_scene.name != "Level":
			$CanvasLayer/ScoreLabel.hide()
			$CanvasLayer/LevelLabel.hide()
		else:
			$CanvasLayer/ScoreLabel.show()
			$CanvasLayer/LevelLabel.show()
		
	# update GUI with new score
	$CanvasLayer/ScoreLabel.text = str(score)
	$CanvasLayer/LevelLabel.text = "Level: "+str(level)
