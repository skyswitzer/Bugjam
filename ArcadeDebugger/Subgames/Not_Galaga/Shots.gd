extends Node2D


# Declare member variables here. Examples:

var ship: RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	ship = get_node("../Player")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var shipVelocity = ship.get_linear_velocity()
	if Input.is_action_pressed("ui_accept"):
		$Missiles.shoot(200-shipVelocity.y)

