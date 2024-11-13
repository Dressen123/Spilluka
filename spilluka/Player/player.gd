extends CharacterBody2D

<<<<<<< HEAD

const speed = 300.0
const jumpVelocity = -400.0

=======
const speed = 100.0
const jumpVelocity = -225.0
const customGravity = 700.0
const maxJumps = 2

var jumpCount = 0
>>>>>>> d3bce8c (.)

func _physics_process(delta: float) -> void:

	movement()
	jump(delta)
	


<<<<<<< HEAD
func jump(delta):

	if not is_on_floor():
		velocity += get_gravity() * delta
=======
func jump(delta): 
	if not is_on_floor():
		velocity.y += customGravity * delta
	else:
		jumpCount = 0
>>>>>>> d3bce8c (.)

	if Input.is_action_just_pressed("up") and jumpCount < maxJumps:
		velocity.y = jumpVelocity
		jumpCount += 1
		$jumpSound.play()  


func movement():
	
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * speed
		$animation.flip_h = direction > 0
	else:
		velocity.x = move_toward(velocity.x, 0, speed)



	


	move_and_slide()
