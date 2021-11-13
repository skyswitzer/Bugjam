extends Port

class_name OutputPort, "res://Resources/OutputIcon.png"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var haveInput = false
var input = null
export var initialInputNodePath := ""


# Called when the node enters the scene tree for the first time.
func _ready():
	if(initialInputNodePath):
		setInput(get_node(initialInputNodePath))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $DebugLabel != null:
		$DebugLabel.text = str(getValue())

func getValue():
	if(haveInput):
		return input.getValue()
	return null
		
func setInput(newInput):
	input = newInput #TODO: go through a wire
	haveInput = true
	
func removeInput():
	input = null
	haveInput = false
