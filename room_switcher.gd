extends Node

const SPAWNPOINTS = {
	"NorthWall": Vector2(645, 620),
	"SouthWall": Vector2(645, 100),
	"WestWall": Vector2(1180, 360),
	"EastWall": Vector2(100, 360)
}

var current_scene = null
var level = null
# Called when the node enters the scene tree for the first time.
func _ready():
	var root = get_tree().root
	level = root.get_child(root.get_child_count() - 1)
	current_scene = level.get_child(root.get_child_count() - 1)

func switch_scene(res_path, direction, player):
	call_deferred("_deferred_switch_scene", res_path, direction, player)

func _deferred_switch_scene(res_path, direction, player):
	current_scene.free()
	var s = load(res_path)
	current_scene = s.instantiate()
	level.add_child(current_scene)
	player.global_position = SPAWNPOINTS[direction]
