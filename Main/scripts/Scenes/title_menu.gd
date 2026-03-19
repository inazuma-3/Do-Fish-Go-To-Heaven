extends Control

@export var new_game_scene: StringName = &""

func _on_start_pressed() -> void:
	print("NEW GAME")
	SceneManager.load_scene(new_game_scene)


func _on_continue_pressed() -> void:
	# TODO: load game menu scene
	print("CONTINUE GAME")


func _on_settings_pressed() -> void:
	# TODO: settings menu scene
	print("GAME SETTINGS")


func _on_exit_pressed() -> void:
	print("EXIT GAME")
	get_tree().quit()
