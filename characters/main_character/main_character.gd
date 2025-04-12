extends CharacterBody2D

# add movement
@export var speed = 30

# func called every frame
func _process(delta):
	_move(delta)

func _move(delta):
	velocity = Vector2.ZERO

	if Input.is_action_pressed("MoveRight"):
		velocity.x += 1
	if Input.is_action_pressed("MoveLeft"):
		velocity.x -= 1
	if Input.is_action_pressed("MoveDown"):
		velocity.y += 1
	if Input.is_action_pressed("MoveUp"):
		velocity.y -= 1

	velocity = velocity.normalized() * speed
	
	move_and_slide()
