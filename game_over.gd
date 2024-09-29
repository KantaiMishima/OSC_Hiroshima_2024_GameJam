extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_space = Input.is_action_pressed("space")
	if (input_space && self.visible):
		get_tree().reload_current_scene()
		pass
	pass

func handleGameOver():
	self.show()
	pass
