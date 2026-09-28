extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.set_collision_layer_value(1,false)
		body.set_collision_layer_value(2,true)
		
		body.set_collision_mask_value(1,false)
		body.set_collision_mask_value(2,true)
		body.z_index = 1
		
