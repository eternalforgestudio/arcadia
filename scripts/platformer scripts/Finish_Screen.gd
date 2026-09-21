extends CanvasLayer

@export_file("*.tscn") var level_one_path: String = "res://scenes/platformer scenes/level_one.tscn"
@export_file("*.tscn") var home_scene_path: String = "res://scenes/arcade.tscn"
	


func _on_playagain_pressed() -> void:
		get_tree().call_deferred("change_scene_to_file",level_one_path)



func _on_home_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", home_scene_path)
