extends Node

# Declare member variables here. Examples:
var pressed = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$DebugLabel.text = str(pressed)

func getValue():
	return pressed

func _on_WhiteButton_button_down():
	pressed = true


func _on_WhiteButton_button_up():
	pressed = false
