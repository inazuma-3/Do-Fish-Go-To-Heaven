extends Node3D

@export var camera: Camera3D
@export var follow_target: Node3D
@export var look_target: Node3D

func _process(delta: float) -> void:
	# CameraController.position follows follow_target.position
	position = lerp(position, follow_target.position, delta * 5)
