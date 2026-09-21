extends Node


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		if get_tree().current_scene.name != "Arcade":
			get_tree().change_scene_to_file("res://scenes/arcade.tscn")
