extends Sprite2D


@export var speed = 200

var velocity = Vector2.ZERO


func _on_bus_start_actuator_body_entered(body):
	velocity = Vector2.RIGHT * speed


func _process(delta):
	position += velocity * delta
	if position.x >= 2000:
		# delete this node
		queue_free()
