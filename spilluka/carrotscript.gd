extends Node2D

# Preload the item scene
var CarrotScene = preload("res://carrot2.tscn") # Adjust path to match your item scene

# Spawning area boundaries
export (int) var spawn_area_width = 1000  # Width of the spawn area
export (int) var spawn_area_height = 500  # Height of the spawn area

# Time between spawns
export (float) var spawn_interval = 2.0  # Spawn every 2 seconds

# Timer for spawning
var spawn_timer = 0.0

func _ready():
	# Initialize the spawn timer
	spawn_timer = spawn_interval

func _process(delta):
	# Update the spawn timer
	spawn_timer -= delta
	if spawn_timer <= 0:
		# Reset the timer
		spawn_timer = spawn_interval
		# Spawn an item
		spawn_item()

func spawn_item():
	# Create an instance of the item
	var carrot_instance = CarrotScene.instance()
	
	# Set a random position within the defined spawn area
	carrot_instance.position = Vector2(
		randf_range(0, spawn_area_width),
		randf_range(0, spawn_area_height)
	)
	
	# Add the item to the scene tree as a child of the spawner
	add_child(carrot_instance)
