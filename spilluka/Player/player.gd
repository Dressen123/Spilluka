extends CharacterBody2D


const speed = 300.0
const jumpVelocity = -400.0


func _physics_process(delta: float) -> void:

	movement()
	jump(delta)
	


func jump(delta):

	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = jumpVelocity


func movement():
	
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)



	


	move_and_slide()
