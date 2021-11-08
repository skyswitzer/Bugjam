extends Button
class_name InputButton, "res://Resources/ButtonIcon.png"

# Declare member variables here. Examples:

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):



func _on_WhiteButton_button_down():
	$ButtonSprite.frame=1


func _on_WhiteButton_button_up():
	$ButtonSprite.frame=0
