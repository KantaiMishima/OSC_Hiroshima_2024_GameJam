extends Area3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.hide()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func onEntered(node3d: Node3D):
	if(self.visible):
		$"../Clear".handleClear()
