extends TileMap

var positioner = position.y

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(position.y)
	while position.y < 250:	
		position.y = position.y + 0.5
		await get_tree().create_timer(0.01).timeout
		print(position.y)
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

	
	
