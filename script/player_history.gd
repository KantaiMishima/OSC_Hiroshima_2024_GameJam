extends Node

@export var checkPoints: Array[Node3D] = []
@export var initialJumpTimes = 2
var jumpTimes = initialJumpTimes
var lastCheckedPointIndex = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	lastCheckedPointIndex = 0
	jumpTimes = initialJumpTimes
	for checkPoint in checkPoints:
		checkPoint.hide()
	checkPoints[1].show()
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_back = Input.is_action_just_pressed("back")
	if(input_back && jumpTimes > 0):
		jumpBack()

func jumpBack():
	$"../Player".jumpBack(checkPoints[lastCheckedPointIndex].position)
	jumpTimes -= 1

func check():
	lastCheckedPointIndex += 1
	checkPoints[lastCheckedPointIndex].hide()
	checkPoints[lastCheckedPointIndex + 1].show()
