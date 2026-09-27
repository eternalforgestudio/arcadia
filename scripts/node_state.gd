class_name NodeState
extends Node

var gender: String = "female"
var skin_tone: String = "white"
var hair_color: String = "brown"
var outfit_name: String = "gold"

@warning_ignore("unused_signal")
signal transition

func _on_process(_delta: float) -> void:
	pass

func _on_physics_process(_delta: float) -> void:
	pass

func _on_next_transition() -> void:
	pass

func _on_enter() -> void:
	pass

func _on_exit() -> void:
	pass
