extends Area2D

@export_file("*.tscn") var level_five_path: String = "res://scenes/platformer scenes/level_five.tscn"



func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().call_deferred("change_scene_to_path", level_five_path)
