extends Area2D

@export_file("*.tscn") var level_three_path: String = "res://scenes/platformer scenes/level_three.tscn"

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().call_deferred("change_scene_to_file", level_three_path)
