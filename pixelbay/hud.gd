extends CanvasLayer

var zebraneMonety = 0;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$coincount.text = "Monety: " + str(zebraneMonety)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_coin_body_entered(body: Node2D) -> void:
	zebraneMonety += 1;
	$coincount.text = "Monety: " + str(zebraneMonety)
