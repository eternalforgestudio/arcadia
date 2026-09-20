extends Node2D

@export_file("*.tscn") var home_scene_path: String = "res://scenes/arcade.tscn"


func _ready() -> void:
	GameManager.has_scored = false


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel") and home_scene_path != "":
		get_tree().call_deferred("change_scene_to_file", home_scene_path)

func _on_scoring_area_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		GameManager.score += 1
		GameManager.has_scored = true
		print("score is",GameManager.score)
		
		
