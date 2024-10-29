extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("nie zyjesz")
	# Tworzenie i konfiguracja AudioStreamPlayer
	var death_sound = AudioStreamPlayer.new()
	death_sound.stream = load("res://assets/spirites/sounds/myinstants.mp3")  # Zmień ścieżkę na swoją
	
	# Dodajemy odtwarzacz do sceny i odtwarzamy dźwięk
	add_child(death_sound)
	death_sound.play()
	
	timer.start()
	

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
