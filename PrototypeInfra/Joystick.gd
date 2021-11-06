extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		$JoystickSprite.frame=1
	elif Input.is_action_pressed("ui_left"):
		$JoystickSprite.frame=3
	elif Input.is_action_pressed("ui_down"):
		$JoystickSprite.frame=0 # TODO down frame
	elif Input.is_action_pressed("ui_up"):
		$JoystickSprite.frame=0 # TODO up frame
	else:
		$JoystickSprite.frame=0
