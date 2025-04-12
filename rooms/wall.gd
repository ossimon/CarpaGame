extends Node2D

var has_opening: bool = false
signal doorway_entered(direction: String)

func _ready():
	update()
	
func update():
	
	if has_opening:
		# load door tilemap
		pass
	else:
		# load wall tilemap
		$Doorway.set_deferred("monitoring", false)
		pass

func _on_doorway_body_entered(body):
	if has_opening and body.name == "MainCharacter":
		var direction = name.replace("Wall", "")
		emit_signal("doorway_entered", direction)

