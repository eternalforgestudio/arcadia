extends NodeState

@export var player: CharacterBody2D
@export var character_animated_sprite: AnimatedSprite2D
@export var outfit_animated_sprite: AnimatedSprite2D
@export var hair_animated_sprite: AnimatedSprite2D

func _on_physics_process(_delta: float) -> void:
	if player.direction == Vector2.UP:
		character_animated_sprite.play("idle_back")
		outfit_animated_sprite.play("idle_back")
		hair_animated_sprite.play("idle_back")
	elif player.direction == Vector2.DOWN:
		character_animated_sprite.play("idle_front")
		outfit_animated_sprite.play("idle_front")
		hair_animated_sprite.play("idle_front")
	elif player.direction == Vector2.LEFT:
		character_animated_sprite.play("idle_left")
		outfit_animated_sprite.play("idle_left")
		hair_animated_sprite.play("idle_left")
	elif player.direction == Vector2.RIGHT:
		character_animated_sprite.play("idle_right")
		outfit_animated_sprite.play("idle_right")
		hair_animated_sprite.play("idle_right")
	else:
		character_animated_sprite.play("idle_front")
		outfit_animated_sprite.play("idle_front")
		hair_animated_sprite.play("idle_front")

func _on_next_transition() -> void:
	GameInputEvents.movement_input()
	
	if GameInputEvents.is_movement_input():
		transition.emit("walk")

func _on_exit() -> void:
	character_animated_sprite.stop()
	outfit_animated_sprite.stop()
	hair_animated_sprite.stop()
