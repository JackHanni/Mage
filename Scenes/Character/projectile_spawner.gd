extends Marker3D

@export var StartingProjectile : PackedScene

@export var speed = 30

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("primary action"):
		var new_projectile = StartingProjectile.instantiate()
		new_projectile.global_transform = global_transform
		new_projectile.speed = speed
		var scene_root = get_tree().get_root().get_children()[0]
		scene_root.add_child(new_projectile)
