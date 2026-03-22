class_name LookDirection extends Node

@onready var camera = get_viewport().get_camera_3d()
@export var body: CharacterBody3D

func tick() -> void:
	# 1. Get mouse position on screen
	var mouse_pos2d = body.get_viewport().get_mouse_position()
	
	# 2. Create a ray from camera to mouse position
	var ray_start = camera.project_ray_origin(mouse_pos2d)
	var ray_end = ray_start + camera.project_ray_normal(mouse_pos2d) * 1000
	
	# 3. Create a plane at character height (y=0) to intersect the ray
	var ground_plane = Plane(Vector3.UP, 0)
	var intersection = ground_plane.intersects_ray(ray_start, ray_end)
	
	# 4. Make character look at the intersection point
	if intersection:
		body.look_at(Vector3(intersection.x, body.global_position.y, body.intersection.z), Vector3.UP)
