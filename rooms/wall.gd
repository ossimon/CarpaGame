extends Node2D

var has_opening: bool
signal doorway_entered(directionWall)

func _ready():
	update()
	
func update():
	if has_opening:
		# load door tilemap
		pass
	else:
		# load wall tilemap
		#$Doorway.set_deferred("monitoring", false)
		pass

func _on_doorway_body_entered(body):
	if has_opening and body.name == "MainCharacter":
		var directionWall = name
		emit_signal("doorway_entered", directionWall)
