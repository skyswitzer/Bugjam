extends Wire



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Line2D.clear_points()
	inputPort = get_node("/root/ArcadeGame/The Fixer Scene/The Circuit Board/Controller Inputs/WhiteInputPort")
	input = inputPort.get_position()
	outputPort = get_node("/root/ArcadeGame/The Fixer Scene/The Circuit Board/OutputToGame/WhiteOutputPort")
	output = outputPort.get_position()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
