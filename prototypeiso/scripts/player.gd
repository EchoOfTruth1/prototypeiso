#player
extends CharacterBody2D

#speed
const SPEED = 100.0

#movement
func movement():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * SPEED

#calling all functions!
func _physics_process(_delta: float) -> void:
	movement()
	animation()
	move_and_slide()
	
#handling animation
func animation():
	if velocity.y == 0 and velocity.y == 0:
		$AnimatedSprite2D.play("down")
	if Input.is_action_pressed("down"):
		$AnimatedSprite2D.play("down")
	if Input.is_action_pressed("up"):
		$AnimatedSprite2D.play("up")
	if Input.is_action_pressed("right"):
		$AnimatedSprite2D.play("right")
	if Input.is_action_pressed("left"):
		$AnimatedSprite2D.play("left")
