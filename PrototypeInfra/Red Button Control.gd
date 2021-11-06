extends Button


# Declare member variables here. Examples:
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Red_Button_Control_button_down():
	print("Red Button Control Down")


func _on_Red_Button_Control_button_up():
	print("Red Button Control Up")

