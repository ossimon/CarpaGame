extends Control


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/last_level/last_level.tscn")

func _on_quit_button_pressed() -> void:
	get_tree().quit()
	
