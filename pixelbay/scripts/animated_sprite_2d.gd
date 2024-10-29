extends AnimatedSprite2D



func _on_coin_body_entered(body: Node2D) -> void:
	print("+1 moneta!")
	queue_free()
