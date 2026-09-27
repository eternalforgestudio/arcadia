extends NodeState

@export var player: CharacterBody2D
@export var character_animated_sprite: AnimatedSprite2D
@export var outfit_animated_sprite: AnimatedSprite2D
@export var hair_animated_sprite: AnimatedSprite2D
@export var speed: int = 60

func _on_physics_process(_delta: float) -> void:
	var direction: Vector2 = GameInputEvents.movement_input()
	
	if direction == Vector2.UP:
		character_animated_sprite.play(gender + "_" + skin_tone + "_walk_back")
		outfit_animated_sprite.play(outfit_name + "_walk_back")
		hair_animated_sprite.play(hair_color + "_walk_back")
	elif direction == Vector2.DOWN:
		character_animated_sprite.play(gender + "_" + skin_tone + "_walk_front")
		outfit_animated_sprite.play(outfit_name + "_walk_front")
		hair_animated_sprite.play(hair_color + "_walk_front")
	elif direction == Vector2.LEFT:
		character_animated_sprite.play(gender + "_" + skin_tone + "_walk_left")
		outfit_animated_sprite.play(outfit_name + "_walk_left")
		hair_animated_sprite.play(hair_color + "_walk_left")
	elif direction == Vector2.RIGHT:
		character_animated_sprite.play(gender + "_" + skin_tone + "_walk_right")
		outfit_animated_sprite.play(outfit_name + "_walk_right")
		hair_animated_sprite.play(hair_color + "_walk_right")
	if direction != Vector2.ZERO:
		player.direction = direction
	
	player.velocity = direction * speed
	player.move_and_slide()

func _on_next_transition() -> void:
	if not GameInputEvents.is_movement_input():
		transition.emit("idle")

func _on_exit() -> void:
	character_animated_sprite.stop()
	outfit_animated_sprite.stop()
	hair_animated_sprite.stop()
