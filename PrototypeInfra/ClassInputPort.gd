extends Port

class_name InputPort, "res://Resources/InputIcon.png"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pressed = false;

#func _init():

# Called when the node enters the scene tree for the first time.
#func _ready():

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func getValue():
	return pressed


func _on_Button_button_down():
	pressed = true


func _on_Button_button_up():
	pressed = false
