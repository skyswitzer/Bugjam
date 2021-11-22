extends Node2D


# Declare member variables here. Examples:

var ship: RigidBody2D
var shotDelay: float
var xshouldShootMissile: bool
var missileShootDelay: float
var xshouldShootLaser: bool
var laserShootDelay: float
var debug: bool

# Called when the node enters the scene tree for the first time.
func _ready():
	ship = get_node("../Player")
	debug = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_processMissiles(delta)
	_processLasers(delta)
	

func _processMissiles(delta):
	if missileShootDelay > 0:
		missileShootDelay -= delta
	elif Input.is_action_pressed("ui_accept"): # Replace with mapped output port being triggered
		shootMissile()
	for index in $Missiles.get_child_count() :
		$Missiles.get_child(index).processMissile(delta,index)

func shootMissile():
	if missileShootDelay >0: return
	if $Missiles.get_child_count() >= 10: return
	missileShootDelay=1
	
	var velocity = ship.get_linear_velocity()
	velocity.y -= 200
	var position = ship.get_position()
	position.y -= 14
	
	var newMissile = $MissileBase.duplicate()
	$Missiles.add_child(newMissile)
	
	newMissile.set_position(position)
	newMissile.set_linear_velocity(velocity)

func _processLasers(delta):
	if laserShootDelay > 0:
		laserShootDelay -= delta
	elif Input.is_action_pressed("ui_accept"): # Replace with mapped output port being triggered
		shootLasers()
	for index in $Lasers.get_child_count() :
		$Lasers.get_child(index).processLaser(delta,index)

func shootLasers():
	if laserShootDelay > 0: return
	if $Lasers.get_child_count() >= 40: return
	laserShootDelay = 0.4
	shootLaser(Vector2(-22,2))
	shootLaser(Vector2(-14,-6))
	shootLaser(Vector2(14,-6))
	shootLaser(Vector2(22,2))

func shootLaser(positionOffset):
	var newVelocity = ship.get_linear_velocity() + Vector2(0,-500)
	var newPosition = ship.get_position() + positionOffset
	
	var newLaser = $LaserBase.duplicate()
	$Lasers.add_child(newLaser)
	
	newLaser.set_position(newPosition)
	newLaser.set_linear_velocity(newVelocity)
	

	
	
