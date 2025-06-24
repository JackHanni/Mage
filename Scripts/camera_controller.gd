extends Camera3D

@export var target: Node3D
var displacement_from_target: Vector3 = Vector3(0.0,10.0,3.0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	look_at_from_position(target.global_position+displacement_from_target, target.global_position)
