extends RigidBody3D

@export var speed = 5
@export var jumpPower = 5
var initialJumpTimes = 1
var remainingJumpTimes = initialJumpTimes

func _ready():
	remainingJumpTimes = initialJumpTimes

func _physics_process(delta):
	get_input()

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	linear_velocity.x = input_direction.x * speed
	linear_velocity.z = input_direction.y * speed
	var input_space = Input.is_action_pressed("space")
	if (remainingJumpTimes > 0 && input_space):
		linear_velocity.y = jumpPower
		remainingJumpTimes -= 1

func initJumpTimes():
	remainingJumpTimes = initialJumpTimes

func onEntered1(body_rid:RID, body:Node, body_shape_index:int, local_shape_index:int):
	if (body.is_in_group("Floor")):
		initJumpTimes()
