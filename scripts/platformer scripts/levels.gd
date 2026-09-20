extends Node2D

@export_file("*.tscn") var home_scene_path: String = "res://scenes/arcade.tscn"



func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel") and home_scene_path != "":
		get_tree().call_deferred("change_scene_to_file", home_scene_path)
