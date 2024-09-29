extends RigidBody3D

@export var speed = 5
@export var jump = 5

func _physics_process(delta):
	get_input()

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	linear_velocity.x = input_direction.x * speed
	linear_velocity.z = input_direction.y * speed
	var input_space = Input.is_action_pressed("space")
	if (linear_velocity.y == 0 && input_space):
		linear_velocity.y = jump
		pass
	pass
