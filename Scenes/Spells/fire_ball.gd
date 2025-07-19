extends Node3D

@export var speed : float

var lifespan : float = 1
var lifetime : float = 0

func _physics_process(delta: float) -> void:
	var forward_direction = -global_transform.basis.z.normalized()
	global_translate(forward_direction*speed*delta)
	
	lifetime += delta
	if lifetime >= lifespan:
		queue_free()
	
