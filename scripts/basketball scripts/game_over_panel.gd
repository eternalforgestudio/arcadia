extends Control

@export_file("*.tscn") var home_scene_path: String = "res://scenes/arcade.tscn"




func _on_play_again_pressed() -> void:
	GameManager.score = 0
	GameManager.has_scored = 0
	GameManager.hoop_speed_scale = 1.0
	get_tree().call_deferred("reload_current_scene")




func _on_home_pressed() -> void:
	GameManager.score = 0
	GameManager.has_scored = 0
	GameManager.hoop_speed_scale = 1.0
	if home_scene_path != "":
		get_tree().call_deferred("change_scene_to_file", home_scene_path)
