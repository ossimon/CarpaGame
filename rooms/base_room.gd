extends Node2D

var wall_nodes

var wall_config = {
	"North": true,
	"West": false,
	"South": false,
	"East": false
}

func _ready():
	wall_nodes = {
		"North": $NorthWall,
		"West": $WestWall,
		"South": $SouthWall,
		"East": $EastWall
	}
	
	setup_room()
	
func setup_room(): 
	for key in wall_config.keys():
		var wall = wall_nodes[key]
		wall.has_opening = wall_config[key]
		wall.update()
		wall.doorway_entered.connect(_on_doorway_entered)

func _on_doorway_entered():
	# switch scene
	pass
