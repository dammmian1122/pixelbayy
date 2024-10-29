extends Area2D

func _on_Coin_body_entered(body):
	if body.is_in_group("player"):
		get_tree().get_root().get_node("Player/Camera2D/GameUI").add_score()
		queue_free()
