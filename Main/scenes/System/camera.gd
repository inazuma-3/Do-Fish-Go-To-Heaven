extends Camera3D

@export var follow_target: Node3D
@export var look_target: Node3D
@export var offset: Vector3 = Vector3(0, 3, -6)

func _process(delta):
	if follow_target == null:
		return
	
	global_position = follow_target.global_position + offset
	look_at(follow_target.global_position)
