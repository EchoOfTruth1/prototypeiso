#player
extends CharacterBody2D

#speed
const SPEED = 300.0

#movement
func _process(_delta):
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1

#calling all functions!
func _physics_process(_delta: float) -> void:
	animation()
	
#handling animation
func animation():
	if velocity.y == 0 and velocity.y == 0:
		$AnimatedSprite2D.play("down")
	if velocity.y == 1:
		$AnimatedSprite2D.play("down")
	if velocity.y == -1:
		$AnimatedSprite2D.play("up")
	if velocity.x == 1:
		$AnimatedSprite2D.play("right")
	if velocity.x == -1:
		$AnimatedSprit2D.play("left")
