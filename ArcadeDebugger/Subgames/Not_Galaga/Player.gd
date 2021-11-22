extends RigidBody2D


# Declare member variables here. Examples:



# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	_calcVelocity()
	
	
func _calcVelocity():
	var linearVelocity = Vector2(0,0)
	if Input.is_action_pressed("ui_up"):
		linearVelocity.y = -100
	elif Input.is_action_pressed("ui_down"):
		linearVelocity.y = 100
	
	if Input.is_action_pressed("ui_right"):
		linearVelocity.x = 100
	elif Input.is_action_pressed("ui_left"):
		linearVelocity.x = -100
	
	set_linear_velocity(linearVelocity)

	
