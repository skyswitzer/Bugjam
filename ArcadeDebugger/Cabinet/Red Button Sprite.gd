extends Sprite


# Declare member variables here. Examples:
var downFrame = 0
var upFrame = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Red_Button_Control_button_down():
	if get_frame() != downFrame:
		set_frame(downFrame)



func _on_Red_Button_Control_button_up():
	if get_frame() != upFrame:
		set_frame(upFrame)
