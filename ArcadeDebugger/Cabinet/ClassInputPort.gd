extends Port

class_name InputPort, "res://Resources/InputIcon.png"

# Declare member variables here. Examples:
var pressed = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func getValue():
	return pressed

func _on_Red_Button_Control_button_down():
	pressed = true


func _on_Red_Button_Control_button_up():
	pressed = false
