extends RigidBody2D


# Declare member variables here. Examples:



# Called when the node enters the scene tree for the first time.
func _ready():
	$LaserParticles.one_shot = true
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	_calcVelocity()
	#_shootBullets()
	
	
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

func _shootBullets():
	var shipVelocity = get_linear_velocity()
	$LaserParticles.initial_velocity=(100-shipVelocity.y)
	if Input.is_action_pressed("ui_accept"):
		$LaserParticles.emitting = true
	
