extends Node2D

class_name ArcadeButton, "res://Resources/ButtonIcon.png"

# Declare member variables here. Examples:
#var keyScanCode
export (int) var keyScanCode : int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_key_pressed(keyScanCode):
		$ButtonSprite.frame=0
	else:
		$ButtonSprite.frame=1


