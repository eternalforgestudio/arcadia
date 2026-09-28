extends Area2D

@onready var game_over_panel: Control = $"../CanvasLayer2/GameOverPanel"

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		print(BasketballGameManager.has_scored)
		
		if BasketballGameManager.has_scored:
			BasketballGameManager.has_scored = true
			get_tree().call_deferred("reload_current_scene")
		else:
			game_over_panel.visible = true
			print("Game Over")
				
		
		
