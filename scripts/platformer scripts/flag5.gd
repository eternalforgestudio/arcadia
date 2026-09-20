extends Area2D

@export_file("*.tscn") var last_scene_path: String = "res://scenes/platformer scenes/finish_screan.tscn"




func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().call_deferred("change_scene_to_path", last_scene_path)
