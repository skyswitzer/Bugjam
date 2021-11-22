extends RigidBody2D

class_name MissileBase
# Declare member variables here. Examples:
var lifetime: float
var debugTimer: float
var debug: bool

# Called when the node enters the scene tree for the first time.
func _ready():
	debug = false
	
	if debug: print("New Missile Ready")
	lifetime = 2
	set_collision_layer_bit(0,1)
	set_collision_mask_bit(0,1)
	set_visible(true)
	$MissileSprite.set_visible(true)
	$MissileShape.set_visible(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func processMissile(delta, index):
	lifetime -= delta
	if lifetime < 0:
		if debug: print("Missile ended")
		queue_free()
	if debug:
		if debugTimer >0:
			debugTimer -= delta
		elif debugTimer <= 0:
			debugTimer += 1
			var debugPosition = get_position()
			print("Missile: ", debugPosition.x, " ", debugPosition.y)
